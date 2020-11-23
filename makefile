# To test with SICStus PROLOG, run make test PROLOG=sicstus
PROLOG=swipl

all:

test: test_multiprocessing

test_multiprocessing:
	$(PROLOG) --noinfo -q -l tests/test_multiprocessing.pl

clean:
	rm *.zip
