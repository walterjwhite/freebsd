# /etc/skel/.zshrc

for _ZSHRC_ in $(find /usr/local/etc/walterjwhite/zshrc -type f)
do
	source $_ZSHRC_
done
