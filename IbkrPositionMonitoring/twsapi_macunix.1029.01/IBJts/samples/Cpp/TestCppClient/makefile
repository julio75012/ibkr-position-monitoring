CXX=g++
CXXFLAGS=-pthread -Wall -Wno-switch -Wpedantic -Wno-unused-function -std=c++20
CXXFLAGSDEBUG=-g -pthread -Wall -Wno-switch -Wpedantic -Wno-unused-function -std=c++20
ROOT_DIR=../../../source/cppclient
BASE_SRC_DIR=${ROOT_DIR}/client
INCLUDES=-I${BASE_SRC_DIR} -I${ROOT_DIR}
SOURCE_DIR=${BASE_SRC_DIR}
SOURCE_LIB=libTwsSocketClient.so
LIB_DIR=$(SOURCE_DIR)/lib
LIB_NAME_A=libbid.a
LIB_NAME_SO=libbid.so
TARGET=TestCppClient

# Collect all source files and corresponding object files
SRCS=$(wildcard $(BASE_SRC_DIR)/*.cpp ./*.cpp)
OBJS=$(SRCS:.cpp=.o)

# Default target
all: $(TARGET)Static

$(TARGET)Static: $(OBJS)
	$(CXX) $(CXXFLAGSDEBUG) $(INCLUDES) $(OBJS) $(LIB_DIR)/$(LIB_NAME_A) -o $(TARGET)Static

%.o: %.cpp
	$(CXX) $(CXXFLAGSDEBUG) $(INCLUDES) -c $< -o $@

run$(TARGET)Static:
	./$(TARGET)Static

clean:
	rm -f $(TARGET)Static *.o

