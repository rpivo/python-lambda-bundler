# python-lambda-bundler

A simple template for bundling any Python function for Lambda and Amazon Linux.

> Note: This template currently bundles Python 3.8, but this can be changed inside build.sh.

### Why use Docker?

If you're using a non-Linux operating system as your development machine, you'll need to bundle Python dependencies for Linux somehow. This setup uses the `amazonlinux` Docker image to bundle Python dependencies for Lambda.

### Setup

To build the Lambda zip:

- Create an environment file inside the sh folder called **env.sh** that exports a `LOCAL_PATH` variable representing the current directory where the build will occur. Ex:

```sh
export LOCAL_PATH=~/Documents/projects/my-folder;
```

- Add Python package dependencies to build.sh (see `# install python dependencies` section).
- Start Docker.
- Run `sh start.sh`.

If you plan on running this Docker setup on multiple projects, **you should rename the container as specified inside the start.sh file** (which is named as `bundler` currently) so that a different container that specifies a bind mount with the specific path is used for the project.
