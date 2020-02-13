


mac/brew/backup:
	brew bundle dump --describe --force  --file=./mac/Brewfile

mac/brew/deploy:
	brew bundle -v --file=./mac/Brewfile

backup:
	cp -rf "${HOME}/.config/Code/User/keybindings.json" ./setup/roles/vscode/files/keybindings.json
	cp -rf "${HOME}/.config/Code/User/pymakr.json" ./setup/roles/vscode/files/pymakr.json
	cp -rf "${HOME}/.config/Code/User/settings.json" ./setup/roles/vscode/files/settings.json
	cp -rf "${HOME}/.zshrc" ./setup/roles/terminal/files/zshrc.config
