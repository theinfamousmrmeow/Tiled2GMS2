// THIS FILE WAS AUTOMATICALLY GENERATED USING https://github.com/GameMakerDiscord/GMExtensionUtilities BY @katsaii

#define DerpXmlRead_CloseFile
/// @description  DerpXmlRead_CloseFile()
//
//  Closes the currently open XML file.

file_text_close(global.DerpXmlRead[? "xmlFile"])

ds_map_destroy(global.DerpXmlRead)

#define DerpXmlRead_CurGetAttribute
/// @description  DerpXmlRead_CurGetAttribute(keyString)
/// @param keyString
//
//  Returns the value for the given key in the current node's attributes.
//  Example: in <a cat="bag>     DXR_CGA('cat') returns 'bag'
//
//  If the attribute doesn't exist, calling is_undefined() on the return value will return true.
//  See the example scripts, DerpXmlExample_ReadOther for usage.

var keyString = argument0
var attribs = global.DerpXmlRead[? "attributeMap"]
return attribs[? keyString]

#define DerpXmlRead_CurRawValue
/// @description  DerpXmlRead_CurRawValue()
//
//  Returns the raw text that was last read, with nothing stripped out.
//  For example: "<tagname key1="val1">"

return global.DerpXmlRead[? "currentRawValue"]

#define DerpXmlRead_CurType
/// @description  DerpXmlRead_CurType()
//
//  Returns the type of the current node, as a DerpXmlType macro.
//
//  DerpXmlType_OpenTag     - Opening tag <tag>
//  DerpXmlType_CloseTag    - Closing tag </tag>
//  DerpXmlType_Text        - Text inside an element <a>TEXT</a>
//  DerpXmlType_Whitespace  - Whitespace between elements "    "
//  DerpXmlType_StartOfFile - Start of document, no reads performed yet
//  DerpXmlType_EndOfFile   - End of document

return global.DerpXmlRead[? "currentType"]

#define DerpXmlRead_CurValue
/// @description  DerpXmlRead_CurValue()
//
//  Returns the content value of the current node.
//
//  DerpXmlType_Open/CloseTag <tagname> - tagname
//  DerpXmlType_Text <a>text</a>        - text
//  DerpXmlType_Whitespace "    "       - "    "

return global.DerpXmlRead[? "currentValue"]

#define DerpXmlRead_OpenFile
/// @description  DerpXmlRead_OpenFile(global.DerpXmlRead[? "xmlFile"]Path)
/// @param global.DerpXmlRead[? "xmlFile"]Path
//
//  Opens an XML file for reading. Be sure to call DerpXmlRead_CloseFile when you're done.
//  Returns whether load was successful.

var xmlFilePath = argument0

var file = file_text_open_read(xmlFilePath)
if file == -1 {
    return false
}

global.DerpXmlRead = ds_map_create();
ds_map_add_map(global.DerpXmlRead, "attributeMap", ds_map_create())

global.DerpXmlRead[? "xmlFile"] = file
global.DerpXmlRead[? "readMode"] = DerpXmlReadMode_File
global.DerpXmlRead[? "xmlString"] = file_text_read_string(global.DerpXmlRead[? "xmlFile"])

global.DerpXmlRead[? "stringPos"] = 0
global.DerpXmlRead[? "currentType"] = DerpXmlType_StartOfFile
global.DerpXmlRead[? "currentValue"] = ""
global.DerpXmlRead[? "currentRawValue"] = ""
global.DerpXmlRead[? "lastReadEmptyElement"] = false
global.DerpXmlRead[? "lastNonCommentType"] = DerpXmlType_StartOfFile

return true

#define DerpXmlRead_Read
/// @description  DerpXmlRead_Read()
//
//  Reads the next XML node. (tag, text, etc.)
//
//  Returns true if the next node was read successfully,
//  and false if there are no more nodes to read.

var readString = ""
var numCharsRead = 0
if global.DerpXmlRead[? "currentType"] != DerpXmlType_Comment {
    global.DerpXmlRead[? "lastNonCommentType"] = global.DerpXmlRead[? "currentType"]
}

var isTag = false
var isClosingTag = false
var isEmptyElement = false
var tagState = ""
var tagName = ""
var attrKey = ""
var attrVal = ""
ds_map_clear(global.DerpXmlRead[? "attributeMap"])
var isComment = false

// if was already at end of file, just return false
if global.DerpXmlRead[? "currentType"] == DerpXmlType_EndOfFile {
    return false
}

// if last read was empty element, just return a closing tag this round
if global.DerpXmlRead[? "lastReadEmptyElement"] {
    global.DerpXmlRead[? "lastReadEmptyElement"] = false
    global.DerpXmlRead[? "currentType"] = DerpXmlType_CloseTag
    // don't change global.DerpXmlRead[? "currentValue"] to keep it same as last read
    global.DerpXmlRead[? "currentRawValue"] = ""
    return true
}

// main read loop
while true {
    // advance in the document
    global.DerpXmlRead[? "stringPos"] += 1

    // file detect end of line (and possibly end of document)
    if global.DerpXmlRead[? "readMode"] == DerpXmlReadMode_File and global.DerpXmlRead[? "stringPos"] > string_length(global.DerpXmlRead[? "xmlString"]) {
        file_text_readln(global.DerpXmlRead[? "xmlFile"])
        if file_text_eof(global.DerpXmlRead[? "xmlFile"]) {
            global.DerpXmlRead[? "currentType"] = DerpXmlType_EndOfFile
            global.DerpXmlRead[? "currentValue"] = ""
            global.DerpXmlRead[? "currentRawValue"] = ""
            return false
        }
        global.DerpXmlRead[? "xmlString"] = file_text_read_string(global.DerpXmlRead[? "xmlFile"])
        global.DerpXmlRead[? "stringPos"] = 1
    }

    // string detect end of document
    if global.DerpXmlRead[? "readMode"] == DerpXmlReadMode_String and global.DerpXmlRead[? "stringPos"] > string_length(global.DerpXmlRead[? "xmlString"]) {
        global.DerpXmlRead[? "stringPos"] = string_length(global.DerpXmlRead[? "xmlString"])
        global.DerpXmlRead[? "currentType"] = DerpXmlType_EndOfFile
        global.DerpXmlRead[? "currentValue"] = ""
        global.DerpXmlRead[? "currentRawValue"] = ""
        return false
    }

    // grab the new character
    var currentChar = string_char_at(global.DerpXmlRead[? "xmlString"], global.DerpXmlRead[? "stringPos"]);
    readString += currentChar
    numCharsRead += 1

    // main state 1: in the middle of parsing a tag
    if isTag {
        // reach > and not in attribute value, so end of tag
        if currentChar == ">" and tagState != "attr_value" {
            // if comment, check for "--" before
            if isComment {
                if string_copy(readString, string_length(readString)-2, 2) == "--" {
                    global.DerpXmlRead[? "currentType"] = DerpXmlType_Comment
                    global.DerpXmlRead[? "currentValue"] = string_copy(readString, 5, string_length(readString)-7)
                    global.DerpXmlRead[? "currentRawValue"] = readString
                    return true
                }
            }
            // if not comment, then do either closing or opening tag behavior
            else {
                if isClosingTag {
                    global.DerpXmlRead[? "currentType"] = DerpXmlType_CloseTag
                    global.DerpXmlRead[? "currentValue"] = tagName
                    global.DerpXmlRead[? "currentRawValue"] = readString
                    return true
                }
                else {
                    // if empty element, set the flag for the next read
                    if isEmptyElement {
                        global.DerpXmlRead[? "lastReadEmptyElement"] = true
                    }

                    global.DerpXmlRead[? "currentType"] = DerpXmlType_OpenTag
                    global.DerpXmlRead[? "currentValue"] = tagName
                    global.DerpXmlRead[? "currentRawValue"] = readString
                    return true
            }
            }
        }

        // not end of tag, so either tag name or some attribute state
        if tagState == "tag_name" {
            // check if encountering space, so done with tag name
            if currentChar == " " {
                tagState = "whitespace"
            }

            // check for beginning slash
            else if currentChar == "/" and numCharsRead == 2 {
                isClosingTag = true
            }

            // check for ending slash
            else if currentChar == "/" and numCharsRead > 2 {
                isEmptyElement = true
            }

            // in the normal case, just add to tag name
            else {
                tagName += currentChar
            }

            // check if tag "name" means it's a comment
            if tagName == "!--" {
                isComment = true
            }
        }
        else if tagState == "whitespace" {
            // check for ending slash
            if currentChar == "/" {
                isEmptyElement = true
            }
            // if encounter non-space and non-slash character, it's the start of a key
            else if currentChar != " " {
                attrKey += currentChar
                tagState = "key"
            }
        }
        else if tagState == "key" {
            // if encounter = or space, start the value whitespace
            if currentChar == "=" or currentChar == " " {
                tagState = "value_whitespace"
            }

            // in the normal case, just add to the key
            else {
                attrKey += currentChar
            }
        }
        else if tagState == "value_whitespace" {
            // if encounter quote, start the key
            if currentChar == "\"" or currentChar == "'" {
                tagState = "value"
            }
        }
        else if tagState == "value" {
            // if encounter quote, we're done with the value, store the attribute and return to whitespace
            if currentChar == "\"" or currentChar == "'" {
				var attribs = global.DerpXmlRead[? "attributeMap"]
                attribs[? attrKey] = attrVal
                attrKey = ""
                attrVal = ""
                tagState = "whitespace"
            }
            else {
                attrVal += currentChar
            }
        }
    }

    // main state 2: not parsing a tag
    else {
        // first character is <, so we're starting a tag
        if currentChar == "<" and numCharsRead == 1 {
            isTag = true
            tagState = "tag_name"
        }

        // reach a < that's not the first character, which is the end of text and whitespace
        if currentChar == "<" and numCharsRead > 1 {
            if string_char_at(global.DerpXmlRead[? "xmlString"], global.DerpXmlRead[? "stringPos"]+1) == "/" and global.DerpXmlRead[? "lastNonCommentType"] == DerpXmlType_OpenTag {
                global.DerpXmlRead[? "currentType"] = DerpXmlType_Text
            }
            else {
                global.DerpXmlRead[? "currentType"] = DerpXmlType_Whitespace
            }
            global.DerpXmlRead[? "stringPos"] -= 1
            global.DerpXmlRead[? "currentValue"] = string_copy(readString, 1, string_length(readString)-1)
            global.DerpXmlRead[? "currentRawValue"] = global.DerpXmlRead[? "currentValue"]
            return true
        }
    }
}

#define DerpXml_ThrowError
/// @description  DerpXml_CauseError(message)
/// @param message
//
//  Causes a runtime error with a certain message.
//  This script is used internally in DerpXml; you shouldn't call it yourself.

var message = argument0

message = "DerpXml Error: " + message
show_debug_message(message)
var a = 0;
a += "DerpXml Error. See the console output for details."

#define tiled_cleanup
/// @desc cleanup tiled artefacts without unloading any tiles
///       This requires the map outputted by tiled_read
///       You only need either tiled_destroy or tiled_cleanup
///
/// @arg all_data datastructure used by tiled
var all_data = argument0;
if (ds_exists(all_data, ds_type_map)) ds_map_destroy(all_data);

#define tiled_create
/// @desc Creates the tile layers from the tile
/// @args all_data the datastructure to use
var all_data = argument0;

var map_attribs = all_data[? "map_attribs"];
var tilesets = all_data[? "tilesets"];
var layers = all_data[? "layers"];

// datastructures for undoing/unloading later
var new_layers = all_data[? "new_layers"]
var original_depths = all_data[? "original_depths"]
var new_instances = all_data[? "new_instances"]

// check attribs
if (map_attribs[? "orientation"] != "orthogonal") {
	show_error("Orientation type " + map_attribs[? "orientation"] + " not supported. Use orthogonal only", true);
}
if (map_attribs[? "renderorder"] != "right-down") {
	show_error("Render order " + map_attribs[? "renderorder"] + " not supported. Use right-down only", true);
}
if (map_attribs[? "infinite"] == 1) {
	show_error("Infinite maps are supported. Please limit yourself", true);
}

// calculate layer gid mapping
var tilesets_gid = [];
for(var key=ds_map_find_first(tilesets); not is_undefined(key);  key=ds_map_find_next(tilesets, key)) {
    var tileset = ds_map_find_value(tilesets, key);
	var firstgid = real(tileset[? "firstgid"]);
	for (var j=firstgid; j<firstgid+real(tileset[? "tilecount"]); j++) {
		tilesets_gid[j] = key;
	}
}

var propmap = [0, 6, 2, 7, 1, 4, 3, 5]; // tiled to GM property mapping

// create the layers and whatnot
for (var i = 0; i<ds_list_size(layers); i++) {
	var layer_map = layers[| i];
	var type = layer_map[? "type"]
	var name = layer_map[? "name"]
	show_debug_message("Layer[" + string(i) + "]: " + name + " type " + type);

	// check and create layer
	var new_depth = depth - (i+1) * 100;
	var layer_id = layer_get_id(name);
	if (layer_id == -1) {
		layer_id = layer_create(new_depth);
		ds_list_add(new_layers, layer_id);
	}
	else {
		show_debug_message("Moving layer " + name + " to " + string(new_depth));
		if (not ds_map_exists(original_depths, name)) { // store depth for later restore
			original_depths[? name] = layer_get_depth(layer_id);
		}
		layer_depth(layer_id, new_depth);
	}

	if (layer_map[? "visible"] == 0) {
		layer_set_visible(layer_id, false);
	}

	switch (type) {
		case "instance":
			var instance_list = layer_map[? "instances"];
			for (var j=0; j<ds_list_size(instance_list); j++) {
				var instance = instance_list[| j];

				if (not is_string(instance[? "name"])) {  // skip instances with no name
					show_debug_message("Object has no name, skipping");
					continue;
				}
				if (asset_get_type(instance[? "name"]) != asset_object) { // not an object
					show_debug_message("Object " + instance[? "name"] + " doesn't exist, skipping");
					continue;
				}

				var object = asset_get_index(instance[? "name"]);
				var inst = instance_create_layer(instance[? "x"], instance[? "y"], layer_id, object);
				show_debug_message("Create instance " + instance[? "name"])
				ds_list_add(new_instances, inst);

				var properties = instance[? "properties"];

				for (var k=0; k<ds_list_size(properties); k++) {
					var	prop = properties[| k];
					var value = prop[? "value"];
					switch (prop[? "type"]) {
						case "float":
						case "int":
							value = real(value);
							break;
						case "bool":
							value = (value == "true")
							break;
						case "color":
							value = Xtiled_convert_color(value);
							break;
					}

					show_debug_message("Set property " + prop[? "name"] + " to " + string(value));
					variable_instance_set(inst, prop[? "name"], value);
				}

				if (not is_undefined(instance[? "visible"]) and instance[? "visible"] == "0") {
					inst.visible = false;
				}

			}
			break;
		case "tile":
			// data
			var raw = layer_map[? "data"];
			var encoding = layer_map[? "encoding"];
			var compression = layer_map[? "compression"];

			if (encoding == "base64") {
				var trimmed = string_replace_all(raw, " ", "");
				var decoded = buffer_base64_decode(trimmed);

				if (compression == "zlib") {
					var data = buffer_decompress(decoded);
					buffer_delete(decoded);
				}
				else if (is_undefined(compression)) {
					var data = decoded;
				}
				else {
					show_error("Compression " + compression + " not supported! Use zlib or raw", true)
				}
			}
			else {
				show_error("Encoding " + encoding + " not supported! use base64", true);
			}

			// prep assets
			var new_tilelayers = ds_map_create();

			// loop through data
			buffer_seek(data, buffer_seek_start, 0);
			for (var j=0; j<buffer_get_size(data)/4; j++) {
				var tile_raw = buffer_read(data, buffer_u32);
				if (tile_raw == 0) continue;

				// TODO: filter tile number here
				var tile = tile_raw & 0x1fffffff;
				var props = tile_raw >> 29;
				var gmprops = propmap[props];

				// fetch tile data
				var tileset_name = tilesets_gid[tile];
				var tileset_map = tilesets[? tileset_name];

				// calculate tile number
				var tile_number = tile - tileset_map[? "firstgid"];
				tile_number |= gmprops << 28; // re-attach tile properties

				// calculate tilelayer, create tilemap if it doesn't exist
				var tilelayer = new_tilelayers[? tileset_name]
				if (is_undefined(tilelayer)) {
					var tileset = asset_get_index(tileset_name);
					if (tileset == -1) {
						show_error("Could not find tileset " + tileset_name, true);
					}
					var tilewidth = layer_map[? "width"];
					var tileheight = layer_map[? "height"];

					var offsetx = layer_map[? "offsetx"]
					var offsety = layer_map[? "offsety"]
					if (is_undefined(offsetx)) offsetx = 0;
					if (is_undefined(offsety)) offsety = 0;
					tilelayer = layer_tilemap_create(layer_id, offsetx, offsety, tileset, tilewidth, tileheight);
					new_tilelayers[? tileset_name] = tilelayer;
				}

				// calculate cell position
				var xscale = map_attribs[? "tilewidth"] / tileset_map[? "tilewidth"];
				var yscale = map_attribs[? "tileheight"] / tileset_map[? "tileheight"];
				var xcell = floor(xscale * (j % layer_map[? "width"]));
				var ycell = floor(yscale * (j / layer_map[? "width"]));

				// assign tile
				tilemap_set(tilelayer, tile_number, xcell, ycell);
				//show_debug_message(tileset_name + ": " + string(tile) + "("+string(gmprops)+"), " + string(xcell) + ", " + string(ycell));
			}

			buffer_delete(data);
			ds_map_destroy(new_tilelayers);

			break;
		default:
			show_error("Layer type " + type + " not supported", true);
	}

}

#define tiled_destroy
/// @desc Unload all of the stuff loaded by the map
///       This requires the map outputted by tiled_read
///       The map will also be deleted at the end, so you
///       only need either tiled_destroy or tiled_cleanup
///
/// @arg all_data datastructure used by tiled
var all_data = argument0;

if (not ds_exists(all_data, ds_type_map)) return;

var new_layers = all_data[? "new_layers"];
var new_instances = all_data[? "new_instances"];
var original_depths = all_data[? "original_depths"];

// destroy all istances
for (var i=0; i<ds_list_size(new_instances); i++) {
	var inst = new_instances[| i];
	if (instance_exists(inst)) instance_destroy(inst);
}

// delete all new layers
for (var i=0; i<ds_list_size(new_layers); i++) {
	var layer_id = new_layers[| i];
	if (layer_exists(layer_id)) layer_destroy(layer_id);
}

// restore original layer depth
for(var layer_name=ds_map_find_first(original_depths); not is_undefined(layer_name);  layer_name=ds_map_find_next(original_depths, layer_name)) {
    var original_depth = ds_map_find_value(original_depths, layer_name);
    var layer_id = layer_get_id(layer_name);
	if (layer_id != -1) layer_depth(layer_id, original_depth);
}

ds_map_destroy(all_data);

#define tiled_oneshot
/// @desc A one-shot process function - just process a tmx file from start to end
///       use this for when you want to just load the tiles at the start of a room
///       and nothing fancy
///       Example usage:
///          tiled_oneshot("map1.tmx")
///
/// @arg filename name of the file to process
var filename = argument0;

var all_data = tiled_read(filename);
tiled_create(all_data);
tiled_cleanup(all_data);

#define tiled_read
/// @desc Read a TMX file and parse out all of its data, returning a ds_map
///       Example usage 1: Simply read the tmx file, create the tiles, and then cleanup memory
///			var tiles = tiled_read("map1.tmx");
///         tiled_create(tiles);
///         tiled_cleanup(tiles);
///
///       Example usage 1: Read the tmx file, and create the tiles. Unload the tiles later
///			global.tiles = tiled_read("map1.tmx");
///         tiled_create(global.tiles);
///         // and then later...
///         tiled_destroy(global.tiles);
///
/// @arg filename name of the file to process

var filename = argument0

if (not file_exists(filename)) {
	show_error("TMX file " + filename + " does not exist!", true);
}

// parse the file
DerpXmlRead_OpenFile(filename)

// datastructures needed
var all_data = ds_map_create();
ds_map_add_map(all_data, "map_attribs", ds_map_create());
ds_map_add_map(all_data, "tilesets", ds_map_create());
ds_map_add_list(all_data, "layers", ds_list_create());
ds_map_add_list(all_data, "new_layers", ds_list_create())
ds_map_add_map(all_data, "original_depths", ds_map_create())
ds_map_add_list(all_data, "new_instances", ds_list_create());

while (DerpXmlRead_Read()) {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse root: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace: // ignore
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "?xml": // ignore
					break;
				case "map":
					Xtiled_parse_map(all_data);
					break;
				default:
					show_error("Tiled Parse error: OpenTag " + value + " not supported in root", true)
			}
			break;
		case DerpXmlType_CloseTag:
		default:
			show_error("Tiled Parse error: " + type + " not supported in root", true)
			break;
	}
}

// Cleanup DerpXml
DerpXmlRead_CloseFile()

return all_data;

#define Xtiled_convert_color
// converts #AARRGGBB into GM color using the most hacky method I know how

var value = string_lettersdigits(string_upper(argument0)); // get raw hex
var fake_ds_list = ds_list_create()
ds_list_read(fake_ds_list, "2E0100000100000007000000" + value);
var color = fake_ds_list[| 0] >> 8; // shift out alpha

ds_list_destroy(fake_ds_list);
return color;

#define Xtiled_parse_data
/// @desc Parse <map><layer><data>
/// @arg layer_map the index of the map needed for adding layer data to
var layer_map = argument0;

// get attributes
ds_map_add(layer_map, "encoding", DerpXmlRead_CurGetAttribute("encoding"));
ds_map_add(layer_map, "compression", DerpXmlRead_CurGetAttribute("compression"));

// get children
while DerpXmlRead_Read() {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <data>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_Text:
			ds_map_add(layer_map, "data", value);
			break;
		case DerpXmlType_OpenTag:
      show_error("Tiled Parse error: " + value + " not supported in data", true)
			break;
		case DerpXmlType_CloseTag:
			if (value == "data") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in data", true)
			}
		default:
			show_error("Tiled Parse error: " + value + " not supported in data", true)
			break;
	}
}

#define Xtiled_parse_image
/// @desc Parse <map><tileset><image>
/// @arg tilesets the tileset map to use to use
/// @arg tileset_name the name of the tileset, needed for adding to the right ds_map
var tilesets = argument0;
var tileset_name = argument1;

// get attributes
var tileset_map = ds_map_find_value(tilesets, tileset_name);
ds_map_add(tileset_map, "image_source", DerpXmlRead_CurGetAttribute("source"));
ds_map_add(tileset_map, "image_width", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("width")));
ds_map_add(tileset_map, "image_height", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("height")));

// get children
while (DerpXmlRead_Read()) {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <image>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			show_error("Tiled Parse error: OpenTag " + DerpXmlRead_CurValue() + " not supported in image", true)
			break;
		case DerpXmlType_CloseTag:
			if (value == "image") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in image", true)
			}
		default:
			show_error("Tiled Parse error: " + DerpXmlRead_CurType() + " not supported in image", true)
			break;
	}
}

#define Xtiled_parse_layer
/// @desc Parse <map><layer>
/// @args layers the layers map to use
var layers = argument0;

// get attributes
var layer_map = ds_map_create();
ds_map_add(layer_map, "type", "tile");
ds_map_add(layer_map, "id", DerpXmlRead_CurGetAttribute("id"));
ds_map_add(layer_map, "name", DerpXmlRead_CurGetAttribute("name"));
ds_map_add(layer_map, "visible", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("visible")));
ds_map_add(layer_map, "width", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("width")));
ds_map_add(layer_map, "height", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("height")));
ds_map_add(layer_map, "offsetx", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("offsetx")));
ds_map_add(layer_map, "offsety", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("offsety")));
var layer_index = ds_list_size(layers);
ds_list_add(layers, layer_map);
ds_list_mark_as_map(layers, layer_index);

// get children
while DerpXmlRead_Read() {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <layer>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "data":
					Xtiled_parse_data(layer_map);
					break;
				default:
					show_error("Tiled Parse error: OpenTag " + DerpXmlRead_CurValue() + " not supported in layer", true)
			}
			break;
		case DerpXmlType_CloseTag:
			if (value == "layer") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in layer", true)
			}
		default:
			show_error("Tiled Parse error: " + type + " not supported in layer", true)
			break;
	}
}

#define Xtiled_parse_map
/// @desc Parse <map>
/// @args all_data the datastructure to use
var all_data = argument0;

var map_attribs = all_data[? "map_attribs"];
var tilesets = all_data[? "tilesets"];
var layers = all_data[? "layers"];

// get attributes
ds_map_add(map_attribs, "version", DerpXmlRead_CurGetAttribute("version"));
ds_map_add(map_attribs, "tiledversion", DerpXmlRead_CurGetAttribute("tiledversion"));
ds_map_add(map_attribs, "orientation", DerpXmlRead_CurGetAttribute("orientation"));
ds_map_add(map_attribs, "renderorder", DerpXmlRead_CurGetAttribute("renderorder"));
ds_map_add(map_attribs, "width", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("width")));
ds_map_add(map_attribs, "height", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("height")));
ds_map_add(map_attribs, "tilewidth", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("tilewidth")));
ds_map_add(map_attribs, "tileheight", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("tileheight")));

while DerpXmlRead_Read() {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <map>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "tileset":
					Xtiled_parse_tileset(tilesets);
					break;
				case "layer":
					Xtiled_parse_layer(layers);
					break;
				case "objectgroup":
					Xtiled_parse_objectgroup(layers);
					break;
				default:
					show_error("Tiled Parse error: OpenTag " + value + " not supported in map", true)
			}
			break;
		case DerpXmlType_CloseTag:
			if (value == "map") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in map", true)
			}
		default:
			show_error("Tiled Parse error: " + type + " not supported in map", true)
			break;
	}
}

#define Xtiled_parse_object
/// @desc Parse <map><objectgroup><object>
/// @arg instances_list the index of the list needed to add objects to
var instances_list = argument0;

// get attributes
var object_map = ds_map_create();
ds_map_add(object_map, "name", DerpXmlRead_CurGetAttribute("name"));
ds_map_add(object_map, "x", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("x")));
ds_map_add(object_map, "y", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("y")));
var properties_list = ds_list_create();
ds_map_add_list(object_map, "properties", properties_list);
ds_list_add(instances_list, object_map)
ds_list_mark_as_map(instances_list, ds_list_size(instances_list)-1);

// get children
while DerpXmlRead_Read() {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <object>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "properties":
					Xtiled_parse_properties(properties_list);
					break;
				default:
					Xtiled_parse_skip(value);
			}
			break;
		case DerpXmlType_CloseTag:
			if (value == "object") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in object", true)
			}
		default:
			show_error("Tiled Parse error: " + value + " not supported in object", true)
			break;
	}
}

#define Xtiled_parse_objectgroup
/// @desc Parse <map><objectgroup>
/// @args layers the layers map to use
var layers = argument0;

// get attributes
var layer_map = ds_map_create();
ds_map_add(layer_map, "type", "instance");
ds_map_add(layer_map, "id", DerpXmlRead_CurGetAttribute("id"));
ds_map_add(layer_map, "name", DerpXmlRead_CurGetAttribute("name"));
var instances_list = ds_list_create()
ds_map_add_list(layer_map, "instances", instances_list);
var layer_index = ds_list_size(layers);
ds_list_add(layers, layer_map);
ds_list_mark_as_map(layers, layer_index);

// get children
while (DerpXmlRead_Read()) {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <objectgroup>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "object":
					Xtiled_parse_object(instances_list);
					break;
				default:
					show_error("Tiled Parse error: OpenTag " + DerpXmlRead_CurValue() + " not supported in objectgroup", true)
			}
			break;
		case DerpXmlType_CloseTag:
			if (value == "objectgroup") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in objectgroup", true)
			}
		default:
			show_error("Tiled Parse error: " + type + " not supported in objectgroup", true)
			break;
	}
}

#define Xtiled_parse_properties
/// @desc Parse <map><objectgroup><object><properties>
/// @arg properties_list the index of the list containing the properties
var properties_list = argument0;

// get children
while DerpXmlRead_Read() {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <properties>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "property":
					Xtiled_parse_property(properties_list);
					break;
				default:
					Xtiled_parse_skip(value);
			}
			break;
		case DerpXmlType_CloseTag:
			if (value == "properties") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in properties", true)
			}
		default:
			show_error("Tiled Parse error: " + value + " not supported in properties", true)
			break;
	}
}

#define Xtiled_parse_property
/// @desc Parse <map><objectgroup><object><properties><property>
/// @arg properties_map the index of the map containing the properties
var properties_list = argument0;

// get attributes
var property_map = ds_map_create();
ds_map_add(property_map, "name", DerpXmlRead_CurGetAttribute("name"));
ds_map_add(property_map, "type", DerpXmlRead_CurGetAttribute("type"));
ds_map_add(property_map, "value", DerpXmlRead_CurGetAttribute("value"));
ds_map_add(property_map, "visible", DerpXmlRead_CurGetAttribute("visible"));
ds_list_add(properties_list, property_map)
ds_list_mark_as_map(properties_list, ds_list_size(properties_list)-1);

// get children
while DerpXmlRead_Read() {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <property>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			Xtiled_parse_skip(value);
			break;
		case DerpXmlType_CloseTag:
			if (value == "property") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in property", true)
			}
		default:
			show_error("Tiled Parse error: " + value + " not supported in property", true)
			break;
	}
}

#define Xtiled_parse_skip
/// @desc Skip all children of tag
/// @arg tag to skip
var tag_to_skip = argument0;

while (DerpXmlRead_Read()) {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();

  show_debug_message("Parse to skip: " + type + ", " + value)
	if (type == DerpXmlType_CloseTag and value == tag_to_skip) {
		return;
	}
}

#define Xtiled_parse_tileset
/// @desc Parse <map><tileset>
/// @args tilesets the tilesets map to use
var tilesets = argument0;

// get attributes
var tileset_map = ds_map_create();
var tileset_name = DerpXmlRead_CurGetAttribute("name");
if (not is_undefined(DerpXmlRead_CurGetAttribute("source"))) {
  show_error("Tiled Pares error: external files not supported, please check the 'embed in map' checkbox", true);
}
ds_map_add(tileset_map, "firstgid", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("firstgid")));
ds_map_add(tileset_map, "tilewidth", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("tilewidth")));
ds_map_add(tileset_map, "tileheight", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("tileheight")));
ds_map_add(tileset_map, "tilecount", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("tilecount")));
ds_map_add(tileset_map, "columns", Xtiled_real_or_undef(DerpXmlRead_CurGetAttribute("columns")));
ds_map_add_map(tilesets, tileset_name, tileset_map);

// get children
while (DerpXmlRead_Read()) {
	var type = DerpXmlRead_CurType();
	var value =  DerpXmlRead_CurValue();
    show_debug_message("Parse <tileset>: " + type + ", " + value)

	switch (type) {
		case DerpXmlType_Whitespace:
			break;
		case DerpXmlType_OpenTag:
			switch (value) {
				case "image":
					Xtiled_parse_image(tilesets, tileset_name);
					break;
				case "tile":
					Xtiled_parse_skip("tile");
					break;
				default:
					show_error("Tiled Parse error: OpenTag " + value + " not supported in tileset", true)
			}
			break;
		case DerpXmlType_CloseTag:
			if (value == "tileset") {
				return;
			}
			else {
				show_error("Tiled Parse error: unexpected CloseTag " + value + " in tileset", true)
			}
		default:
			show_error("Tiled Parse error: " + type + " not supported in tileset", true)
			break;
	}
}

#define Xtiled_real_or_undef
/// @desc returns either a real or undefined
/// @arg value
return is_undefined(argument0) ? undefined : real(argument0);
