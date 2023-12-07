. shell-scripts/helpers/constants.sh
. shell-scripts/helpers/makeDirForBuildableRepo.sh

installNeovim() {
	echo "Neovim is not installed. Cloning repo..."

	# Get password early
	# Will be used for `make install`
	sudo echo ""

	# Install from source

	# create `_build` directory
	makeDirForBuildableRepo
	
	# clone `neovim` repo to `_build`
	git clone $neovimRepoSSHLink $githubReposToBuildDir

	# Steps 3-4 (https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start)
	( \
		cd $githubReposToBuildDir; \
		git checkout stable; \
		make CMAKE_BUILD_TYPE=RelWithDebInfo; \
		sudo make install
	)
	
	echo "Please run 'nvim' to install the plugins after this restart."
	printf "(Press any key to restart)"; read anyKey  
	exec $SHELL
}

