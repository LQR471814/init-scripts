#!/bin/bash

# setup ytmdl
# python3 -m pip install ytmdl

YTMDL_LOCATION=$(python3 -m pip show ytmdl | grep -Eo 'Location:\s*(.*)' | awk '{print $2}')
PYTHON_LOCATION=$(which python3)

echo "#!/bin/bash
cd $YTMDL_LOCATION/ytmdl && \
python3 main.py \$@" > ~/bin/ytmdl
chmod +x ~/bin/ytmdl

