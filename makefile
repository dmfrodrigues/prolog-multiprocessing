# (C) 2020 Diogo Rodrigues
# Distributed under the terms of the GNU General Public License, version 3

# To test with SICStus PROLOG, run make test PROLOG=sicstus
PROLOG=swipl

all:

test: test_multiprocessing

test_multiprocessing:
	$(PROLOG) --noinfo -q -l test_multiprocessing.pl

clean:
	rm *.zip
