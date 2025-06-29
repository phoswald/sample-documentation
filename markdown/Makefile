
all: build

build: build_marked build_remark build_showdown

build_marked:
	mkdir -p docs/generated/marked
	marked -i docs/md/features-basic.md -o docs/generated/marked/features-basic.html --gfm

build_remark:
	mkdir -p docs/generated/remark
	remark docs/md/features-basic.md -o docs/generated/remark/features-basic.html --use remark-html --use remark-gfm --quiet

build_showdown:
	mkdir -p docs/generated/showdown
	showdown makehtml -i docs/md/features-basic.md -o docs/generated/showdown/features-basic.html --quiet

clean:
	rm -rf docs/generated
