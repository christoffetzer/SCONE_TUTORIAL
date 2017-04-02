# SCONE Tutorial

## Prerequisites

### Ensure that your installed the sgx driver

```bash
> ls /dev/isgx 
/dev/isgx
```

If the driver is not installed, read Section [SCONE Host Setup](SCONE_HOSTINSTALLER_README.md) to learn how to install the SGX driver.

### Install sgxmusl cross compiler image

Ensure that you installed the sgxmusl:draft container image:

```bash
> docker image ls sconecuratedimages/crosscompilers
REPOSITORY                          TAG                 IMAGE ID            CREATED             SIZE
sconecuratedimages/crosscompilers   gcc-sim             e5cabb3682d6        17 hours ago        1.18 GB
sconecuratedimages/crosscompilers   gcc-sync            a4768b000fcc        18 hours ago        1.18 GB
```

If the cross compiler image is not yet installed, read Section [SCONE Curated Container Images](SCONE_Curated_Images.md) to learn how to install the SCONE cross compiler image.

## Install the tutorial

Currently, you still need a deployment key to pull this tutorial.
Ensure that you use the correct deployment key

```bash
export GIT_SSH_COMMAND="ssh -i ~/.ssh/SCONE_TUTORIAL_rsa"
```

and clone the tutorial 

```bash
git clone git@github.com:christoffetzer/SCONE_TUTORIAL.git
```

