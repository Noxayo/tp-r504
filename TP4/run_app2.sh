docker run --rm -d \
	-p 5000:5000 \
	--name tp4-app \
	-e FLASK_ENV=development \
	--env-file .env-dev \
	--network net-tp4 \
	-v srv/:/srv \
	im-tp4:latest
