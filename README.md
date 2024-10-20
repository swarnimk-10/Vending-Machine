# Vending-Machine
Vending machine is an automated machine that provides items such as snacks, beverages and lottery tickets to consumers after cash, a credit card, or other form of payment is made to the machine.
For our Vending Machine we have made the assumption that - There is only **1 product**(water bottle) of cost **Rs.15**

The state diagram is as follows:

![Screenshot 2024-10-20 150303](https://github.com/user-attachments/assets/744ae1ac-c8a0-428c-9e82-eab477073e6a)

## S0 : 0 Rs in Vending Machine:
- If nothing added: Stay on State 0, OUTPUT = 0, CHANGE = 0.
- If 5 Rs added: Move to State 1, OUTPUT = 0, CHANGE = 0.
- If 10 Rs added: Move to State 2, OUTPUT = 0, CHANGE = 0.

## S1 : 5 Rs in Vending Machine:
- If nothing added: Here, this means the vending machine waited some time but no money was added signifying an incomplete transaction, thus the vending machine should return back the money added as CHANGE (5 Rs). No bottle given. Move to State 0, OUTPUT = 0, CHANGE = Rs 5 (01).
- If 5 Rs added: Move to State 1, OUTPUT = 0, CHANGE = 0.
- If 10 Rs added: Adding 10 Rs means the vending machine now has 15 Rs total thus, a bottle will be returned with no CHANGE. Move to State 0, OUTPUT = 1, CHANGE = Rs 0.

## S2 : 10 Rs in Vending Machine:
- If nothing added: Again, incomplete transaction thus vending machine returns the money added as CHANGE (10 Rs). No bottle given. Move to State 0, OUTPUT = 0, CHANGE = Rs 10 (10).
- If 5 Rs added: Signifies a complete transaction, a bottle is returned with no change. Move to State 0, OUTPUT = 1, CHANGE = Rs 0.
- If 10 Rs added: Here the customer over payed, thus a bottle should be returned but with CHANGE(5 Rs). Move to State 0, OUTPUT = 1, CHANGE = Rs 5 (01).

## Simulation Result when we give Rs.5 first then Rs.10 and then again Rs.10

![Screenshot 2024-10-20 191059](https://github.com/user-attachments/assets/92da6e93-7934-457b-8199-416cc71bddfa)
