FROM python:3.5-slim

#更新软件源，必须要执行，否则可能会出错。-y就是要跳过提示直接安装。
#RUN apt-get -y update

#RUN apt-get  -y gunicorn
 
RUN mkdir /django_test
#设置工作目录
WORKDIR /django_test
#将当前目录加入到工作目录中
ADD . /django_test
#install any needed pacakges in requirements.txt，你要把所有需要安装的Python模块加到这文件中。
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
#对外暴露端口
EXPOSE 12345
#设置环境变量 
ENV SPIDER=/django_test
# Run app.py when the container launches
CMD ["./start.sh"]
