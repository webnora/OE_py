FROM jupyter/scipy-notebook
RUN pip install -q tf-nightly
RUN pip install tensorflow_datasets
RUN python -c "import tensorflow_datasets as tfds; tfds.load('ted_hrlr_translate/pt_to_en', with_info=True, as_supervised=True)"