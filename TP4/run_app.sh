docker run --rm -d \
	-p 5000:5000 \
	--name tp4-app \
	--network net-tp4 \
	-v srv:/srv \
	im-tp4:latest
