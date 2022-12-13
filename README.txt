This project dockerizes ascii-art-web app and runs it in a docker container.
"build&run.sh" file contains the commands to build a docker image for ascii-art-web and run it in a container.
Open the app's directory in a terminal and run this command there:
./build&run.sh

The ascii-art-web app will start running inside a container and it will be available here:
http://localhost:4000/

To delete the image and the container, you can run the following command, it runs a file that runs the necessary commands:
./stop&delete.sh

***

Docker commands that were used:

To build the image:
docker build -t ascii-art-web:rizash .
It builds an image (isolated filesystem) for the app, "-t" flag is used to tag the created image.

To run create and run a container on the image:
docker run -d -p 4000:4000 --name ascii-art-web-multi ascii-art-web:rizash
"-d" flag is used to run the container in a detached mode, "-p" flag publishes the container's port to the host, and "--name" flag names the container.

To stop the container:
docker stop ascii-art-web-multi

To delete the container:
docker rm ascii-art-web-multi

To delete the container despite it running:
docker rm -f ascii-art-web-multi

To delete the created image (an image can only be deleted after a container that runs on the image is deleted):
docker image rm ascii-art-web:rizash