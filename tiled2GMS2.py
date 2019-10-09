###! /usr/bin/python3
import sys, getopt
import trace
import xml.etree.ElementTree
import math
from xml.etree.ElementPath import prepare_child, xpath_tokenizer
import json

##
__license__ = "WTF"
__version__ = "1.0.0"
__maintainer__ = "theinfamousmrmeow"
##
GMS2_room = ""


#For reasons beyond mortal ken, this is the empty TileID...
EMPTY_TILE = 2147483648 
verbose = True
x = {
  "name": "John",
  "age": 30,
  "married": True,
  "divorced": False,
  "children": ("Ann","Billy"),
  "pets": None,
  "cars": [
    {"model": "BMW 230", "mpg": 27.5},
    {"model": "Ford Edge", "mpg": 24.1}
  ]
}

print(json.dumps(x,indent=4))

# some JSON:
x =  '{ "name":"John", "age":30, "city":"New York"}'

# parse x:
y = json.loads(x)

# the result is a Python dictionary:
y["age"]=3
print(y["age"])




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