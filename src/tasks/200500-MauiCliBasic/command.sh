cd ../../src/apps

# First get into the correct directory
cd ./src/apps

# Create a directory 
mkdir 200500-MauiCliBasic

cd 200500-MauiCliBasic

# Solution file is not needed, as the next commdn will create both the solution file as well as proj file.
# dotnet new sln --name MauiCliBasic 

dotnet new maui --name MauiCliBasic --framework net6.0

Copy-Item ./MauiCliBasic/* . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.
Remove-Item ./MauiCliBasic -Recurse

# The followihng is not need as well, as this is already done  by the new command.
# dotnet sln add MauiCliBasic.csproj

dotnet build ./MauiCliBasic.csproj

# or, the following, both are same.

dotnet build ./MauiCliBasic.sln

dotnet run --project ./MauiCliBasic.csproj --framework net6.0-windows10.0.19041.0



