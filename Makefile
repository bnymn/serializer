.PHONY: qa

all: qa

build:
	docker build . -f dev/Dockerfile -t serializer

run:
	docker run -ti --rm -v $(CURDIR):/src serializer sh

test:
	./vendor/phpunit/phpunit/phpunit tests

qa: test
	./vendor/phpstan/phpstan/bin/phpstan analyse --level 7 src
	./vendor/phpmd/phpmd/src/bin/phpmd src text cleancode, codesize, controversial, design, naming, unusedcode
	./vendor/overtrue/phplint/bin/phplint src
