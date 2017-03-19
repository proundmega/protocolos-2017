import fileinput
import sys


ip = sys.argv[1]

archivo = open("named.conf.masters.template", "r")

salida = ""
for linea in archivo:
	salida = salida + linea.replace("$ip", str(ip))

archivo = open("named.conf.masters.release", "w")
archivo.write(salida)
