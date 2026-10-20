# Devant TLS client reproduction

This Ballerina service exposes GET /greeting on port 9090 and forwards it to the server project's public Development endpoint. The outbound HTTPS call uses Ballerina's default certificate verification and sends the Devant test key in the Choreo-API-Key header.

## Run locally

1. Copy Config.toml.example to Config.toml.
2. Replace REPLACE_WITH_DEVANT_TEST_KEY with the server project's test key. Keep Config.toml private; do not commit it.
3. From this directory, run: bal run
4. In another terminal, run: curl -i http://localhost:9090/greeting

A successful response should contain the server integration's greeting. A TLS handshake failure occurs before the API key is sent or the server's HTTP authorization layer is reached.

This tests the public Devant HTTPS endpoint. The server project currently offers Public visibility only, so it does not reproduce the organization-visibility configuration from the original report.
