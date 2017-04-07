Este docker que esta aqui simplemente es un prototipo de contenedor.
Por si solo no hace mucho, pero da un template de trabajo para otros contenedores.

*** Archivos explicados ***

- build.sh: Construye la imagen. El nombre lo obtiene de /config/docker.conf

- Dockerfile: La base de la imagen. El mismo archivo explica donde debes de agregar tus configuraciones.

*** Carpetas explicadas ***

- config: aqui van los archivos de configuracion de la imagen. Estos se copian en el contendor en la carpeta /etc. Por el momento
	  hay 2 archivos:

	* docker.conf: Solo exporta el nombre que tendra la imagen deseada.

	* containerpilot.json: Este es el archivo de configuracion de containerpilot. Aqui se indican los servicios
				que se brindad junto con los servicios requeridos. Tambien posee listeners de eventos
				como onStart, onStop, etc que son utiles para hacer otras cosas mas formales

- bin: Esta carpeta posee los scripts que usara containerpilot al ocurrir un evento. Para ver cuando se ejecuta cada script por favor
       revise el archivo containerpilot.json para ver cuando se llaman. 
