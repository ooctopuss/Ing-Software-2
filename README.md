# Software Engineering 2
Projected by Fatnassi Safouane, Piovesan Matteo, Zanardello Fabio

# Group 15 @ooctopuss

# Description of the project:

Our Billing System, was born with the target of giving our clients a great option to create and manage all the billing activities they asked for. The idea is to simplify this bureaucratic process that can give some headache, in order to focus on the real work and optimizing our client’s time.

# USER STORY:

### 1. 
I ask that the layout of my invoice has to be done using the heading of my business, predisposing an adequate space for the billed and unbilled hour and a total count comprehensive of the updated IVA.

**Weight (1 a 5): 1**

**Priority (1 a 5): 3**

### 2.
My business needs to work both with private clients and public ones and this has to be predisposed with possibility of modifying: times of payment, methods of payment and hourly price.

**Weight (1 a 5): 3**

**Priority (1 a 5): 4**

### 3.
I ask that it’ll be implemented a counter for the worked hours; it has to trace the hours effectively used for a determined client. When the hours dedicated for a client will reach the standard hours expected by the contract, the extra hours should be increased.

**Weight (1 a 5): 2**

**Priority (1 a 5): 4**

### 4.
At each client, once stipulated the contract, I send the invoice with the price to pay for the expected standard hours.

**Weight (1 a 5): 2**

**Priority (1 a 5): 5**

### 5.
If extra hours are needed because the client have required some changes, the hourly rate will be higher; if the cause is the team work, the hourly rate will be lower of the standard one. The overall to pay of the extra hours should be communicated sending an invoice.

**Weight (1 a 5): 3**

**Priority (1 a 5): 4**

### 6.
If extra hours are made, at the end of the work will be sent to the client the receipt, with the hours agreed at the beginning, plus the extra ones needed.

**Weight (1 a 5): 1**

**Priority (1 a 5): 3**

### 7.
If the client, public or private no matter, disrespect the agreed payment times, the program should communicate the sanction to the client through a new additional invoice, which amount should be confirmed or modified by an operator.

**Weight (1 a 5): 4**

**Priority (1 a 5): 5**

### 8.
I ask that it is given the possibility to control the issued invoices in a determined period, or from the implementation of this system. This function, furthermore, must show the overall earnings and the total worked hours in the invoices regarded.

**Weight (1 a 5): 4**

**Priority (1 a 5): 3**

### 9.
The software required should be of easy use so no training course for the employees but only an accurate reading is needed to use the developed software.

**Weight (1 a 5): 1**

**Priority (1 a 5): 4**

# Design Choices:

Our application, developed with Ruby on Rails, was implemented using a gem called "rails admin" that let to be operative with a working application in few time. The gem in question though, prevents a high scalability and malleability of the code because it's not particularly intuitive and editable in all his aspects; despite this little problem, we decided to use it because it gives us an endearing graphic and a good management from the administrative point of view. The logic behind the project, of which you can guess the presence even from the User Stories, it's of simple implementation and expect the work team to estimate the project based on a defined number of hours, divided in standard or extra hours based on the complexity of the functions to implement in that determined piece of time and it releases an invoice at the beginning of the project. If the evaluation will be exact and the specifics will vary, it'll be issued a new invoice. In the case in which the hours won't be sufficient, the team will have to work without compensation to realize all the specifics required by the client.

# License:

MIT License

Copyright (c)  2017 @ooctopuss [Fatnassi Safouane, Piovesan Matteo, Zanardello Fabio]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: 

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

                                            (https://choosealicense.com/licenses/mit/)


