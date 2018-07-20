FROM nginx:latest

#COPY default.conf /etc/nginx/conf.d/default.conf
COPY dist/ /usr/share/nginx/html/
#COPY index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
