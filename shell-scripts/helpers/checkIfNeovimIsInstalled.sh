checkIfNeovimIsInstalled() {
	# Checks if command `nvim` exists
	[ ! "$(which nvim)" = "" ] && echo true || echo false
}

