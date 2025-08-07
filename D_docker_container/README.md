# Project D – Docker Container Deployment

This project demonstrates the deployment of a simple Flask API in a Docker c>

## Features

- Flask REST API
- Docker containerization
- Basic monitoring via logs
- Network exposure via ports

## Build and Run

```bash
docker build -t flask-app .
docker run -d -p 5000:5000 flask-app

## Scaling and Common Issues

### Scaling

- Use Docker Compose or Kubernetes to scale replicas.
- Set up reverse proxies (e.g., Nginx) and load balancers.

### Troubleshooting

| Problem                          | Cause                            | Solu>
|----------------------------------|----------------------------------|----->
| App not responding               | Flask binding to 127.0.0.1       | Bind>
| Port not reachable from outside  | EC2 Security Group closed port   | Open>
| Container crashes                | App code error / missing lib     | Chec>
| App not logging                  | Logging misconfigured            | Use >

