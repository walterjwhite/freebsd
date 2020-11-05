# /etc/skel/.bashrc

for _BASHRC_ in $(find /usr/local/etc/walterjwhite/bashrc -type f)
do
	source $_BASHRC_
done
