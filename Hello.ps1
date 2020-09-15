
    function payloads {   
		Write-host "Loading payloads from Datasploit Library:"
		sleep -s 3
		write-host
		write-host "Payloads available: "
		write-host
	    write-host "...................................................................."
        write-host
        write-host "...................................................................."
        write-host
        write-host "....................................................................."
		write-host "Name                          Rank                      Description"
		write-host
		write-host "use/iexplorer/payload         Dangerous      Crashes the explorer service on windows  "
		write-host
		write-host "use/bacteria/payload          Unforgivable   Floods the system with a bat file"
		write-host
		write-host "use/netsvc/payload            Great          Enables file and printer sharing         "
		write-host
		write-host "use/inject_netsvc/payload     Excellent      Smarter version of the netsvc payload    "
		write-host
		write-host "use/quick-break/payload       Good           Cancels user password"
		write-host
		write-host "use/sethc/payload             Great          Exploits sticky keys function"
		write-host
		write-host "use/Ram_eater/payload         Dangerous      Calls itself up to eat up ram"
		write-host
		write-host "use/kill_sec/payload          Good           Stops the cyberclock cafe service"
		write-host
        Write-Host "use/wininit_des/payload       Dangerous      Causes a blue screen of death (BSOD)"
	}
	payloads
	$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
	clear