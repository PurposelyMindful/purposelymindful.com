node {

   stage('Checkout') { // for display purposes
      checkout scm
   }

   stage ('Build') {

         if (isUnix()) {
            sh "/usr/local/bin/bundle install"
            sh "jekyll -version"
            sh "jekyll clean"
            sh "jekyll build"
         } else {
             bat 'bundle install'
             bat 'jekyll /version'
             bat 'jekyll clean'
             bat 'jekyll build'
         }

   }

   stage('Archive and Stash Artifacts') {
       archiveArtifacts artifacts: 'target/**', excludes: null, fingerprint: true, onlyIfSuccessful: true
       stash includes: 'target/**', name: 'jekyllsite'
   }



   milestone label: 'start-deploy', ordinal: 1
   stage('Deploy') {
        unstash 'jekyllsite'
        
   }
}
