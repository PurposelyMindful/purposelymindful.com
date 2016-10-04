node('ec2-win') {

   stage('Checkout') { // for display purposes
      checkout scm
      bat 'bundle install'
      bat 'jekyll -version'
   }

   stage ('Build') {
       bat 'jekyll clean'
       bat 'jekyll build'
       bat 'dir'
   }

   stage('Archive Artifacts') {
       archive 'target/**'
   }



   milestone label: 'start-deploy', ordinal: 1
   stage('Deploy') {

   }
}