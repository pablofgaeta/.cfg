# Pablo's Configuration Files

Config files are managed with [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html#Introduction).

# Usage

Clone the repo in the home directory:

```bash
cd ~ && git clone git@github.com:pablofgaeta/.cfg.git
```

Ensure that `stow` is installed on the target system.

Create symlinks to all stow packages with: `make stow`. This works because the default stow directory is the current directory and the default target directory is the stow's parent.

If this repo was cloned anywhere other than the home directory or you want to customize stow arguments, you can run individual `stow [options] [action flag] package …` commands ([documentation](https://www.gnu.org/software/stow/manual/stow.html#Invoking-Stow)).
