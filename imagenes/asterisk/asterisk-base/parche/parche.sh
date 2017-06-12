#!/bin/bash

wget http://downloads.digium.com/pub/telephony/codec_opus/asterisk-13.0/x86-64/codec_opus-13.0_1.1.0-x86_64.tar.gz

tar -xvf codec_opus-13.0_1.1.0-x86_64.tar.gz

# Copiamos los modulos de opus
cp codec_opus-13.0_1.1.0-x86_64/format_ogg_opus.so /usr/lib/asterisk/modules/
cp codec_opus-13.0_1.1.0-x86_64/codec_opus.so /usr/lib/asterisk/modules/

cp codec_opus-13.0_1.1.0-x86_64/codec_opus_config-en_US.xml /var/lib/asterisk/documentation/thirdparty/

