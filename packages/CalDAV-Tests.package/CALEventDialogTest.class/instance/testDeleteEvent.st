as yet unclassified
testDeleteEvent

	| app de1 de2|
	
	app := CALApp new.
	de1 := self demoEvent.
	de2 := self demoEvent2.
	app addEvent: de1.
	app addEvent: de2.
	
	editDialog
		parent: app;
		event: de1;
		oldEvent: de1;
		deleteEvent.
		
	
	self assert: (app selectedCalendar events includes: de1) not.
	self assert: (app selectedCalendar events includes: de2).