# boardingPass

Submit form details to create a boarding pass

source env/bin/activate from root dir for python venv
flask run to run application

runs on localhost:5000

Run docker locally:
docker image build -t capstone-project .
docker run -p 5000:5000 -d capstone-project

Go to localhost:5000

Run aws-infra.yml to create networking infrastructure for cluster
Run create-cluster.sh to create Cloudformation stacks for EKS cluster
cluster.yml includes all stack info to create clusters
