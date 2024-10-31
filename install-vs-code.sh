#!/bin/bash

echo "download deb file from this link"
echo "https://code.visualstudio.com/Download"
cd Downloads/
read file
sudo apt install ./$file
