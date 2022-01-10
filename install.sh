if command -v portscan > /dev/null; then
echo "Already Installed bro! :) If you have error Please Contact! My author Link:"
echo ""
echo "\e[1;93m.:.:.\e[0m\e[1;77m Name:@Pr0fess0r Link:https://github.com/Pr0fe5s0r \e[1;93m.:.:.\e[0m\e[1;77m"

else
echo "\e[1;93m.:.:.\e[0m\e[1;77m Installing The tool For you Bro!!         \e[1;93m.:.:.\e[0m\e[1;77m"
echo ""
sudo chmod 777 portscan
command -v portscan > /dev/null 2>&1 || { echo >&2 "Installing Portscan"; sudo cp portscan /bin/; }
sleep 3
echo ""
echo "\e[1;93m.:.:.\e[0m\e[1;77m Installation Completed! You can use me now \e[1;93m.:.:.\e[0m\e[1;77m"
echo ""
echo "\e[1;93m.:.:.\e[0m\e[1;77m Command: portscan -i <IP ADDRESS>          \e[1;93m.:.:.\e[0m\e[1;77m"
echo ""
echo "\e[1;93m.:.:.\e[0m\e[1;77m Any Doubt Contact: Name:@Pr0fess0r Link:https://github.com/Pr0fe5s0r \e[1;93m.:.:.\e[0m\e[1;77m"
fi
