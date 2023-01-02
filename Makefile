.ONESHELL:
SHELL=/bin/bash

BASE=/opt/SabakuNoBot
VENV_NAME=BotEnv

all:
	$(MAKE) help
help:
	@echo "--------------"
	@echo "		HELP     "
	@echo "--------------"
	@echo "make help"
	@echo "		Display help"
	@echo "make install"
	@echo "		Install everything needed"
	@echo "make clean"
	@echo "		Delete all the files"
	@echo "--------------"


install:
	@mkdir $(BASE)
	@python -m venv $(BASE)/$(VENV_NAME)
	@source $(BASE)/$(VENV_NAME)/bin/activate
	@$(MAKE) requirements
	@$(MAKE) setup
	@echo "Install done"

setup:
	@cd $(BASE)/$(VENV_NAME)
	git clone https://github.com/kiurem66/RedditNoBot.git

requirements:
	$(BASE)/$(VENV_NAME)/bin/pip install -r requirements.txt

clean:
	@rm -rf $(BASE)
	@echo "Files deleted"

.PHONY: help install clean
