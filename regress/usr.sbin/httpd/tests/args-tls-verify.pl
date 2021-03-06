# test https connection, verifying client cert

use strict;
use warnings;

our %args = (
    client => {
	tls => 1,
	offertlscert => 1,
	loggrep => 'Issuer.*/OU=ca/',
    },
    httpd => {
	listentls => 1,
	verifytls => 1,
    },
    len => 512,
    md5 => path_md5("512")
);

1;
