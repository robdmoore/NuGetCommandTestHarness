Test Harness for developing NuGet install scripts
=================================================

Setup
-----

Set up a nuget source at the solution directory.

How to test package
-------------------

1. Write code
2. Build solution: there is a post-build event that creates the package
3. `Uninstall-Package Package`
4. `Install-Package`
