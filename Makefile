start:
	docker-compose up -d

stop:
	docker-compose down --remove-orphans

db:
	/Applications/Postgres.app/Contents/Versions/latest/bin/createdb miniflux || true && echo "Database already exists."

migrate:
	docker-compose exec miniflux /usr/bin/miniflux -migrate

admin_user:
	docker-compose exec miniflux /usr/bin/miniflux -create-admin

browse:
	open "http://localhost:${MINIFLUX_PORT}"
