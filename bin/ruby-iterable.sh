#!/bin/sh

SCRIPT="$0"
ENV="$1"
API_KEY="iterableApiKey"

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` add 'prod' to generate api from prod"
  exit 0
fi

echo $ENV

while [ -h "$SCRIPT" ] ; do
  ls=`ls -ld "$SCRIPT"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    SCRIPT="$link"
  else
    SCRIPT=`dirname "$SCRIPT"`/"$link"
  fi
done

if [ ! -d "${APP_DIR}" ]; then
  APP_DIR=`dirname "$SCRIPT"`/..
  APP_DIR=`cd "${APP_DIR}"; pwd`
fi

cd $APP_DIR

echo $APP_DIR
echo $@


# if you've executed sbt assembly previously it will use that instead.
export JAVA_OPTS="${JAVA_OPTS} -XX:MaxPermSize=256M -Xmx1024M -DloggerPath=conf/log4j.properties"

if [ "$ENV" = "prod" ]; then
  ags="$@ src/main/scala/com/iterable/codegen/RubyIterableApiGenerator.scala http://api.iterable.com/api-docs.json $API_KEY"
else
  ags="$@ src/main/scala/com/iterable/codegen/RubyIterableApiGenerator.scala http://localhost:9000/api-docs.json $API_KEY"
fi


if [ -f $APP_DIR/target/scala-2.9.1/swagger-codegen.jar ]; then
  scala -cp target/scala-2.9.1/swagger-codegen.jar $ags
elif [[ -f $APP_DIR/target/scala-2.10/swagger-codegen.jar  ]]; then
  scala -cp target/scala-2.10/swagger-codegen.jar $ags
else
  ./sbt assembly
  scala -cp target/swagger-codegen.jar $ags
fi

