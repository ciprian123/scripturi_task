#!/bin/bash

# creez fisierul dat ca parametru, ii dau drepturi de executare si ii adaug shebang-ul
touch $1
chmod +x $1
echo "#!/bin/bash" > $1
vim $1
