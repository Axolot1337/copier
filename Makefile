CC = gcc
CFLAGS = -fstack-protector-all -Wl,-z,relro,-z,now -z noexecstack -D_FORTIFY_SOURCE=2 -O2 -s -Wno-unused-result
TARGET = copier
SRC = copier.c

# Terminal renk kodları
YELLOW = \033[1;33m
GREEN = \033[1;32m
WHITE = \033[1;37m
RESET = \033[0m

all: $(TARGET)

$(TARGET): $(SRC)
	@echo "$(YELLOW)[+] $(SRC) is compiling...$(RESET)"
	@$(CC) $(SRC) -o $(TARGET) $(CFLAGS)
	@echo "$(GREEN)[✓] $(SRC) was successfully compiled and saved as $(TARGET)$(RESET)"
	@echo "$(WHITE)[i] For use, type: ./$(TARGET)$(RESET)"

.PHONY: all
