SRCS	=	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s

OBJS	=	${SRCS:.s=.o}

%.o: %.s
	nasm -f elf64 $<

all: $(OBJS)
	ar rcs libasm.a $(OBJS)

clean:
	rm -f $(OBJS)

re: clean all

.PHONY: all clean re
