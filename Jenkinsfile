pipeline {
	agent {label, kller}
	parameters {
	string(name: 'MAVEN_GOAL', defaultValue: 'mvn package', description: 'this is maven goal')
	choice(name: 'BRANCH_TO_BUILD', choices: ['main', 'declarative'], description: 'build branch')
	}
	stages {
	stage('scm') {
		steps {
			git url : 'https://github.com/yadavallimallikharjua/gs-maven.git', branch:"${params.BRANCH_TO_BUILD}"
		}
	}
		stage('build') {
			steps {
			sh "${params.MAVEN_GOAL}"
		}
		}
	}
	}