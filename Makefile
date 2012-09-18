.PHONY: publish tag

publish:
	./node_modules/.bin/npm-gh publish

tag:
	git tag -f "`./node_modules/.bin/getJsonValue ./package.json	version`"
	git push origin --tags

clean: tests-clean
