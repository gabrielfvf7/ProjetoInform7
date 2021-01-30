"The need for Guanabara" by Grupo Random

Chapter 1 New Kinds

Section 1.1 The Staircase

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. A staircase is scenery.
Instead of climbing a staircase: 
    try entering the noun. 

Section 1.2 Chairs

A chair is a kind of supporter that is enterable with carrying capacity 1. 

[Instead of entering a chair:
    try sitting the noun.]

Definition: A chair is occupied if something is on it.

Understand the command "sit" as something new.
Sitting on is an action applying to one thing.
Understand "sit on [something]" as sitting on.
understand "sit on top of [something]" as sitting on.

Check an actor sitting on a thing:
	If the noun is occupied, say "You can't sit in the [the noun], it is occupied" instead;
	If the noun is not enterable, say "You can't sit on [the noun]" instead.

Check an actor entering a thing:
	If the thing is occupied, say "You can't sit in a occupied chair" instead;

Carry out sitting on a chair:
	silently try entering the noun.

Report sitting on a chair:
	say "You feel confortable".
	
Section 1.3 Talking

		
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or "converse with [someone]" as talking to.
Check talking to: say "[The noun] doesn't reply."

Instead of talking to Sophia the first time:
	Say "'Hey Sophia, i need your help! I need to go to Guanabara, in few hours the Guanabara anniversary will start!' you say.[line break] 'I know, dad, and i can help you, but it's not gonna be easy.' she replies then continues:[line break]'Before anything, i want you to make some tasks to me, the first one you will find in the Living Room'"; 
	
Instead of talking to Blond Joseph the first time:
	say "He is screaming: 'Where is Any Mary?!?! Where she is???'"
	
Instead of talking to Blond Joseph:
	if BlondJosephFed is true:
		say "He don't want to talk, but at least he it's calm.";
	otherwise:
		say "You can't talk to him, he is too angry with something, you need to calm him down."

Section 1.4 Interactions

Sweeping floor is an action applying to nothing.
Understand "sweep floor" as sweeping floor.
Understand "sweep" as sweeping floor.

Check an actor sweeping floor:
	if the player carries the Broom:
		if the player is in the Small Bedroom:
			if BlondJosephFed is true:
				if SmallBedroomIsCleaned is false:
					say "You sweep the room's floor, now it's shining.";
					now SmallBedroomIsCleaned is true;
				otherwise:
					say "The floor is already cleaned, don't need to do again.";
			otherwise:
				say "Blond Joseph is still screaming and it's disturbing you, if you dont calm down him, you will not be able to clean the floor";
		otherwise:
			if the player is in the Medium Bedroom:
				if MediumBedroomIsCleaned is false:
					say "You sweep the room's floor, now it's shining.";
					now MediumBedroomIsCleaned is true;
				otherwise:
					say "The floor is already cleaned, don't need to do again.";
			otherwise:
				if the player is in the Large Bedroom:
					if LargeBedroomIsCleaned is false:
						say "You sweep the room's floor, now it's shining.";
						now LargeBedroomIsCleaned is true;
					otherwise:
						say "The floor is already cleaned, don't need to do again.";
				otherwise:
					say "You don't have anything to clean here";
	otherwise:
		say "You need to have something to clean, you can't clean with your bare hands"
		
Instead of giving Bird food to Blond Joseph:
	say "He eats and calm down, now you can clean the floor";
	now Blond Joseph carries Bird food;
	now BlondJosephFed is true;

Washing hands is an action applying to nothing.
Understand "wash hands" as washing hands.

Check an actor washing hands:
	if the player is in the Lavabo:
		if WashedHands is false:
			say "You wash your hands the way you learned to prevent Coronavirus.";
			now WashedHands is true;
		otherwise:
			say "You already washed your hands."

Cooking on is an action applying to one thing.
Understand "cook [something]" as cooking on.

Check an actor cooking on:
	if the player is in the Kitchen:
		if NoodleIsCooked is true:
			say "You don't have time to cook anymore.";
		otherwise:
			if WashedHands is true:
				if the player carries the First Note:
					if the player carries the Monica Gang's Tomato Flavored Noodles:
						say "You take a pot, fill with water and light on the cooker. With the noodles pack in your hands, you put everything, except the flavor powder, inside the pot then wait a little to put the flavor inside, then wait a bit more for the noodles to be ready.";
						now the printed name of the Monica Gang's Tomato Flavored Noodles is "Cooked Noodles";
						now the player carries the Monica Gang's Tomato Flavored Noodles;
						now NoodleIsCooked is true;
			otherwise:
				say "You need to wash your hands before cooking";

Investigating on is an action applying to one thing.

Understand "investigate [something]" as investigating on.

Understand "Cooked Noodles" as Monica Gang's Tomato Flavored Noodles.

Check an actor investigating on a Old Drawer:
	if OldDrawerHandleIsMissing is true, say "It's lacking a handle, I can't open it without one." instead;
	if OldDrawerHandleIsMissing is false:
		say "You opened the drawer. There's a safe box inside it. You need a code to open it.";
		now Drawer Handle is nowhere;
		now Safe Box is in Basement.
		
Instead of giving Monica Gang's Tomato Flavored Noodles to Sophia:
	say "Thanks, dad.[line break]Now, to your next task, i will need you to sweep the bedroom's floor and to clean the bathroom's.";
	now Sophia carries Monica Gang's Tomato Flavored Noodles.

Section 1.5 Variables

OldDrawerHandleIsMissing is a truth state that varies. OldDrawerHandleIsMissing is true.
NoodleIsCooked is a truth state that varies. NoodleIsCooked is false.
WashedHands is a truth state that varies. WashedHands is false.
BlondJosephFed is a truth state that varies. BlondJosephFed is false.
LargeBedroomIsCleaned is a truth state that varies. LargeBedroomIsCleaned is false.
MediumBedroomIsCleaned is a truth state that varies. MediumBedroomIsCleaned is false.
SmallBedroomIsCleaned is a truth state that varies. SmallBedroomIsCleaned is false.

Chapter 2 Geography

Section 2.1 The House

Porch is a room.  
Hall is room.  
Sophia is a woman in the Hall. "Sophia, your daughter is standing in the middle of the hall." The description is "She is looking in a funny way to, kind of suspect."
Blond Joseph is an animal. Blond Joseph is in the Small Bedroom. "Blond Joseph is in the room, in a stand, screaming extremely loud." The description is "He is a parrot, something looks like it's coming out from his back, maybe an arm."

Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is House key.
The House key can be found. The house key is not found.

[Ground floor]
Living Room is a room. Living room is north of Hall.
Garage is a room. Garage is west of Living Room.
Kitchen is a room.  Kitchen is north of garage.
Dining Room is a room. Dining room is east of kitchen. Dining Room is north of Living Room.
Home Office is a room. Home Office is east of Living Room.
Lavabo is a room. Lavabo is east of Hall. "Your house's lavabo. There is a small cabinet under the sink used to keep toilet paper."
Stairs is a staircase. It is above Hall and below Upper Hall.

[Second floor]
Upper Hall is a room.  
Large Bedroom is a room. Large Bedroom is north of Upper Hall. "Your and your wife's bedroom.".
Medium Bedroom is a room.  Medium Bedroom is east of Upper Hall. "Sophia's bedroom."
Small Bedroom is a room. Small Bedroom is west of Upper Hall. "Some bedroom used to store a lot of things.".
Bathroom is a room. Bathroom is south of Upper Hall. "It's smelling bad."
Inner Bathroom is a room. Inner Bathroom is west of Large Bedroom. "Your private bathroom.".

[Underground]
Basement is a room. "You see a bunch of old stuff and tools scattered around. [line break]There's a old drawer in a corner. Maybe you should investigate it."
Basement Stairs is a staircase. It is above Basement and below Garage.

First Floor is a region. The Hall, Living Room, Garage, Kitchen, Dining Room, Home Office and Lavabo are in First Floor.

Second Floor is a region. The Upper Hall, The Large Bedroom, the medium bedroom,  The Small Bedroom, The Bathroom and the Inner Bathroom are in Second Floor.

Underground is a region. The Basement is in Underground.

Chapter 3 Things

Player is in Porch.  

First Note is a thing. First Note can be found. First Note is not found. The description is "You see some writings in the note:[line break]'Good job dad, now the next step is:[line break]Make some noodles to me, but before, wash your hands in the lavabo, then make the noodles and bring then to me'"

Kitchen drawer is an openable container. Kitchen drawer is closed. Kitchen drawer is in the Kitchen.
Cooker is a thing in Kitchen.

Monica Gang's Tomato Flavored Noodles is a thing. Monica Gang's Tomato Flavored Noodles is in the Kitchen drawer.  The description is "The best noodles in the whole world.".

 Bird food is a thing in the Kitchen drawer. The description is "Used to feed Blond Joseph".

Old Drawer is in Basement. It is fixed in place. The description of Old Drawer is "An old drawer that's barely used, just gathering dust.".
There is a Safe Box. Safe Box is an openable container. Safe Box is closed and locked.

Guest's Bed is in Small Bedroom.
There is a Drawer Handle. The description of Drawer Handle is "A metal handle. I wonder what it belongs to.".
Understand "Handle" as Drawer Handle.

Bookcase is a thing in Living Room. It is fixed in place. "The old bookcase is there too." The description of Bookcase is "A bookcase with a lot of books, making it quite heavy, being impossible to move."

Broom is a thing in Living Room. "A broom is leaning on a wall.". The description of the Broom is "A broom used to clean the room ground. Or to reach things".

Instead of looking under the Bookcase:
	if player carries the First Note:
		say "There's nothing more there.";
	otherwise:
		if the player carries the broom:
			say "You use the broom to reach and get the note";
			now the First Note is found;
			now the player carries the First Note;
		otherwise:
			say "You see a note and try to get with your hands, but it's too far, you will need something to help you reach."
	
Instead of looking under the Guest's Bed when the Drawer Handle is off-stage:
	say "There's an metal object below the bed. Looks like a handle";
	move the Drawer Handle to the Small Bedroom.
	
After taking the Drawer Handle:
	now OldDrawerHandleIsMissing is false.
	
Cabinet is in Lavabo. It is scenery.

Section 3.1 On the Porch

Wooden chair is a chair. Wooden chair is in Porch.

Doormat is a thing. Doormat is in Porch. The description is "A Doormat is used to clean the shoe's sole. Sometimes people hide keys under them."

Chapter 4 What Happens when entering

Being Outside the House is a Scene. 
Being Outside the House begins when play begins.
Being Outside the House ends when player is in  Hall.
	
Instead of looking under the Doormat:
	if the House Key is found:
		Say "There's nothing else under there.";
	otherwise:
		Say "You remembers that maybe your family left an extra key under the Doormat. You look under and see an extra key for your house and you take it";
		now the House Key is found;
		now the player carries the House Key;

Check opening the Main door:
	unless player carries the House key:
		Say "The door is closed and you don't remember where your keys are." instead.

Figure of InitialPicture is the file "house.jpg"
	
When play begins:
	Display the Figure of InitialPicture ;
	Say "The Guanabara Aniversary starts in hours, but your wife hid your car's key, because you are addicted to Guanabara sales. Now you are in the porch of your house thinking about what to do. Maybe first you want to enter in the house."



Definition: a direction (called thataway) is viable if the room 
thataway from the location is a room.
After looking:
	say "You can go [list of viable directions] from here."

	