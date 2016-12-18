# DEVOPS + ANSIBLE

This project involves the configuration of a DevOps environment using Ansible.
Apart from the usual tools, utilities, and services that would be common on a CentOS 7 server, we are also configuring:

#### Java 1.8 ####
I am a Java developer and most of my projects run on Java.
http://www.oracle.com/technetwork/java/javase/overview/index.html

#### Maven 3.3.9 ####
Most of my Java applications are built using Maven, which manages my dependencies and build profiles.
https://maven.apache.org/index.html

#### MySQL 5.6 ####
The MySQL database is being installed here, not for the applications we will be managing, but for those that will be running as part of the devops infrastructure. For example, Artifactory (which I plan to provision soon) will need it, along with messaging services and an ESB perhaps.
https://dev.mysql.com/downloads/mysql/5.6.html

#### Artifactory 4.14.3 ####
All third-party dependencies will live in this repository, locally referenced in the Maven applications. We will also deploy our build products to an internal repository hosted in this server, to be used as part of application deployment in production.
https://www.jfrog.com/artifactory/

#### Git 2.11.0 ####
For source code management and version, I use Git (GitHub and BitBucket). Our build process will check out code from Git repositories and build it for the various target environments as needed.
https://git-scm.com/

#### Jenkins 2.36 ####
Jenkins is what will build our artifacts, do testing, documentation, and finally deployment to our various environments. In many regards, Jenkins ties together all the other components previously configured in order to build and distribute our software.
https://jenkins.io/

#### Vagrant 1.9.1 and VirtualBox 5.1 ####
We will need VirtualBox and Vagrant to create test environments when Jenkins kicks off tests. This will be done only on the real machine (not sure you can successfully run a VM within a VM). Only when testing within or real machines will we spin up virtual machines.
- https://www.virtualbox.org/
- https://www.vagrantup.com/
