var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "phone trumpet female bread ghost tilt crush record apology mixed close asset";
var accessToken = "v3/6d8593321d7e4be3ad61a473f641f04e";

module.exports={
    networks:{
        development:{
            host:"localhost",
            port: 8545,
            network_id:"10"
        
        },
    test:{
        host:"localhost",
        port: 7545,
        network_id:"*"
    },
    ropsten:{
        provider: function(){
            return new HDWalletProvider(
                mnemonic,
                "https://ropsten.infra.io/" + accessToken
            );
        },
        network_id:3,
        gas: 50000
    }
}
};
