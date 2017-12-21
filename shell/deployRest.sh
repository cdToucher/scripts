#!/bin/bash
cd /c/Users/Administrator/GitBook/Library/Import/wiki
rm -fr _book
rm -fr rest
gitbook build
mv _book rest
scp -r rest root@10.1.51.238:/etc/nginx/html/doc