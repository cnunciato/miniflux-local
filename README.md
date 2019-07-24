# miniflux-local

I love [RSS](https://en.wikipedia.org/wiki/RSS), and I love [Miniflux](https://miniflux.app/) &mdash; but I don't love having to run it on a cloud provider, since most of the browsing, bookmarking and RSS reading I do generally happens on my Mac. So I threw this little project together today to solve this problem.

It runs Miniflux locally under [Docker Compose](https://docs.docker.com/compose/), using [Postgres.app](https://postgresapp.com/) as a database. If you've got both of these installed, you have all you need &mdash; just clone this repo, start Postgres.app, and run:

```
export MINIFLUX_PORT=9080  # or whatever port you'd like to use for the Miniflux service,
make start db migrate      # to start the service, create the database and run its migrations,
make admin_user            # to your administrative user a username and a password, and finally,
make browse                # to open the browser, sign in, and start RSSing.
```

Why not run Postgres under Compose as well, you ask? You totally could, of course, and I wrote another little project, [habitat-miniflux](https://github.com/cnunciato/habitat-miniflux), that does essentially that. But I also just like working with Postgres.app, and I tend to blow up my Docker environment pretty regularly, too. So it just makes more sense to me to use it that way.

Enjoy! [#rss4ever](https://twitter.com/hashtag/rss4ever)
