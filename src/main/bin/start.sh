#! /bin/shell

APPLICATION_JAR="assembly-test.jar"
BASE_PATH=$(cd `dirname $0`; cd ../; pwd)
LOG_DIR=${BASE_PATH}"/logs"

if [[ ! -d "${LOG_DIR}" ]]; then
  mkdir "${LOG_DIR}"
fi

JAVA_OPT="-server -Xms256m -Xmx256m -Xmn128m -XX:MetaspaceSize=64m -XX:MaxMetaspaceSize=256m -XX:-OmitStackTraceInFastThrow"

nohup java ${JAVA_OPT} -jar ${BASE_PATH}/lib/${APPLICATION_JAR} > ${LOG_DIR}/console.log 2>&1 &