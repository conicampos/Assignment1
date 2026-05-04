# EventHub - Assignment 2

## Team Members

* Constanza Campos
* René Montoya

## Course

Web Technologies

## Year

2026

---

## Setup and Running Instructions

To run this application locally using PostgreSQL, follow these steps in your terminal:

### 1. Install dependencies

```bash
bundle install
```

### 2. Setup the database (create, migrate, and seed)

```bash
rails db:create db:migrate db:seed
```

### 3. Start the Rails server

```bash
rails server
```

Then, open your browser and navigate to:

```
http://localhost:3000
```

---

## Repository Structure

The project follows the standard Ruby on Rails 8 structure:

### Models & Validations

Located in `app/models/`
Includes associations and enums for:

* Event
* User
* Registration
* Category

### Controllers & Views

* Read-only actions (`index`, `show`) located in `app/controllers/`
* Bootstrap-styled views located in `app/views/`

### Database Seeds

Meaningful sample data located in:

```
db/seeds.rb
```

### Landing Page

* View: `app/views/pages/home.html.erb`
* Layout: `app/views/layouts/application.html.erb`
* Controller: `app/controllers/pages_controller.rb`

### User Stories

Located in:

```
user_stories.md
```

### Routes

Configured in:

```
config/routes.rb
```

Using resourceful routes for main entities.

---

## Database Diagram

![Database Diagram](https://raw.githubusercontent.com/conicampos/Assignment1/main/data_model_v2.png)
