pipeline {
    agent any
    stages {
        stage ('docker image creation and push to nexus repo') {
            steps {
                script {
//                    withCredentials([string(credentialsId: 'nexus_passwd', variable: 'nexus_cred')]) {
                     sh '''
                      ls -ltra
                      sed -i "s;IMAGENAME;$imagename;" jenkins-k8s.yaml
                    '''
//                    }               
                }
            }
        }
    }
}
