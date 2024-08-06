setup:
	@make build
	@make up
	@make composer composer_cmd="update"
	@make artisan artisan_cmd="migrate"
up:
	docker compose up -d
down:
	docker compose stop
build:
	docker compose build --no-cache --force-rm

composer:
	docker exec 10x bash -c "composer $(composer_cmd)"
artisan:
	docker exec 10x bash -c "php artisan $(artisan_cmd)"
cmd:
	docker exec $(cmd_c) bash -c "$(cmd_cmd)"