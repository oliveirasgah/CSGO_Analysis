-- Players
CREATE TABLE IF NOT EXISTS public."Players"
(
    "idPlayer" integer NOT NULL,
    "flFacebook" boolean NOT NULL,
    "flTwitter" boolean NOT NULL,
    "flTwitch" boolean NOT NULL,
    "dtBirth" date,
    "dtRegistration" timestamp without time zone NOT NULL,
    CONSTRAINT "Players_pkey" PRIMARY KEY ("idPlayer")
)

CREATE TABLE IF NOT EXISTS public."LobbyStats"
(
    "idLobbyStats" integer NOT NULL DEFAULT nextval('"LobbyStats_idLobbyStats_seq"'::regclass),
    "idLobbyGame" integer NOT NULL,
    "idPlayer" integer NOT NULL,
    "qtKill" integer,
    "qtAssis" integer,
    "qtDeath" integer,
    "qtHs" integer,
    "qtBombeDefuse" integer,
    "qtBombePlant" integer,
    "qtTk" double precision,
    "qtTkAssist" double precision,
    "qt1Kill" integer,
    "qt2Kill" integer,
    "qt3Kill" integer,
    "qt4Kill" integer,
    "qt5Kill" integer,
    "qtPlusKill" integer,
    "qtFirstKill" integer,
    "vlDamage" integer,
    "qtHits" double precision,
    "qtShots" integer,
    "qtLastAlive" double precision,
    "qtClutchWon" integer,
    "qtRoundsPlayed" integer,
    "descMapName" character varying(15) COLLATE pg_catalog."default",
    "vlLevel" integer,
    "qtSurvived" double precision,
    "qtTrade" double precision,
    "qtFlashAssist" double precision,
    "qtHitHeadshot" double precision,
    "qtHitChest" double precision,
    "qtHitStomach" double precision,
    "qtHitLeftArm" double precision,
    "qtHitRightArm" double precision,
    "qtHitLeftLeg" double precision,
    "qtHitRightLeg" double precision,
    "flWinner" integer,
    "dtCreatedAt" timestamp without time zone,
    CONSTRAINT "LobbyStats_pkey" PRIMARY KEY ("idLobbyStats")
)
