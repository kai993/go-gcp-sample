.PHONY: all

help:
	@echo 'Usage: make [target]'
	@echo 
  @echo 'Targets:'
  @awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

serve: # ローカルサーバー実行
	goapp serve app

deploy: # GAEへのデプロイ
	goapp deploy -application ${project_id} -version ${version} app

