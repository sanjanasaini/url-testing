# url-testing

Shell script that accepts a list of URLs in a separate file and tests if each website is up or not.
 
Hint:- checkout the curl, wget and tail commands. And check out this FAQ for how
to read a file line by line in Bash. It's not obvious.
If any URL in the file isn't accessible, testmyurl should report that it isn't
found as per the example below and should (after testing all URLs), exit with
return value 1.
If zero or more than two parameters are passed to testmyurl, print the usage
to stderr and exit with value 1.

Example Outputs
$ ./testmyurl
Usage: ./testmyurl file
$ echo $?
1
$ cat urls
https://occs.cs.oberlin.edu/~rhoyle/17s-cs241/assignments/hw02.html
https://no.such.url
https://occs.cs.oberlin.edu
$ ./testmyurl urls
Not found: http://no.such.url
$ echo $?
1
$ cat urls-working
https://example.com
$ ./testmyurl urls-working
$ echo $?
0
