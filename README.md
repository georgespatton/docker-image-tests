This is a test against some of the most popular base images for Docker containers.  

Here is the truncated output of the test.sh script as of September 28, 2020 from my machine:

./test.sh 
18.04: Pulling from library/ubuntu
Digest: sha256:646942475da61b4ce9cc5b3fadb42642ea90e5d0de46111458e100ff2c7031e6
Status: Image is up to date for ubuntu:18.04
docker.io/library/ubuntu:18.04
20.04: Pulling from library/ubuntu
Digest: sha256:bc2f7250f69267c9c6b66d7b6a81a54d3878bb85f1ebb5f951c896d13e6ba537
Status: Image is up to date for ubuntu:20.04
docker.io/library/ubuntu:20.04
3.12.0: Pulling from library/alpine
Digest: sha256:185518070891758909c9f839cf4ca393ee977ac378609f700f60a771a2dfe321
Status: Image is up to date for alpine:3.12.0
docker.io/library/alpine:3.12.0
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu              18.04               56def654ec22        3 days ago          63.2MB
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu              20.04               9140108b62dc        3 days ago          72.9MB
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
alpine              3.12.0              a24bb4013296        4 months ago        5.57MB
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM ubuntu:18.04
 ---> 56def654ec22
Step 2/2 : RUN DEBIAN_FRONTEND=noninteractive     TZ=America/Los_Angeles     apt-get update &&     apt -y install apache2
 ---> Using cache
 ---> e21057e688f2
Successfully built e21057e688f2
Successfully tagged ubuntu:18.04-test
Sending build context to Docker daemon  2.048kB
Step 1/3 : FROM ubuntu:20.04
 ---> 9140108b62dc
Step 2/3 : ENV TZ=America/Los_Angeles
 ---> Using cache
 ---> ff007ea6b92a
Step 3/3 : RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&     apt update &&     apt -y install apache2
 ---> Using cache
 ---> 35dcdc6170ef
Successfully built 35dcdc6170ef
Successfully tagged ubuntu:20.04-test
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM alpine:3.12.0
 ---> a24bb4013296
Step 2/2 : RUN apk add apache2
 ---> Using cache
 ---> 7f61e60aa080
Successfully built 7f61e60aa080
Successfully tagged alpine:3.12.0-test
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu              18.04-test          e21057e688f2        5 minutes ago       189MB
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu              20.04-test          35dcdc6170ef        2 minutes ago       209MB
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
alpine              3.12.0-test         7f61e60aa080        24 minutes ago      11MB

