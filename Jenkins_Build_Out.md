Started by user admin

Obtained Jenkinsfile from git https://github.com/anuj1790/PayTM.git

Running in Durability level: MAX_SURVIVABILITY

[Pipeline] Start of Pipeline

[Pipeline] node

Running on Jenkins in C:\WINDOWS\system32\config\systemprofile\AppData\Local\Jenkins\.jenkins\workspace\Assignment

[Pipeline] {

[Pipeline] stage

[Pipeline] { (SCM Checkout)

[Pipeline] git

The recommended git tool is: NONE

using credential GITHUB_CRED

 > C:\Program Files\Git\cmd\git.exe rev-parse --is-inside-work-tree # timeout=10
 
Fetching changes from the remote Git repository

 > C:\Program Files\Git\cmd\git.exe config remote.origin.url https://github.com/anuj1790/PayTM # timeout=10
 
Fetching upstream changes from https://github.com/anuj1790/PayTM

 > C:\Program Files\Git\cmd\git.exe --version # timeout=10
 
 > git --version # 'git version 2.28.0.windows.1'
 
using GIT_ASKPASS to set credentials GITHub Details

 > C:\Program Files\Git\cmd\git.exe fetch --tags --force --progress -- https://github.com/anuj1790/PayTM +refs/heads/*:refs/remotes/origin/* # timeout=10
 
 > C:\Program Files\Git\cmd\git.exe rev-parse "refs/remotes/origin/master^{commit}" # timeout=10
 
Checking out Revision 6a3e7ab2ed085596d36ef018c496a40f0c74df40 (refs/remotes/origin/master)

 > C:\Program Files\Git\cmd\git.exe config core.sparsecheckout # timeout=10
 
 > C:\Program Files\Git\cmd\git.exe checkout -f 6a3e7ab2ed085596d36ef018c496a40f0c74df40 # timeout=10
 
 > C:\Program Files\Git\cmd\git.exe branch -a -v --no-abbrev # timeout=10
 
 > C:\Program Files\Git\cmd\git.exe branch -D master # timeout=10
  
 > C:\Program Files\Git\cmd\git.exe checkout -b master 6a3e7ab2ed085596d36ef018c496a40f0c74df40 # timeout=10
 
Commit message: "removed wrong docker file"

 > C:\Program Files\Git\cmd\git.exe rev-list --no-walk 17df04e0f72ee6288062be19087a74b7fd5f1bfd # timeout=10
 
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build Docker Images)
[Pipeline] isUnix
[Pipeline] bat

C:\WINDOWS\system32\config\systemprofile\AppData\Local\Jenkins\.jenkins\workspace\Assignment>docker build -t airports-assembly:1.0.1 -f airports-assembly-dockerfile . 
Sending build context to Docker daemon  432.9MB

Step 1/3 : FROM openjdk:8-jre-alpine3.9

 ---> f7a292bbb70c
 
Step 2/3 : COPY  DokerImageSource/airports-assembly-1.0.1.jar /airports-assembly-1.0.1.jar

 ---> Using cache
 
 ---> 7ece6780d682
 
Step 3/3 : CMD ["java", "-jar", "/airports-assembly-1.0.1.jar"]

 ---> Using cache
 
 ---> 4698e59bde40
 
Successfully built 4698e59bde40

Successfully tagged airports-assembly:1.0.1

SECURITY WARNING: You are building a Docker image from Windows against a non-Windows Docker host. All files and directories added to build context will have '-rwxr-xr-x' permissions. It is recommended to double check and reset permissions for sensitive files and directories.
[Pipeline] isUnix
[Pipeline] bat

C:\WINDOWS\system32\config\systemprofile\AppData\Local\Jenkins\.jenkins\workspace\Assignment>docker build -t countries-assembly:1.0.1 -f countries-assembly-dockerfile . 
Sending build context to Docker daemon  432.9MB

Step 1/3 : FROM openjdk:8-jre-alpine3.9

 ---> f7a292bbb70c
 
Step 2/3 : COPY  DokerImageSource/countries-assembly-1.0.1.jar /countries-assembly-1.0.1.jar

 ---> Using cache
 
 ---> 4d77a23f90a6
 
Step 3/3 : CMD ["java", "-jar", "/countries-assembly-1.0.1.jar"]

 ---> Using cache
 
 ---> fbc06c0c79e5
 
Successfully built fbc06c0c79e5

Successfully tagged countries-assembly:1.0.1

SECURITY WARNING: You are building a Docker image from Windows against a non-Windows Docker host. All files and directories added to build context will have '-rwxr-xr-x' permissions. It is recommended to double check and reset permissions for sensitive files and directories.
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS
