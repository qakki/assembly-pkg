#! /bin/shell

# 项目名称
APPLICATION="demo"

# 项目启动jar包名称
APPLICATION_JAR="assembly-test.jar"

PID=$(ps -ef | grep "${APPLICATION_JAR}" | grep -v grep | awk '{ print $2 }')
if [[ -z "$PID" ]]
then
    echo ${APPLICATION} is already stopped
else
    echo kill  ${PID}
    kill -9 ${PID}
    echo ${APPLICATION} stopped successfully
fi