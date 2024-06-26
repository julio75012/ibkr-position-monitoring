echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 000 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl000libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 001 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl001libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 010 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl010libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 011 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl011libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 100 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl100libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 101 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl101libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 110 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl110libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 111 ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl111libbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=0
readtest < readtest.in
del ..\LIBRARY\libbid.lib



echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 000b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl000blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 001b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl001blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 010b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl010blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 011b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl011blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=0 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 100b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl100blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 101b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl101blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=0 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 110b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl110blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=0 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
echo ""
echo ""
echo "****************** RUNNING TESTS FOR icl 111b ***************************"
echo ""
echo ""
del readtest.exe readtest.obj
copy /Y  ..\LIBRARY\icl111blibbid.lib ..\LIBRARY\libbid.lib
make OS_TYPE=%1 CC=icl CALL_BY_REF=1 GLOBAL_RND=1 GLOBAL_FLAGS=1 UNCHANGED_BINARY_FLAGS=1
readtest < readtest.in
del ..\LIBRARY\libbid.lib
