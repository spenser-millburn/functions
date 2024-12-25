function g
  # python3 -m sgpt "$argv" --no-cache --model "gpt-4o"
  # ai chat --user "$argv" #| sed -E '/assistant|user@chat|user@CHAT|PUBLIC PREVIEW version may|https:\/\/aka.ms\/azure-ai-cli-public-preview|2024 Microsoft Corporation. All Rights Reserved.|AI - Azure AI CLI, Version 1.0.0-preview-20240916.1/d' # | grep -v -E "assistant|user@chat|user@CHAT|PUBLIC PREVIEW version may|https://aka.ms/azure-ai-cli-public-preview|2024 Microsoft Corporation. All Rights Reserved.|AI - Azure AI CLI, Version 1.0.0-preview-20240916.1"
  #
  if not test -t 0
    # echo "There are lines in the pipe."
    while read line
      echo $line >> /tmp/gtemp.txt
    end
    set lines (cat /tmp/gtemp.txt  | string collect )
    rm /tmp/gtemp.txt

  # else
    # echo "The pipe is empty."
  end

 
  set remove_azure_prompt "please do not mention azure ai unless it actually relates to the conversation."
  set base_prompt "$remove_azure_prompt.$lines. The folllowing should be treated as the user prompt[$argv]"
  # echo $base_prompt
  # sed '1,7d' |sed 's/^[^ ]*:\s*//' 
  ai chat --system "$base_prompt" --user "go" | sed '1,7d' | sed 's/^[^ ]*assistant:\s*//' | string collect #| pretty


end
