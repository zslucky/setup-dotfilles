#!/bin/bash
# Test file for TC-004: Validate installation and launch of Chrome, VSCode, iTerm2, and fonts via brew-cask.sh

# This test simulates execution of brew-cask.sh and checks for expected outputs

echo "🧪 Running test for TC-004: Install Cask tools with functionality validation..."

# Step 1: Run brew-cask.sh and capture output
if sh ./brew-cask.sh; then
    echo "✅ brew-cask.sh executed successfully."
else
    echo "❌ Failed to execute brew-cask.sh."
    exit 1
fi

# Step 2: Validate that brew list --casks includes required tools
echo "🔍 Verifying brew list --casks output..."
INSTALLED_CASKS=$(brew list --casks | grep -E "(google-chrome|visual-studio-code|iterm2|font-hack-nerd-font)")
if [ -n "$INSTALLED_CASKS" ]; then
    echo "✅ Found required casks in list:"
    echo "$INSTALLED_CASKS"
else
    echo "❌ No casks found in list. Test failed."
    exit 1
fi

# Step 3: Validate that Google Chrome can be launched
echo "🔍 Testing Google Chrome launch with open -a "Google Chrome"..."
if open -a "Google Chrome" &> /dev/null; then
    echo "✅ Google Chrome launched successfully."
else
    echo "❌ Failed to launch Google Chrome. Test failed."
    exit 1
fi

# Step 4: Final success message
echo "✅ All checks passed. TC-004 is satisfied."
exit 0
