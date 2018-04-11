#!/bin/bash

# `ipynb_filter_jq.sh`:
# This is a git filters that strips out Jupyter notebook outputs and meta data.
# Execute the following lines in order to activate this filter:
# conda install --yes jq  # or `brew install jq` or `apt-get install jq`
# 
# git config filter.ipynb_filter_jq.clean './ipynb_filter_jq.sh'
# git config filter.ipynb_filter_jq.smudge cat
# git config filter.ipynb_filter_jq.required true
# 
# Add the following line to your `.gitattributes`.
# *.ipynb filter=ipynb_filter_jq


jq --indent 1 \
    '
    (.cells[] | select(has("outputs")) | .outputs) = []
    | (.cells[] | select(has("execution_count")) | .execution_count) = null
    | .metadata = {}
    | .cells[].metadata = {}
    '
