FROM alpine:latest

RUN apk add --no-cache curl bash

RUN mkdir /tasks && chown 1000 /tasks
COPY toggle-secret.sh /tasks/toggle-secret.sh
RUN chmod +x /tasks/toggle-secret.sh
RUN adduser -D -u 1000 myuser
USER 1000

# Set a default command or entrypoint (optional)
CMD ["sh"]
