TARGET := libgloss.a
OBJS := cpu_start.o crt0.o custom_ops.o newlib_stubs.o uart.o syscalls.o
OBJS += newlib_extra.o

$(TARGET): $(OBJS)
	$(PREFIX)ar rc $(TARGET) $(OBJS)

clean:
	rm -f $(TARGET) $(OBJS)