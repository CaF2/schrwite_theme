#####################
# Copyright (c) 2015,2024 Florian Evaldsson <florian.evaldsson@telia.com>
#
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#####################

NAME = schrwite

FILE = $(NAME).xml

INSTALL_PATHS = gtksourceview-3.0/styles gtksourceview-4/styles gtksourceview-5/styles gedit/styles libgedit-gtksourceview-300/styles

RESULT_PATHS = $(addprefix ~/.local/share/,$(INSTALL_PATHS))

$(info $(RESULT_PATHS))

all: $(RESULT_PATHS)
install: $(RESULT_PATHS)
	
~/.local/share/%: %
	mkdir -p $@
	cp -f $</$(FILE) $@/$(FILE)
