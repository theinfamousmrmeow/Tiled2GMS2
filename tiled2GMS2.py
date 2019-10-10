###! /usr/bin/python3
import sys, getopt
import trace
import xml.etree.ElementTree
import math
from xml.etree.ElementPath import prepare_child, xpath_tokenizer
import json
from xml.dom import minidom

##
__license__ = "WTF"
__version__ = "1.0.0"
__maintainer__ = "theinfamousmrmeow"
##


"""
Basic Structure:
-Load in data for all layers in TMX.
-Go into GMS2 Project.yy file, find references to EACH tileset.


"""

#For reasons beyond mortal ken, this is the empty TileID...
EMPTY_TILE = 2147483648 
LAYERTAG_TILE = 'GMRTileLayer'
verbose = True

GMS2_ROOM_NAME = "./GMS2/rooms/overworld/overworld.yy"
GMS2_DUMMY_LAYER_FILE = "dummyTileLayer.json"
GMS2_LAYER_TARGET = "Tiles_4"
TILED_TMX = './Tiled/ValleyHoller.tmx'

with open(GMS2_DUMMY_LAYER_FILE) as json_file:
    dictDefaultLayer = json.load(json_file)

with open(GMS2_ROOM_NAME) as json_file:
    data = json.load(json_file)
    data['name']='overworld_after_changes'
    data['fuckoff'] = {
        "YouAre":{
            "ABitch" : True
        }
    }
    #This is getting the LIST of Layers
    dictLayers = data['layers']
    #TODO:  Make this increment the size of DictLayers first...
    print(len(dictLayers))
    dictLayers.append(dictDefaultLayer)
    
    for p in data['layers']:
        if p['modelName']==LAYERTAG_TILE:
            print('Name: ' + p['name'])
            if p['name']==GMS2_LAYER_TARGET:
                print('LayerType: '+p["modelName"])
                serialisedTileData = p['tiles']
                roomWidthInTiles = serialisedTileData['SerialiseWidth']
                count = 0
                for d in serialisedTileData['TileSerialiseData']:
                    #print('Website: ' + p[1])
                    #print('From: ' + p[2])
                    print(d,end = ',')
                    count=count+1
                    if (count>=roomWidthInTiles):
                        count=0
                        print('')
    #Save back to file
    with open(GMS2_ROOM_NAME,'w') as json_file:
        print('Saving back to '+"GMS2 file")
        json.dump(data, json_file,indent=4)


# parse an xml file by name
mydoc = minidom.parse(TILED_TMX)

items = mydoc.getElementsByTagName('layer')
# Parse each layer
print('Some layers (attributes):')
print(items[0].attributes['name'].value)
layerWidth = items[0].attributes['width'].value
layerHeight = items[0].attributes['height'].value
print(layerWidth +" W * "+layerHeight+" H")


# all item attributes
print('\nAll layer names:')
for elem in items:
    print(elem.attributes['name'].value)

#print(json.dumps(x,indent=4))

#c:/Users/alexa/Documents/GitHub/Tiled2GMS2/tiled2GMS2.py sample.xml 16 sample.xml sample.xml

#Tiled Format for Layers

#GMS FORMAT FOR LAYERS

#get arguments
# ['test.py', 'arg1', 'arg2', 'arg3']
#tileset file,pyxel export filename,GM:S room XML filename
def main(_tileset_name,_tileset_width,_pyxel_filename,_gmsroom_filename):

    if (verbose==True):
        print('Source Pyxel XML File: %s' % (_pyxel_filename))
        print('Target Game Maker Studio Room File: %s' % (_gmsroom_filename))

    try:
        print('Trying GMS2 file...')
        gms_tree = xml.etree.ElementTree.parse(_gmsroom_filename)
        print('Loaded GMS2 file!!!')
        pyxel_tree = xml.etree.ElementTree.parse(_pyxel_filename)
        print('Real done.')

    except IOError:
        sys.stderr.write('Error: Failed to open file %s' % (_gmsroom_filename))
        print('Error: Failed to open file')
    #
    #pyxel_root = pyxel_tree.getroot()
    #gms_root = gms_tree.getroot()
    #Stored in tiles node
    #tiles_node = gms_root.find('tiles')