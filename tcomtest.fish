function tcomtest
 set cwd $PWD
 # build x86_64
 # /home/smillburn/embd/repo/alphabot/app/commander/tote/actor/test/test_tote_commander_actor.hpp
 set test_path /home/smillburn/embd/repo/alphabot/app/commander/tote/actor/test/pause_resume_test.cpp
 set test (cat $test_path | grep TEST_F | getfield 2|sed 's/)//g' | fzf )
 set executable GTEST-tcom_belt_actor_command_rejection_test 
 set fixture ToteCommanderActorHSMTestFixture 

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
