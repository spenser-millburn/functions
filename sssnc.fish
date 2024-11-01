function sssnc
gnome-screenshot
python3 gpt4v.py (ls --sort newest  -1 Screenshot* |tail -n 1) "solve the problem in c++, output the solved code only as a markdown code block and in the format asked in the assignment" | g extract the markdown code block | tee /tmp/solved.md
mdview /
end
