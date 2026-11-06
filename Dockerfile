FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy presentation files
COPY index.html /usr/share/nginx/html/index.html
COPY aula_show_enem_matematica.html /usr/share/nginx/html/aula_show_enem_matematica.html
COPY roteiro_aula_show_enem.md /usr/share/nginx/html/roteiro_aula_show_enem.md

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
