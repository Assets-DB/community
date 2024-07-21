DROP TYPE IF EXISTS "user_types";
CREATE TYPE "user_types" AS ENUM (
  'professional',
  'client'
);

-----------------------------------------------------------------------------------------------
-- WORK_INVITATION
-----------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS "work_invitation" CASCADE;
CREATE TABLE "work_invitation" (
  "client_fk"       INTEGER         NOT NULL,
  "professional_fk" INTEGER         NOT NULL,
  "sender"          user_types      NOT NULL,     
  "accepted_at"     DATE,
  "created_at"      TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" 	    TIMESTAMP 	    NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY ("client_fk", "professional_fk")
);


-----------------------------------------------------------------------------------------------
-- CLIENT_HAS_PROFESSIONAL
-----------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS "client_has_professional" CASCADE;
CREATE TABLE "client_has_professional" (
  "client_fk"       INTEGER         NOT NULL,
  "professional_fk" INTEGER         NOT NULL,
  "deleted_at"      TIMESTAMP,
  "created_at"      TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" 	    TIMESTAMP 	    NOT NULL DEFAULT CURRENT_TIMESTAMP,

  CONSTRAINT "client_has_professional_fkey" FOREIGN KEY ("client_fk", "professional_fk") REFERENCES "work_invitation"("client_fk", "professional_fk"),

  PRIMARY KEY ("client_fk", "professional_fk")
);