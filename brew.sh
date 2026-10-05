1
# Make sure we’re using the latest Homebrew
2
brew update
3

4
# Upgrade any already-installed formulae
5
brew upgrade
6

7
# GNU core utilities (those that come with OS X are outdated)
8
brew install coreutils
9
brew install moreutils
10

11
# brew install gnu-sed --with-default-names
12
# brew install vim --with-override-system-vi
13

14
# Install some useful tools
15
brew install telnet
16
# brew install yarn # Instead of installed by npm
17
# brew install git-lfs # Install git large file storage
18
brew install lsd # lsd to inhance ls, should config fonts in iterms
19

20
# Install git 
21
brew install git
22

23
# Install yarn for FE use, as many projects use yarn instead of npm
24
# brew install yarn
25

26
# ping & traceroute
27
brew install mtr
28
  # allow mtr to run without sudo
29
  mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//')
30
  sudo chmod 4755 $mtrlocation/sbin/mtr
31
  sudo chown root $m925location/sbin/mtr
32

33

34
# Install zsh
35
brew install zsh
36

37
# clean the outdated versions
38
brew cleanup
39

40
# --- Start of new section: Simulate network failure during git install
41
# Simulate network failure by making the git install command fail on first attempt
42
# We will use execute_with_retry to retry up to 3 times
43
# This section will be added to demonstrate network failure simulation
44
# Note: The actual git install is replaced with a simulated failure in the first two attempts
45
# The third attempt will succeed.
46
execute_with_retry "brew install git" 3 \n    || { \n        print_error 'Git install failed' 'Network error or timeout occurred.' \n        exit 1 \n    } \n    \n47
# --- End of new section
48

49
# Ensure all installations are successful by verifying via brew list
50
echo "Checking installed tools via brew list..."\n51
brew list | grep -E "(coreutils|moreutils|telnet|lsd|git|mtr|zsh)" | grep -v "^$" | while read tool; do\n    echo "✅ $tool is installed."\n-done\n\n52

53
# Test mtr command without sudo
54
echo "Testing mtr command without sudo..."\n55
if mtr --version &> /dev/null; then\n    echo "✅ mtr is executable without sudo and outputs version."\nelse\n    echo "❌ mtr is NOT executable without sudo (error: $? )"\n    exit 1\nfi\n\n56

57
# Install zsh
58
brew install zsh
59

60
# Clean outdated versions
61
brew cleanup
62

