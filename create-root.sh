rm -rf root
mkdir -p root
mkdir -m 555 root/bin
mkdir -m 555 root/sbin
mkdir -m 755 root/dev
mkdir -m 755 root/etc
mkdir -m 755 root/etc/sysconfig
mkdir -m 755 root/etc/xdg
mkdir -m 755 root/home
mkdir -m 755 root/lib
mkdir -m 755 root/lib64
mkdir -m 1777 root/tmp
mkdir -m 755 root/usr
mkdir -m 755 root/run
mkdir -m 755 root/var
mkdir -m 755 root/var/adm
mkdir -m 755 root/var/cache
mkdir -m 755 root/var/db
mkdir -m 755 root/var/lib
mkdir -m 755 root/var/lock
mkdir -m 755 root/var/log
ln -s /run root/var/log
mkdir -m 755 root/var/spool
mkdir -m 1777 root/var/tmp
touch root/sbin/init
touch root/etc/resolv.conf
touch root/etc/hosts
touch root/etc/hostname
ln -s /proc/self/mounts root/etc/mtab
mkdir -m 755 root/dev/pts
mkdir -m 755 root/dev/shm
ln -s /proc/kcore root/dev/core
ln -s /proc/self/fd root/dev/fd
ln -s /proc/self/fd/0 root/dev/stdin
ln -s /proc/self/fd/1 root/dev/stdout
ln -s /proc/self/fd/2 root/dev/stderr
mknod -m 666 root/dev/null c 1 3
mknod -m 666 root/dev/zero c 1 5
mknod -m 666 root/dev/full c 1 7
mknod -m 666 root/dev/random c 1 8
mknod -m 666 root/dev/urandom c 1 9
mknod -m 666 root/dev/tty c 5 0
mknod -m 600 root/dev/console c 5 1
mknod -m 666 root/dev/ptmx c 5 2
mknod -m 600 root/dev/tty0 c 4 0
mknod -m 600 root/dev/tty1 c 4 1
mknod -m 600 root/dev/tty2 c 4 2
mknod -m 600 root/dev/tty3 c 4 3
mknod -m 600 root/dev/tty4 c 4 4
mknod -m 600 root/dev/tty5 c 4 5
mknod -m 600 root/dev/tty6 c 4 6
mknod -m 600 root/dev/tty7 c 4 7
mknod -m 600 root/dev/tty8 c 4 8
mknod -m 600 root/dev/tty9 c 4 9
chown root.tty root/dev/tty* root/dev/ptmx
