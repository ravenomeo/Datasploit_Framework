function banner {
    Write "                                                                      /__/               "
    Write "  ______                                           --       _____                        "
    Write " |      \        ___                              |  |     /      \    --     ___        "
    Write " |  0    |       \  \             _____    _____  |  |    /        \  |  |    \  \       " 
    Write " |       |  /\  | - - |    /\    /     \  |  ___/ |  |   |          | |  |   | - - |     "
    Write " |  0    | /..\   |  |    / .\   \   ___  | |     |  |__ |   | |    | |  |     |  |                  "
    Write " |______/ / /\ \  |  |__ / /\ \ __\  \    | |     |     | \        /  |__|     |  |__                "
    Write "                  \_____\       \____/    \/       \___ |  \______/            \_____\               "
    Write ""                   
}

function clever_ascii_artBunny {
    write "-------------------------------------------------------------------|"
    Write "| \ ' \  / ' /    -------------------------------------            |"  
    Write "|  \  \  /  /   /_    _   ____               ______     \          |"  
    write "|    0     0   /| |  | | | ___/   |  |      | ____/      \         |"  
    Write "|   (   *   ) / | |__| | | |___   |  |      | |           |        |"  
    Write "|  (   V  V  )\ | |  | | | |___   |  |_     | |           |        |"  
    Write "|      M  M    \|_|  |_| |___ /    \__ |    \ /           |        |"
    write "|               \                                         /        |"
    write "|                 -------------------------------------  /         |"
    write "|                                                                  |"
    write "|------------------------------------------------------------------|"
}
function clever_ascii_artCat {
    write " \    / \             "
    write "  )  (  0)           "
    write " (  /    )            "
    write "  \(___)|             "
    write " /-------------------------------------\"
    write "| |-----------------------------------| |"
    write "| |            [0, 0]zzzzzz           | |"
    write "| |            |)___)                 | |"
    write "| |            -''-'-                 | |"
    write "|---------------------------------------|"
    write "|---------------------------------------|"
}
function clever_ascii_artStickMan {
    write "--------------------------------------------------"
    write "                                                  "
    write "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-"
    Write "        ....\"
    write "      0 ..../\                _________           "
    write "     /|\)==)=o               |          |         "
    write "      | ....\/               |          |         "
    write "     / \..../                |          |         " 
    write "                             \__________/         "
    write "                                |____|            "
    write "                             ------------         "
    write "++++++++++++++++++++++++============++++++++++++++"
}
function Linux_Lovers {
    write "                          /----------\          " 
    write "                         /.  6   6    \         "
    write "                        /      <       \        "
    write "                        \/            \/        " 
    write "                        (   \______/   )        "
    write "                         \            /                           "
    write "  _________________000____\__________/____________________        "
    write " /                                                        \       "
    write "| Me: function Hack_Love {                                 |     "                            
    write "|         I love hacking so much,                          |"
    write "|         How bout you?                                    |"
    write "|     }                                                    |"
    write " \___________________________________________000__________/ "
    write "                            |  |  |                       "
    write "                            |_ | _|                       "
    write "                            |  |  |                       "
    write "                            |__|__|                       "
    write "                            /-'Y'-\                       "
    write "                           (__/ \__)                      "
    write "    "
}
$a=banner
$b=clever_ascii_artCat
$c=clever_ascii_artBunny
$d=clever_ascii_artStickMan
$e=Linux_Lovers
get-random -InputObject $a, $b, $c, $d, $e