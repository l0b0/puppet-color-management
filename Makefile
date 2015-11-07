RM = /usr/bin/rm

.PHONY: test
test:
	bundle install --path vendor
	bundle exec rake lint syntax spec

.PHONY: clean
clean: clean-test

.PHONY: clean-test
clean-test:
	for file in .bundle Gemfile.lock vendor; do \
		if [ -e "$$file" ]; then \
			$(RM) --interactive=never --recursive "$$file" || exit 1; \
		else \
			printf 'File does not exist; skipping: %s\n' "$$file" || exit 1; \
		fi \
	done
