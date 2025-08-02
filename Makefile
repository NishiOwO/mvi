CC = gcc
CFLAGS = -Iinclude -I. -fcommon -DLISPCODE -DCHDIR -DFASTTAG -DUCVISUAL -DMB -DBIT8 -DUXRE -D_XOPEN_SOURCE=600 -D_DEFAULT_SOURCE -DVMUNIX
LDFLAGS =
LIBS =

OBJS = src/ex_addr.o src/ex.o src/ex_cmds2.o src/ex_cmds.o src/ex_cmdsub.o src/ex_data.o src/ex_extern.o src/ex_get.o src/ex_io.o src/ex_put.o src/ex_re.o src/ex_set.o src/ex_subr.o src/ex_tagio.o src/ex_temp.o src/ex_tty.o src/ex_unix.o src/ex_vadj.o src/ex_v.o src/ex_version.o src/ex_vget.o src/ex_vmain.o src/ex_voper.o src/ex_vops2.o src/ex_vops3.o src/ex_vops.o src/ex_vput.o src/ex_vwind.o src/printf.o src/mapmalloc.o
LIBS += -lncurses

.PHONY: all clean
.SUFFIXES: .c .o

all: ./mvi

./mvi: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f */*.o ./mvi
