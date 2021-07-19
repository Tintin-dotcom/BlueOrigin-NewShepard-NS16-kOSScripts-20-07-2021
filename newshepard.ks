clearscreen.
stage.
wait 5.
lock steering to up.
lock tval to 0.
lock thrval to 0.
set sep to "False".
set runmode to "Liftoff".

until runmode = "Landed"{
	if runmode = "Liftoff" {
		set thrval to thrval + 0.0015.
		lock tval to thrval.
		if tval >= 1 {
			wait 0.5.
			stage.
			set runmode to "Ascent".
		}
	}
	else if runmode = "Ascent"{
		if alt:radar > 8000 and thrval > 0.6 {
			set thrval to thrval - 0.01.
			lock tval to thrval.
		}
		if ship:apoapsis > 106000 {
			lock tval to 0.
		}
		if alt:radar > 80000 and sep = "False" {
			stage.
			set sep to "True".
			set runmode to "Re-entry".
		}
	}
	
	else if runmode = "Re-entry" {
		if alt:radar < 50000 {
			toggle ag3.
			lock steering to srfRetrograde.
		}
		if alt:radar < 20000 {
			toggle ag4.
			set thrval to 0.
			set runmode to "Landing burn Start".
		}
	}
	else if runmode = "Landing burn Start" {
		if alt:radar < 710 {
			set thrval to thrval + 0.0015.
			lock tval to thrval.
			if tval >= 0.6 {
				set runmode to "Landing burn".
			}
		}
	}
	else if runmode = "Landing burn"{
		if verticalspeed > -20 {
			toggle ag2.
			wait 0.6.
			toggle gear.
			set thrval to 0.15.
			set runmode to "Landing legs deployed".
		}
	}	
	else if runmode = "Landing legs deployed"{
		if verticalspeed > -2 {
			lock tval to 0.1.
			lock steering to up.
		}
		else if verticalspeed < -4 {
			lock tval to 0.4.
		}
		else {
			lock tval to 0.25.
			lock steering to up.
		}
		if alt:radar < 10.5 {
			lock tval to thrval.
			lock thrval to thrval - 0.0015.
			if tval <= 0 {
				set runmode to "Landed".
			}
		}
	}
	
	print runmode.
	clearscreen.
	lock throttle to tval.
}
