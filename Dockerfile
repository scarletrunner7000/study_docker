FROM centos
MAINTAINER scarletrunner7000
# # RUN: build するときに実行される
# RUN echo "now building..."
# # CMD: run するときに実行される
# # CMD echo "now running..."
# CMD ["echo", "now running..."]

RUN yum install -y httpd
# ファイルを image 内にコピー
ADD ./index.html /var/www/html
# 80番ポートを開ける
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
