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

# Run the executable
all: $(BUILD_DIR)/$(EXECUTABLE)
	$(BUILD_DIR)/$(EXECUTABLE)

# Compile the C code
$(BUILD_DIR)/$(EXECUTABLE): $(SOURCES) $(HEADERS)
	@mkdir -p $(BUILD_DIR)
# `-g` is used to include debugging information in the executable, for use with lldb, remove it for production 
	$(CC) -I$(SRC_DIR) -o $@ $(SOURCES) -g

# Execute the built program
run:
	@echo "Executing the built program..."
	$(BUILD_DIR)/$(EXECUTABLE)

# Clean up the compiled files
clean:
	rm -rf $(BUILD_DIR)
