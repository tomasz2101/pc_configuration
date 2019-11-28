

ssh:
	cp -rf ./ssh/config ~/.ssh/config
	#TODO add deploy keys from lastpass

mac/brew/backup:
	brew bundle dump --describe --force  --file=./mac/Brewfile

mac/brew/deploy:
	brew bundle -v --file=./mac/Brewfile

vscode/backup:
	@mkdir -p vs-code
	cp -rf ~/Library/Application\ Support/Code/User/settings.json ./vs-code/settings.json
	cp -rf ~/Library/Application\ Support/Code/User/keybindings.json ./vs-code/keybindings.json
	code --list-extensions > ./vs-code/extensions.txt

vscode/deploy:
	cp -rf ./vs-code/settings.json  ~/Library/Application\ Support/Code/User/settings.json
	cp -rf ./vs-code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
	cat ./vs-code/extensions.txt | xargs -L 1 code --install-extension

	python3 -m venv ~/.mypyls
	~/.mypyls/bin/pip3 install "https://github.com/matangover/mypyls/archive/master.zip#egg=mypyls[default-mypy]"

terminal/zshel/backup:
	cp -rf ~/.zshrc ./terminal/zshrc.config
terminal/zshel/deploy:
	mkdir -p ~/.zsh/completion
	curl -L https://raw.githubusercontent.com/docker/machine/v0.16.0/contrib/completion/zsh/_docker-machine > ~/.zsh/completion/_docker-machine
	cp -rf ./terminal/zshrc.config ~/.zshrc
	# exec $SHELL -l