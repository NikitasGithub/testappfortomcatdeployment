pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Checkout the source code from your version control system (e.g., Git)
                git 'https://github.com/NikitasGithub/testappfortomcatdeployment.git'

                // Perform the build using Ant
                bat 'ant clean build'
            }
        }



        stage('Package') {
            steps {
                // Create the Docker image for your Java application
                bat 'docker build -t ant-image .'
            }
        }

        stage('Deploy') {

            steps {

               bat 'docker run -d --name c01 -p 8086:8080 ant-image'
                }
            }
    }
}
