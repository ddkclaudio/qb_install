# INSTALACAO DE DEPENDENCIAS
sudo apt-get install build-essential cmake

# CLONANDO SOURCE
SOURCE_FOLDER="SOURCE_FOLDER"
mkdir -p $SOURCE_FOLDER && cd $SOURCE_FOLDER
wget https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_62_0.tar.gz
tar xfz boost_1_62_0.tar.gz
rm boost_1_62_0.tar.gz

# COMPILACAO E INSTALACAO
cd boost_1_62_0
sudo ./bootstrap.sh
sudo ./b2 --without-python --prefix=/usr -j 4 link=shared runtime-link=shared install
