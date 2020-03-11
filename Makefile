IMAGE=jupyter_tf

DATASET_PATH=in/treebank
DATASET_NAME=iswoc-treebank

INDEX_IN=$(DATASET_NAME).txt
INDEX_OUT=$(DATASET_PATH)/index.txt

start:
	docker run -e JUPYTER_ENABLE_LAB=yes --rm -p 8888:8888 -v `pwd`:/home/jovyan/src $(IMAGE)

download:
	@mkdir -p data
	@mkdir -p $(DATASET_PATH)
	@awk -F '\t' '{print $$3}' $(INDEX_IN) > $(INDEX_OUT)
	@./$(DATASET_NAME).sh $(DATASET_PATH) $(INDEX_OUT)

clean:
	rm -f $(DATASET_PATH)/*

build:
	docker build -t $(IMAGE) ci

download_cltk:
	wget https://raw.githubusercontent.com/cltk/old_english_models_cltk/master/data/oe.lemmas_inv -P in
