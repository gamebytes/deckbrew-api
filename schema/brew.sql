CREATE TABLE cards (
    id                varchar(32) primary key,
    name              varchar(200) DEFAULT '',
    mana_cost         varchar(45) DEFAULT '',
    toughness         varchar(6) DEFAULT '',
    power             varchar(6) DEFAULT '',
    types             varchar(100) DEFAULT '',
    subtypes          varchar(100) DEFAULT '',
    supertypes        varchar(100) DEFAULT '',
    colors            varchar(40) DEFAULT '',
    rules             text DEFAULT '',
    loyalty           integer DEFAULT 0,
    cmc               integer DEFAULT 0
);

CREATE INDEX cards_name_index ON cards(name);
CREATE INDEX cards_power_index ON cards(power);
CREATE INDEX cards_toughness_index ON cards(toughness);

CREATE TABLE sets (
    id                varchar(3) primary key,
    name              varchar(200) DEFAULT '',
    border            varchar(40) DEFAULT '',
    type              varchar(32) DEFAULT ''
);

CREATE TABLE editions (
    id                integer DEFAULT 0, 
    card_id           varchar(32) DEFAULT '',
    flavor            text DEFAULT '',
    border            varchar(10) DEFAULT '',
    magicnumber       varchar(10) DEFAULT '',
    layout            varchar(16) DEFAULT '',
    artist            text DEFAULT '',
    magicset          varchar(100) DEFAULT '',
    watermark         varchar(20) DEFAULT '',
    rarity            varchar(15) DEFAULT ''
);

CREATE INDEX editions_id_index ON editions(id);
CREATE INDEX editions_cardid_index ON editions(card_id);

GRANT ALL PRIVILEGES ON TABLE cards TO urza;
GRANT ALL PRIVILEGES ON TABLE sets TO urza;
GRANT ALL PRIVILEGES ON TABLE editions TO urza;

