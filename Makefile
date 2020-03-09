start:
	docker run -e JUPYTER_ENABLE_LAB=yes --rm -p 8888:8888 -v `pwd`:/home/jovyan jupyter/scipy-notebook
