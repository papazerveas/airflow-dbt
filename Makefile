GIT_BRANCH ?= master


git:
	- git checkout $(GIT_BRANCH)
	- git add -A .
	- git commit -m "$(msg)"
	- git push -u  origin $(GIT_BRANCH)

gitamend:
	- git checkout $(GIT_BRANCH)
	- git add -A .
	- git commit --amend --no-edit
	- git push origin $(GIT_BRANCH) --force