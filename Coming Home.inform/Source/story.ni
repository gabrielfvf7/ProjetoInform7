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
Instead of talking to Sophia:
	Say "'Hey Sophia, i need your help! I need to go to Guanabara, in few hours the Guanabara anniversary will start!' you say.  'I know, dad, and i can help you, but it's not gonna be easy..' she replies." 

Section 1.4 Interactions

Investigating on is an action applying to one thing.

Understand "investigate [something]" as investigating on.

Check an actor investigating on a Old Drawer:
	if OldDrawerHandleIsMissing is true, say "It's lacking a handle, I can't open it without one." instead;
	if OldDrawerHandleIsMissing is false:
		say "You opened the drawer. There's a safe box inside it. You need a code to open it.";
		now Drawer Handle is nowhere;
		now Safe Box is in Basement.

Section 1.5 Variables

OldDrawerHandleIsMissing is a truth state that varies. OldDrawerHandleIsMissing is true.

Chapter 2 Geography

Section 2.1 The House

Porch is a room.  
Hall is room.  
Sophia is a woman in the Hall. "Sophia, your daughter is standing in the middle of the hall." The description is "She is looking in a funny way to you, kind of suspect."

Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is House key.

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
Large Bedroom is a room. Large Bedroom is north of Upper Hall. "Your and your's wife bedroom.".
Medium Bedroom is a room.  Medium Bedroom is east of Upper Hall.
Small Bedroom is a room. Small Bedroom is west of Upper Hall.
Bathroom is a room. Bathroom is south of Upper Hall.
Inner Bathroom is a room. Inner Bathroom is west of Large Bedroom.

[Underground]
Basement is a room. "You see a bunch of old stuff and tools scattered around. [line break]There's a old drawer in a corner. Maybe you should investigate it."
Basement Stairs is a staircase. It is above Basement and below Garage.

First Floor is a region. The Hall, Living Room, Garage, Kitchen, Dining Room, Home Office and Lavabo are in First Floor.

Second Floor is a region. The Upper Hall, The Large Bedroom, the medium bedroom,  The Small Bedroom, The Bathroom and the Inner Bathroom are in Second Floor.

Underground is a region. The Basement is in Underground.

Chapter 3 Things

Player is in Porch.  

Old Drawer is in Basement. It is fixed in place. The description of Old Drawer is "An old drawer that's barely used, just gathering dust.".
There is a Safe Box. Safe Box is an openable container. Safe Box is closed and locked.

Guest's Bed is in Small Bedroom.
There is a Drawer Handle. The description of Drawer Handle is "A metal handle. I wonder what it belongs to.".
Understand "Handle" as Drawer Handle.

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
	
Instead of looking under the Doormat the first time:
	Say "You remembers that maybe your family left an extra key under the Doormat. You look under and see an extra key for your house and now you can take it";
	Now the House Key is in the location.

Check opening the Main door:
	unless player carries the House key:
		Say "The door is closed and you don't remeber where your keys are." instead.



After taking the House Key during Being Outside the House:
	Say "This is the extra key for your house, now you can enter".

Figure of InitialPicture is the file "house.jpg"
	
When play begins:
	Display the Figure of InitialPicture ;
	Say "The Guanabara Aniversary starts in hours, but your wife hid your car's key, because you are addicted to Guanabara sales. Now you are in the porch of your house thinking about what to do. Maybe first you want to enter in the house."
	

	
	