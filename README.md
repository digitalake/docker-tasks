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


  - __Open page in Web Browser__

<img src="https://user-images.githubusercontent.com/109740456/214442069-5002a8d7-37f0-476a-93d4-c3bfba960465.png" width="700">



  - __Report save in GitHub repository___
### Task 2

Task scheme:

 <img src="https://user-images.githubusercontent.com/109740456/214474457-85297065-246c-47e4-b62e-dacf1266f266.png" width="700">


For performing this task i used docker-compose plugin and created simple docker-compose file.

  - __Prepare private and public network__
  
 <img src="https://user-images.githubusercontent.com/109740456/214473791-f111e52a-9f09-45cb-a495-dc4fa4277e72.png" width="250">

Docker inspect outputs for networks:
Internal:
    
<img src="https://user-images.githubusercontent.com/109740456/214474687-36c6ddda-3dd7-4da6-a645-788ed180a40a.png" width="500">

External:
  
<img src="https://user-images.githubusercontent.com/109740456/214474838-f74b5e96-4976-41b2-bef3-e29ef130be72.png" width="500">


  
  - __Prepare one dockerfile based on ubuntu with the ping command__
  
Dockerfile snapshot:

<img src="https://user-images.githubusercontent.com/109740456/214475436-6a3ac91e-54f2-411d-8174-912909b5e34d.png" width="500">

  - __One container must have access to the private and public networks the second container must be in the private network__
  
Docker inspect outputs for container's networks section:

Frontend container:

<img src="https://user-images.githubusercontent.com/109740456/214475969-badf7f9d-78bf-46f7-9e95-524fce3dc66b.png" width="500">

Backend container:

<img src="https://user-images.githubusercontent.com/109740456/214475890-f8680faf-e41a-45ee-bdef-b9b74f5e86f2.png" width="500">

  - __Criterias:__
    - __Run a container that has access to the public network and ping some resources (example: google.com)__    
    - __The second container ping the first container via a private network__
    
Run execution:
    
<img src="https://user-images.githubusercontent.com/109740456/214476243-83591d3d-c7e2-47d6-9bb4-1a06706d9d47.png" width="350">

<img src="https://user-images.githubusercontent.com/109740456/214476512-254f3104-f611-43a6-988c-53ef2f4d3586.png" width="600">

Ping results:

Frontend container:

<img src="https://user-images.githubusercontent.com/109740456/214477101-9f901d29-e81e-4fb2-8987-463a4d272e70.png" width="500">

Backend container:

<img src="https://user-images.githubusercontent.com/109740456/214476865-60ee58f8-203c-4fd3-b9cd-4a399bd38398.png" width="500">
   
  - __Report save in GitHub repository__
  
