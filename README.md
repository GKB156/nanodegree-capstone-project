# boardingPass

Submit form details to create a boarding pass

source env/bin/activate from root dir for python venv
flask run to run application

runs on localhost:5000

Docker:
docker image build -t flask_docker .
docker run -p 5000:5000 -d flask_docker

No longer uses PHP, uses HTML rendering in Flask
