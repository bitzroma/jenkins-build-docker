node {

    def registryProjet = 'ghcr.io/bitzroma/jenkins-build-docker'
    def IMAGE = "${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
        git branch: 'main', url: 'https://github.com/bitzroma/jenkins-build-docker'
    }

    stage('Build') {
        def img = docker.build(IMAGE, '.')

        stage('Run') {
            img.withRun("-p 8081:80 --name run-${env.BUILD_ID}") { c ->
                sh 'sleep 5'
                sh 'curl http://localhost:8081'
            }
        }

        stage('Push') {
            docker.withRegistry('https://ghcr.io', 'Jenkins_token') {
                img.push()
            }
        }
    }
}
