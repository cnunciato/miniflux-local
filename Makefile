default: db migrate start admin_user browse

# Start the Miniflux service.
start:
	docker-compose up -d

# Stop all services and clean up all containers.
stop:
	docker-compose down --rmi all --remove-orphans

# Create the Miniflux database. Assumes Postgres.app is already running at the default location.
db:
	/Applications/Postgres.app/Contents/Versions/latest/bin/createdb miniflux || true && echo "Database already exists."

# Run Miniflux database migrations.
migrate:
	docker-compose run miniflux /usr/bin/miniflux -migrate

# Make the administrative user, if necessary. Uses the environment variables defined in docker-compose.yml.
admin_user:
	docker-compose run miniflux /usr/bin/miniflux -create-admin

# Browse to the Miniflux UI.
browse:
	open "http://localhost:${MINIFLUX_PORT}"
