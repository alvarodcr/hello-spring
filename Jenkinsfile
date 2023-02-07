pipeline {
  agent any
  options { 
	ansiColor("xterm")
	timestamps() 
}
  	
    stages {
        stage('Compile') {
            steps {
                sh "./mvnw compile -q"
            	script {
                    	def startTime = new Date().format("dd/MM/yyyy HH:mm:ss")
                    	echo "\033[32Compile finished at: ${startTime}\033[0m"
           	}
	    }
	 stage('Testing') {
            steps {
                sh "./mvnw test -q"
                script {
                        def startTime = new Date().format("dd/MM/yyyy HH:mm:ss")
                        echo "\033[32Test finished at: ${startTime}\033[0m"
                }
            }
		
	}
        stage('Deploy') {
            steps {
                sh "./mvnw spring-boot:run -q"
			 script {
                    def startTime = new Date().format("dd/MM/yyyy HH:mm:ss")
                    echo "\033[32mRun finished at: ${startTime}\033[0m"
        	        }            

            }
        }
    }
}

