CC = gcc
CFLAGS = -fstack-protector-all -Wl,-z,relro,-z,now -z noexecstack -D_FORTIFY_SOURCE=2 -O2 -s -Wno-unused-result
TARGET = copier
SRC = copier.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(SRC) -o $(TARGET) $(CFLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean