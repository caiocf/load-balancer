CREATE DATABASE IF NOT EXISTS proxy;
USE proxy;

CREATE TABLE restcomm_instances (
id VARCHAR(20) NOT NULL PRIMARY KEY,
publicIpAddress VARCHAR(50),
udpInterface VARCHAR(50),
tcpInterface VARCHAR(50),
tlsInterface VARCHAR(50),
wsInterface VARCHAR(50),
dateCreated DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS phone_numbers (
did VARCHAR(20) NOT NULL PRIMARY KEY,
restcomm_instance VARCHAR(20) NOT NULL,
dateCreated DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS call_records (
did VARCHAR(20) NOT NULL PRIMARY KEY,
dateCreated DATETIME NOT NULL
);