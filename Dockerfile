FROM ubuntu:20.04

# get latest packages and updates
RUN apt-get -yqq update

# Copy . (all in the current directory) to . (WORKDIR)
ADD . .

# install hugo extension
RUN apt-get -yqq install hugo

# the port we wish to expose
EXPOSE 1313

# CMD hugo server => does not work
# Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
# Calling noch localhost:1313

# https://stackoverflow.com/questions/59008572/hugo-server-in-docker-container-not-reachable-in-windows-10
# Hugo is binding to the loopback address (127.0.0.1) inside the container. It does this by default because hugo serve is meant strictly as a development tool, not for actually serving pages in production. In order to avoid any security issues, it defaults to binding to the loopback interface so that you can only connect to it from the local machine.


CMD hugo server --bind="0.0.0.0"
# Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
# Web Server is available at http://localhost:1313/ (bind address 0.0.0.0)
# Press Ctrl+C to stop
