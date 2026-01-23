##### Virtual Environment Setup #####

setup_venv:
	@echo "Setting up virtual environment..."
	@python3.12 -m venv .venv

#### Step needs to be run manually - not part of the Makefile
# activate_venv:
# 	@echo "Activating virtual environment..."
# 	. .venv/bin/activate

##### Jupyter Notebook Setup #####
install_jupiter_n_ipykernel:
	@echo "Installing Jupyter Notebook..."
	@pip install jupyter
	@pip install ipykernel
	@echo "Jupyter Notebook installed."

install_venv_as_kernel:
	@echo "Installing virtual environment as Jupyter kernel..."
	@python -m ipykernel install --user --name=.venv --display-name "Python (.venv)"
	@echo "Virtual environment installed as Jupyter kernel."

uninstall_venv_as_kernel:
	@echo "Uninstalling virtual environment as Jupyter kernel..."
	@jupyter kernelspec uninstall .venv
	@echo "Virtual environment uninstalled as Jupyter kernel."

start_jupyter:
	@echo "Starting Jupyter Notebook..."
	@jupyter notebook

lint:
	@echo "Linting..."
	@pylint . --rcfile=.pylintrc -r y
	@echo "Linting done."

clean_jupyter_notebooks:
	@echo "Cleaning Jupyter Notebook files..."
	@du -sh ./* | sort -rh | head -n 5
	@python -m pip show nbstripout >/dev/null 2>&1 || python -m pip install nbstripout
	@find . -name "*.ipynb" -print -exec python -m nbstripout {} \;
	du -sh ./* | sort -rh | head -n 5
	@echo "Jupyter Notebook files cleaned."