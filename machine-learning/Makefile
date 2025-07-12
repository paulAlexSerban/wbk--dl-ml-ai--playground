freeze_deps:
	@echo "Freezing dependencies..."
	@pip freeze > requirements.lock.txt
	@echo "Dependencies frozen."

install_deps:
	@echo "Installing dependencies..."
	@pip install -r requirements.txt
	@python nltk_deps.py 		
	@echo "Dependencies installed."
	@make freeze_deps

install_ci_deps:
	@echo "Installing dependencies..."
	@pip install -r requirements.lock.txt
	@python nltk_deps.py#
	@echo "Dependencies installed."