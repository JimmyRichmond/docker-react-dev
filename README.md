## Dockerised React App

This docker image provides a development environment with [Create React App](https://github.com/facebookincubator/create-react-app).

### Configuration

* Control the name of the app directory with the `APPNAME` environment variable
* The default app name is `myapp`
* Generated app is stored in `/app/$APPNAME` inside the container
* The app runs on port 3000
* Application source code can be exposed by mounting the `/app` volume

### Example

`docker run -ti -p 3000:3000 -e APPNAME=react-app -v $(pwd):/app dylanrhysscott/docker-react-dev`
