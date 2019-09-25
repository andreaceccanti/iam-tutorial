# Tutorial

## Obtain client credentials

### Setup the client container

```bash
docker-compose build
docker-compose up -d trust
docker-compose up -d client
```

### Enter the client container

```bash
docker-compose exec client bash
cd demo && sh create-client.sh
```

The script will create a client, and the client credentials will be added to 
an enviornment file sourced by apache daemon.

## Start the apache server

You will need to add an entry in your /etc/hosts file pointing to your docker
machine, which is generally localhost, but can be different if you use a VM to
boostrap docker.

On my mac I have the following:

```bash
127.0.0.1	localhost apache.test.example
```

Then start the apache server by issuing the following command:

```bash
docker-compose up -d httpd
```

Finally point your browser to https://apache.test.example

