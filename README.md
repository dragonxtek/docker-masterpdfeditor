# docker-masterpdfeditor
Project to run a legacy Master PDF Editor version in docker.

## Usage

Create the container with the following sentence:

    docker build .


Save the container as masterpdf:lastest

Give execution permissions to masterpdf file and copy it into /usr/bin

    chmod +x masterpdfeditor
    sudo cp masterpdfeditor /usr/bin

Run masterpdfeditor in the same folder where you have the pdf to edit.

You could find your pdf in the /tmp docker folder 

![enter image description here](https://raw.githubusercontent.com/dragonxtek/docker-masterpdfeditor/master/screenshot.png)

## Remove update checker

If you are annoyed to see the update message every time you run masterpdf, you can disable it in Tools/Settings/Update and select Never as shown in the picture.

![enter image description here](https://raw.githubusercontent.com/dragonxtek/docker-masterpdfeditor/master/update.png)

Then you will have to commit the container to save that configuration with the following command:

```console
id=`docker ps | grep masterpdf:lastest | awk '{print $1}'`
docker commit $id masterpdf:lastest
```

