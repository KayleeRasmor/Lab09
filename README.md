# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Kaylee Rasmor and Maddox Dizdarevic 
## Summary
In this lab we learned how to use reg variables as well as how to create and use a d latch using verilog. We also learned how to make use of multiple multiplexers and demultiplexers in order to create a data storage system using sequential circuits. 
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We cannot use structual verilog to implement latches because we want the code to run sequentially rather than simultaniusly in order to enable or dissable the latch and store the data. When selecting and storing data you want to choose if you are storing the data or not, before you pass the inputs. 
### What is the meaning of always @(*) in a sensitivity block?
always @(*) in a sensitivity block tells the program to always excecute what is contained in the block at all inputs. When you have a certain variable inside of the always @() then always, when the program encounters that specified input, then the block will excecute. 
### What importance is memory to digital circuits?
Memory is important to digital circuits in order to pass data along to further parts of the circuit. Memory is important as it allows data to be stored for later use and allows the circuit to hold data to then return in a case where it needs other paramaters to be fufilled in order to return or not return stored data. 
