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
            sh 'docker run -dit --name appcalc -p:8000:8000 pyapp'
        }
    }
    }
}
