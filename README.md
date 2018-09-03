# fluttercrashcourse_server

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