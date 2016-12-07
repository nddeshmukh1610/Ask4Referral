stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/uniocrn.log"

listen "/tmp/unicorn.Ask4Referral.soc"
worker_processes 1
timeout 30
