const config={
    cognito:{
        identityPoolId:"us-east-1_KUGCqUR4I",
        cognitoDomain:"us-east-1kugcqur4i.auth.us-east-1.amazoncognito.com",
        appId:"4g1l456kf939fm79thu9m5e02m"
    }
}

var cognitoApp={
    auth:{},
    Init: function()
    {

        var authData = {
            ClientId : config.cognito.appId,
            AppWebDomain : config.cognito.cognitoDomain,
            TokenScopesArray : ['email', 'openid','profile'],
            RedirectUriSignIn : 'http://localhost:8080/hotel',
            RedirectUriSignOut : 'http://localhost:8080/hotel',
            UserPoolId : config.cognito.identityPoolId, 
            AdvancedSecurityDataCollectionFlag : false,
                Storage: null
        };

        cognitoApp.auth = new AmazonCognitoIdentity.CognitoAuth(authData);
        cognitoApp.auth.userhandler = {
            onSuccess: function(result) {
              
            },
            onFailure: function(err) {
            }
        };
    }
}