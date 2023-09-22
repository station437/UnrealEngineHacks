@echo off
set server=domain_or_ip
set port=22
set user=user
set server_path=/path/

@echo on
@rem scp -P %port% linuxserver_latest.tar.gz %user%@%server%:%server_path
@echo 1 > .deploy
@rem scp -P %port% .deploy %user%@%server%:%server_path
@del /f /q .deploy

@rem set in crontab: */5 * * * *   user    cd check_deploy_path && ./check_for_deploy.sh