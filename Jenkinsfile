pipeline
{
    agent any
    stages
    {
    stage('Git Connect')
    {
        steps
        {
            echo "Welcome"
            sh "ls -ltr"
	    sh "rm -r localrepo"
            sh "git clone https://github.com/asmin97mhj/localrepo.git"
            sh "ls -ltr localrepo"
        }
    }
    stage ('Docker Build')
    {
        steps
        {
            sh 'cd localrepo && docker build -t pyapp .'
	    sh 'docker stop calculator1 && docker rm calculator1'
            sh 'docker run -dit --name calculator1 -p:8001:8001 pyapp'
        }
    }
    stage ('Terraform IAC')
    {
    	steps
	{
	sh 'cd Terraform && terraform init && terraform apply -auto-approve && terraform destroy -auto-approve'
	}
    }
}
}
