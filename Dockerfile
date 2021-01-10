FROM node:alpine3.12

# The port that your application listens to.
EXPOSE 8080

WORKDIR /app

# Prefer not to run as root.
USER node

COPY node_modules ./node_modules
COPY js ./js
COPY index* ./

CMD ["node","index.js"]
