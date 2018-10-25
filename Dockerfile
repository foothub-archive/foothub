# build stage
FROM foothub/frontend:latest as frontend

# production stage
FROM nginx:1.13.12-alpine as production-stage
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx/conf.d /etc/nginx/conf.d/
COPY --from=frontend /code/dist /etc/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
