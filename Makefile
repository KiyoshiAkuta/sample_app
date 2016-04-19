PID = log/unicorn.pid

all:
	    @echo Usage: (start|stop|restart|graceful)
start:
	    @bundle exec unicorn_rails -c /home/akuta/workspace/sample_app/config/unicorn.rb -E development -D
stop:
	    @kill -QUIT `cat $(PID)`
restart:
	    @kill -HUP `cat $(PID)`
graceful:
	    @kill -USR2 `cat $(PID)`
