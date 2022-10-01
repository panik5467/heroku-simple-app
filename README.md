# heroku-nginx-simple-app

Barebones example of deploying
[Super Lightweight Nginx Image](https://github.com/flashspys/docker-nginx-static)
to Heroku. Serves an example html file at the root directory.

## Try it now!

Fire up an nginx proxy on [Heroku](https://www.heroku.com/) with a single click:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Manual deployment

You will need to create a Heroku account and install the Heroku CLI, eg.
`brew install heroku`.

```
git clone git@github.com:rjoonas/heroku-docker-nginx-example.git
cd heroku-docker-nginx-example
heroku container:login
heroku create
heroku container:push web
heroku container:release web
heroku open
```
