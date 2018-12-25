mkdir -p src/main/java php js && docker run -it --rm -v $PWD:/src:rw \
  calico/protoc tictactoe.proto  --java_out=src/main/java/ --php_out=php --js_out=js
