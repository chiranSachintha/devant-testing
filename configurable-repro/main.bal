import ballerina/io;
import bank_app.conf;

configurable string rootLabel = "local";

public function main() {
    io:println("rootLabel=", rootLabel);
    io:println("enableDebug=", conf:enableDebug);
    io:println("payments=", conf:apiPaths["payments"]);
    io:println("accounts=", conf:requiredPaths["accounts"]);
}
