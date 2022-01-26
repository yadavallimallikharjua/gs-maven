node('killer') {
    stage('git') {
		git url: 'https://github.com/yadavallimallikharjua/gs-maven.git'
	}
	stage('build') {
		sh 'mvn clean package'
	}
	stage('archiveArtifacts artifacts') {
		'**/TEST-*.xml', followSymlinks: false
	}
	stage('Archive Junit-formatted test results') {
		junit 'targert/surefire reports/.*xml'
	}
}