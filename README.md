# Go Application CI/CD with Drone CI

This repository contains examples of CI/CD workflows for a Go application using Drone CI. Drone CI is a popular open-source continuous integration and delivery platform that automates building, testing, and deploying software.

## Workflow 1: Build and Deploy on push to main branch

This workflow builds the Go application, runs tests, and deploys it to a staging server when code is pushed to the main branch. You can customize the `myregistry.com` and `myapp` values in the `deploy` step to your own values.

## Workflow 2: Build, Test, and Deploy on Pull Request

This workflow builds the Go application, runs tests, and deploys it to a staging server when a pull request is opened or updated. You can customize the `myregistry.com` and `myapp` values in the `deploy-staging` and `deploy-production` steps to your own values.

## Workflow 3: Build and Deploy on Git Tag

This workflow builds the Go application, creates a Docker image with the Git tag, and deploys it to a production server when a Git tag is pushed. You can customize the `myregistry.com` and `myapp` values in the `docker-build` and `deploy-production` steps to your own values.

## Workflow 4: Build and Push Docker Image on Pull Request

This workflow builds the Go application and creates a Docker image with the pull request number as the tag. It then pushes the image to a Docker registry. You can customize the `myregistry.com` and `myapp` values in the `docker-build-and-push` step to your own values.

To use these examples, you'll need to set up Drone CI with your own build environment and Docker registry. You'll also need to create secrets for your Docker registry credentials.

For more information on how to use Drone CI, please refer to the official documentation: https://docs.drone.io/

## Contributing

Feel free to contribute to this project by submitting pull requests or reporting issues.

## License
This project is licensed under the MIT License.
