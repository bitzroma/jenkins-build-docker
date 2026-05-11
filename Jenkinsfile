node {
    def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("omar/nginx:1.0")
    }

    stage('Run image') {
        app.withRun('-p 8081:80') { c ->
            sh 'echo "Container running"'
            sh 'curl http://localhost:8081'
        }
    }
}
