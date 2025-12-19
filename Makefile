TOP ?= $(shell git rev-parse --show-toplevel)
include $(TOP)/Makefile.common
include $(TOP)/Makefile.env

include $(BSG_MK_DIR)/Makefile.tools
include $(BSG_MK_DIR)/Makefile.venv

venv: ## Builds the Python virtual environment
venv: checkout
	@$(MAKE) _build_venv

tools: _check_venv
tools: ## makes all OSS cad tools
	@$(MAKE) build.iverilog
	@$(MAKE) build.morty
	@$(MAKE) build.opensta
	@$(MAKE) build.surelog
	@$(MAKE) build.surfer
	@$(MAKE) build.svase
	@$(MAKE) build.verilator
	@$(MAKE) build.yosys
	@$(MAKE) build.yslang
	@$(MAKE) build.f4pga

