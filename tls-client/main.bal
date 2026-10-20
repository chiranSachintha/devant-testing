import ballerina/http;

// The server's public Development endpoint. The API key is supplied at runtime
// through Config.toml and must not be committed to this repository.
configurable string ServiceURL = "https://c7451a6b-c98b-4136-bd58-777fce3b83fc-dev.e1-us-east-azure.choreoapis.dev";
configurable string ChoreoAPIKey = "";

final http:Client target = check new (ServiceURL);

listener http:Listener inboundListener = new (9090);

service / on inboundListener {
    resource function get greeting() returns http:Response|error {
        return check target->get(
            "/greeting",
            headers = {"Choreo-API-Key": ChoreoAPIKey}
        );
    }
}
