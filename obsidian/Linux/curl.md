# `curl`
## transfer a [[URL]] over [[HTTP]]

![[make/tool#curl]]

https://man7.org/linux/man-pages/man1/curl.1.html

**curl** is a tool to transfer data from or to a server, using one of the supported protocols (DICT, FILE, [[FTP]], FTPS, GOPHER, [[HTTP]], [[HTTPS]], [[IMAP]], IMAPS, LDAP, LDAPS, [[MQTT]], POP3, POP3S, RTMP, RTMPS, RTSP, [[SCP]], SFTP, [[SMB]], SMBS, SMTP, SMTPS, [[TELNET]] or [[TFTP]]). The command is designed to work without user interaction.

curl offers a busload of useful tricks like proxy support, user authentication, FTP upload, HTTP post, SSL connections, cookies, file transfer resume and more. As you will see below, the number of features will make your head spin!

## options

### `-4, --ipv4`
This option tells curl to resolve names to IPv4 addresses
only, and not for example try IPv6.

See also _--http1.1_ and _--http2_. This option overrides _-6,_ _--ipv6_.

### `-6, --ipv6`
  This option tells curl to resolve names to IPv6 addresses
  only, and not for example try IPv4.

  See also _--http1.1_ and _--http2_. This option overrides _-4,_
  _--ipv4_.

### `--limit-rate <speed>`
Specify the maximum transfer rate you want curl to use -
for both downloads and uploads. This feature is useful if
you have a limited pipe and you'd like your transfer not
to use your entire bandwidth. To make it slower than it
otherwise would be.

The given speed is measured in bytes/second, unless a
suffix is appended.  Appending 'k' or 'K' will count the
number as kilobytes, 'm' or 'M' makes it megabytes, while
'g' or 'G' makes it gigabytes. The suffixes (k, M, G, T,
P) are 1024 based. For example 1k is 1024. Examples: 200K,
3m and 1G.

If you also use the _-Y, --speed-limit_ option, that option
will take precedence and might cripple the rate-limiting
slightly, to help keeping the speed-limit logic working.

If this option is used several times, the last one will be
used.

### `-L, --location`
(HTTP) If the server reports that the requested page has
moved to a different location (indicated with a Location:
header and a 3XX response code), this option will make
curl redo the request on the new place. If used together
with _-i, --include_ or _-I, --head_, headers from all
requested pages will be shown. When authentication is
used, curl only sends its credentials to the initial host.
If a redirect takes curl to a different host, it won't be
able to intercept the user+password. See also _--location-_
_trusted_ on how to change this. You can limit the amount of
redirects to follow by using the _--max-redirs_ option.

When curl follows a redirect and if the request is a POST,
it will send the following request with a GET if the HTTP
response was 301, 302, or 303. If the response code was
any other 3xx code, curl will re-send the following
request using the same unmodified method.

You can tell curl to not change POST requests to GET after
a 30x response by using the dedicated options for that:
_--post301_, _--post302_ and _--post303_.

The method set with _-X, --request_ overrides the method
curl would otherwise select to use.

### `--output-dir <dir>`

This option specifies the directory in which files should
be stored, when _-O, --remote-name_ or _-o, --output_ are
used.

The given output directory is used for all URLs and output
options on the command line, up until the first _-:,_
_--next_.

If the specified target directory doesn't exist, the
operation will fail unless _--create-dirs_ is also used.

If this option is used multiple times, the last specified
directory will be used.

See also _-O, --remote-name_ and _-J, --remote-header-name_.
Added in 7.73.0.

### `-o, --output <file>`

Write output to <file> instead of stdout. If you are using
{} or [] to fetch multiple documents, you should quote the
URL and you can use '#' followed by a number in the <file>
specifier. That variable will be replaced with the current
string for the URL being fetched. Like in:

curl "http://{one,two}.example.com" -o "file_#1.txt"

or use several variables like:

curl "http://{site,host}.host[1-5].com" -o "#1_#2"

You may use this option as many times as the number of
URLs you have. For example, if you specify two URLs on the
same command line, you can use it like this:

curl -o aa example.com -o bb example.net

and the order of the -o options and the URLs doesn't
matter, just that the first -o is for the first URL and so
on, so the above command line can also be written as

curl example.com example.net -o aa -o bb

See also the _--create-dirs_ option to create the local
directories dynamically. Specifying the output as '-' (a
single dash) will force the output to be done to stdout.

To suppress response bodies, you can redirect output to
/dev/null:

curl example.com -o /dev/null

Or for Windows use nul:

curl example.com -o nul

See also _-O, --remote-name_, _--remote-name-all_ and _-J,_
_--remote-header-name_.

### `-O, --remote-name`

Write output to a local file named like the remote file we
get. (Only the file part of the remote file is used, the
path is cut off.)

The file will be saved in the current working directory.
If you want the file saved in a different directory, make
sure you change the current working directory before
invoking curl with this option.

The remote file name to use for saving is extracted from
the given URL, nothing else, and if it already exists it
will be overwritten. If you want the server to be able to
choose the file name refer to _-J, --remote-header-name_
which can be used in addition to this option. If the
server chooses a file name and that name already exists it
will not be overwritten.

There is no URL decoding done on the file name. If it has
%20 or other URL encoded parts of the name, they will end
up as-is as file name.

You may use this option as many times as the number of
URLs you have.