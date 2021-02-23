.PHONY: start
start:
	hugo server

.PHONY: open
open:
	open http://localhost:1313/

.PHONY: deploy
deploy:
	hugo --minify
	cd infra && npm i && npm run cdk -- deploy
