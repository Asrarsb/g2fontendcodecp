FROM node:22.11.0-alpine
WORKDIR /app
COPY . .

# Define build arguments
ARG REACT_APP_API_URL_IDEA
ARG REACT_APP_API_URL_COMMENT
ARG REACT_APP_API_URL_USER
ARG REACT_APP_API_URL_MESSAGE

# Set environment variables for the build
ENV REACT_APP_API_URL_IDEA=https://6525fqc6vf.execute-api.ap-northeast-3.amazonaws.com
ENV REACT_APP_API_URL_COMMENT=https://6525fqc6vf.execute-api.ap-northeast-3.amazonaws.com
ENV REACT_APP_API_URL_USER=https://6525fqc6vf.execute-api.ap-northeast-3.amazonaws.com
ENV REACT_APP_API_URL_MESSAGE=https://6525fqc6vf.execute-api.ap-northeast-3.amazonaws.com

RUN npm install
RUN npm run build
EXPOSE ${FRONTEND_PORT}
CMD ["npm", "start"]
