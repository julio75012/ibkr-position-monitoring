del *.obj *.lib
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl000libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl001libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl010libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl011libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl100libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl101libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl110libbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
ren libbid.lib cl111libbid.lib
make clean 


make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl000blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl001blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl010blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl011blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl100blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl101blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl110blibbid.lib
make clean 
make _HOST_OS=Windows_NT  CC=cl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
ren libbid.lib cl111blibbid.lib
make clean 
