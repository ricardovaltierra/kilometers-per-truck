# Trucking

> Microverse ROR Capstone Project

<p align="right">
  <br>
  <a href="https://github.com/ricardovaltierra/kilometers-per-truck">Explore the repo »</a>
  <br>
  <a href="https://github.com/ricardovaltierra/kilometers-per-truck/issues">Request Feature</a>
</p>

## Table of Contents

* [About the Project](#about-the-project)

* [Preview](#preview)

* [Built With](#built-with)

* [Getting Started](#getting-started)

* [How it Works](#how-it-works)

* [Business Rules](#business-rules)

* [Contributing](#contributing)

* [Contact](#contact)

* [MIT License](#mit-license)

* [Creative Commons License](#creative-commons-license)


## About The Project

Small app with a thematic of delivering enterprise services to keep the record on their vehicle kilometer travels.

It is designed to cover the need to measure how many kilometers do each of the registered trucks on every service they do, to a given city and for every extra kilometers unworked (lunch - fuel load - mechanic service - others)

## Preview

![Login and register](app/assets/images/login-register.gif) ![Login and register](app/assets/images/app-tour-1.gif) ![Login and register](app/assets/images/app-tour-2.gif)

> [Live Version!](https://truckinglat.herokuapp.com/)

Feel free to use and recommend it.

## Built With

* [HTML5](https://developer.mozilla.org/es/docs/HTML/HTML5)

* [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)

* [Ruby =< 2.6.5](https://www.ruby-lang.org/en/)

* [Rails =< 5.2.4](https://rubyonrails.org/)

* [PostgreSQL](https://www.postgresql.org/)

## Getting Started

To get a local copy up and running follow these simple steps.

Clone or fork the <a href="https://github.com/ricardovaltierra/kilometers-per-truck">repo</a> [git@github.com:ricardovaltierra/kilometers-per-truck.git]

As a user once you registered are able to do the following:

- Register multiple travels you've made (Per service)
  * Specify the package to deliver
  * The kilometers traveled
  * The destiny (City) if it's an offical travel
- See all the travels you've made in your profile
  * View the official & unofficial travels separately (Unofficial does not have a destiny)
- View available citys for destiny and register a new one if required

## How it Works

### Step 1: Clone and install dependencies

Clone the repo and run `bundle install` to get all the gems on your terminal.

### Step 2: Run database migration

From terminal type `rails db:migrate` to get your schema updated

### Step 3: Work on IRB

That's it on configuration. Now you can just open your terminal to start on `rails server` and open your browser

### Step 4: View your app

Now you can navigate to `localhost:3000` on your browser to see your app working.
Feel free to create as many travels as required. If you want to record an official travel you will have to go first to register a city if there is no one.

## Business Rules

 [You can find original business rules here](Bussiness-Rules.txt)
    
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project

2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)

3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)

4. Push to the Branch (`git push origin feature/AmazingFeature`)

5. Open a Pull Request

## Contact

Ricardo Valtierra - [@RicardoValtie15](https://twitter.com/RicardoValtie15) - ricardo_valtierra@outlook.com  - [linkedin.com/in/ricardovaltierra/](https://www.linkedin.com/in/ricardovaltierra/)

## MIT License

This project is under the [MIT](LICENSE) license.

## Creative Commons

Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

"Snapscan - iOs design and branding" by [Gregoire Vella](https://www.behance.net/gregoirevella) is licensed under [Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
