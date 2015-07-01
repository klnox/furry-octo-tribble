   $ npm install
#
# And then you can run various commands:
#
   $ make            # compile files that need compiling
   $ make clean all  # remove target files and recompile from scratch

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
