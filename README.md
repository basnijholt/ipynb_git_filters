# strip output and metadata from your `.ipynb` as a git filter

`ipynb_filter.py`: using `nbconvert` to remove the output:

* `+` No external dependencies, if you have `Jupyter notebook` installed you probably have `nbconvert`
* `-` It's pretty slow, ~150 ms

## Usage
Choose option 1 (fast) or 2 (slow).
1.  Run `wget https://raw.githubusercontent.com/basnijholt/ipynb_git_filters/master/ipynb_filter.py && echo "*.ipynb filter=ipynb_filter" >> .gitattributes && python ipynb_filter.py`
2.  * Copy `ipynb_filter.py` into your project root
    * Add the following line to your `.gitattributes`: `*.ipynb filter=ipynb_filter`
    * run `python ipynb_filter.py`
