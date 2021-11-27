## Project Setup

This is a practice repo to figure out how to setup a C environment using CMake, VS Code, and vcpkg. I am running this through Windows subsystem for linux on Ubuntu.

Note that this project relies on the Use of VS Code as the IDE to run the project. The steps I took were as follows:

1. Download the CMake VS Code [extension](https://code.visualstudio.com/docs/cpp/cmake-linux).
2. Create a new CMake project using `CMAKE: quickstart` and selcting `executable`.
3. Download vcpkg from the github repo so that it can be local to this github repository.

```
git clone https://github.com/Microsoft/vcpkg.git
```

4. Initialize vcpkg by running

```
bash ./vcpkg/bootstrap-vcpkg.sh
```

5. Link vcpkg toolchain to my project by going to `CMake: Edit User-Local CMake Kits`, then adding

```
 "toolchainFile": "./vcpkg/scripts/buildsystems/vcpkg.cmake"
```

to the specified kit.

6. Updating my git using `CMake: Select a Kit`
7. Selecting a Variant using `CMake: Select variant`
8. Configuring my environment (to debug build) using `CMake: Configure`
9. Building the executable using `CMake: Build`
10. Running the executable using `CMake: Debug`

## Installing New Packages

1. Search for the appropriate packages to download from vcpkg using by visiting the vcpkg [site](https://vcpkg.info/) and searching for the package, or using the command

```
./vcpkg/vcpkg search [pakage name]
```

2. Add the package name to the list of dependencies in the `vcpkg.json`.
3. Run

```
./vcpkg/vcpkg install
```

This should provide output containing all the lines you should add to the `CMakeLists.txt` file. Remember that `target_link_libraries` should be the package name followed by the libraries space separated.

## Git Setup

1. From the `vcpkg` folder, Remove the existing repo from the git clone using

```
rm -rf .git && rm -rf .github
```

2. Initialize the git repo and upload to git hosting service using steps provided by that service.

3. Create a `.gitignore` in the root folder containing

```
# Ignore build folder
/build

#Ignore any installed packages
/vcpkg_installed
```
