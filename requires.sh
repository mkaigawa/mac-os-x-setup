#!/bin/bash

# install
which pip > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "install php."
    sudo easy_install php
else
    echo "pip installed."
fi

which ansible > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "install ansible."
    sudo pip install ansible
else
    echo "ansible installed."
fi
