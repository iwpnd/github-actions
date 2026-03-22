.PHONY: install
install:
	@echo "Checking for version manager..."
	@if command -v mise >/dev/null 2>&1; then \
		echo "Using mise to install dependencies"; \
		mise install; \
	else \
		echo "Error: Neither mise not installed"; \
		echo "Please install from:"; \
		echo "  • mise (recommended): https://mise.jdx.dev"; \
		exit 1; \
	fi
	@echo "Installing pre-commit hooks..."
	pre-commit install
	@echo "Installation complete!"
