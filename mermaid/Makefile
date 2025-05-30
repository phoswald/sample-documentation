
all: build

MMD := $(wildcard docs/mmd/*.mmd)
PNG := $(patsubst docs/mmd/%.mmd,docs/generated/png/%.png, $(MMD))
SVG := $(patsubst docs/mmd/%.mmd,docs/generated/svg/%.svg, $(MMD))

# When input and output files are located in the same directory:
# 	SRC := $(wildcard docs/*.mmd)
# 	PNG := $(MMD:.mmd=.png)
# 	SVG := $(MMD:.mmd=.svg)

build: build_prepare $(PNG) $(SVG)

build_prepare:
	mkdir -p docs/generated/png
	mkdir -p docs/generated/svg
	mmdc --version > docs/generated/version.txt

docs/generated/png/%.png : docs/mmd/%.mmd
	mmdc --quiet --input $< --output $@

docs/generated/svg/%.svg : docs/mmd/%.mmd
	mmdc --quiet --input $< --output $@

# When using Docker instead of mmdc command: 
#	docker run --rm \
#	  -u $(shell id -u):$(shell id -g) \
#	  -v $(shell pwd):/data \
#	  ghcr.io/mermaid-js/mermaid-cli/mermaid-cli --quiet --input $< --output $@

clean:
	rm -rf docs/generated
