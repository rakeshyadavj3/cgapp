pipeline {
    agent any
    environment {
        VERSION = "${env.BUILD_ID}"
    }
    
    stages {
        stage ('docker image creation and push to nexus repo') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'nexus_passwd', variable: 'nexus_cred')]) {
                     sh '''
                      ls -ltra
//                       docker build -t 35.74.253.177:8083/springapp:${VERSION} .
                      docker login -u admin -p $nexus_cred 35.74.253.177:8083
//                       docker push 35.74.253.177:8083/springapp:${VERSION}
//                       docker rmi 35.74.253.177:8083/springapp:${VERSION}
                    '''
                    }               
                }
            }
        }        
    }
}
