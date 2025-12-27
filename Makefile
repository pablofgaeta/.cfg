.PHONY: bundle stow yay

yay:
	@yay -S $(shell cat yay.txt)
	@sudo pacman $(shell cat yay.txt | pacman -Qeq - | xargs)

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
