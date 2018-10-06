PKG_MAKE_FLAGS += CONFIG_MT76_USB=m
PKG_MAKE_FLAGS += CONFIG_MT76x02_LIB=m
PKG_MAKE_FLAGS += CONFIG_MT76x02_USB=m
PKG_MAKE_FLAGS += CONFIG_MT76x0_COMMON=m
PKG_MAKE_FLAGS += CONFIG_MT76x0U=m
PKG_MAKE_FLAGS += CONFIG_MT76x2_COMMON=m
PKG_MAKE_FLAGS += CONFIG_MT76X2E=m
PKG_MAKE_FLAGS += CONFIG_MT76x2U=m
PKG_MAKE_FLAGS += CONFIG_MT7603E=m

KVERSION := $(shell uname -r)
KDIR := /usr/lib/modules/$(KVERSION)/build

# Make sure the whitespaces before the "make" commands below are real tabs!
all:
	@echo $(value obj-y)
	make -C $(KDIR) M=$(PWD)/src NOSTDINC_FLAGS=-I$(PWD)/src $(PKG_MAKE_FLAGS) modules

clean:
	make -C $(KDIR) M=$(PWD)/src clean
