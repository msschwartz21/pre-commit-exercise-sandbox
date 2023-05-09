# Run black on .py files
black solution.py

# Convert .py to ipynb
jupytext --to ipynb --update-metadata '{"jupytext": {"cell_metadata_filter":"all"}}' solution.py

# Create the exercise notebook
jupyter nbconvert solution.ipynb \
    --TagRemovePreprocesser.enabled=True \
    --TagRemovePreprocessor.remove_cell_tags solution \
    --clear-output \
    --to notebook \
    --output exercise.ipynb