docker run -d \
	-p 5000:5000 \
	--name tp4-app \
	-e FLASK_ENV=development \
	--network net-tp4 \
	-v /home/nox/Documents/tp-r504/TP4/srv:/srv \
	im-tp4:latest
