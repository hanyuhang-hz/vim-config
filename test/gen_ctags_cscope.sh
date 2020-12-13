#!/bin/bash

ctags -R *


find . -regex '.*\.c\|.*\.h\|.*\.cpp\|.*\.hpp\|.*\.java' > cscope.files
cscope -Rbq



