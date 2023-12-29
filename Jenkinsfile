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
            sh "git clone https://github.com/asmin97mhj/localrepo.git"
            sh "ls -ltr localrepo"
        }
    }
    stage ('Docker Build')
    {
        steps
        {
            sh 'cd localrepo && docker build -t pyapp .'
            sh 'docker run -dit --name calculator -p:8001:8001 pyapp'
        }
    }
    }
}
