setup_venv:
	@echo "Setting up virtual environment..."
	@python3 -m venv .venv

activate_venv:
	@echo "Activating virtual environment..."
	@source .venv/bin/activate

install_deps:
	@echo "Installing dependencies..."
	@pip install -r requirements.txt
	@echo "Dependencies installed."

freeze_deps:
	@echo "Freezing dependencies..."
	@pip freeze > requirements.txt
	@echo "Dependencies frozen."