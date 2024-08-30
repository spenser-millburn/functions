function bplantest
 set cwd $PWD
 # build x86_64
 set test (cat /home/smillburn/embd/repo/alphabot/app/planner/bot/actor/test/test.cpp | grep TEST_F | getfield 3 | fzf)
 set executable GTEST-bot_planner_actor_test
 set fixture BotPlannerActorTestFixture
 set command "gtest x86_64 $executable \*$fixture.$test\*"
 fish -c $command
 echo $command 
 echo (read --prompt-str="Press Enter to View the log")
 cdbuild alphabot-x86_64-assert/test/unit
 set logname $executable-$fixture-$test
 thl $executable.key.thl $executable.thl | tee $logname.txt | lnav
 echo "thl $executable.key.thl $executable.thl | lnav"
 cd $cwd
end
