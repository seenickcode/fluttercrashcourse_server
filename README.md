# fluttercrashcourse_server

This code is meant to serve up example endpoints for the course. It uses the Dart Aqueduct framework.

The deployment runs the server using supervisor and is meant to run behind a reverse proxy. The reverse proxy is currently configured in our other 'fluttercrashcourse' project by simply forwarding requests matching path /api to our app.

## Running the Application Locally

Run `aqueduct serve` from this directory to run the application. For running within an IDE, run `bin/main.dart`. By default, a configuration file named `config.yaml` will be used.

## Running Tests

```
pub run test
```

The default configuration file used when testing is `config.src.yaml`.

## Deploying an Application

```
cd ansible
ansible-playbook -u root -i inventories/prod --private-key ~/.ssh/fcc-prod-web-01 --extra-vars "depkey_file_priv=~/.ssh/fcc-prod-depkey depkey_file_pub=~/.ssh/fcc-prod-depkey.pub" -vvv deploy.yml
```