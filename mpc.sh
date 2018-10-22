# INSTALACAO DE DEPENDENCIAS
sudo apt-get install build-essential cmake wget make tar
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libxml2 git

# CLONANDO SOURCE
SOURCE_FOLDER="SOURCE_FOLDER"
mkdir -p $SOURCE_FOLDER && cd $SOURCE_FOLDER
wget http://downloads.ociweb.com/MPC/MPC_4_0_0.tar.gz
tar xf MPC_4_0_0.tar.gz
rm MPC_4_0_0.tar.gz
