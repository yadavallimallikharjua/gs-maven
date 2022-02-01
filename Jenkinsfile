pipeline {
	agent(node0, kller)
	parameters(name:'MAVEN_GOAL', defaultvalue:'mvn package', Description:'build branch')
	parameters([choice(name: 'BRANCH_TO_BUILD', choices: ['main', 'declarative'], description: 'build branch')])
	stage ('scm') {
		steps {
			git ('url : https://github.com/yadavallimallikharjua/gs-maven.git',branch:"${params.BRANCH_TO_BUILD}"
		}
	}
		stage ('build') {
			steps {
			sh "${params.MAVEN_GOAL}"
		}
		}
	}