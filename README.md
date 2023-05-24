![Logo](src/assets/GTAI.png)

# GTAI

GTAI is a web application that allows users to buy cars and store them in a database. Upon logging in, the user is given the option to steal a car rather than buy it. It provides full CRUD (Create, Read, Update, Delete) functionality, allowing users to perform various operations on car listings. GTAI also includes authorization and authentication features for secure access.

Live site [GTAI](https://gtai-frontend.onrender.com/)

# Overview

## Features

**User Registration:** Users can create an account by providing their email address and password.

**User Login:** Registered users can log in using their credentials to access the system.

**User Authentication:** Authentication is implemented to ensure that only authenticated users can perform actions such as adding, editing, or deleting car listings.

**Car Listing:** Users can view a list of available cars with details such as make, model, year, price, and mileage.

**Create Car:** Authenticated users can add new cars to the database by providing the necessary details such as make, model, year, price, and mileage.

**Update Car:** Authenticated users can edit and update the information of existing cars, including make, model, year, price, and mileage.

**Delete Car:** Authenticated users can remove cars from the database, effectively deleting the car listing.

**Search and Filter:** Users can search for specific cars by make, model, year, or any other relevant criteria. They can also apply filters to narrow down their search results based on price range, mileage, or other attributes.

## Installation

### Backend

- Clone the backend repository by running the following command: $ `git clone https://github.com/Grand-Theft-AI/gtai-backend.git`
- Navigate into the backend directory: $ `cd gtai-backend`
- Install necessary dependencies: $ `bundle`
- Create the database: $ `rails db:create`
- Migrate: $ `rails db:migrate`
- Seed initial data: $ `rails db:seed`
- Launch the rails server: $ `rails s`
- The backend API is now running on http://localhost:3000

### Frontend

- Clone the frontend repository by running the following command: $ `git clone https://github.com/Grand-Theft-AI/gtai-frontend.git`
- Navigate into the frontend directory: $ `cd gtai-frontend`
- Install necessary dependencies: $ `yarn`
- Start the server: $ `yarn start`
- Frontend is now running on http://localhost:30001

## Tech Used

- Rails 7.0.4.3
- Ruby 3.2
- [React](https://react.dev/)
- [Tailwindcss](https://tailwindcss.com/)
- [Reactstrap](https://reactstrap.github.io/)
- [Ruby on Rails](https://rubyonrails.org/)
