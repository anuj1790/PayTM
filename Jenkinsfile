node{
   stage('SCM Checkout'){
       git credentialsId: 'GITHUB_CRED', url: 'https://github.com/anuj1790/PayTM'
   }
   stage('Build Docker Images'){
       docker.build("airports-assembly:1.0.1 -f airports-assembly-dockerfile")
	   docker.build("countries-assembly:1.0.1 -f countries-assembly-dockerfile")
   }
}
