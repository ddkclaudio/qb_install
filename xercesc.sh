# INSTALACAO DE DEPENDENCIAS
sudo apt-get install build-essential cmake wget make tar
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libxml2 git

# CLONANDO SOURCE
SOURCE_FOLDER="SOURCE_FOLDER"
mkdir -p $SOURCE_FOLDER && cd $SOURCE_FOLDER
wget https://archive.apache.org/dist/xerces/c/3/sources/xerces-c-3.1.4.tar.gz
tar xf xerces-c-3.1.4.tar.gz
mv xerces-c-3.1.4 xerces-c
rm xerces-c-3.1.4.tar.gz

# COMPILACAO E INSTALACAO
cd xerces-c
./configure
make
sudo make install
