TOP ?= $(shell git rev-parse --show-toplevel)
include $(TOP)/Makefile.common
include $(TOP)/Makefile.env

include $(BSG_MK_DIR)/Makefile.*

venv: ## Builds the Python virtual environment
venv: checkout
	@$(MAKE) _build_venv
	@$(MAKE) _check_venv
	#$(MAKE) $(BSG_INSTALL_DIR)/bin/cadactivate

tools: _check_venv
tools: ## makes all OSS cad tools
	#@$(VENV_ACTIVATE) && $(MAKE) build.pdk
	#@$(VENV_ACTIVATE) && $(MAKE) build.iverilog
	#@$(VENV_ACTIVATE) && $(MAKE) build.surfer
	#@$(VENV_ACTIVATE) && $(MAKE) build.verilator
	#@$(VENV_ACTIVATE) && $(MAKE) build.opensta
	#@$(VENV_ACTIVATE) && $(MAKE) build.yosys
	#@$(VENV_ACTIVATE) && $(MAKE) build.yslang
	#@$(VENV_ACTIVATE) && $(MAKE) build.f4pga
	#@$(VENV_ACTIVATE) && $(MAKE) build.svase
	#@$(VENV_ACTIVATE) && $(MAKE) build.morty

