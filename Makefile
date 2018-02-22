default: dev

# `rollup -w` is buggy, unfortunately
dev: dist/index.html
	yarn tsc -w &
	yarn watch 'rollup -c' build &
	yarn live-server dist

build:
	yarn tsc

dist: build dist/index.html
	yarn rollup -c

dist/%: static/%
	mkdir -p `dirname "$@"` && cp -f "$<" "$@"

clean:
	rm -rf build
	rm -rf dist

.PHONY: dev build dist clean
