# NexBoard — Backend API

REST API for **NexBoard**, a modern Kanban-style project management app. Built with Django REST Framework — supports authentication, boards, tasks, assignments, and comments.

## Tech Stack

- Python 3.11+
- Django 5.1
- Django REST Framework
- Token Authentication
- drf-spectacular (OpenAPI / Swagger)
- CORS Headers
- WhiteNoise + Gunicorn (Production)
- SQLite (Dev) / PostgreSQL (Prod ready)

## Getting Started

### 1. Virtual environment

```bash
python -m venv env
env\Scripts\activate        # Windows
# source env/bin/activate   # macOS / Linux
```

### 2. Install dependencies

```bash
pip install -r requirements.txt
```

### 3. Environment variables

Create a `.env` file:

```env
SECRET_KEY=your-secret-key-here
DEBUG=True
ALLOWED_HOSTS=127.0.0.1,localhost
CORS_ALLOWED_ORIGINS=http://localhost:5500,http://127.0.0.1:5500
```

### 4. Run migrations

```bash
python manage.py migrate
```

### 5. Start the server

```bash
python manage.py runserver
```

API available at `http://127.0.0.1:8000/api/`

## API Documentation

- Swagger UI: `http://127.0.0.1:8000/api/docs/`
- OpenAPI Schema: `http://127.0.0.1:8000/api/schema/`

## Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/registration/` | Register a user |
| POST | `/api/login/` | Login — returns auth token |
| GET | `/api/email-check/` | Check if email exists |
| GET/POST | `/api/boards/` | List or create boards |
| GET/PATCH/DELETE | `/api/boards/{id}/` | Read, update, or delete a board |
| POST | `/api/tasks/` | Create a task |
| GET/PATCH/DELETE | `/api/tasks/{id}/` | Read, update, or delete a task |
| GET/POST | `/api/tasks/{id}/comments/` | List or create comments |
| DELETE | `/api/tasks/{id}/comments/{comment_id}/` | Delete a comment |

## Project Structure

```
nexboard_backend/
├── core/              # Settings, root URLs, WSGI/ASGI
├── kanban_app/        # Board & column logic
├── tasks_app/         # Task & comment logic
├── users_auth_app/    # Custom user model & auth
├── manage.py
└── requirements.txt
```

## Author

**Takoua Jelassi** — Full Stack Developer
