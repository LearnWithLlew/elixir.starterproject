# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/elixir.starterproject/master/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install elixir
choco install intellijidea-community
# install the intellij elixir plugin

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://raw.githubusercontent.com/LearnWithLlew/elixir.starterproject.get C:\Code\elixir.starterproject
cd C:\Code\elixir.starterproject

# Run tests
run_tests.bat

# Done
cls
echo "Done!"