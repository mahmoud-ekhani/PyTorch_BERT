#!/bin/bash

ENV_NAME="bert"

conda create -n $ENV_NAME python=3.8 -y

source activate $ENV_NAME

piip install transformers datasets tokenizers

wget http://www.cs.cornell.edu/~cristian/data/cornell_movie_dialogs_corpus.zip

unzip -qq cornell_movie_dialogs_corpus.zip

rm cornell_movie_dialogs_corpus.zip

mkdir -p datasets

mv "cornell movie-dialogs corpus/movie_conversations.txt" ./datasets
mv "cornell movie-dialogs corpus/movie_lines.txt" ./datasets