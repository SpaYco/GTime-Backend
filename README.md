## GTime-Backend

- This is a website for Creating measurements of a game

## What it does
- Create Users
- Create measurements about a game
- Get Users or Games information

## Built With
- Ruby
- Ruby on Rails
- VSCode

## Deployment

You can check a live demo [HERE](https://spayco-gtime.herokuapp.com/)

## Documentations

### Users:

`GET /users/:id`: returns information of a user using the ID given in `:id`

`POST /users/`: creates a new user. params needed: `name`

### Games: 

`GET /games/`: returns information of all games

`GET /games/:id`: returns information of a game using the ID given in `:id`

`POST /games/`: creates a new game. params needed: `name`

### Measurements: 

`GET /measurements/`: returns information of all measurements. params needed: `id`

`GET /measurements/:id`: returns information of a measurement using the ID given in `:id`

`POST /measurements/`: creates a new measurement, it calculates the rest of the columns by itself using the `hours` column and the data from `game_id` params needed: `id` (for user id), ``game_id`, `hours`

### Session 

`GET /signin`: returns if whether the user exists or not. params needed: `uname`

## Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

## Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

## Run tests

```
    RSpec
```

## Authors

👤 **SpaYco**

- Github: [@SpaYco](https://github.com/SpaYco)
- Twitter: [@iSpaYco](https://twitter.com/iSpaYco)
- Linkedin: [Aziz Mejri](https://www.linkedin.com/in/spayco/)
- Hackernoon: [@SpaYco](https://hackernoon.com/@SpaYco)

## Credits


Design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) - [Bodytrack.it - An iOs app - Branding, UX and UI](https://www.behance.net/gallery/13271423/Bodytrackit-An-iOs-app-Branding-UX-and-UI)

## 🤝 Contributing
Contributions, issues, and feature requests are welcome!

## Show your support
Give a ⭐️ if you like this project!

📝 License

Check out my stories on medium to see what I'm talking about! Follow me on Instagram and Twitter to see what I am up to!

Enjoy!
