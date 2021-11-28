#!/bin/bash
OS4LINUX="arch"
echo "--------------------------------------------------------"
echo "Vosk Installation Script (${OS4LINUX})"
echo "--------------------------------------------------------"
# see niebert on GitHub: https://github.com/niebert/vosk4linux
# License: GNU Public License
ENUM=1
SUMMARY=""
MSG=""
declare -i ENUM


############ VOSK #########################
MESSAGE="(${ENUM}) Python Installation of VOSK";
echo "${MESSAGE}"
# mkdir "vosk4python"
ANSWER="Y"
read -e -p  "Do want VOSK for Python to be installed on your linux system? (Y/N) " ANSWER
if [ $ANSWER = "y" ]
    then
        ANSWER="Y"
fi
if [ $ANSWER = "Y" ]
    then
        sudo pip3 install vosk
		SUMMARY += "$MESSAGE is DONE\n";
		echo "${SUMMARY}"
fi


############ VOSK API #########################
ENUM+=1
echo "--------------------------------------------------------"
MESSAGE="(${ENUM}) API for VOSK Installation";
echo "${MESSAGE}"
ANSWER="Y"
read -e -p  "Do want Vosk API to be installed on your linux system? (Y/N) " ANSWER
if [ $ANSWER = "y" ]
    then
        ANSWER="Y"
fi
if [ $ANSWER = "Y" ]
    then
        git clone https://github.com/alphacep/vosk-api
		#cd vosk-api/python/example
		#wget https://alphacephei.com/kaldi/models/vosk-model-small-en-us-0.15.zip
		#unzip vosk-model-small-en-us-0.15.zip
		#mv vosk-model-small-en-us-0.15 model
		SUMMARY+="$MESSAGE is DONE\n";
		echo "${SUMMARY}"
fi


############ MODEL #########################
ENUM+=1
echo "--------------------------------------------------------"
MESSAGE="($ENUM) Language Model Installation for VOSK";
echo "${MESSAGE}"
echo "Which language model do you want to install?"
echo "Small caps means small light weight modell - Big caps means large models."
echo "  (e/E) English small/large" 
echo "  (f/F) French small/large" 
echo "  (g/G) German small/large" 


PATH4MODEL="https://alphacephei.com/kaldi/models"
URL4MODEL=""
NAME4MODEL=""
ANSWER="e"

cd vosk-api/python/example
		
read -e -p  "Languages? (e/E) (f/F) (g/G)  " ANSWER
if [ $ANSWER = "e" ]
    then
        NAME4MODEL="vosk-model-small-en-us-0.15"
        URL4MODEL="${PATH4MODEL}/${NAME4MODEL}.zip"
        wget "$URL4MODEL"
        unzip "${NAME4MODEL}.zip"
		mv "$NAME4MODEL" model
        SUMMARY+="$MESSAGE - $NAME4MODEL was downloaded - DONE\n";
		echo "${SUMMARY}"
fi
if [ $ANSWER = "E" ]
    then
	NAME4MODEL="vosk-model-en-us-0.15"
        URL4MODEL="${PATH4MODEL}/${NAME4MODEL}.zip"
        wget "$URL4MODEL"
        unzip "${NAME4MODEL}.zip"
	mv "$NAME4MODEL" model
        SUMMARY+="$MESSAGE - $NAME4MODEL was downloaded - DONE\n";
	echo "${SUMMARY}"
fi
if [ $ANSWER = "g" ]
    then
        NAME4MODEL="vosk-model-small-de-0.15"
        URL4MODEL="${PATH4MODEL}/${NAME4MODEL}.zip"
        wget "$URL4MODEL"
        unzip "${NAME4MODEL}.zip"
	mv "$NAME4MODEL" model
        SUMMARY += "$MESSAGE - $NAME4MODEL was downloaded - DONE\n";
	echo "${SUMMARY}"
fi
if [ $ANSWER = "G" ]
    then
        NAME4MODEL="vosk-model-de-0.15"
        URL4MODEL="${PATH4MODEL}/${NAME4MODEL}.zip"
        wget "$URL4MODEL"
        unzip "${NAME4MODEL}.zip"
		mv "$NAME4MODEL" model
        SUMMARY+="$MESSAGE - $NAME4MODEL was downloaded - DONE\n";
		echo "${SUMMARY}"
fi
if [ $ANSWER = "f" ]
    then
        NAME4MODEL="vosk-model-small-fr-pguyot-0.3"
        URL4MODEL="${PATH4MODEL}/${NAME4MODEL}.zip"
        wget "$URL4MODEL"
        unzip "${NAME4MODEL}.zip"
	mv "$NAME4MODEL" model
        SUMMARY+="$MESSAGE - $NAME4MODEL was downloaded - DONE\n";
	echo "${SUMMARY}"
fi
if [ $ANSWER = "F" ]
    then
        NAME4MODEL="vosk-model-fr-0.6-linto-2.2.0"
        URL4MODEL="${PATH4MODEL}/${NAME4MODEL}.zip"
        wget "$URL4MODEL"
        unzip "${NAME4MODEL}.zip"
	mv "$NAME4MODEL" model
        SUMMARY+="$MESSAGE - $NAME4MODEL was downloaded - DONE\n";
	echo "${SUMMARY}"
fi
# current directory is vosk-api/python/example

ENUM+=1
echo "--------------------------------------------------------"
MESSAGE="($ENUM) PyCharm Python Editor (${OS4LINUX})";
echo "${MESSAGE}"
ANSWER="Y"
read -e -p  "Do want PyCharm Editor (${OS4LINUX}) to be installed on your linux system? (Y/N) " ANSWER
if [ $ANSWER = "y" ]
    then
        ANSWER="Y"
fi
if [ $ANSWER = "Y" ]
    then
	if [ $OS4LINUX = "arch" ]
		then
			sudo  pacman -S pycharm-community-edition
			SUMMARY+="$MESSAGE is DONE\n";
			echo "${SUMMARY}"

	fi
	if [ $OS4LINUX = "ubuntu" ]
		then
			sudo  pacman -S pycharm-community-edition
			SUMMARY+="$MESSAGE is DONE\n";
			echo "${SUMMARY}"

	fi
fi

############ VOSK #########################
# current directory is vosk-api/python/example

ENUM+=1
echo "--------------------------------------------------------"
MESSAGE="(${ENUM}) Test VOSK with WAV File";
echo "${MESSAGE}"
# mkdir "vosk4python"
ANSWER="Y"
read -e -p  "Do want to test VOSK with a WAV file in Python? (Y/N) " ANSWER
if [ $ANSWER = "y" ]
    then
        ANSWER="Y"
fi
if [ $ANSWER = "Y" ]
    then
	python3 ./test_simple.py test.wav
	SUMMARY+="$MESSAGE is DONE\n";
	echo "${SUMMARY}"
fi

############ VOSK PYTHON SETUP #########################
# current directory is vosk-api/python/example
cd ..
# current directory is vosk-api/python

ENUM+=1
echo "--------------------------------------------------------"
MESSAGE="(${ENUM}) Python VOSK Setup Call";
echo "${MESSAGE}"
# mkdir "vosk4python"
ANSWER="Y"
read -e -p  "Do want to call the setup for VOSK in Python? (Y/N) " ANSWER
if [ $ANSWER = "y" ]
    then
        ANSWER="Y"
fi
if [ $ANSWER = "Y" ]
    then
    	cd ..
	sudo python3 ./setup.py install
	SUMMARY+="$MESSAGE is DONE\n";
	echo "${SUMMARY}"
fi




echo "--------------------------------------------------------"
echo "Summary of Vosk Installation"
echo "--------------------------------------------------------"
echo "${SUMMARY}"
echo "--------------------------------------------------------"
