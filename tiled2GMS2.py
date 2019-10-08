###! /usr/bin/python3
import sys, getopt
import trace
import xml.etree.ElementTree
import math
from xml.etree.ElementPath import prepare_child, xpath_tokenizer

__license__ = "WTF"
__version__ = "1.0.0"
__maintainer__ = "theinfamousmrmeow"

#PYXEL FORMAT
#<tilemap tileswide="32" tileshigh="70" tilewidth="16" tileheight="16">
#  <layer number="14" name="Water">
#    <tile x="0" y="0" tile="-1" rot="0" flipX="false"/>

#GMS FORMAT
#  <tiles>
#   <tile bgName="new_tileset" x="304" y="688" w="16" h="16" xo="0" yo="0" id="10001160" name="inst_BE90E27B" depth="1000000" locked="0" colour="4294967295" scaleX="1" scaleY="1"/>

#get arguments
# ['test.py', 'arg1', 'arg2', 'arg3']
#tileset file,pyxel export filename,GM:S room XML filename
def main(_tileset_name,_tileset_width,_pyxel_filename,_gmsroom_filename):

    verbose = True

    if (verbose):
        print('Source Pyxel XML File: %s' % (_pyxel_filename))
        print('Target Game Maker Studio Room File: %s' % (_gmsroom_filename))

    try:
        print('Trying GMS2 file...')
        gms_tree = xml.etree.ElementTree.parse(_gmsroom_filename)
        print('Loaded GMS2 file!!!')
        pyxel_tree = xml.etree.ElementTree.parse(_pyxel_filename)

    except IOError:
        sys.stderr.write('Error: Failed to open file %s' % (_gmsroom_filename))
        print('Error: Failed to open file')
    #
    #pyxel_root = pyxel_tree.getroot()
    #gms_root = gms_tree.getroot()
    #Stored in tiles node
    #tiles_node = gms_root.find('tiles')

    
if __name__ == "__main__":

    usage="usage: script.py <tileset> <tilesetPixelWidth> <sourcePyxelFile> <destinationGMSRoomFile>"
    if (len(sys.argv)!=5):
        #print ('Number of arguments:'% len(sys.argv)% 'arguments.')
        #print ('Argument List:'% str(sys.argv))
        print(usage)
    else:
        try:
            sys.argv.reverse()
            sys.argv.pop()
            #main(sys.argv.pop(),128,'pyxel.xml','map_overworld.room')
            main(sys.argv.pop(),sys.argv.pop(),sys.argv.pop(),sys.argv.pop())
        except IOError:
            sys.stderr.write(usage)
            print(usage)