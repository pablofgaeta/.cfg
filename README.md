# Pablo's Configuration Files

Configuration files are managed with [`stow`](https://www.gnu.org/software/stow/manual/stow.html#Introduction).

# Usage (MacOS)

System dependencies are managed by [`brew`](https://brew.sh/).

Step 1. Create and register SSH keys as needed with `ssh-keygen -t ed25519 -C "example@email.com" -f ~/.ssh/example`. Check out [git/workspace/](./git/workspace/) for reference of expected git configurations.

Step 2. Clone the repo in the home directory: `git clone git@github.com:pablofgaeta/.cfg.git ~/.cfg`

Step 3. Navigate to the the cloned repo directory: `cd ~/.cfg`

Step 4. Install brew: `curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh`

Step 5. Install system dependencies: `make bundle`

Step 6. Create symlinks to all stow packages: `make stow`.

**Note**: The symlinks work correctly because the default stow directory is the current directory and the default target directory is the stow's parent. If this repo was cloned anywhere other than the home directory or you want to customize stow arguments, you can run individual `stow` commands ([documentation](https://www.gnu.org/software/stow/manual/stow.html#Invoking-Stow)).

# Usage (Linux)

TODO
