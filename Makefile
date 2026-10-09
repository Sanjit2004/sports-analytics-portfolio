RENDER = Rscript -e 'rmarkdown::render("$(1)", output_format = "html_document", output_file = "$(2)", output_dir = "$(3)")'

WINPROB = cricket/ipl-win-probability-model/ipl-win-probability.Rmd
TOURNAMENT = cricket/ipl-bradley-terry-tournament-simulation/ipl-bradley-terry-tournament-simulation.Rmd
FOOTBALL = football/hs-production-metrics/hs-defense-production.Rmd

.PHONY: help deps cricket winprob tournament football

help: ## List targets
	@grep -E '^[a-z]+:.*##' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  %-11s %s\n", $$1, $$2}'

deps: ## Install the R packages listed in DESCRIPTION
	Rscript -e 'if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes"); remotes::install_deps(".")'

cricket: winprob tournament ## Render both IPL reports into docs/

winprob: ## Render the win probability report into docs/
	$(call RENDER,$(WINPROB),ipl-win-probability.html,$(CURDIR)/docs)

tournament: ## Render the tournament simulation report into docs/
	$(call RENDER,$(TOURNAMENT),ipl-bradley-terry-tournament-simulation.html,$(CURDIR)/docs)

football: ## Render the football report locally (needs the private data file)
	$(call RENDER,$(FOOTBALL),hs-defense-production.html,$(CURDIR)/football/hs-production-metrics)
