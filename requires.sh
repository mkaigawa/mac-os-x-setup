#!/bin/bash

# install
which pip > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "install pip."
    sudo easy_install pip
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

which xcode-select > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "install xcode-select."
    sudo xcode-select --install
else
    echo "xcode-select installed."
fi
