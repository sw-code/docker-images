FROM circleci/openjdk:11.0.1-node-browsers
    
USER root

ENV KUBECTL_VERSION=v1.12.2
    
ADD https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl    

USER circleci

CMD ["/bin/sh"]