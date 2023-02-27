all: apb.bin

%.lst %.p: %.asm
	asl $< -o $*.p -LC

apb.bin: apb.p
	p2bin -r '$$07ff-$$19c1' apb.p apb.bin

clean:
	rm apb.bin *.p *.lst
