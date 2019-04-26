
#iINSTALL PYTHON3 AND GIT
sudo apt-get install python3
sudo apt-get install git

#INSTALL LATEST VERSION OF PIP
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
pip —-version

#INSTALL GOOGLE CLOUD API
-gcloud init
-gcloud info

#GENERATE SSH KEY ON LOCAL MACHINE
ssh-keygen -t rsa -f ~/.ssh/tk_rsa -C “comments”
cd ~/.ssh/
vi tk_rsa
	#copy and paste entire text
chmod 400 tk_rsa

#INSTALL KAGGLE
sudo apt update
sudo apt install python3-pip
pip3 install kaggle —user
	#download kaggle.json!
cd ~/.kaggle/
nano kaggle.json
	{"username":"tkulbash","key":"ff6e20f7fbbe646fc24d17964b720fdc"}
chmod 600 /home/Tanner/.kaggle/kaggle.json
	#navigate to kaggle file folder of choice
kaggle competitions download -c house-prices-advanced-regression-techniques


#INSTALL PACKAGE DEPENDENCIES
sudo apt-get update
sudo apt-get install bzip2 git libxml12-dev

#INSTALL MINICONDA
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source .bashrc
conda install scikit-learn pandas jupyter ipython

#CREATE FIREWALL RULE FOR JUPITER
gcloud compute --project=practical-lodge-227915 firewall-rules create jupyter-rule --direction=INGRESS --priority=1000 —network=default --action=ALLOW --rules=tcp:8888 --source-ranges=0.0.0.0/0
	#jupyter
jupyter notebook --generate-config
jupyter notebook password
	#add line to following python code
vim .jupyter/jupyter_notebook_config.py
c.NotebookApp.ip = '*'
	#hit 	esc:wq     to quit
jupyter-notebook --no-browser --port=8888
jupyter notebook —ip=0.0.0.0
	#access jupyter in browser @ browser: http://35.221.62.144:8888/
	#ctrl+c -> y 	to quit in terminal
	#connect to spyder or IDE
conda install spyder-kernels
python -m spyder_kernels.console
	#try using sftp to download latest .json file once you hit run and using that in Spyder Connect
jupyter —runtime-dir
#navigate to /run/user/1002/jupyter/kernel-id.json

#INSTALL GOOGLE CLOUD STORAGE
pip install google-cloud-storage
gsutil cp /home/Tanner/test.ipynb gs://practical-lodge-227915.appspot.com
	#copy files to local
	#check where kernel.json is to upload into spyder, then download file to local
jupyter --runtime-dir
	#to local: use local terminal!
gcloud compute scp instance-2:/home/Tanner/test.ipynb  ~/Documents/
gcloud compute scp instance-2:/run/user/1002/jupyter/kernel-2579.json  ~/Documents/
	#to instance: use local terminal!
gcloud compute scp ~/Documents/python/GCP/spyder_test.py instance-2:/home/Tanner/

#INSTALL VENV - WILL CREATE FOLDER WITH PROJECT NAME (#1)
python -m venv kaggle_second
source kaggle_second/bin/activate
pip list
pip freeze > requirements.txt
rm -rf kaggle_second/

	#activate a new project and then run to restore:
pip install -r requirements.txt
	#keep all system packages in pip list, but no new packages will be available in base
python -m venv kaggle_second -—system-site-packages

#iINSTALL/ACTIVATE VIRTUAL ENVIRONMENT (#2)
pip install —upgrade virtualenv
cd your-project
virtualenv —python python3 env
source env/bin/activate
#to deactivate type: deactivate

#CREATE CONDA ENVIRONMENTS (#3)
mkdir kaggle1
cd gaggle1
conda create —name kaggle_first
conda activate kaggle_first
 #used to be: source activate kaggle_first
conda deactivate
pip list
	#pip list might show all libraries including base environment
	#someone can create an environment using:
conda env create -f environ.yaml
conda list
conda env list
