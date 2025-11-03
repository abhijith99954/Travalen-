pipeline {
    agent any
    
    tools {
        maven "MAVEN"
        jdk "JAVA17"
        nodejs "NODE"
    }

    stages {

        stage('GIT CHECKOUT') {
            steps {
                git branch: 'main', url: 'https://github.com/abhijith99954/Travalen-.git'
            }
        }

        stage('MVN CLEAN') {
            steps {
                dir('New_admin-backend/travelo-admin') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }

       //stage('Deploy to Server') {
    //steps {
       // sh '''
       // nohup java -jar New_admin-backend/travelo-admin/target/tr-admin-1.war --spring.profiles.active=prod --server.port=8000 --server.address=0.0.0.0 > app.log 2>&1 &
     //   echo "---- Showing last 30 lines of deployment log ----"
    //    tail -n 30 app.log
    //    '''
    //}
//}
    }
}
