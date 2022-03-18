# docker-hadoop-spark

**General Architecture**

![docker-hadoop-spark](https://user-images.githubusercontent.com/42489236/159064404-99db5ce6-4dfe-4cc0-a22d-4129c108b950.jpg)

In this application there are 1 namenode and 3 datanodes. First of all, the installation and configuration settings of the hadoop environment are performed on the ubuntu:18.04 image on docker. Then Spark is installed on the hadoop environment. These processes are designed as an automatic installation by transferring them to Dockerfile and Shell Script. Download the my_app.zip file and follow the instructions in the Report of the Project file.
