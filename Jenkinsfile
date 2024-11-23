pipeline {
    agent any
    stages {
        stage('Клонирование репозитория') {
            steps {
                git 'https://github.com/axaxa19/test/sample-node-app.git'
                
            }
        }
        stage('Установка зависимостей') {
            steps {
                sh 'npm install'
                
            }
            
        }
        stage('Запуск тестов') {
            steps {
                sh 'npm test'
                
            }
            
        }
        stage('Сборка Docker-образа') {
            steps {
                sh 'docker build -t sample-node-app .'
                
            }
            
        }
        
    }
    
}
