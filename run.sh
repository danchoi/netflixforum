#!/bin/bash
echo "Collecting thread links to threads.txt"
ruby collect_links.rb 5 |  tee threads.txt
echo "Expanding thread links to out.html"
bash expand.sh | tee out.html
# out.html contains the threads
