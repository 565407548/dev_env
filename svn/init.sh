#/bin/bash

# rm -rf ./instance
mkdir -p ./instance/repos ./instance/config
touch ./instance/config/passwd
chmod -R 777 ./instance/config/passwd
touch ./instance/config/subversion-access-control
chmod -R 777 ./instance/config/subversion-access-control
