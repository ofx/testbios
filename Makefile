NASM=nasm
NASMFLAGS=-f elf
LDFLAGS=-Tlinker.ld -melf_i386
OBJECT_FILES=bios.o

.PHONY: all
all: bios

%.o : %.asm
		$(NASM) $(NASMFLAGS) $< -o $@

bios : bios.o
		$(LD) $(LDFLAGS) $^ -o $@

.PHONY: clean
clean:
		rm -rf bios $(OBJECT_FILES)