// Axios to Python Restful || Before we add in gRPC
const axios = require('axios');

 // START [RESTful Request]
   async _post(url,data) {
        let resp;
        try {
            resp = await axios.post(url,data);
        } catch (err) {
            // Handle Error Here
            return Promise.reject(err);   
        }
        return resp;
    };
// END [RESTful Request]
// Compresssed
    async _post(url,data) {     let resp;   try {   resp = await axios.post(url,data);  } catch (err) {     return Promise.reject(err);   }     return resp;    };
