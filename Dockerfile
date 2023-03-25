FROM betashepherd/php:7.2-fpm as runtime
WORKDIR /app/zfaka
COPY . .

#RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini && \
#    echo "date.timezone=Asia/Shanghai" >> /usr/local/etc/php/php.ini

EXPOSE 9000
CMD ["/usr/local/sbin/php-fpm"]