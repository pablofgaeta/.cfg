.PHONY: bundle stow yay

yay:
	@yay -S $(shell cat yay/packages.txt)
	@sudo pacman $(shell cat yay/packages.txt | pacman -Qeq - | xargs)

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
