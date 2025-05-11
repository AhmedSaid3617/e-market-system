# E-Market System

This is a distributed, microservices-based e-commerce system designed to handle various functionalities such as user management, product management, and payment processing.

## Running the System

### Prerequisites
- Docker
- Docker Compose

### Steps to Run

1 - Clone the repository with submodules:
```bash
git clone --recurse-submodules <repo-url>
```

2 - If there is no `.env` file, copy the `.env.example` file to `.env` and set the environment variables accordingly. Most importantly, set `SERVER_PORT` which determines the port on which everything is accessed.

3 - Build all the services, with database, frontend and everything:
```bash
docker compose build
```

4- Run all the services, with database, frontend and everything:
```bash
docker compose up
```

5 - Go to `http://localhost:8899` in your browser to access the frontend.

6 - To close the services, run:
```bash
docker compose down
```