function bplantest
 set cwd $PWD
 set test (cat /home/smillburn/embd/repo/alphabot/app/planner/bot/actor/test/test.cpp | grep TEST_F | getfield 3 | fzf)
 set executable GTEST-bot_planner_actor_test
 set fixture BotPlannerActorTestFixture
 set command "gtest x86_64 $executable \*$fixture.$test\*"
 fish -c $command
 echo $command 
 echo (read --prompt-str="Press Enter to View the log")
 cdbuild alphabot-x86_64-assert/test/unit
 echo "thl $executable.key.thl $executable.thl | lnav"
 cd $cwd
end
