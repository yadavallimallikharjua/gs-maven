node('killer') {
    stage('git') {
		git branch: 'main', credentialsId: 'node0', url: 'https://github.com/yadavallimallikharjua/gs-maven.git'
	}
	stage('build') {
		sh 'mvn -f initial/ clean package'
	}
	stage('archive artifacts') {
  'target/*.jar'
	}
}