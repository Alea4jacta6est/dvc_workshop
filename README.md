# MNIST training using DVC pipelines - tutorial

## How to reproduce the pipeline?

1. Clone this repository

2. Activate venv for Python 3.9 and `pip install -r requirements.txt` 

3. Use `pip install 'dvc[gdrive]'` to add gdrive 

4. Use `dvc pull` and `dvc repro` to reproduce the pipeline (ask me for access to use data from remote)

5. Use `dvc metrics show` to get metrics of the models


- Materials:
    - [DVC documentation and tutorials](https://dvc.org/doc/start)
    - [DVC video tutorials](https://www.youtube.com/channel/UC37rp97Go-xIX3aNFVHhXfQ/videos)