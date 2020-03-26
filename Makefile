#edit these lines to be accurate to the state of your local install of Pd
local-path-extra = /Applications/Pd-0.48-1.app/Contents/Resources/extra

#location of dependencies
uutil-url = https://github.com/evie-writes-code/uutil.git

all: dependencies

dependencies: $(local-path-extra)/uutil

#clones necessary libraries and updates them
$(local-path-extra)/uutil: 
	git clone $(uutil-url) $(local-path-extra)/uutil
	cd $(local-path-extra)/uutil
	git remote add upstream $(uutil-url)
	git pull upstream master