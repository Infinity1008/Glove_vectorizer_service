# Glove vectorisation server

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
This is a glove word vectoriser server, where you can send a word/sentence to get the vectors. If you don't want to set up the model and all the code that comes with that yourself, you can just use this service using python3 or use the docker container to do POST request on and get vector embeddings. You can then use these vector embedding to do whatever you wish. (Similarity, closenes, average, weighted average etc.)

## Where to get the models from
You can get different glove models from the [stanford nlp website](https://nlp.stanford.edu/projects/glove/), some of the links are here:
* [glove.6B.zip](https://nlp.stanford.edu/data/glove.6B.zip) Wikipedia 2014 + Gigaword 5 (6B tokens, 400K vocab, uncased, 50d, 100d, 200d, & 300d vectors, 822 MB)
* [glove.42B.300d.zip](https://nlp.stanford.edu/data/glove.42B.300d.zip) Common Crawl (42B tokens, 1.9M vocab, uncased, 300d vectors, 1.75 GB)
* [glove.840B.300d.zip](https://nlp.stanford.edu/data/glove.840B.300d.zip) Common Crawl (840B tokens, 2.2M vocab, cased, 300d vectors, 2.03 GB)
* [glove.twitter.27B.zip](https://nlp.stanford.edu/data/glove.twitter.27B.zip) Twitter (2B tweets, 27B tokens, 1.2M vocab, uncased, 25d, 50d, 100d, & 200d vectors, 1.42 GB)


## Technologies
Project is created with:
* Python3
* Flask
* Requests
	
## Setup
To run this project, clone it to a local repository, make a python3 environment with requirements.txt and run the flask_server.py file with the location on the model as shown:


```
$ python3 flask_server.py model_location_here
```

## To access the service using API calls
You can then access the flask server on you localhost port 5000, with python library request or any other way you wish.

```
$ import requests
$ address = 'http://127.0.0.1:5000/average_vectorizer'
$ result = requests.post(url=address, data='Your word goes here')
```
The result you will get here is going to be a byte array, you will need to convert the byte array to numpy array for further use
```
$ import io
$ numpy_array = np.load(io.BytesIO(x),allow_pickle=True)
```
This numpy arrays is the vector of the word you sent in the POST request


