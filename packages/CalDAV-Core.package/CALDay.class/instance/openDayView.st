as yet unclassified
openDayView

	| view |
	
	view := CALDayView openDay: self date asDate for: self parent.
	view
		height: 700