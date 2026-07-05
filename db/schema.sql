CREATE TABLE "leagues" (
	"id" text PRIMARY KEY NOT NULL,
	"name" text NOT NULL,
	"country" text NOT NULL,
	"season" text NOT NULL
);

CREATE TABLE "teams" (
	"id" text PRIMARY KEY NOT NULL,
	"name" text NOT NULL,
	"short_name" text NOT NULL,
	"crest_color" text NOT NULL
);

CREATE TABLE "standings" (
	"id" text PRIMARY KEY NOT NULL,
	"league_id" text NOT NULL,
	"team_id" text NOT NULL,
	"rank" integer NOT NULL,
	"played" integer NOT NULL,
	"won" integer NOT NULL,
	"drawn" integer NOT NULL,
	"lost" integer NOT NULL,
	"goals_for" integer NOT NULL,
	"goals_against" integer NOT NULL,
	"points" integer NOT NULL
);

CREATE TABLE "matches" (
	"id" text PRIMARY KEY NOT NULL,
	"league_id" text NOT NULL,
	"home_team_id" text NOT NULL,
	"away_team_id" text NOT NULL,
	"home_score" integer DEFAULT 0 NOT NULL,
	"away_score" integer DEFAULT 0 NOT NULL,
	"status" text NOT NULL,
	"minute" integer,
	"kickoff_at" timestamp with time zone NOT NULL,
	"venue" text NOT NULL
);

CREATE TABLE "match_stats" (
	"match_id" text PRIMARY KEY NOT NULL,
	"possession_home" integer NOT NULL,
	"possession_away" integer NOT NULL,
	"shots_home" integer NOT NULL,
	"shots_away" integer NOT NULL,
	"shots_on_target_home" integer NOT NULL,
	"shots_on_target_away" integer NOT NULL,
	"corners_home" integer NOT NULL,
	"corners_away" integer NOT NULL,
	"fouls_home" integer NOT NULL,
	"fouls_away" integer NOT NULL,
	"yellow_cards_home" integer NOT NULL,
	"yellow_cards_away" integer NOT NULL,
	"red_cards_home" integer NOT NULL,
	"red_cards_away" integer NOT NULL,
	"offsides_home" integer NOT NULL,
	"offsides_away" integer NOT NULL
);

CREATE TABLE "match_events" (
	"id" text PRIMARY KEY NOT NULL,
	"match_id" text NOT NULL,
	"minute" integer NOT NULL,
	"type" text NOT NULL,
	"team" text NOT NULL,
	"player" text NOT NULL,
	"description" text NOT NULL
);

CREATE TABLE "news" (
	"id" text PRIMARY KEY NOT NULL,
	"title" text NOT NULL,
	"summary" text NOT NULL,
	"content" text NOT NULL,
	"category" text NOT NULL,
	"published_at" timestamp with time zone NOT NULL,
	"image_color" text NOT NULL
);

ALTER TABLE "standings" ADD CONSTRAINT "standings_league_id_leagues_id_fk" FOREIGN KEY ("league_id") REFERENCES "public"."leagues"("id") ON DELETE no action ON UPDATE no action;
ALTER TABLE "standings" ADD CONSTRAINT "standings_team_id_teams_id_fk" FOREIGN KEY ("team_id") REFERENCES "public"."teams"("id") ON DELETE no action ON UPDATE no action;
ALTER TABLE "matches" ADD CONSTRAINT "matches_league_id_leagues_id_fk" FOREIGN KEY ("league_id") REFERENCES "public"."leagues"("id") ON DELETE no action ON UPDATE no action;
ALTER TABLE "matches" ADD CONSTRAINT "matches_home_team_id_teams_id_fk" FOREIGN KEY ("home_team_id") REFERENCES "public"."teams"("id") ON DELETE no action ON UPDATE no action;
ALTER TABLE "matches" ADD CONSTRAINT "matches_away_team_id_teams_id_fk" FOREIGN KEY ("away_team_id") REFERENCES "public"."teams"("id") ON DELETE no action ON UPDATE no action;
ALTER TABLE "match_stats" ADD CONSTRAINT "match_stats_match_id_matches_id_fk" FOREIGN KEY ("match_id") REFERENCES "public"."matches"("id") ON DELETE no action ON UPDATE no action;
ALTER TABLE "match_events" ADD CONSTRAINT "match_events_match_id_matches_id_fk" FOREIGN KEY ("match_id") REFERENCES "public"."matches"("id") ON DELETE no action ON UPDATE no action;
