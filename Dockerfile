FROM nginx:latest
RUN echo "PRT - CI/CD Completed Successfully" > /usr/share/nginx/html/index.html
EXPOSE 80
