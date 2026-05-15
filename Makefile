.PHONY: all docs
all: speakeasy docs

original.yaml: openapi.yaml
# curl https://docs.api.epilot.io/datasource.yaml > original.yaml
	 cp openapi.yaml original.yaml

original_modified.yaml: original.yaml overlay.yaml
	speakeasy overlay apply -s original.yaml -o overlay.yaml > original_modified.yaml

overlay.yaml:
	speakeasy overlay compare -s original.yaml -s original_modified.yaml > overlay.yaml

speakeasy: original.yaml
	$(eval TMP := $(shell mktemp -d))
# curl https://docs.api.epilot.io/datasource.yaml > $(TMP)/openapi.yaml
	cat original.yaml > $(TMP)/openapi.yaml
	speakeasy overlay apply -s $(TMP)/openapi.yaml -o overlay.yaml > $(TMP)/final.yaml
	speakeasy generate sdk --lang terraform -o . -s $(TMP)/final.yaml

docs:
	go generate ./...
