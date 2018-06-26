if [ -z ${GH_TOKEN+x} ]
then
  git clone https://github.com/juj/emsdk.git --depth=1
else
  echo "Cloning with Token"
  git clone https://${gh_token}:github.com/juj/emsdk.git --depth=1
fi

cd emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh
cd ..
