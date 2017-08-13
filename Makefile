targetdir = $(HOME)
workdir = $(PWD)
tmux_conf   = $(targetdir)/.tmux.conf
screen_conf = $(targetdir)/.screen.conf
ssh_agent   = $(targetdir)/.launch_ssh_agent

link: link_tmux link_screen
	@echo "linked all"

link_tmux:
	@echo "linking configuration for tmux ..."; \
	[ -r $(tmux_conf) ] || ln -s $(workdir)/tmux/tmux.conf $(tmux_conf)

link_screen:
	@echo "linking configuration for screen ..."; \
	[ -r $(screen_conf) ] || ln -s $(workdir)/screen/screen.conf $(screen_conf)

link_ssh_agent:
	@echo "linking configuration for ssh agent ..."; \
	[ -r $(ssh_agent) ] || ln -s $(workdir)/ssh/launch_ssh_agent.sh $(ssh_agent)

unlink:
	@echo "unlinked all";
	-rm $(tmux_conf) $(screen_conf) $(ssh_agent);

test:
	@echo $(targetdir)
	@echo $(workdir)
	@echo $(tmux_conf)
	@echo $(screen_conf)

