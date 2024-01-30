cmd_/home/dima/Code/dspeaker/dspeaker.mod := printf '%s\n'   dspeaker.o | awk '!x[$$0]++ { print("/home/dima/Code/dspeaker/"$$0) }' > /home/dima/Code/dspeaker/dspeaker.mod
