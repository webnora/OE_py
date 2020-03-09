# OE_py
Old English lemmataizer python backend

wiktwords in/enwiktionary-latest-pages-articles.xml.bz2 --out out/oe.txt --language "Old English" --all

## RUN Dev environment
 * docker run -e JUPYTER_ENABLE_LAB=yes --rm -p 8888:8888 -v `pwd`:/home/jovyan jupyter/scipy-notebook

## NLP Transformer documentation
https://www.tensorflow.org/tutorials/text/transformer?hl=ru