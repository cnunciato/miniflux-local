# miniflux-local

I love [RSS](https://en.wikipedia.org/wiki/RSS), and I love
[Miniflux](https://miniflux.app/) &mdash; but I don't love having to run it on a cloud
provider, since most of the browsing, bookmarking and RSS reading I do generally happens
on my Mac. So I threw this little project together today to solve this problem.

## Running the service

It runs Miniflux locally under [Docker Compose](https://docs.docker.com/compose/), using a
local (and presumably running) instance of [Postgres.app](https://postgresapp.com/) as a
database. If you've got both of these installed, you have all you need &mdash; just clone
this repo, start Postgres.app, and run:

```
make
```

... then sign in with the default administrator username and password: `admin` and `password`, respectively.

Why not run Postgres under Compose as well, you ask? You totally could, of course, and I
wrote another little project,
[habitat-miniflux](https://github.com/cnunciato/habitat-miniflux), that does essentially
that. But I also just like working with Postgres.app, and I tend to blow up my Docker
environment pretty regularly, too. So it just makes more sense to me to use it that way.

## Using an alternate RSS reader

I happen to use [Reeder](https://reederapp.com/), but you can use any RSS reader that
supports the Fever API with Miniflux by activating the Fever API in Settings &raquo; Integrations:

![image](https://user-images.githubusercontent.com/274700/82695161-6d4b7a80-9c19-11ea-88a4-8bf66ec7de86.png)

Once you've checked the box and set an API username and password, point your feed reader at the Miniflux API (being careful to use the right port -- I always forget that part) and sign in:

![image](https://user-images.githubusercontent.com/274700/82695355-c5827c80-9c19-11ea-89a5-6e972f16cef0.png)

Enjoy! [#rss4ever](https://twitter.com/hashtag/rss4ever)
