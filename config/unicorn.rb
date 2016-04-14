worker_processes 1

listen '../tmp/sockets/unicorn.sock'

pid File.expand_path('../../log/unicorn.pid', __FILE__)

stderr_path File.expand_path('../../log/unicorn_stderr.log', __FILE__)
stdout_path File.expand_path('../../log/unicorn_stdout.log', __FILE__)

preload_app false

