SRCS=$@

while [ 1 ] ; do
    inotifywait --format '%w %f %e' -e modify,move,move_self,close_write,create,delete,delete_self $SRCS
    make run
done
