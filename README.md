# to do
[] end tests
[] test manually everything
[] check forbidden functions and add them to tests
[] clean this readme

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

if __name__ == __main__  https://www.journaldunet.fr/web-tech/developpement/1202931-python-qu-est-ce-que-produit-le-code-if-name-main/

norme  pycodestyle ex0*/*.py

on yield:
yield is like a return that gives values multiple times and let's you use the function in a for loop.

For example:
```
def iterate_user_ids():
    # Let's imagine this is a web API, not a range()
    for i in range(100):
        yield i

for i in iterate_user_ids():
    print(i)
```
would print each of the "user IDs" (here it's just the numbers from 0 to 99).
