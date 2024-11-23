# "to PDF" as a service

A simple web service that transforms the given document into a PDF file. 

Run with `docker run -p 8080:8080 khushboosinghal25/rapidfortkhushboo:latest
`

### URL parameters:

* `input`: URL of the document to transform.

## Running the server locally

* Build with `docker build . -t pdf`
* Start with `docker run -p 8080:8080 pdf`
* Open in your browser at `http://localhost:8080/?url=http://homepages.inf.ed.ac.uk/neilb/TestWordDoc.doc`

## Deploy to your server
https://hub.docker.com/r/khushboosinghal25/rapidfortkhushboo
