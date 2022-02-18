const colors = require('colorette');                                            //  colors
// Color Based Logging System. Will work on improving it so that the logging system sends gRPC/HTTP information outside of the bot.

// Rubric
// Function = Error Level = Color
//  has     = 0           = default (white?)
//  trace   = 10          =  
//  debug   = 20          = 
//  info    = 30          = green
//  warn    = 40          = red
//  error   = 50          =
//  fatal   = 60          =

 async _good(_log)  {   
        const { client } = this.container;  
        client.logger.info(colors.bold(colors.green(`${_log}`)));
        }

async _bad(_log)    {   
        const { client } = this.container;  
        client.logger.error(colors.bold(colors.red(`${_log}`)));
        }




// Compressed 
async _good(_log)               {   const { client } = this.container;  client.logger.info(colors.bold(colors.green(`${_log}`)));}
async _bad(_log)                {   const { client } = this.container;  client.logger.error(colors.bold(colors.red(`${_log}`)));}

// Color Scheme needs to be updated.
