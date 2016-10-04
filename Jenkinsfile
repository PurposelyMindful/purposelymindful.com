node('ec2-win') {

   stage('Checkout') { // for display purposes
      checkout scm
      bat 'bundle install'
   }

/*   stage('Save and Publish Artifacts') {
       archive 'target/*.jar'
   } */



   milestone label: 'start-deploy', ordinal: 1
   stage('Deploy') {

   }
}