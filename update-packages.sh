#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ${DIR}/../atom-language-marko/grammars/

# Update the Atom package
# NOTE: Assumes "../atom-language-marko/" exists and was cloned from https://github.com/marko-js/atom-language-marko
rm -rf ${DIR}/.atom-package
apm init --package ${DIR}/.atom-package --convert ${DIR}
rm -rf ${DIR}/../atom-language-marko/grammars/marko.cson
cp ${DIR}/.atom-package/grammars/marko.cson ${DIR}/../atom-language-marko/grammars/

# Update the Sublime package
# NOTE: Assumes "../sublime-marko/" exists and was cloned from https://github.com/merwan7/sublime-marko
# rm -rf ${DIR}/../sublime-marko/Syntaxes/Marko.tmLanguage
# cp ./Syntaxes/Marko.tmLanguage ${DIR}/../sublime-marko/Syntaxes/