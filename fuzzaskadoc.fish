function fuzzaskadoc
   set SITE_ROOT (g please return a single url for the $argv[1] documention)
   set RECURSION_DEPTH "$argv[2]"
   set GOAL "$argv[3..-1]"

   h1 FINDING relevant content under $SITE_ROOT

   set links (python3 -m askthedocs.askthedocs --url $SITE_ROOT --print-links-only --maxdepth $RECURSION_DEPTH --filter-out \# | g from these links, filter on the links i might be interested in, I am trying to achieve $GOAL , return 10 max and return nothing but each link. one line per link ) 


   for link in $links
     h2 found (string collect $link)
   end

   prompt Continue\? 

   h1 SCRAPING 
   set cache_path (mktemp)
   for link in $links;
     echo $link
     echo $link >> $cache_path
     set content (echo $link | xargs curl | html2text >> $cache_path )
   end

   set prompt (prompt press enter to view the found documentation: )
   h1 FOUND DOCS
   mdview $cache_path
   echo "Scraped Data: $cache_path "
   e "LINE_COUNT:" (cat $cache_path | wc -l)

   set prompt (prompt please enter your question and hit enter: )
   set cache_path2 (mktemp)

   h1 TRANSFORMED OUTPUT
   cat $cache_path| g $prompt > $cache_path2
   mdview $cache_path2

   echo "Scraped Data: $cache_path2 "
   e "LINE_COUNT:" (cat $cache_path2 | wc -l)
 
end
