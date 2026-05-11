node{
    def registryProjet='registry.gitlab.com/omar/presentations-jenkins'
    def IMAGE="{registryProjet}:version-${env.BUILD_ID}"
    
    stage('Clone'){
        git branch: 'main', url: 'https://github.com/bitzroma/jenkins-build-docker'
    }
    def img = stage('Build') {
        docker.build("$IMAGE", '.')
    }
    stage('Run') {
        img.withRun("--name run-$BUILD_ID -p 8081:80") { c->
        sh 'curl http://localhost:8081'
        }
    }
    stage('Push'){
        docker.withRegistry('https://registry.gitlab.com', 'Token_jenkins'){
            img.push 'latest'
            img.push()
            
        }
    }
}
