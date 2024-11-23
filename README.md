# "to PDF" as a service

A simple web service that transforms the given document into a PDF file. 

Run with `docker run -p 8080:8080 khushboosinghal25/rapidfortkhushboo:latest
`

### URL parameters:

* `input`: URL of the document to transform.

## Running the server locally

* Build with `docker build -t khushboosinghal25/rapidfortkhushboo:latest .`
* Start with `docker run -p 8080:8080 khushboosinghal25/rapidfortkhushboo:latest`
* Open in your browser at `http://localhost:8080/`

## Deploy to your server
https://hub.docker.com/r/khushboosinghal25/rapidfortkhushboo
