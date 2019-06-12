backup:
	@mkdir -p vs-code
	cp -rf ~/Library/Application\ Support/Code/User/settings.json ./vs-code/settings.json
	cp -rf ~/Library/Application\ Support/Code/User/keybindings.json ./vs-code/keybindings.json
	code --list-extensions > ./vs-code/extensions.txt
deploy:
	cp -rf ./vs-code/settings.json  ~/Library/Application\ Support/Code/User/settings.json
	cp -rf ./vs-code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
	cat ./vs-code/extensions.txt | xargs -L 1 code --install-extension