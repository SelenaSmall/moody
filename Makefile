PROJECT := moody

usage:
	bin/makefile/usage

install_tools:
	bin/makefile/upgrade-dev-tools

rails_server:
	bundle exec bin/rails server

webpack:
	bundle exec bin/webpack-dev-server

yarn_test:
	yarn test-watch

test_logs:
	tail -f log/test.log

######################################################################################
#                                        tmux                                        #
######################################################################################

# the || echo stuff here is so that tmux_stop still works if you killed a window
# (for example by clicking on the x on the iterm tab)
tmux_stop:
	tmux send-keys -t "$(PROJECT):0" C-c || echo "window killed manually?"
	tmux send-keys -t "$(PROJECT):1" C-c || echo "window killed manually?"
	tmux send-keys -t "$(PROJECT):2" C-c || echo "window killed manually?"
	tmux send-keys -t "$(PROJECT):3" C-c || echo "window killed manually?"
	tmux kill-session -t "$(PROJECT)"

tmux_start:
	tmux new-session -d -s "$(PROJECT)"
	sleep 1
	tmux rename-window -t "$(PROJECT):0" "rails_server"
	tmux new-window -d -n "webpack_dev_server" -t "$(PROJECT):1"
	tmux new-window -d -n "yarn_test" -t "$(PROJECT):2"
	tmux new-window -d -n "test_logs" -t "$(PROJECT):3"
	tmux new-window -d -n "scratch" -t "$(PROJECT):4"
	sleep 1
	bin/makefile/pg-start
	tmux send-keys -t "$(PROJECT):0" "make rails_server" Enter
	tmux send-keys -t "$(PROJECT):1" "make webpack" Enter
	tmux send-keys -t "$(PROJECT):2" "make yarn_test" Enter
	tmux send-keys -t "$(PROJECT):3" "make test_logs" Enter
	tmux -CC attach-session -t "$(PROJECT)"

tmux_start_window:
	bin/makefile/tmux-start-window
