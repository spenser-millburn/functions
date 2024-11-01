function sss
gnome-screenshot
python3 gpt4v.py (ls --sort newest  -1 Screenshot* |tail -n 1) "solve the problem in c++, output as a markdown code block and make it a solution class like the leetcode problem wants" | g extract the markdown code block | tee /tmp/solved.md
mdview /
end
