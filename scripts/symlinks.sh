symlink_dotfile() {
  ln -sfv $(grealpath $1) "$HOME/.$1"
}

echo "Creating symlinks ..."

pushd ./dots
symlink_dotfile aliases
symlink_dotfile zshrc
popd

