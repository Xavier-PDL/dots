# different things we want to add to our path variable goes here.

# add android studio to path
if [ -d "$HOME/.local/android-studio/bin" ] ; then
    PATH="$HOME/.local/android-studio/bin:$PATH"
fi
alias android-studio=studio.sh

if [ -d "$HOME/.local/intellij/bin" ] ; then
    PATH="$HOME/.local/intellij/bin:$PATH"
fi
alias ideaj=idea.sh
