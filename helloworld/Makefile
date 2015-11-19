.PHONY: clean dist

DIST_DIR=out

clean:
	rm -rf out
	rm -rf *.o
	rm -rf *xen.bin

# Compile
%.o: %.c
	source env.sh && \
		x86_64-rumprun-netbsd-gcc -o $@ $<

# Bake image with Xen as target
%.xen.bin: %.o
	source env.sh && \
		rumprun-bake xen_pv $@ $<

# Package files for distribution
dist: helloworld.xen.bin
	mkdir -p $(DIST_DIR)
	cp *.xen.bin $(DIST_DIR)/
	cp *.xr.conf $(DIST_DIR)/
	cp *.launch.sh $(DIST_DIR)/
	chmod +x $(DIST_DIR)/*.sh

.DEFAULT_GOAL := dist

