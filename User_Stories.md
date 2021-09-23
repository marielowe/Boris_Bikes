A User Story describes one thing a program is expected to do, from the perspective of somebody using that program. When planning a program, the client's requirements will be decomposed into many User Stories.

Below are two User Stories which we have transformed into a Domain Model by identifying the Objects and Messages within User Story.

User Stories 1:
As a user,
So I can find customers,
I want to search for my customers by their surnames.

User >> search for customers by last names >> find customers

User Stories 2:
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Person >> docking station >> release bike >> use bike

Nouns: Person, Bike, Docking Station
Verbs: Use, Release

Objects	        |   Messages
Person   	      |
Bike            | Use
Docking Station | Release

User Stories 3:
As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Person >> check bike status >> good bike >> use bike
                            >> bad bike >> check other bikes
                            

Nouns: Person, Bike, Bike_Status
Verbs: Working_Status

Objects	     |   Messages
Person  	   |
Bike         | Use
Bike_Status  | Working_Status


Feature Test:
A Domain Model is an abstract representation of the Objects within a system as we did above, and the Messages they use to communicate with one another. Once we have a Domain Model for a feature, we need to think about how our Objects and Messages will work together in code. This is called a Feature Test.