FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python python3-pip wget git unzip -y
Workdir /opt/source-code/
Run git clone https://github.com/Infinity1008/Glove_vectorizer_service.git
Workdir /opt/source-code/Glove_vectorizer_service
Run pip install -r requirements.txt
Run wget https://nlp.stanford.edu/data/glove.6B.zip
Run unzip glove.6B.zip
CMD python3 flask_server.py glove.6B.50d.txt





