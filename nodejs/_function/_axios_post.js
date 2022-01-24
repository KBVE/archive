// Axios to Python Restful || Before we add in gRPC
const axios = require('axios');

 // START [RESTful Request]
    async _post(url,data) {
        try {
            const resp = await axios.post(url,data);
            console.log(resp.data);
            return resp.data;
        } catch (err) {
            // Handle Error Here
            console.error(err);
        }
    };
// END [RESTful Request]
// Compresssed
     async _post(url,data) {  try {   const resp = await axios.post(url,data);    return resp.data;   } catch (err) {     console.error(err);     return err;     }   };
