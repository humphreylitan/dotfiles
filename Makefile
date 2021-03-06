setup: link install

reset: clean link install

install:
	-pip3 install neovim --upgrade
	nvim +PlugClean! +PlugInstall +qa
	-asdf plugin add ruby
	-asdf plugin add nodejs
	-export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
	-asdf plugin add erlang
	-asdf plugin add elixir
	bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
	asdf install
	heroku plugins:install heroku-accounts

update:
	nvim +PlugClean! +PlugInstall PlugUpdate +qa
	asdf plugin update --all
	bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

link:
	ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
	ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf
	mkdir -p ~/.config/nvim/ && ln -nfs ~/dotfiles/init.vim ~/.config/nvim/init.vim
	ln -nfs ~/dotfiles/.vim ~/.vim
	ln -nfs ~/dotfiles/.asdf ~/.asdf
	ln -nfs ~/dotfiles/.asdf/.asdfrc ~/.asdfrc
	ln -nfs ~/dotfiles/.asdf/.tool-versions ~/.tool-versions
	ln -nfs ~/dotfiles/.asdf/.default-npm-packages ~/.default-npm-packages
	ln -nfs ~/dotfiles/.asdf/.default-gems ~/.default-gems
	ln -nfs ~/dotfiles/.railsrc ~/.railsrc
	ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg

clean:
	rm -rf ~/.bash_profile
	rm -rf ~/.tmux.conf
	rm -rf ~/.config/nvim/init.vim
	rm -rf ~/.vim
	rm -rf ~/.asdf
	rm -rf ~/.asdfrc
	rm -rf ~/.tool-versions
	rm -rf ~/.default-npm-packages
	rm -rf ~/.default-gems
	rm -rf ~/.railsrc
	rm -rf ~/.wakatime.cfg
	-asdf plugin remove ruby
	-asdf plugin remove nodejs
	-asdf plugin remove erlang
	-asdf plugin remove elixir
	-heroku plugins:uninstall heroku-accounts
