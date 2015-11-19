Testing out rump unikernel [http://rumpkernel.org/](http://rumpkernel.org/)


# Initial Setup

```
git submodule update --init --recursive
sh setup_symlinks.sh
```

## Build OS X ELF cross-compile toolchain (Optional, if using OS X as host)

```
sh build_osx_toolchain.sh
```

## Build `rumprun`

```
sh build_rumprun.sh
```

## Setup Vagrant-based box running XenServer

```
cd xenbox
vagrant up
vagrant reload # necessary to re-boot with Xen kernel
```

# Build & run helloworld test

    cd helloworld

Compile program and bake rumpkernel image:

    make

Deploy to XenServer (assumes vagrant box is up and running):

    sh deploy.sh 

Login to XenServer and launch new DomU domain running the unikernel:

    sh login.sh
    vagrant@xenbox> sh helloworld.launch.sh
      >>> Hello world from rump unikernel on Xen
