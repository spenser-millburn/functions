function gtest
  alert-utils builder-gcc bash -c "source ~/.bash_profile; cd /root/build/alphabot-x86_64-assert/test/unit;./$argv[2] --gtest_filter=$argv[3]" | sed "s|/root|$ENVDIR\/repo|g"
end
