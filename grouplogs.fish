function grouplogs
for file in (find .  | ag $ALPHABOT_RAW_TEXT_KEY_LOG_REGEX );set log_name (basename $file | cut -d"." -f 1) ; mkdir $log_name; end;
for file in (find .  | ag $ALPHABOT_RAW_TEXT_KEY_LOG_REGEX );set log_name (basename $file | cut -d"." -f 1) ; mv $log_name* ./$log_name; end;
for file in (find .  | ag $ALPHABOT_RAW_TEXT_KEY_LOG_REGEX );set log_name (basename $file | cut -d"." -f 1) ; cd $log_name; consolidate_thl_files; cd .. ; end;
for file in (find .  | ag $ALPHABOT_RAW_TEXT_KEY_LOG_REGEX );set log_name (basename $file | cut -d"." -f 1) ; cd $log_name; sudo thl --ts utc *.key.thl *.thl > (currentdir).txt; cd .. ; end;
mkdir text; cp (find . | ag $ALPHABOT_TEXT_LOG_REGEX ) ./text

end
