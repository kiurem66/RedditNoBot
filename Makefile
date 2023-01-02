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
	@mv BotReddit.py $(BASE)/$(VENV_NAME)
	@mv RedditModule.py $(BASE)/$(VENV_NAME)
	@mv YoutubeModule.py $(BASE)/$(VENV_NAME)

requirements:
	$(BASE)/$(VENV_NAME)/bin/pip install -r requirements.txt

clean:
	@rm -rf $(BASE)
	@echo "Files deleted"

.PHONY: help install clean
