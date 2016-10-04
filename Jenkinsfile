node {

   stage('Checkout') { // for display purposes
      checkout scm
   }

/*   stage('Save and Publish Artifacts') {
       archive 'target/*.jar'
   } */



   milestone label: 'start-deploy', ordinal: 1
   stage('Deploy') {

        sh 'export MIN_DELAY=5'
        sh 'export LONG_DELAY=`expr $BUILD_NUMBER %2`'
        sh 'export THIS_DELAY=`expr $MIN_DELAY + $LONG_DELAY`'
        sh 'echo Goodnight for ${THIS_DELAY} seconds'

        lock(inversePrecedence: true, resource: 'big-scary-dog') {
                     sh 'echo I am big-scary-dog-man'
                 }

        lock('kitty-cat') {
                    sh 'echo Meow'
                }


        milestone label: 'start-deploy', ordinal: 1
        sh 'echo Start Deploy'
        milestone label: 'mid-deploy', ordinal: 2
        sh 'echo Middle deploy'
        milestone label: 'end-deploy', ordinal: 3
        sh 'echo End Deploy'
   }
}