#!/bin/bash
cd /c/Users/Administrator/GitBook/Library/Import/bss-doc
rm -fr _book
rm -fr wiki
gitbook build
mv _book wiki
scp -vr wiki root@10.1.51.238:/etc/nginx/html/doc