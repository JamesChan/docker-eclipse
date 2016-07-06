eclipse: check
	docker build --rm -t my/eclipse/ubuntu .

check:
	@if ! type docker >/dev/null 2>&1; then \
		echo >&2 "Cannot find docker, install docker first. See: http://www.docker.com"; exit 1; fi

.PHONY: alpine ubuntu java git-dev check