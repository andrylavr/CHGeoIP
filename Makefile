testch:
	docker-compose -f docker-compose.yml rm --force
	docker-compose -f docker-compose.yml up --build

.PHONY: testch