# strip output and metadata from your `.ipynb` as a git filter

Two options
1. `ipynb_filter.py`: using `nbconvert` to remove the output
    * `+` No external dependencies, if you have `Jupyter notebook` installed you probably have `nbconvert`
    * `-` It's pretty slow, ~150 ms
2. `ipynb_filter_jq.sh`: using `jq` to remove the output
    * `+` Very fast, ~10 ms
    * `-` It's using an external dependency `jq` that not everyone might have.

## Usage
Choose option 1 or 2.
1. Copy `ipynb_filter.py` into your project root
    * run `python ipynb_filter.py`
    * Add the following line to your `.gitattributes`: `*.ipynb filter=ipynb_filter`
2. Copy `ipynb_filter_jq.sh` into your project root and run:
    * `git config filter.ipynb_filter_jq.clean './ipynb_filter_jq.sh'`
    * `git config filter.ipynb_filter_jq.smudge cat`
    * `git config filter.ipynb_filter_jq.required true`
    * Add the following line to your `.gitattributes`: `*.ipynb filter=ipynb_filter_jq`

Option 1, from project root (fast):
```
wget https://raw.githubusercontent.com/basnijholt/ipynb_git_filters/master/ipynb_filter.py
echo "*.ipynb filter=ipynb_filter" >> .gitattributes
```
