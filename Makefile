start:
	docker run -e JUPYTER_ENABLE_LAB=yes --rm -p 8888:8888 -v `pwd`:/home/jovyan jupyter/scipy-notebook

out/iswoc-treebank.txt:
	@awk -F '\t' '{print $$3}' iswoc-treebank.txt > out/iswoc-treebank.txt
	@./r.sh
