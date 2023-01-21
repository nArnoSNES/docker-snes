docker image for [PVSnesLib](https://github.com/alekmaul/pvsneslib)
===================================================================

This simple Makefile+Dockerfile will create a ready to use image containing PVSnesLib and Make as an entrypoint.

Once build, use the following command to start an SNES build in current folder:

```
docker run -it -v $(pwd):/target pvsneslib:4.0.1
```

Since Make is the entrypoint, cleaning can be done with:

```
docker run -it -v $(pwd):/target pvsneslib:4.0.1 clean
```

You can create an alias for the command using add_alias.sh

requirements
------------

- Docker
- GNU/Make

Works on Linux and MacOSX (which was my target, compiling anything in 32Bit on a Mac is a pain in the ...)

Thanks
------

A huge thanks to all the great work of Alekmaul and all the motivated persons still updating the lib!
