if [ "$EUID" = "0" ] || [ "$USER" = "root" ] ; then
	PATH="/usr/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/sbin:/bin:${ROOTPATH}"
else
	PATH="/usr/local/bin:/usr/bin:/bin:${PATH}"
fi

export PATH
