.PHONY: backup build letsencrypt logs start stop status shell tail time ov

help:
	@echo "Minecraft in a container!"
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo " backup      - run backup cycle"
	@echo " build       - build docker images locally"
	@echo " help        - print this help"
	@echo " letsencrypt - run letsencrypt renewal"
	@echo " logs        - print container logs"
	@echo " status      - show running container ps info"
	@echo " shell       - launch shell in mc container"
	@echo " start       - launch the container(s)"
	@echo " stop        - stop container(s)"
	@echo " tail        - tail the logs"
	@echo " time        - print time in the MC server"
	@echo " ov          - render overviewer"


backup:
	@bin/mc_backup

build:
	@bin/build_mc

letsencrypt:
	@bin/run_le

logs:
	docker compose logs

start:
	@bin/start_mc

stop:
	@bin/stop_mc

status:
	docker compose ps

shell:
	@bin/mc_shell

tail:
	docker compose logs -f

time:
	@bin/mc_time

ov:
	@bin/run_ov
