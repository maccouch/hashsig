#!/usr/bin/env python

# *** python script by philip@maccouch.com ***
# ***      licensed under GNU GPL v2	   ***
# * http://www.gnu.org/licenses/gpl-2.0.html *


import sys
import hashlib
from pprint import pprint

try:
	lista= sys.argv[1:]
	for elemento in lista:
		print '\n  Hash of',elemento,':'
	
		hashdict={}

		hashdict['md5']=hashlib.md5(elemento).hexdigest()
		hashdict['sha1']= hashlib.sha1(elemento).hexdigest()
		hashdict['sha256']= hashlib.sha256(elemento).hexdigest()
		hashdict['sha512']= hashlib.sha512(elemento).hexdigest()

		pprint(hashdict)
		# for elemento2 in hashdict:
		# 	pprint '    ',elemento2,':', hashdict[elemento2]
		# 	#sys.print(elemento)
		# print ' '
except:
	 sys.exit(2)