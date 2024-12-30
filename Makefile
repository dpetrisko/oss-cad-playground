
include Makefile.common
include Makefile.env
include Makefile.tools

tools: _check_venv
tools: ## makes all OSS cad tools
	@$(VENV_ACTIVATE) && $(MAKE) build.pdk
	@$(VENV_ACTIVATE) && $(MAKE) build.iverilog
	@$(VENV_ACTIVATE) && $(MAKE) build.surfer
	@$(VENV_ACTIVATE) && $(MAKE) build.verilator
	@$(VENV_ACTIVATE) && $(MAKE) build.yosys
	@$(VENV_ACTIVATE) && $(MAKE) build.yslang
	@$(VENV_ACTIVATE) && $(MAKE) build.f4pga
	@$(VENV_ACTIVATE) && $(MAKE) build.svase
	@$(VENV_ACTIVATE) && $(MAKE) build.morty

