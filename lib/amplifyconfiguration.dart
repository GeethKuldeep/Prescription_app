const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "d9180136c52742e99c260a9edda8bd73",
                    "region": "us-west-2"
                },
                "pinpointTargeting": {
                    "region": "us-west-2"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-northeast-1:c1a5732d-3a5b-48eb-9037-48c682ceec1d",
                            "Region": "ap-northeast-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-northeast-1_ubaPHsggN",
                        "AppClientId": "24of310f73c47bbmq3eknp92ko",
                        "AppClientSecret": "b0jobslkgtaj3sjq6h5ijp3v8bvlb279msco54h1g1l5pghitip",
                        "Region": "ap-northeast-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "d9180136c52742e99c260a9edda8bd73",
                        "Region": "us-west-2"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "us-west-2"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "prescription1cd3d84ffe1a4703a9dd4defb012a863162839-dev",
                        "Region": "ap-northeast-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "prescription1cd3d84ffe1a4703a9dd4defb012a863162839-dev",
                "region": "ap-northeast-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';