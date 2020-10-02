
# Start Docker Container
.PHONY: jenksup
jenksup:
	docker run -d -v jenkins_home:/var/jenkins_home -p 8888:7777 -p 50002:50002 jenkins/jenkins:lts
