const cds = require("@sap/cds");
const { retrieveJwt } = require("@sap-cloud-sdk/core");

module.exports = (srv) => {
   srv.before("*", async (req) => {
      const jwt = retrieveJwt(req);
      console.log("JWT Token from request: ", jwt);
   });
};
