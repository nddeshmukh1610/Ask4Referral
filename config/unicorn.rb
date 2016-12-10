root = "/opt/www/Ask4Referral/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/uniocrn.log"

listen "/tmp/unicorn.Ask4Referral.sock"
worker_processes 1
timeout 30
