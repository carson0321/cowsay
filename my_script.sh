#!/bin/bash
cd cowsay-3.03+dfsg2/
echo -e '#!/bin/bash\nset -e\necho "this is a test from Kai Sheng Wang"\nexit 0' > testing.sh
echo "testing.sh usr/bin" >> debian/install
echo -e '#!/bin/bash\nset -e\nbash testing.sh\nexit 0' > debian/postinst
