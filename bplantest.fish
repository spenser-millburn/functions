function bplantest
 set test (cat /home/smillburn/embd/repo/alphabot/app/planner/bot/actor/test/test.cpp | grep TEST_F | getfield 3 | fzf)
 set command "gtest x86_64 GTEST-bot_planner_actor_test \*BotPlannerActorTestFixture.$test\*"
 fish -c $command
 echo $command 
end
