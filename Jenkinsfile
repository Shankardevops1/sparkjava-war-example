@Library('myLibrary') _
pipeline {
    agent any
    stages {
        
        stage('Hello World') {
            steps {
                script 
                {
                    hello.hello()
                }
            }
        }
        
        stage('Checkout code from Git') {
            steps {
                
                     parallel (
                "1": {dir("java-hello-world-with-maven"){script {checkout_git.checkout_git("java-hello-world-with-maven")}}},
                "2": {dir("sparkjava-war-example"){script {checkout_git.checkout_git("sparkjava-war-example")}}}
                )
                
            }
        }
        
        
        stage('aws code build') {
            steps {
                 
                     parallel (
                "1": {dir("java-hello-world-with-maven"){script {awscodebuild.awscodebuild(" java-project-2")}}},
                "2": {dir("sparkjava-war-example"){script {awscodebuild.awscodebuild("java-project-4")}}}
                )
            }
        }
    }
    
}
