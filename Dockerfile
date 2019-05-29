# Base image for go builds on circle-ci
FROM circleci/golang:1.12.5
ENV PATH $PATH:/opt/google-cloud-sdk/bin
RUN wget -q -O /tmp/gcloud.tgz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-248.0.0-linux-x86_64.tar.gz && \
	sudo tar x -C /opt -z -f /tmp/gcloud.tgz && \
	sudo /opt/google-cloud-sdk/install.sh && \
	rm /tmp/gcloud.tgz

