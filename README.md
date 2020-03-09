# OE_py
Old English lemmataizer python backend

wiktwords in/enwiktionary-latest-pages-articles.xml.bz2 --out out/oe.txt --language "Old English" --all

## Способ запуска среды для разработки
 * docker run -e JUPYTER_ENABLE_LAB=yes --rm -p 8888:8888 -v `pwd`:/home/jovyan jupyter/scipy-notebook
