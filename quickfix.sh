# INSTALACAO DE DEPENDENCIAS
sudo apt-get install g++ automake libtool git

# CLONANDO SOURCE
SOURCE_FOLDER="SOURCE_FOLDER"
mkdir -p $SOURCE_FOLDER && cd $SOURCE_FOLDER
git clone https://github.com/quickfix/quickfix.git

# COMPILACAO E INSTALACAO
cd quickfix
./bootstrap
./configure
make
make check
sudo make install