ROOT_SOURCE=~/qbx
OPEN_SOURCE=$ROOT_SOURCE/libs/opensource

clear

if [ ! -d "$ROOT_SOURCE" ]; then 
    mkdir -p $OPEN_SOURCE && cd $OPEN_SOURCE
    sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev  libxml2 git
    wget http://downloads.ociweb.com/MPC/MPC_4_0_0.tar.gz
    wget https://archive.apache.org/dist/xerces/c/3/sources/xerces-c-3.1.4.tar.gz
    git clone https://github.com/objectcomputing/quickfast.git
    for f in *.tar.gz; do tar xf "$f"; done
    mv xerces-c-3.1.4 xerces-c
    rm *.tar.gz
    chmod +x $OPEN_SOURCE/MPC/mwc.pl
    cd $OPEN_SOURCE/xerces-c
    ./configure && make
fi


clear
export QUICKFAST_ROOT=$OPEN_SOURCE/quickfast
export MPC_ROOT=$OPEN_SOURCE/MPC
export BOOST_ROOT=/usr
export BOOST_CFG=
export BOOST_ROOT_LIB=/usr/lib
export BOOST_STATIC_LIB_PREFIX=
export BOOST_VERSION=boost
export BOOST_TEST_CHECKPOINT=
export XERCES_ROOT=$OPEN_SOURCE/xerces-c
export XERCES_LIBPATH=$XERCES_ROOT/src/.libs
export XERCES_LIBNAME=libxerces-c-3.1
export XERCES_INCLUDE=$XERCES_ROOT/src
export PATH=$QUICKFAST_ROOT/bin:$MPC_ROOT:$PATH
export LD_LIBRARY_PATH=$XERCES_LIBPATH:$QUICKFAST_ROOT/lib:$BOOST_ROOT_LIB:$LD_LIBRARY_PATH

cd $QUICKFAST_ROOT
$MPC_ROOT/mwc.pl -type make QuickFAST.mwc
cd $QUICKFAST_ROOT/src
make
