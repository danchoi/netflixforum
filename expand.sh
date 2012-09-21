
awk '{print $1}' threads.txt | while read path; do 
  ruby extract_post.rb "$path"
done


