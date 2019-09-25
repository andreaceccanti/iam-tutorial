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

The client credentials will be printed on the screen.
A client.json file is also obtained from IAM.

### Setup client credentials in the environment for the HTTPD 

Append the obtained text from the above step in the apache server env file:

```bash
  env/httpd.env
```

## Start the apache server

You will need to add an entry in your /etc/hosts file pointing to your docker
machine, which is generally localhost, but can be different if you use a VM to
boostrap docker.

On my mac I have the following:

```bash
127.0.0.1	localhost apache.test.example
```

Point your browser to apache.test.example

