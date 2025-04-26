# E-Market System

This is a distributed, microservices-based e-commerce system designed to handle various functionalities such as user management, product management, order processing, and payment processing.

## How to Run

This repo adds all other repos as submodules, make sure to clone the repo with the `--recurse-submodules` option.

You may look at the `docker-compose.yml` file to see how the services are configured.

### Single Service

You can run any service on any computer on any network, simply only run the desired service from docker-compose. For example, if you want to run the `account-service`, you can do so by running the following command:

```bash
docker-compose up account-service
```

**But make sure** you copy `.env.example` to `.env` and set the environment variables if needed, and remove the `depends_on` section from that section in `docker-compose.yml` file.

### All Services, Frontend and Database

If you want to run all the services, with database, frontend and everything, you can do so by running the following command:
```bash
docker-compose up
```

**But make sure** you copy `.env.example` to `.env` and set the environment variables accordingly.