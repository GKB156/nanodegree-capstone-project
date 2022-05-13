[![CirclCI](https://circleci.com/gh/GKB156/nanodegree-capstone-project.svg?style=svg)](LINK)

# Udacity Cloud DevOps Engineer Nanodegree - Capstone Project

## Overview

This python Flask application contains an HTML form that submits interview
information to a boarding pass template, which generates a boarding pass-style
ticket with an applicant's interview information it.

This project incorporates CICD and uses rolling deployment.

You will need:

- An AWS account
- A CircleCI account
- An ECR repository

## Steps to run application on AWS

1. Create a CircleCI job to this repo, and include the following environment variables:\
   `AWS_ACCESS_KEY_ID` = The access ID for your configured AWS user\
   `AWS_SECRET_ACCESS_KEY` = The access key for your configured AWS user\
   `AWS_DEFAULT_REGION` = Default region in AWS, e.g., us-east-1\
   `REGISTRY_ID` = The AWS account number for the account creating the resources\
   `REPO_NAME` = The name for your AWS ECR repo

2. Create AWS networking infrastructure\
   Firstly run `aws cloudformation deploy --template-file aws-infra.yml --stack-name <chosen-name>` to set up the network infrastructure\
   Then run `eksctl create cluster -f cluster.yml` to create an EKS cluster linked to the network - please note that you'll need to update cluster.yml with your newly created VPC and subnet IDs from the previous step

3. Run the jobs in the CircleCI pipeline
   Go to CircleCI and trigger the pipeline to run\
   Feel free to comment out the 'undeploy-application' job in order to have a chance
   to use the application from EKS\
   To access the application from EKS, copy the Load-Balancer address to your browser and add `:5000`
   to the end.

4. Delete your cloudformation stacks once finished
   Warning: the EKS cluster is quite costly, don't forget to delete once finished. You can either
   re-activate the 'delete-cluster' job in the pipeline, or delete manually from AWS console.

Other notes:\
You can run the application on a local docker container using the following commands:\
`docker image build -t capstone-project .`\
`docker run -p 5000:5000 -d capstone-project`

Or you can run it locally using Flask, by the following commands:\
`python3 -m venv .env` from root dir of project to create python venv\
`source .env/bin/activate` to activate python venv\
`flask run` to run application

Both run on localhost:5000
