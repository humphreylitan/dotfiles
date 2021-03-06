# dotfiles

current tools to get things done

## Setup

1. Install Command Line Tools for Xcode

   ```shell
   $ xcode-select --install
   ```

1. Configure SSH

   - [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
   - [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

1. Execute

   ```shell
   $ cd
   $ git clone git@github.com:darwintantuco/dotfiles.git
   ```

1. Install [homebrew](https://brew.sh/)
1. Execute

   ```shell
   $ cd
   $ cd dotfiles
   $ caffeinate -i brew bundle; make setup
   ```

   Note: This will take a while and will prompt for password
