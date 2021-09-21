.LFB3:

 

01  .cfi_startproc        # cfi directive       

02  pushq %rbp             # save old base pointer   

03  .cfi_def_cfa_offset 16 # cfi directive

04  .cfi_offset 6, -16      # cfi directive    

05  movq %rsp, %rbp       # rsp->rbp set new stack base pointer

06  .cfi_def_cfa_register 6 # cfi directive

07  movl %edi, -20(%rbp)    # edi -> rbp-20, store 1st argument of function call, lenght of arrays

08  movq %rsi, -32(%rbp)    # rsi -> rbp-32, store 2nd argument of function call, Array1

09  movq %rdx, -40(%rbp)    # rdx -> rbp-40, store 3rd argument of function call, Array2

10  movl $0, -4(%rbp)        # 0 -> rbp-4, assign value 0 to rbp-4, initialise running_sum=0

11  movl $0, -8(%rbp)        # 0 -> rbp-8, assign value 0 to rbp-8, inititlaise i=0

12  jmp .L26            # jump to location L26            

 

.L27:

 

# 13-18 lines store Array1[i] in edx
13  movl -8(%rbp), %eax   # rbp-8 -> eax, store value in rbp-8 to eax

14  cltq                    # eax -> rax, 32 bits to 64 bits                       

15  leaq 0(,%rax,4), %rdx  # 0 + 4*rax -> rdx, each integer is 4 bytes so for ith element address location is 4*i ahead

16  movq -32(%rbp), %rax    # rbp-32 -> rax, Array1 pointer in rax

17  addq %rdx, %rax         # rdx+rax -> rax, overall 4*(rbp-8) + (rbp-32) -> rax

18  movl (%rax), %edx      # rax -> edx, move the above obtained value to edx
                            # this is basically accessing the ith element of array
                            # pointed to by rbp-32 and storing it in edx


# 19-24 lines store Array2[i] in eax
19  movl -8(%rbp), %eax   # rbp-8 -> eax, store value in rbp-8 to eax

20  cltq                    # eax -> rax, 32 bits to 64 bits            

21  leaq 0(,%rax,4), %rcx   # 0 + 4*rax -> rcx, each integer is 4 bytes so for ith element address location is 4*i ahead

22  movq -40(%rbp), %rax    # rbp-40 -> rax, Array2 pointer in rax

23  addq %rcx, %rax          # rcx+rax -> rax, overall 4*(rbp-8) + (rbp-40) -> rax

24  movl (%rax), %eax       # rax -> eax, move the above obtained value to eax
                            # this is basically accessing the ith element of array
                            # pointed to by rbp-40 and storing it in eax


# 25-26 lines add Array1[i]*Array2[i] to the running sum
25  imull %edx, %eax        # multiply values in edx and eax and store in eax, edx*eax -> eax

26  addl %eax, -4(%rbp)     # add the multiplied value to rbp-4 (running_sum)

27  addl $1, -8(%rbp)         # (rbp-8) + 1 -> rbp-8, increment value at rbp-8 by 1
                                # i++

 

.L26:

 

28  movl -8(%rbp), %eax      # rbp-8 -> eax, store value in rbp-8 to eax

29  cmpl -20(%rbp), %eax    # compare value in eax and rbp-20

30  jl .L27                 # if value in eax < value in rbp-20 jump to location L27     
                            # this is checking if i<n, array index has not reached 
                            # the end of the arrays then continue to next index        

31  movl -4(%rbp), %eax      # rbp-4 -> eax, store return value in eax
                            # rbp-4 has the sum of multiplication of the elements of the 2 arrays

32  popq %rbp                  # pop the base pointer                 

33  .cfi_def_cfa 7, 8      # cfi directive        

34  ret           # return from function                        

35  .cfi_endproc    # cfi directive


############### EXPLANATION ##################
# function recieves two arrays and their lenght
# length is in rbp-20
# Array1 start location is in rbp-32
# Array2 start location is in rbp-40
# rbp-8 is used for accessing array elements, so it is the counter i
# rbp-4 is used to store the sum Array1[i]*Array2[i], 0<=i<n
