CC = /usr/bin/gcc
NVCC = /usr/local/cuda/bin/nvcc
CFLAGS = -fopenmp -g -w -O4 -I..
NVCCFLAGS = -Xcompiler -fopenmp -arch sm_20 -g -w -O4 -I..  
MPI = -I /usr/local/mpich2/include/ 
LIB = -L /usr/local/mpich2/lib/ -lmpich -lopa -lmpl -lpthread  




all: 
	${NVCC} ${NVCCFLAGS} ${MPI} ${LIB} matvec.cu -o newfloatmatvec

clean:
	-rm newfloat*


