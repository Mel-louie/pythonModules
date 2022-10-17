# Ressources

about conda:
the conda.sh script downloads miniconda, installs it in a /goinfre subfolder and creates a python environment in conda

check 42AI Python environment:
```
conda info --envs
conda activate 42AI-$USER
which python
python -V
python -c "print('Hello World!')"
```

cheatsheet: https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf
metapackage https://stackoverflow.com/questions/50699252/anaconda-environment-installing-packages-numpy-base
export and import https://stackoverflow.com/questions/41979133/import-conda-package-list-to-default-env