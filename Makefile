setup:
	@make build
	@make up
	@make composer
	@make data
up:
	docker compose up -d
down:
	docker compose stop
build:
	docker compose build --no-cache --force-rm
composer:
	docker exec 10x bash -c "composer update"
data:
	docker exec 10x bash -c "php artisan migrate"