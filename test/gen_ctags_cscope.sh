#!/bin/bash

#ctags -R *
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q  ./


find . -regex '.*\.c\|.*\.h\|.*\.cpp\|.*\.hpp\|.*\.java' > cscope.files
cscope -Rbq



