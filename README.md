# ctxtroubleshoot
The purpose of this exercise is to test the troubleshooting skills of a data engineer. The exercise involves the following:

1. Building a docker image named __"troubleshoot"__. 
2. Using the __"troubleshoot"__ docker image to run a python code that generates an html report.

The code below is used to build the docker image.

```
docker build -t troubleshoot .
```

The code below is used to build the html report.

```
docker run --rm troubleshoot pythonrun > troubleshoot.html
```

The Dockerfile, jupyter notebook, bootstrap script and other files are intentionally modified to ensure that it does not build the docker images and generate the html report successfully. The tasks of the data engineer are as follows:

1. Identify and correct any syntax errors in the scripts of this project.
2. Add missing commands to the scripts to ensure that the docker image is built successfully and report is generated.


The data engineer who successfully completed this task should see troubleshoot.html file showing the report below.



![Alt text](/images/ctxtroubleshoot.png?raw=true "ctxtroubleshoot")
