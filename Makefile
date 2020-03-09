start:
	docker run -e JUPYTER_ENABLE_LAB=yes --rm -p 8888:8888 -v `pwd`:/home/jovyan jupyter/scipy-notebook

DATASET_PATH=in/treebank
DATASET_NAME=iswoc-treebank
INDEX_IN=$(DATASET_NAME).txt
INDEX_OUT=$(DATASET_PATH)/index.txt
download:
	@mkdir -p data
	@mkdir -p $(DATASET_PATH)
	@awk -F '\t' '{print $$3}' $(INDEX_IN) > $(INDEX_OUT)
	@./$(DATASET_NAME).sh $(DATASET_PATH) $(INDEX_OUT)

clean:
	rm -f $(DATASET_PATH)/*