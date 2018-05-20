homedir = $(HOME)
workdir = $(PWD)
MAKE=make

# link from
vim   = $(workdir)/vim
vimrc = $(workdir)/vim/vimrc
gitconfig  = $(workdir)/git/gitconfig
gitignore  = $(workdir)/git/gitignore
tmuxconf   = $(workdir)/tmux/tmux.conf
screenconf = $(workdir)/screen/screen.conf
sshagent   = $(workdir)/ssh/launch_ssh_agent.sh

# dot files
dotvim   = $(homedir)/.vim
dotvimrc = $(homedir)/.vimrc
dotgitconfig  = $(homedir)/.gitconfig
dotgitignore  = $(homedir)/.gitignore
dottmuxconf   = $(homedir)/.tmux.conf
dotscreenconf = $(homedir)/.screen.conf
dotsshagent   = $(homedir)/.launch_ssh_agent.sh

dotfiles = $(dotvim) $(dotvimrc) $(dotgitconfig) $(dotgitignore) \
		   $(dottmuxconf) $(dotscreenconf) $(dotsshagent)

link: link_vim link_tmux link_screen link_sshagent
	@echo "linked all"; \
	$(MAKE) status;

link_vim:
	@echo "linking configuration for vim ..."; \
	[ -r $(dotvim) ] || ln -s $(vim) $(dotvim); \
	[ -r $(dotvimrc) ] || ln -s $(vimrc) $(dotvimrc);
	@echo "linked for vim";\

link_git:
	@echo "linking configuration for git ..."; \
	[ -r $(dotgitconfig) ] || ln -s $(gitconfig) $(dotgitconfig); \
	[ -r $(dotgitignore) ] || ln -s $(gitignore) $(dotgitignore);
	@echo "linked for git";

link_tmux:
	@echo "linking configuration for tmux ..."; \
	[ -r $(dottmuxconf) ] || ln -s $(tmuxconf) $(dottmuxconf);
	@echo "linked for tmux";

link_screen:
	@echo "linking configuration for screen ..."; \
	[ -r $(dotscreenconf) ] || ln -s $(screenconf) $(dotscreenconf);
	@echo "linked for screen";

link_sshagent:
	@echo "linking configuration for ssh agent ..."; \
	[ -r $(dotsshagent) ] || ln -s $(sshagent) $(dotsshagent);
	@echo "linked for ssh agent";

status:
	@echo "current status";
	@ls -l $(dotfiles);

unlink:
	@echo "unlinking all"; \
	$(MAKE) status;
	-rm $(dotfiles);
	@echo "unlinked";

list:
	@echo "will create links for these dot files under $(homedir)"
	@for file in $(dotfiles); do echo $${file}; done;

