. shell-scripts/helpers/installNeovim.sh
. shell-scripts/helpers/checkIfNeovimIsInstalled.sh

Install() {
	isNeovimInstalled=$(checkIfNeovimIsInstalled)
	[ "$isNeovimInstalled" = "true" ] \
		&& echo "Neovim is installed" \
		|| installNeovim
}
