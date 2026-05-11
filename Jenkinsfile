node{
   def app

	stage('Clone') {
	      checkout scm
	}
	
	stage(' Build image') {
	     app =docker.build("omar/nginx")
	}

	stage('Run image') {
	     docker.image('omar/nginx').withRun('-p 8081:80') { c ->
	      sh 'docker ps'
	      sh 'curl http://localhost:8081'

	}
	}
}
