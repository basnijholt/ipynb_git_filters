# strip output and metadata from your `.ipynb` as a git filter

`ipynb_filter.py`: using `nbconvert` to remove the a notebook's output on each commit to not clutter up your Git history.

* `+` No external dependencies, if you have `Jupyter notebook` installed you will have `nbconvert`
* `-` A bit slow, ~150 ms
* `-` need to make sure that every contributor uses it (otherwise it will result in conflicts)

## Usage, install and forget

### Option 1 (fast)
Run `wget https://raw.githubusercontent.com/basnijholt/ipynb_git_filters/master/ipynb_filter.py && echo "*.ipynb filter=ipynb_filter" >> .gitattributes && python ipynb_filter.py`

### Option 2 (manual, slow)
1. Copy `ipynb_filter.py` into your project root
2. Add the following line to your `.gitattributes`: `*.ipynb filter=ipynb_filter`
3. run `python ipynb_filter.py`
