FROM proundmega/container-pilot:latest

# *** Notas ***
# Si no se indica ningun CMD, el contenedor ejecuta: tail -f /dev/null que es para
# mantener con vida el contenedor y asi levantar procesos como daemons.

# Para que funcione el template favor dejar estas lineas tal cual estan
# empieza a agregar tus comandos justo luego de todas ellas.

# *** INICIO DE PARTE OBLIGATORIA ***

COPY config /etc
COPY bin /usr/local/bin
RUN chmod 777 /usr/local/bin/*

# *** FIN DE PARTE OBLIGATORIA ***



# Aqui va tu configuiracion de docker normal




