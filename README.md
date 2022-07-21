# docker-masterpdfeditor
Project to run a legacy Master PDF Editor version in docker.

## Usage

Create the container with the following sentence:

    docker build .


Save the container as masterpdf:lastest
Give read permissions to masterpdf file and copy it in /usr/bin

    chmod +x masterpdfeditor
    sudo cp masterpdfeditor /usr/bin

Run masterpdfeditor in the same folder where you have the pdf to edit.

You could find your pdf in the /tmp docker folder 

![enter image description here](https://raw.githubusercontent.com/dragonxtek/docker-masterpdfeditor/master/screenshot.png)

