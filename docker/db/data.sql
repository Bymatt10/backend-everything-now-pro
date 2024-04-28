CREATE TABLE "users" (
                         "uuid" varchar PRIMARY KEY,
                         "username" varchar,
                         "password" varchar,
                         "role" enum(ADMIN,CLIENT,WORKERS,SUPPORT),
                         "status" enum(ACTIVE,DISABLE,REVIEW,BANNED),
                         "user_details_uuid" varchar,
                         "created_at" timestamp,
                         "updated_at" timestamp
);

CREATE TABLE "user_details" (
                                "uuid" varchar PRIMARY KEY,
                                "id_card" varchar,
                                "name" varchar,
                                "lastname" varchar,
                                "phone" varchar,
                                "email" varchar,
                                "city" varchar,
                                "country" varchar,
                                "zip_code" integer,
                                "photo_path" varchar,
                                "created_at" timestamp,
                                "updated_at" timestamp
);

ALTER TABLE "user_details" ADD FOREIGN KEY ("uuid") REFERENCES "users" ("user_details_uuid");