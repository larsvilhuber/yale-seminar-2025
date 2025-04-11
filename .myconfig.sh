repo=quarto
space=larsvilhuber
dockerrepo=$(echo $space/$repo | tr [A-Z] [a-z])
case $USER in
  codespace)
  WORKSPACE=/workspaces
  ;;
  *)
  #WORKSPACE=$HOME/Workspace/git/
  WORKSPACE=$PWD
  ;;
esac
tag=2024-11-17
