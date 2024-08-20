#Baixando a imagem do JDK para executar o projeto
FROM openjdk:18

#Definindo a pasta de trabalho dentro do conteiner
WORKDIR /app

#Copiando todos os arquivos para esta pasta de trabalho
COPY . /app

#Executando o comando para publicar o projeto no conteiner
RUN ./mvnw clean package

#Definir a posta para execução do projeto
EXPOSE 8083

#Comando para rodar o projeto que foi publicado
CMD ["java", "-jar", "target/apiFinancas-0.0.1-SNAPSHOT.jar"]



