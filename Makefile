MAIN_PKG := zfaka
#GIT_TAG := $(shell git describe --abbrev=0 --tags 2>/dev/null || echo 0.0.0)
GIT_TAG := v1.0.0
GIT_COMMIT_SEQ := $(shell git rev-parse --short HEAD 2>/dev/null || echo 000000)
GIT_COMMIT_CNT := $(shell git rev-list --all --count 2>/dev/null || echo 0)
VERSION := $(GIT_TAG).$(GIT_COMMIT_CNT).$(GIT_COMMIT_SEQ)
BUILD_TIME := $(shell TZ=UTC-8 date +"%Y%m%d%H%M%S")
#FULL_VERSION := $(MAIN_PKG):$(GIT_TAG).$(BUILD_TIME).$(GIT_COMMIT_CNT).$(GIT_COMMIT_SEQ)
FULL_VERSION := $(MAIN_PKG):$(GIT_TAG).$(GIT_COMMIT_CNT).$(GIT_COMMIT_SEQ)
SAVE_FULL_VERSION := $(MAIN_PKG).$(GIT_TAG).$(GIT_COMMIT_CNT).$(GIT_COMMIT_SEQ)

docker-login:
	docker login ccr.ccs.tencentyun.com --username=100001261741 --password=xxx

docker-save:
	docker save ccr.ccs.tencentyun.com/fastapp/$(FULL_VERSION) | gzip > $(SAVE_FULL_VERSION).tar.gz

docker-build:
	docker build . -t ccr.ccs.tencentyun.com/fastapp/$(FULL_VERSION) && \
	docker push ccr.ccs.tencentyun.com/fastapp/$(FULL_VERSION)

docker-clean:
	docker images | grep $(MAIN_PKG) | awk '{print $$3}' | xargs docker rmi -f
	echo "y" | docker image prune

deploy:
	kubectl --kubeconfig .k3s.yaml config set-context --current --namespace $(MAIN_PKG)
	kubectl --kubeconfig .k3s.yaml set image deployment $(MAIN_PKG) $(MAIN_PKG)=ccr.ccs.tencentyun.com/fastapp/$(FULL_VERSION)

version:
	echo "ccr.ccs.tencentyun.com/fastapp/"$(FULL_VERSION)

.PHONY: build frontend
