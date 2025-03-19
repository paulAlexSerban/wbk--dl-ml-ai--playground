import nltk  # nltk - natural language toolkit
import ssl

try:
    _create_unverified_https_context = ssl._create_unverified_context
except AttributeError:
    pass
else:
    ssl._create_default_https_context = _create_unverified_https_context

nltk.download('stopwords')
nltk.download('punkt_tab')
nltk.download('wordnet')

"""
this script needs to be run to download the necessary dependencies for nltk

it won't work in Jupyter Notebook as it has some SSL issues
"""