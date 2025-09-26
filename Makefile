deploy:
	docker compose down -v && docker compose up -d --remove-orphans
down:
	docker compose down -v
remove:
	@if [ -n "$$(docker ps -q)" ]; then docker stop $$(docker ps -q); fi
	@if [ -n "$$(docker images -q)" ]; then docker rmi -f $$(docker images -q); fi	
elog:
	docker logs n8n-editor-pool
plog:
	docker logs postgres-pool