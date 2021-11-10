node() {
  stage('Clean Workspace') {
    cleanWs()
  }
  stage('Pull Code') {
    git branch: 'master', 
    credentialsId: 'github-nagithub18', 
    url: 'https://github.com/nagithub18/hello-world-code.git'
  }
  stage('Build'){
    sh '''
      cd $WORKSPACE
      mvn install
      mvn clean
      mvn compile
      mvn package
    '''
  }
  stage('Artifactory Archiving'){
    echo "Archiving Completed"
  }
  stage('Deploy Code') {
    sh '''
    sudo cp target/my-app-1.0-SNAPSHOT.jar /var/www/html/.

    '''
  }
  stage('Sending Mail') {
    sh '''
    echo "Mail sent ........."
    '''
  }
}
