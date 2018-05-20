dot-files
==========
my dot files

## usage
1. git clone https://github.com/jzhangkun/dot-files.git
2. link all the files you need

## auto-link
### backup
though it will not override existing dot file, but please take backup of local dot files.
```
# list of dot files 
make list
```
### install
```
# link all
make link

# show status
make status

# unlink all
make unlink
```
### note for git
do NOT takes my gitconfig, you need customize your own
```
# link for git
make link_git
```
