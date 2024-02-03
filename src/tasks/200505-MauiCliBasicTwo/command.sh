cd ../../src/apps

# First get into the correct directory
cd ./src/apps

# Create a directory 
mkdir 200505-MauiCliBasicTwo

cd 200505-MauiCliBasicTwo

# Solution file is not needed, as the next commdn will create both the solution file as well as proj file.
# dotnet new sln --name MauiCliBasic 

dotnet new maui --name MauiCliBasicTwo --framework net7.0

Copy-Item ./MauiCliBasicTwo/* . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.
Remove-Item ./MauiCliBasicTwo -Recurse

# The followihng is not need as well, as this is already done  by the new command.
# dotnet sln add MauiCliBasic.csproj

dotnet build ./MauiCliBasicTwo.csproj

# or, the following, both are same.

dotnet build ./MauiCliBasicTwo.sln

dotnet run --project ./MauiCliBasicTwo.csproj --framework net7.0-windows10.0.19041.0

