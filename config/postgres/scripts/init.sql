CREATE TABLE IF NOT EXISTS h10_logs(
    id SERIAL NOT NULL,
    tstamp timestamp with time zone DEFAULT NOW(),
    cpu_id VARCHAR(32) NOT NULL,
    rssi double precision,
    snr double precision,
    temp double precision,
    hum double precision,
    vcc double precision,
    vpanel double precision,
    PRIMARY KEY(id)
);