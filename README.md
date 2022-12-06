# 📚 KiSpace

KiSpace is a BnB inspired website that aims to rent event spaces and allow others to post their own spaces.

![KiSpace homepage](https://user-images.githubusercontent.com/91389023/205850536-54f20887-fba5-4a3d-a405-10e01921ef6c.PNG)
![KiSpace space list](https://user-images.githubusercontent.com/91389023/205850438-42ed83d6-af96-462c-807a-b094925ea78c.PNG)
![KiSpace showpage](https://user-images.githubusercontent.com/91389023/205850461-bff7ae80-dead-4f1a-bcbc-61c740231512.PNG)

<br>
App home: TODO
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- [Sammy k](https://github.com/sammyxxi/)
- [Mohamed Shegow](https://github.com/msinta/)
- [Tash](https://github.com/tashseb/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
