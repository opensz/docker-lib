FROM node:10

RUN npm config set unsafe-perm true  \
    && npm config set registry https://registry.npm.taobao.org

ADD node-sass  /var/node-sass

RUN npm install --unsafe-perm -g  node-sass  --sass_binary_path=/var/node-sass/darwin-x64-64_binding.node
RUN npm install --unsafe-perm -g  node-sass  --sass_binary_path=/var/node-sass/linux-x64-64_binding.node
