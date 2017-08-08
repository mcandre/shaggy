checkbashisms:
	find . \( -wholename '*/.git/*' -o -wholename '*/node_modules*' -o -name '*.bat' -o -name '*.swp' -o -name '*~' \) -prune -o -type f \( -wholename '*/lib/*' -o -wholename '*/hooks/*' -o -name '*.sh' -o -name '*.bashrc*' -o -name '.*profile*' -o -name '*.envrc*' \) -print | xargs checkbashisms -n -p

lint: checkbashisms
