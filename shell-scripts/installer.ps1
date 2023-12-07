# Will be used to check `Neovim` installation directory and `winget` id.
$nvim = "Neovim"
# Install location of `nvim` through chocolatey
$nvimChocolateyPath = "$env:ChocolateyToolsLocation\neovim\nvim-win64\bin"

# Check if `nvim` is installed using chocolatey
function Test-If-Nvim-Is-Installed {
	return test-path "$nvimChocolateyPath\nvim.exe"
}
# Add `nvim` bin location to `$env:path`
function Add-To-Path-Env-Variable {
	Write-Host "'$nvim' successfully installed. Adding to Path..."
	$env:path += ";$nvimChocolateyPath"

	Write-Host "Neovim bin directory added to paths!"
}

function Install {
	$isNvimInstalled = Test-If-Nvim-Is-Installed 
	If (-Not $isNvimInstalled) {
		Write-Host "'$nvim' is not installed!"
		choco install neovim -y

		Add-To-Path-Env-Variable
	} else {
		Write-Host "'$nvim' is installed"
	}
	
#	# Run `nvim`, install plugins, and quit all
	Write-Host "Attempting to (re)install Neovim Plugins..."
	
	# 1. indicate message to wait for installer
	# 2. set `autocmd` to quit `nvim` when `packer.nvim` is done with installation
	# 3. install/update neovim plugins
	nvim `
		-c "echo 'Please wait until the installer finishes...'" `
		-c 'autocmd User PackerComplete quitall'
	
	Write-Host "(Re)installation of Neovim Plugins done!"
	Write-Host "Rerun 'nvim' again to install sub-dependencies (i.e. Treesitter, Mason, etc)"
}
