FROM quay.io/keycloak/keycloak:latest as builder

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
ENV KC_DB=postgres

WORKDIR /opt/keycloak

# change values for production ssl certificat
# RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore

# Get keycloak-bcrypt-1.5.3
ADD --chown=keycloak:keycloak https://github.com/leroyguillaume/keycloak-bcrypt/releases/download/1.5.3/keycloak-bcrypt-1.5.3.jar /opt/keycloak/providers/keycloak-bcrypt-1.5.3.jar

RUN /opt/keycloak/bin/kc.sh build
FROM quay.io/keycloak/keycloak:latest

COPY --from=builder /opt/keycloak/ /opt/keycloak/

# change these values to point to the PostgreSQL container or database server
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://postgres:5432/keycloak
ENV KC_DB_USERNAME=admin
ENV KC_DB_PASSWORD=admin
# ENV KC_HOSTNAME=0.0.0.0


# start for development (port : 8080)
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]

# start for production (port : 8443)
# ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
