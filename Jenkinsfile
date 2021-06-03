 pipeline{
    agent {
        label 'NODEJS'
    }
    stages {
        stage('Download Dependencies') {
            steps {
                sh '''
                 export GOPATH=/home/ubuntu/go && export GOBIN=$GOPATH/bin && go get && go build
            '''
            }
        }
        stage('prepare Artifacts') {
            steps {
                sh '''
                zip -r login.zip *
            '''
            }
        }
        stage('upload Artifacts') {
            steps {
                sh '''
           curl -f -v -u admin:admin123 --upload-file login.zip http://3.238.184.24:8081/repository/login/login.zip
        '''
            }
        }
    }
}
