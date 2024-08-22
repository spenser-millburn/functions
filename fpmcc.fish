function fpmcc
  sudo rm -rf ./cache
  sudo fpm-cook clean
  sudo fpm-cook

end
