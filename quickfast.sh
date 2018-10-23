# INSTALACAO DE DEPENDENCIAS
sudo apt-get install build-essential cmake git

# CLONANDO SOURCE
SOURCE_FOLDER="SOURCE_FOLDER"
mkdir -p $SOURCE_FOLDER && cd $SOURCE_FOLDER
SOURCE_FOLDER=$(pwd)
# git clone https://github.com/ddkclaudio/quickfast.git

# COMPILACAO
export QUICKFAST_ROOT=$SOURCE_FOLDER/quickfast
export MPC_ROOT=$SOURCE_FOLDER/MPC
export BOOST_ROOT=/usr
export BOOST_CFG=
export BOOST_ROOT_LIB=/usr/lib
export BOOST_STATIC_LIB_PREFIX=
export BOOST_VERSION=boost
export BOOST_TEST_CHECKPOINT=
export XERCES_ROOT=$SOURCE_FOLDER/xerces-c
export XERCES_LIBPATH=$XERCES_ROOT/src/.libs
export XERCES_LIBNAME=libxerces-c-3.1
export XERCES_INCLUDE=$XERCES_ROOT/src
export PATH=$QUICKFAST_ROOT/bin:$MPC_ROOT:$PATH
export LD_LIBRARY_PATH=$XERCES_LIBPATH:$QUICKFAST_ROOT/lib:$BOOST_ROOT_LIB:$LD_LIBRARY_PATH

cd $QUICKFAST_ROOT
$MPC_ROOT/mwc.pl -type make QuickFAST.mwc
cd $QUICKFAST_ROOT/src
make

# INSTALACAO
sudo cp -r $SOURCE_FOLDER/quickfast/src/Application/ /usr/include/
sudo cp -r $SOURCE_FOLDER/quickfast/src/Messages/ /usr/include/
sudo cp -r $SOURCE_FOLDER/quickfast/src/Common/ /usr/include/
sudo cp -r $SOURCE_FOLDER/quickfast/src/Codecs/ /usr/include/
sudo cp -r $SOURCE_FOLDER/quickfast/src/Communication/ /usr/include/
sudo cp $SOURCE_FOLDER/quickfast/lib/libQuickFAST.so /usr/lib


# sudo cp -r $SOURCE_FOLDER/quickfast/src/Application/ /usr/local/include/
# sudo cp -r $SOURCE_FOLDER/quickfast/src/Messages/ /usr/local/include/
# sudo cp -r $SOURCE_FOLDER/quickfast/src/Common/ /usr/local/include/
# sudo cp -r $SOURCE_FOLDER/quickfast/src/Codecs/ /usr/local/include/
# sudo cp -r $SOURCE_FOLDER/quickfast/src/Communication/ /usr/local/include/
# sudo cp $SOURCE_FOLDER/quickfast/lib/libQuickFAST.so /usr/local/lib
