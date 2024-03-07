pipeline {
    agent any

    stages {
        stage('Clonar Repositorio') {
            steps {
                // Clonar el repositorio de GitHub
                git branch: 'main', url: 'https://github.com/blackbolt121/atlassian-forge-jenkins-POC.git'
            }
        }
        stage('Actualizar Código') {
            steps {
                // Ejecutar comandos para actualizar el código si es necesario
                sh 'git pull origin main'
                // Puedes agregar más comandos aquí según sea necesario
            }
        }
        stage('Compilar y Desplegar') {
            steps {
                sh 'cd static/hello-world && npm run build'
                sh 'cd ../.. && forge deploy'
            }
        }
    }
}
