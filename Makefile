shfmt:
	stank lib | xargs shfmt -w -i 4

bashate:
	stank lib | xargs bashate

shlint:
	stank lib | xargs shlint

checkbashisms:
	stank lib | xargs checkbashisms -n -p

shellcheck:
	stank lib | xargs shellcheck

funk:
	funk .

lint: shfmt bashate shlint checkbashisms shellcheck funk
