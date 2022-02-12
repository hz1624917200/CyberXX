# CyberXX - Cyber Security Testing Platform

> ​	Based on DVWA and Elastic Stack. Containerized Project.

## Introduction

​	This is a project based on my first paper (not yes published). It runs on Raspberry Pie in the form of docker containers. This project is managed by docker-compose file under root directory.

​	Users, mainly students, learn cyber security attack and defense technology in DVWA, which is wrapped in a container. The codes in DVWA platform are slightly edited to log the submission in log files in `/dvwa/vulnerability/logs/`. Then Filebeat will collect and ship the submissions to Elasticsearch (in an isolated official container). Kibana is responsible for analyze and provide visualization of data for the platform administrators(teachers).

## Get started

1. pull my project.

2. **Configure your Docker Repository Image URL**. Otherwise, downloading images will be unbearably slow.

3. ```bash
   cd YOUR_GIT_PATH
   sudo docker-compose up
   ```

4. Configure the Kibana Dashboard as you like. *(index lifetime template is below)*

## Others important

* Filebeat indexes have alias `Filebeat`
* Elasticsearch will run in `single-node` mode
* Kibana service is on port `5601`

## Write at the end

​	This is the project of my FIRST international paper, though not published yet, in my life. The content of the article is empty. However, it was a challenge to my English level. I'm glad that, after seven months of torture, **I FINALLY DID IT!!!** Looking forward to a good result.
​	After all, thanks for reading this. I sincerely hope you have fun with this project. Best wishes.

Sincerely,
Zheng

