SHELL := /bin/sh

.PHONY: all hooks check-commits audit style

all: check-commits

hooks:
	@if [ -x .githooks/commit-msg ]; then \
		git config core.hooksPath .githooks; \
		echo "Configured git hooks via .githooks"; \
	else \
		mkdir -p ~/.config/homebrew-tap/hooks; \
		printf '#!/bin/sh\nTOPLEVEL=$$(git rev-parse --show-toplevel 2>/dev/null || pwd)\nexec sh "$$TOPLEVEL/.githooks/commit-msg" "$$@"\n' > ~/.config/homebrew-tap/hooks/commit-msg; \
		chmod +x ~/.config/homebrew-tap/hooks/commit-msg; \
		git config core.hooksPath ~/.config/homebrew-tap/hooks; \
		echo "Configured git hooks via ~/.config/homebrew-tap/hooks (compatibility trampoline for filesystem without direct execute permissions)"; \
	fi

check-commits:
	@sh ./scripts/verify-commits.sh origin/main HEAD

audit:
	@if command -v brew >/dev/null 2>&1; then \
		brew audit --cask Casks/*; \
	else \
		echo "Homebrew not found in PATH; skipping audit."; \
	fi

style:
	@if command -v brew >/dev/null 2>&1; then \
		brew style Casks/*; \
	else \
		echo "Homebrew not found in PATH; skipping style check."; \
	fi
