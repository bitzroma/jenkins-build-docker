node {

    def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("bitzroma-nginx")
    }

    stage('Run image') {
        app.withRun('-p 8081:80') {

            sh 'echo "Container OK"'
            sleep 5
            sh 'curl http://localhost:8081'
        }
    }
}
