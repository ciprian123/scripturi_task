#!/bin/bash

# creez fisierul dat ca parametru, ii dau drepturi de executare si ii adaug shebang-ul
# this script automates several comands: shebang, touch, chmod and vim. 
if [  "$#" -ne 1 ]; then 
	echo "this script requires one argument wich is the script name"
exit 1 
fi

touch $1
chmod +x $1
echo "#!/bin/bash" > $1
vim $1
