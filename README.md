# 🚀 Rails + Ralix + Tailwind

> Starter Kit to build modern Rails applications fast

Powered by:

- [Rails](https://rubyonrails.org)
- [Ralix](https://github.com/ralixjs/ralix)
- [Tailwind CSS](https://tailwindcss.com)
- [PostgreSQL](https://www.postgresql.org)
- [Turbo](https://turbo.hotwired.dev)
- [esbuild](https://esbuild.github.io)

Rails v7 application template ready to start building your next project, with a pre-configured modern front-end stack and some extras:

- 🎨 Minimalistic and responsive, clean layout
- 📦 Icons pack, via [Heroicons](https://heroicons.com)
- 🔐 Authentication, via [Devise](https://github.com/heartcombo/devise) + [OmniAuth](https://github.com/omniauth/omniauth) for Social Logins
- 👥 Authorization, via [CanCanCan](https://github.com/CanCanCommunity/cancancan)
- 🔍 Searching, via [Ransack](https://github.com/activerecord-hackery/ransack)
- 📝 Rich text edition, via [Trix](https://trix-editor.org)
- 🔢 Pagination, via [Pagy](https://github.com/ddnexus/pagy)
- 📄 Static pages controller (About, Terms, ...)
- 🔴 Custom errors pages: 404, 422, 500
- 📚 *Ready-to-use* components: Tables, Buttons, Forms, Cards, Modals and Tooltips

## Install

Clone this repository (or use the GitHub *template* button), then `cd` into the folder and run:

```
> bin/setup
```

## Run

Start the development server:

```
> bin/dev
```

## Getting Started with Docker

This guide will help you to run the project locally using Docker.

### Prerequisites

Before you begin, ensure you have the following installed:
- Docker
- Docker Compose

### Configuration

1. **Environment Variables**: Add the following variables to your `.env` file to configure the database connection:

    ```plaintext
    DATABASE_HOST=db
    DATABASE_USERNAME=postgres
    DATABASE_PASSWORD=password
    POSTGRES_PASSWORD=password
    ```

### Running the Application

Follow these steps to get your Docker environment up and running:

1. **Start Docker Containers**:

    Navigate to the root directory of the project in your terminal and run:

    ```bash
    docker-compose up
    ```

    This command starts two Docker containers:
    - A web container for the application.
    - A db container for the PostgreSQL database.

2. **Identify the Web Container**:

    To find the ID of the web container, list all active Docker containers:

    ```bash
    docker ps
    ```

    Note the ID of the container running your web application.

3. **Access the Web Container**:

    Use the following command to access the terminal of the web container. Replace `#{container_id}` with the actual container ID:

    ```bash
    docker exec -it #{container_id} /bin/bash
    ```

4. **Database Setup**:

    Inside the web container's terminal, run the following commands to set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

5. **Access the Application**:

    The application should now be running and accessible via:

    [http://localhost:3000](http://localhost:3000)

### Troubleshooting

If you encounter issues, ensure that Docker is running correctly and that all steps have been accurately followed. Check the Docker and application logs for any error messages.

---

For more information on how to use Docker with this project, refer to [Docker's documentation](https://docs.docker.com/).
