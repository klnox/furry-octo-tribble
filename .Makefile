#!make install
 function git-root() {
 if [ -d .git ]; then
  return 0
 fi

 A=..
 while ! [ -d $A/.git ]; do 
  A="$A/.."
 done
 cd $A
}
