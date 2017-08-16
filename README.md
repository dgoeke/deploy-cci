# Deploy CircleCI Docker Image

This is based on [AlexanderMann/deploy-cci](https://github.com/AlexanderMann/deploy-cci) but based on a full image instead of Alpine.  Alpine does not use glibc which means the protocol buffer compiler does not run inside it.
