# Udagram a Full-Stack Application

## Overview

Udagram is a simple, Instagram-like application where users can register and log in to share images, view images shared by other users, and interact with them. The application is a full-stack application with a front-end built in Angular and a back-end developed using Node.js and Express.

This project focuses on deploying this full-stack application to a cloud service provider (AWS), making it accessible to users. It will guide you through the process of setting up and configuring the necessary AWS services, such as a Postgres RDS database and an S3 bucket for storing images and Frontend. The project also integrates a CI/CD pipeline using CircleCI, which automates the deployment process whenever new code is pushed to the main GitHub branch.


## Installation and Setup

Follow the steps below to set up the application locally:

1. Make sure you have the following dependencies installed on your system:
    - Node v16.20.1 (LTS) or more recent.
    - npm 8.19.4 (LTS) or more recent.
    - AWS CLI v2.
    - Elastic Beanstalk CLI (EB CLI) v3.
    
2. Provision the necessary AWS services:
    - Create a publicly accessible RDS database running Postgres.
    - Create an S3 bucket for hosting the uploaded files.
    
3. Export the following environment variables needed:
    - `POSTGRES_USERNAME`: This is the username for your PostgreSQL database instance. You will set this when creating your RDS instance.
    - `POSTGRES_PASSWORD`: This is the password for your PostgreSQL database instance. This is also set when creating your RDS instance.
    - `POSTGRES_HOST`: This is the endpoint URL of your PostgreSQL database instance. You will receive this after setting up your RDS instance.
    - `POSTGRES_DB`: This is the name of the PostgreSQL database that you will be using for the application.
    - `AWS_BUCKET`: This is the name of the AWS S3 bucket where the images are to be stored. This bucket needs to be created and configured in AWS S3.
    - `AWS_REGION`: This is the region where your AWS services are hosted. It should be set based on where you've set up your RDS and S3 instances.
    - `JWT_SECRET`: This is the secret key used to sign and verify JSON Web Tokens for user authentication. You can choose a strong, random string as the secret key.
    - `AWS_PROFILE`:  This is the named profile in your AWS credentials file that the Elastic Beanstalk CLI will use to make calls to AWS services. You create a named profile using the `aws configure --profile profilename` command, and it associates set access keys with a specific name.

4.  Navigate to the `udagram-api` folder from the root of the repo (`cd udagram/udagram-api`), install the dependencies with `npm install`, and start the API in development mode with `npm run dev`.

5. Without closing the previous terminal, navigate to the `udagram-frontend` folder (`cd udagram/udagram-frontend`), install the dependencies with `npm install -f`, and start the front-end in development mode with `npm run start`.






- Manually initialize the backend Elastic Beanstalk environment with the name 'udagram-api' and environment 'udagram-api-dev'.
### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for tlink to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
