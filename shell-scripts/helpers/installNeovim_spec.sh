. shell-scripts/helpers/constants.sh

Describe "installNeovim"
	Include shell-scripts/helpers/installNeovim.sh

	# Spy `makeDirForBuildableRepo`
	makeDirForBuildableRepo() {
		echo "makeDirForBuildableRepo was called"
	}
	# Spy `git`
	git() {
		echo "git" "$@"
	}
	# Spy `make`
	make() {
		echo "make" "$@"
	}
	# Spy `sudo`
	sudo() {
		echo "sudo" "$@"
	}

	It "installs neovim"
		# Stub input
		Data
			#| StubbedInput
		End
		When run installNeovim
		The stdout should include "Neovim is not installed"
		The stdout should include "sudo echo"
		The stdout should include "git clone $neovimRepoSSHLink"
		The stdout should include "git checkout stable"
		The stdout should include "make install"
		The stdout should include "Please run 'nvim' to install the plugins after this restart."
		The stdout should include "(Press any key to restart)"
		The function read should eq "read" # alternative way to spy
		The function exec should eq "exec" # alternative way to spy
	End
End
