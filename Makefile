# Define variables
SRC_DIR := ./src
DOCS_DIR := ./docs
CSS_INPUT := $(SRC_DIR)/css/base.css
CSS_OUTPUT := $(DOCS_DIR)/css/base.css

# Define the default target
all: copy_files build_css

# Target to copy files from src to docs
copy_files:
	cp -R $(SRC_DIR)/* $(DOCS_DIR)/

# Target to build Tailwind CSS
build_css:
	bun tailwindcss -i $(CSS_INPUT) -o $(CSS_OUTPUT)

# Clean up the docs directory
clean:
	rm -rf $(DOCS_DIR)/*
