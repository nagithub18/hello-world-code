node() {
  stage('Clean Workspace') {
    cleanWs()
  }
  stage('Pull Code') {
    git branch: 'main', 
    credentialsId: 'github-nagithub18', 
    url: 'https://github.com/nagithub18/mywebsite.git'
  }
  stage('Build'){
    sh '''
    cd $WORKSPACE
    mvn install clean compile package
    '''
  }
  stage('Artifactory Archiving'){
    echo "Archiving Completed"
  }
  stage('Deploy Code') {
    sh '''
    sudo cp my-app-1.0-SNAPSHOT.jar /var/www/html/.

    '''
  }
  stage('Sending Mail') {
    sh '''
    echo "Mail sent ........."
    '''
  }
}
