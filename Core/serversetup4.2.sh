##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "Server Setup 4.1 by Buzzzy"
sleep 2
echo "You will need to install the basics before installing spigot,bungee,waterfall, etc"
sleep 1
echo "If you would like to support me check out my paypal link on the plugin page."
sleep 2
echo "If you are having a problem updating the jars, run the Jars option then try again!"
PS3='What would you like to install? '
options=("Spigot" "Bungee" "Waterfall" "Lilypad" "Vinilla" "Paperspigot" "Basics" "Forge" "Cauldron" "Sponge" "Jars" )
select opt in "${options[@]}"
do
    case $opt in
        "Spigot")
            cd ~
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/spigot.sh
            chmod 770 ./spigot.sh
            ./spigot.sh
            ;;
         "Bungee")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Bungee.sh
            chmod 770 ./Bungee.sh
            ./Bungee.sh
            ;;
         "Waterfall")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Waterfall.sh
            chmod 770 ./Waterfall.sh
            ./Waterfall.sh
            ;;
        "Lilypad")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Lilypad.sh
            chmod 770 ./Lilypad.sh
            ./Lilypad.sh
            ;;
        "Vanilla")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Vanilla.sh
            chmod 770 ./Vanilla.sh
            ./Vanilla.sh
            ;;
        "Paperspigot")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Paperspigot.sh
            chmod 770 ./Paperspigot.sh
            ./Paperspigot.sh
            ;;
        "Basics")
            wget https://buzzzy.co/Hub/ServerSetup/Global/basics.sh
            chmod 770 ./basics.sh
            ./basics.sh
            ;;
        "Forge")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Forge.sh
            chmod 770 ./Forge.sh
            ./Forge.sh
            ;;
        "Cauldron")
            echo "Please note that cauldron is no longer supported nor updated"
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Cauldron.sh
            chmod 770 ./Cauldron.sh
            ./Cauldron.sh
            ;;
        "Sponge")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Sponge.sh
            chmod 770 ./Sponge.sh
            ./Sponge.sh
            ;;
        "Jars")
            echo "Fixing jars"
            cd ~
            rm -rf Jars
            echo "Should be fixed!"
            ;;
        *) echo invalid option;;
    esac
    done