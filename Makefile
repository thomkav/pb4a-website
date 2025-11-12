.PHONY: install build start clean test deploy help

help:
	@echo "Portland Businesses For All Website - Available Commands:"
	@echo ""
	@echo "  make install    - Install npm dependencies"
	@echo "  make build      - Build the static site"
	@echo "  make start      - Start development server (with live reload)"
	@echo "  make clean      - Remove build artifacts"
	@echo "  make test       - Verify build succeeds"
	@echo "  make deploy     - Build and deploy to droplet (via DDM)"
	@echo ""

install:
	npm install

build:
	npm run build

start:
	@echo "Starting development server on http://localhost:8341"
	@(npm start &); sleep 2; xdg-open http://localhost:8341 || open http://localhost:8341 || echo "Please open http://localhost:8341 in your browser"

clean:
	npm run clean
	rm -rf node_modules

test: build
	@echo "Build successful! Site is ready for deployment."
	@ls -lh _site/

deploy: build ## Build and deploy to droplet via DDM
	@echo "Deploying pb4a to droplet..."
	@cd /home/thomas/dev/droplet-deploy-manager && make deploy-project ID=pb4a
	@echo "Updating nginx routing..."
	@cd /home/thomas/dev/droplet-deploy-manager && make nginx-update
