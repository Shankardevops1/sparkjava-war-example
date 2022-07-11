
pipeline {
    agent any
    tools {
        maven "Maven"
    }
    stages {
        
        stage('pull code from github repo') {
            steps {
                git credentialsId: 'first', url: 'git@github.com:Shankardevops1/sparkjava-war-example.git'
            }
        }
        
         
        }
 

post {
        
        
        success {
             //sh 'echo "This Build is succesfull." | mailx -vvv -s "Build Status" shankargajula0811@gmail.com'
             sh 'echo "Hi, Build is successful. Please check the below logs for the same." | mailx -vvv -s "Build logs for ${JOB_NAME}" -a /var/lib/jenkins/jobs/${JOB_NAME}/builds/${BUILD_NUMBER}/log "shankargajula0811@gmail.com"'
             //emailext attachLog: true, body: 'This is My test mail', subject: 'Test Mail', to: 'shankargajula0811@gmail.com'
             }
        failure {
            sh 'echo "Hi, Build is Failure. Please check the below logs for the same." | mailx -vvv -s "Build logs for ${JOB_NAME}" -a /var/lib/jenkins/jobs/${JOB_NAME}/builds/${BUILD_NUMBER}/log "shankargajula0811@gmail.com"'
             //sh 'echo "This Build is Failed." | mailx -vvv -s "Build Status" shankargajula0811@gmail.com'
             }
             
    
    }
    
 }   
    
