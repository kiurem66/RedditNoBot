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
	@echo "		Install everything"
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
	@mv Moduli/RedditModule.py $(BASE)/$(VENV_NAME)
	@mv Moduli/YoutubeModule.py $(BASE)/$(VENV_NAME)
	@mv Moduli/TwitchModule.py $(BASE)/$(VENV_NAME)
	@mv streamon.sh $(BASE)/$(VENV_NAME)
	@mv streamoff.sh $(BASE)/$(VENV_NAME)
	@touch /var/log/stream.status.log
	@echo "online" > /var/log/stream.status.log

requirements:
	$(BASE)/$(VENV_NAME)/bin/pip install -r requirements.txt

clean:
	@rm -rf $(BASE)
	@echo "Files deleted"

.PHONY: help install clean
