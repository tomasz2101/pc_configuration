


mac/brew/backup:
	brew bundle dump --describe --force  --file=./mac/Brewfile

mac/brew/deploy:
	brew bundle -v --file=./mac/Brewfile

vscode/backup:
	@mkdir -p vs-code
	cp -rf ~/Library/Application\ Support/Code/User/settings.json ./vs-code/settings.json
	cp -rf ~/Library/Application\ Support/Code/User/keybindings.json ./vs-code/keybindings.json
	code --list-extensions > ./vs-code/extensions.txt


terminal/zshel/backup:
	cp -rf ~/.zshrc ./terminal/zshrc.config
