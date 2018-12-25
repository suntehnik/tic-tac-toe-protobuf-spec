php_objects := GPBMetadata/Tictactoe.php Tictactoe/cmdGetFieldConfiguration.php \
						Tictactoe/cmdPostFieldConfiguration.php  Tictactoe/Kind.php
js_objects := js/cmdgetfieldconfiguration.js js/cmdpostfieldconfiguration.js js/kind.js

java_objects := src/main/java/com/tictactoe/proto/TicTacToeProto.java

java_jar := build/libs/protobuf-spec.jar

objects := $(pgp_objects) $(js_objects) $(java_objects)

all: objects java_jar

objects: tictactoe.proto
	./build.sh

java_jar:
	./gradlew publish

clean:
	rm -rf js && rm -rf php && rm -rf src build/libs