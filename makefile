# Specify the name of the executable
EXECUTABLE = clox

# Specify the compiler to use
CC = gcc

# Specify the source and include directories
SRC_DIR = src
BUILD_DIR = build

# Specify the source and header files
SOURCES = $(wildcard $(SRC_DIR)/*.c)
HEADERS = $(wildcard $(SRC_DIR)/*.h)

# Compile the C code
$(BUILD_DIR)/$(EXECUTABLE): $(SOURCES) $(HEADERS)
	@mkdir -p $(BUILD_DIR)
	$(CC) -I$(SRC_DIR) -o $@ $(SOURCES)

# Run the executable
all: $(BUILD_DIR)/$(EXECUTABLE)
	$(BUILD_DIR)/$(EXECUTABLE)

# Execute the built program
run:
	@echo "Executing the built program..."
	$(BUILD_DIR)/$(EXECUTABLE)

# Clean up the compiled files
clean:
	rm -rf $(BUILD_DIR)
