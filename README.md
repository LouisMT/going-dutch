# Database

```bash
docker compose up db
```

# Backend

```bash
cd src
dotnet run Core
```

# Frontend

```bash
cd ui
flutter run -d chrome --web-port 5173 --dart-define API_BASE_URL=http://localhost:5148
```
