pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                // Clonar el repositorio de GitHub
                git branch: 'main', url: 'https://github.com/blackbolt121/atlassian-forge-jenkins-POC.git'
            }
        }
        stage('Update code') {
            steps {
                // Ejecutar comandos para actualizar el código si es necesario
                sh 'git pull origin main'
                // Puedes agregar más comandos aquí según sea necesario
            }
        }
        stage('Compile and Deploy') {
            steps {
                sh 'cd static/hello-world && npm install && npm run build'
                sh 'echo $(pwd)'
                sh 'forge settings set usage-analytics true && npm install && forge deploy --non-interactive'
                sh 'forge install --upgrade --site rubengarciaordazdev.atlassian.net/ --product jira --non-interactive -e development'
            }
        }
    }
}
