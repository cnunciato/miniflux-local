# miniflux-local

I love [Miniflux](https://miniflux.app/)&mdash;but I don't love having to run it on a cloud provider, since most of the browsing, bookmarking and RSS reading I do generally happens on my Mac. So I threw this little project together today to solve this problem.

It runs Miniflux locally under Docker Compose, using Postgres.app as a database. If you've got these installed, just clone this repo, start Postgres.app, and run:

```
export MINIFLUX_PORT=9080  # or whatever port you'd like to use for the Miniflux service,
make start db migrate      # to start the service, create the databaas and run migrations,
make admin_user            # and give your administrative user a username and a password, and
make browse                # to open the browser and start RSSing.
```

Enjoy.
