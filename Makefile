php_objects := GPBMetadata/Tictactoe.php Tictactoe/cmdGetFieldConfiguration.php \
						Tictactoe/cmdPostFieldConfiguration.php  Tictactoe/Kind.php
js_objects := js/cmdgetfieldconfiguration.js js/cmdpostfieldconfiguration.js js/kind.js

java_objects := src/main/java/com/tictactoe/proto/TicTacToeProto.java


objects := $(pgp_objects) $(js_objects) $(java_objects)

objects: tictactoe.proto
	./build.sh

clean:
	rm -rf js && rm -rf php && rm -rf src