function penv
if [ "$argv[1]" = "init" ]
  virtualenv venv -p python3
end
 bass source ./venv/bin/activate
end
