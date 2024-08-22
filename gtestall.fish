function gtestall
  alert-utils builder-gcc bash -c "source ~/.bash_profile; cd /root/build/alphabot-x86_64-assert/test/unit;./unit_test_all.sh"
end
