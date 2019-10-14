###! /usr/bin/python3
import sys, getopt
import trace
import xml.etree.ElementTree
import math
from xml.etree import ElementTree
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

# parse an xml file by name
tree = ElementTree.parse(TILED_TMX)
root = tree.getroot()
for child in root:
    if (child.tag=="layer"):
        if (child.get('name')=='Shadow'):
            for c in child:
                print((c.text).split(","))
tilesElement = root.find('tiles')

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