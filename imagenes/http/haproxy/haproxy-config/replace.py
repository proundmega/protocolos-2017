import fileinput
import sys


ip = sys.argv[1]

archivo = open("haproxy.cfg.template", "r")

salida = ""
for linea in archivo:
	salida = salida + linea.replace("$ip", str(ip))

archivo = open("haproxy.cfg", "w")
archivo.write(salida)
