touch "$HOME/Pictures"/pics{1..5}.jpg

#!/usr/bin/env bash

# Tell the user what we're about to do
echo
echo "Copying jpg files to the /tmp directory."
echo

# Copy (with -v for verbose) all .jpg from your Pictures dir into /tmp
cp -v "$HOME/Pictures"/*.jpg /tmp/

# Final confirmation
echo
echo "Transfer complete!"
