# docker-tasks

### Tasks for Docker lesson:
### Task 1:
  - __Install docker__
  - __Prepare a dockerfile based on Apache or Nginx image__
  
In this task I used official Nginx image from DockerHub, you can find it by [this link](https://hub.docker.com/layers/library/nginx/alpine-slim/images/sha256-60a7532e3b954c902cb651aa29a2c757c495e11c264368fdf77b139985b923c6?context=explore)

I've decided to use file from my Github [here](https://github.com/digitalake/nginx-templates) as a source for custom Nginx "Hello Page"

The command ADD with URL feature was used + chmod for using by Nginx (rw------- > rw-r--r--)
```
ADD </path/ or URL> </destination/path>
```

<img src="https://user-images.githubusercontent.com/109740456/214439867-cc05d025-aaad-4ad9-a794-b1711dcac94c.png" width="700">

  - __Added your own index.html page with your name and surname to the docker image__
  - __Run the docker container at port 8080__
  
I have Dockerfile i described below locally:

<img src="https://user-images.githubusercontent.com/109740456/214440742-e796deb5-8519-488a-a6c3-89902b4d52d7.png" width="400">

I'm using docker build command to build and tag my image:

<img src="https://user-images.githubusercontent.com/109740456/214440786-a9ba1e1c-cbf9-4e90-95af-0a440fb4ed1c.png" width="700">

Running container from an image i've just created and mapping port 8080 to 80 as the task says:

<img src="https://user-images.githubusercontent.com/109740456/214442304-03c0592c-4d78-4bac-b76e-ca191f9a0ca9.png" width="600">


  - Open page in Web Browser

<img src="https://user-images.githubusercontent.com/109740456/214442069-5002a8d7-37f0-476a-93d4-c3bfba960465.png" width="700">



  - Report save in GitHub repository
### Task 2
  - Prepare private and public network
  - Prepare one dockerfile based on ubuntu with the ping command
  - One container must have access to the private and public networks the second container must be in the private network
  - Criterias:
    - Run a container that has access to the public network and ping some resources (example: google.com )
    - The second container ping the first container via a private network
  - Report save in GitHub repository
