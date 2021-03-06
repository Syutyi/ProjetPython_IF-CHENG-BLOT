#!/bin/bash
if [ ! -d "_env" ] 
then
	echo "The python environnement does not exist yet"
	python3 -m venv _env
fi
echo "The Python virtual envrionnement exists now, let's activate it"
source _env/bin/activate
echo "Loading the requirements"
pip install -r requirements.txt
echo "The virtual environnement has been activated, running the python code ..."
python main.py
echo "Process successfully completed !"
