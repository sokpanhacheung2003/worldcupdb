--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (225, 49, 50, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (226, 51, 52, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (227, 50, 52, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (228, 49, 51, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (229, 50, 53, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (230, 52, 54, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (231, 51, 55, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (232, 49, 56, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (233, 52, 57, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (234, 54, 58, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (235, 51, 59, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (236, 55, 60, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (237, 50, 61, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (238, 53, 62, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (239, 56, 63, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (240, 49, 64, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (241, 65, 64, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (242, 66, 55, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (243, 64, 66, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (244, 65, 55, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (245, 66, 67, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (246, 64, 51, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (247, 55, 57, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (248, 65, 49, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (249, 55, 68, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (250, 57, 56, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (251, 49, 69, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (252, 65, 70, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (253, 66, 60, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (254, 67, 71, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (255, 64, 58, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (256, 51, 72, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (49, 'France');
INSERT INTO public.teams VALUES (50, 'Croatia');
INSERT INTO public.teams VALUES (51, 'Belgium');
INSERT INTO public.teams VALUES (52, 'England');
INSERT INTO public.teams VALUES (53, 'Russia');
INSERT INTO public.teams VALUES (54, 'Sweden');
INSERT INTO public.teams VALUES (55, 'Brazil');
INSERT INTO public.teams VALUES (56, 'Uruguay');
INSERT INTO public.teams VALUES (57, 'Colombia');
INSERT INTO public.teams VALUES (58, 'Switzerland');
INSERT INTO public.teams VALUES (59, 'Japan');
INSERT INTO public.teams VALUES (60, 'Mexico');
INSERT INTO public.teams VALUES (61, 'Denmark');
INSERT INTO public.teams VALUES (62, 'Spain');
INSERT INTO public.teams VALUES (63, 'Portugal');
INSERT INTO public.teams VALUES (64, 'Argentina');
INSERT INTO public.teams VALUES (65, 'Germany');
INSERT INTO public.teams VALUES (66, 'Netherlands');
INSERT INTO public.teams VALUES (67, 'Costa Rica');
INSERT INTO public.teams VALUES (68, 'Chile');
INSERT INTO public.teams VALUES (69, 'Nigeria');
INSERT INTO public.teams VALUES (70, 'Algeria');
INSERT INTO public.teams VALUES (71, 'Greece');
INSERT INTO public.teams VALUES (72, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 256, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 72, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

