<div align="center">

<img src="https://nexboard-frontend.onrender.com/assets/img/logo.svg" alt="NexBoard" width="200" />

REST API for **NexBoard**, a Kanban project management app built with Django REST Framework.

[![License: MIT](https://img.shields.io/badge/License-MIT-7c3aed.svg)](LICENSE)
[![Django](https://img.shields.io/badge/Django-5.1-092e20.svg)](https://www.djangoproject.com/)
[![DRF](https://img.shields.io/badge/DRF-3.16-a30000.svg)](https://www.django-rest-framework.org/)

**[Live Demo](https://nexboard-frontend.onrender.com)** &nbsp;·&nbsp; **[API Docs](https://nexboard-backend-ld7s.onrender.com/api/docs/)**

> Runs on Render's free tier — may take ~30s to wake up on first request.

</div>

---

## Tech Stack

- Python 3.11+
- Django 5.1
- Django REST Framework
- Token Authentication
- drf-spectacular (OpenAPI / Swagger)
- CORS Headers
- WhiteNoise + Gunicorn (Production)
- SQLite

---

## Local Setup

```bash
python -m venv venv
venv\Scripts\activate          # Windows
pip install -r requirements.txt
cp .env.example .env           # fill in SECRET_KEY
python manage.py migrate
python manage.py runserver
```

API available at `http://127.0.0.1:8000/api/`

---

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/registration/` | Register a user |
| POST | `/api/login/` | Login — returns auth token |
| GET | `/api/email-check/` | Check if email exists |
| GET/POST | `/api/boards/` | List or create boards |
| GET/PATCH/DELETE | `/api/boards/{id}/` | Read, update, or delete a board |
| POST | `/api/tasks/` | Create a task |
| GET/PATCH/DELETE | `/api/tasks/{id}/` | Read, update, or delete a task |
| GET | `/api/tasks/assigned-to-me/` | Tasks assigned to current user |
| GET | `/api/tasks/reviewing/` | Tasks where current user is reviewer |

---

## Project Structure

```
nexboard_backend/
├── core/               # Settings, root URLs, WSGI
├── kanban_app/         # Board model & API
├── tasks_app/          # Task model & API
├── users_auth_app/     # Custom user model & auth
├── manage.py
├── requirements.txt
├── build.sh            # Render build script
└── .env.example
```

---

## Environment Variables

See [`.env.example`](.env.example) for all required variables.

---

## License

MIT License — see the [LICENSE](LICENSE) file for details.

## Contact

Takoua Jelassi — [takoua.jelassi@gmail.com](mailto:takoua.jelassi@gmail.com)
