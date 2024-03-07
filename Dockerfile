FROM jenkins/jenkins:latest

USER root

ENV NODE_MAJOR 20

RUN apt-get update && \
   apt-get install -y ca-certificates curl gnupg && \
   curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
   echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | \
   tee /etc/apt/sources.list.d/nodesource.list && \
   apt-get update && \
   apt-get install nodejs -y && \
   npm i -g @forge/cli@latest

USER jenkins

ENV FORGE_EMAIL rego199903@gmail.com
ENV FORGE_API_TOKEN

