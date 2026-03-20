# Бэкенд приложения мониторинга ИТ-угроз

## Краткое описание приложения
Веб-приложение предназначено для отправки сотрудниками случаев возникновения ИТ-угроз в компании с указанием фактов и скриншотов угроз.

## Структура
### Приложение:
- `main.go` - точка входа в приложение;
- `server.go` - запуск сервера, вход в сервисы-контейнеры Minio и Postgres, хранение методов GET и POST;
- `handler.go`- обработчики;
- `database.go` - миграция базы данных и функция входа в Postgres;
- `minio.go` - функция входа в Minio;
- `models.go` - модели базы данных;
- `repository.go` - методы взаимодействия с БД (Delete, Add, Change и т.д.).

### Docker compose контейнеры:
- `Minio` - система хранения объектов (файлы, изображения и т.д.);
- `Postgres` - система управления базами данных (СУБД);
- `Adminer` - панель управления СУБД-контейнерами.

### Другое:
- `go.mod` и `go.sum` - списки импортируемых пакетов;
- `.pre-commit-config.yaml`, `golangci.yml`, `golangci.bck.yml` - запуск pre-commit на локальной машине, включающий в себя именно `golangci-lint` (форматтер, линтер);
- `.gitignore` - игнорирование push для указанных форматов.

### Инструкция по установке и запуску:
1. Выполнить git clone https://github.com/max0194/threat-monitoring-backend.git в пустую директорию;
2. Выполнить git clone https://github.com/max0194/threat-monitoring-frontend.git в ту же директорию;
3. Запустить контейнеры через docker compose up -d в директории /backend/compose/;
4. Выполнить команду go run ./cmd/threat-monitoring/main.go в директории backend;
5. Ввести в браузере localhost:8080.
6. Узнать необходимые данные для тестовых профилей через adminer (Адрес: localhost:8084; Сервер: threat-monitoring-db, Пользователь: postgres; Пароль: postgres; База данных: threat-monitoring);

## Стек используемых технологий:
- Golang - [Ссылка на документацию](https://go.dev/doc/)
- Docker compose - [Ссылка на документацию](https://docs.docker.com/compose/)
- Postgres - [Ссылка на страницу контейнера](https://hub.docker.com/_/postgres)
- Minio - [Ссылка на страницу контейнера](https://hub.docker.com/r/minio/minio)
- Adminer - [Ссылка на страницу контейнера](https://hub.docker.com/_/adminer)
