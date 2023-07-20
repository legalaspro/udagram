# Udagram Application Dependencies

The Udagram application is a full-stack web application that utilizes multiple technologies for its development and deployment. This document provides a comprehensive overview of the application's dependencies.

## Frontend:

The frontend of the application is developed using Angular and Ionic, all written in **TypeScript**. The dependencies for the frontend include:

* **Angular**: A platform that makes it easy to build applications with the web. It integrates declarative templates, dependency injection, end-to-end tooling, and integrated best practices to solve development challenges.
* **Ionic**: An open-source mobile UI toolkit for building high-quality, cross-platform native and web app experiences. It offers a library of pre-designed components, allowing faster development.
* **TypeScript**: TypeScript is a typed superset of JavaScript that compiles to plain JavaScript. It's used to write both the frontend and backend of this application, bringing in a robust type system and modern ES6+ features.
* **Node.js and npm**: Required for Angular development.

## Backend:

The backend of the application is developed using Node.js and Express.js, with **TypeScript**. The dependencies for the backend include:

* **Node.js**: A JavaScript runtime built on Chrome's V8 JavaScript engine, required to run the server.
* **Express.js**: A minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications.
* **PostgreSQL**: PostgreSQL is used as the database for the application, to store user and image metadata.
* **TypeScript**: TypeScript is used to write the backend code, providing static types and modern JavaScript features.

## Testing:

Both unit tests and end-to-end tests are utilized to maintain code health:

* **Karma**: A test runner for JavaScript that runs on Node.js.
* **Mocha**: A JavaScript test framework running on Node.js, making asynchronous testing simple and fun.
* **Jasmine**: A behavior-driven development framework for testing JavaScript code that does not depend on any other JavaScript frameworks.
* **Protractor**: An end-to-end test framework for Angular and AngularJS applications.

## Infrastructure:

The application is hosted on Amazon Web Services (AWS) utilizing several services:

* **Amazon RDS**: Amazon Relational Database Service makes it easy to set up, operate, and scale PostgreSQL relational databases in the cloud. A PostgreSQL instance is set up for this application.
* **Amazon S3**: Amazon Simple Storage Service is storage for the internet. This application uses S3 for hosting the static frontend files and storing images uploaded by the users.
* **AWS Elastic Beanstalk**: An easy-to-use service for deploying and scaling web applications and services developed with Node.js. The backend of this application is deployed to AWS using Elastic Beanstalk.

The different dependencies come together to create a robust, scalable application ready for production deployment.