## Poke Teams Backend

This React/Rails app is used to build pokemon teams.  It pulls data from an external API (pokeapi.com) to gather the current Pokemon.  Then it only uses the first 151 characters from the original pokemon.

### Developing locally

This project uses Ruby on Rails to start the databases and JavaScript with React to render on-screen changes.  The Database = Postgresql.  To Get the database running

Run this command:
```bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Then you should be good to start operating on the backend.  Note that the seed file loads the pokemon into the database, so you absolutely need to run rails db:seed for the app to work.

#### BUGS

**If you find a problem with the software**

Please create an email describing the steps to reproduce the software
problem and email it to john.osborne.odom@gmail.com.


## Contributors

* John Odom

Additional thanks to the Flation School Atlanta Team for their outstanding work helping me with this project.

I welcome other contributions - just open up an issue or a pull request.
