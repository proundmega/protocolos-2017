#!/bin/bash

cd java-app-1.0

bash build.sh

if [ $? == 0 ]; then
	cd ..

	cd java-app-1.1

	bash build.sh

	if [ $? == 0 ]; then
		cd ..
	
		cd haproxy

		bash build.sh
	fi
fi
