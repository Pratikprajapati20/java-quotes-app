#1. Base image (OS)

FROM openjdk:17-jdk-alpine

#2. Working Directory for the app

WORKDIR /app


#3. Copy the code from your host to your container (Working Directory)

COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

#4 Run the commands to install libs or to compile code

RUN javac Main.java

#Expose the port

EXPOSE 8000

#6 Sereve the App keep it running
CMD ["java","Main"] 

#ENTRYPOINT ["java","Main"] Cant change

