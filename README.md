# Pablo's Configuration Files

Configuration files are managed with [`stow`](https://www.gnu.org/software/stow/manual/stow.html#Introduction).

# Usage (MacOS)

System dependencies are managed by [`brew`](https://brew.sh/).

Step 1. Clone the repo in the home directory: `git clone git@github.com:pablofgaeta/.cfg.git ~/.cfg`

Step 2. Navigate to the the cloned repo directory: `cd ~/.cfg`

Step 3. Install brew: `curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh`

Step 4. Install system dependencies: `make bundle`

Step 5. Create symlinks to all stow packages: `make stow`.

**Note**: The symlinks work correctly because the default stow directory is the current directory and the default target directory is the stow's parent. If this repo was cloned anywhere other than the home directory or you want to customize stow arguments, you can run individual `stow` commands ([documentation](https://www.gnu.org/software/stow/manual/stow.html#Invoking-Stow)).

# Usage (Linux)

TODO
