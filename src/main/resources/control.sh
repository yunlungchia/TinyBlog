#!/usr/bin/env bash

# 启动
exec java -javaagent:/Users/yunlungchia/sandbox/lib/sandbox-agent.jar=server.port=12580 -jar /Users/yunlungchia/Documents/TinyBlog/target/blog-0.0.1-SNAPSHOT.jar > /Users/yunlungchia/JavaApplication.log

# 终止
ps -ef | grep "blog-0.0.1-SNAPSHOT.jar"
kill -9 XXX
