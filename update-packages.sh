#!/bin/sh

# Update the Atom package
# NOTE: Assumes "../atom-language-marko/" exists and was cloned from https://github.com/marko-js/atom-language-marko
rm -rf .atom-package
apm init --package ./.atom-package --convert ./
rm -rf ../atom-language-marko/grammars/marko.cson
cp ./.atom-package/grammars/marko.cson ../atom-language-marko/grammars/

# Update the Sublime package
# NOTE: Assumes "../sublime-marko/" exists and was cloned from https://github.com/merwan7/sublime-marko
rm -rf ../sublime-marko/Syntaxes/Marko.tmLanguage
cp ./Syntaxes/Marko.tmLanguage ../sublime-marko/Syntaxes/