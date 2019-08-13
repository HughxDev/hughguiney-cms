# Development Notes

- Strapi could not log in to MongoDB at all with
  ```
  security:
    authorization: "enabled"
  ```
- Can’t even log in myself:
  ```shell
  $ mongo --username hugh --authenticationDatabase admin hughguiney-cms
  MongoDB shell version v4.0.12
  Enter password:
  connecting to: mongodb://127.0.0.1:27017/hughguiney-cms?authSource=admin&gssapiServiceName=mongodb
  2019-08-13T16:54:18.506-0400 E QUERY    [js] Error: Authentication failed. :
  connect@src/mongo/shell/mongo.js:344:17
  @(connect):2:6
  exception: connect failed
  ```
- Turns out creating a user at `hughguiney-cms` means their `authenticationDatabase` is not `admin` but `hughguiney-cms`. Changing this in `database.json` fixed the connection error.