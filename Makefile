.PHONY: bundle stow

bundle:
	@brew bundle

stow:
	@stow stow
	@stow gemini
	@stow ghostty
	@stow git
	@stow nvim
	@stow tmux
	@stow zsh
