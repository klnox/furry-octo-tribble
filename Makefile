$ curl https://api.github.com/zen


#
BUILD_CONFIG_FILE ?= $(CURDIR)/build.config
BUILD_CONFIG = $(shell sed "s/\#.*//" $(BUILD_CONFIG_FILE))

ERLANG_MK = erlang.mk
ERLANG_MK_VERSION = $(shell git describe --tags --dirty)

.PHONY: all check

all:
	awk 'FNR==1 && NR!=1{print ""}1' $(patsubst %,%.mk,$(BUILD_CONFIG)) \
		| sed 's/^ERLANG_MK_VERSION = .*/ERLANG_MK_VERSION = $(ERLANG_MK_VERSION)/' > $(ERLANG_MK)

ifeq ($(p),)
check:
	$(MAKE) -C test
else
check:
	$(MAKE) -C test pkg-$(p)
endif
