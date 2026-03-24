CC ?= clang
CPPFLAGS ?= -MMD -MP
CFLAGS ?= -Wall -Wextra -Wpedantic -g

DSA := data_structures_algorithms
TARGET := $(DSA)/data_structures/arrays/array_adt
PROGRAM ?= $(TARGET)
SRCS := $(DSA)/data_structures/arrays/array_adt.c $(DSA)/utils/utils.c
OBJS := $(SRCS:.c=.o)
DEPS := $(OBJS:.o=.d)

.PHONY: all clean run run-one

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

run-one: $(PROGRAM)
	./$(PROGRAM)

clean:
	rm -f $(OBJS) $(DEPS) $(TARGET)

-include $(DEPS)