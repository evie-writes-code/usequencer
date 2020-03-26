#edit these lines to be accurate to the state of your local install of Pd
local-path-extra = /Applications/Pd-0.48-1.app/Contents/Resources/extra

#location of dependencies
uutil-url = https://github.com/evie-writes-code/uutil.git
usrcmidi-url = https://github.com/evie-writes-code/usrcmidi.git

all: dependencies

dependencies: $(local-path-extra)/uutil $(local-path-extra)/usrcmidi

#clones necessary libraries and updates them if necessary
$(local-path-extra)/uutil: 
	git clone $(uutil-url) $(local-path-extra)/uutil
	cd $(local-path-extra)/uutil
	git remote add upstream $(uutil-url)
	git pull upstream master

$(local-path-extra)/usrcmidi:
	git clone $(usrcmidi-url) $(local-path-extra)/usrcmidi
	cd $(local-path-extra)/usrcmidi
	git remote add upstream $(usrcmidi-url)
	git pull upstream master