--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(60) NOT NULL
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

INSERT INTO public.games VALUES (372, 2018, 'Final', 2081, 2082, 4, 2);
INSERT INTO public.games VALUES (373, 2018, 'Third Place', 2083, 2084, 2, 0);
INSERT INTO public.games VALUES (374, 2018, 'Semi-Final', 2082, 2084, 2, 1);
INSERT INTO public.games VALUES (375, 2018, 'Semi-Final', 2081, 2083, 1, 0);
INSERT INTO public.games VALUES (376, 2018, 'Quarter-Final', 2082, 2090, 3, 2);
INSERT INTO public.games VALUES (377, 2018, 'Quarter-Final', 2084, 2092, 2, 0);
INSERT INTO public.games VALUES (378, 2018, 'Quarter-Final', 2083, 2094, 2, 1);
INSERT INTO public.games VALUES (379, 2018, 'Quarter-Final', 2081, 2096, 2, 0);
INSERT INTO public.games VALUES (380, 2018, 'Eighth-Final', 2084, 2098, 2, 1);
INSERT INTO public.games VALUES (381, 2018, 'Eighth-Final', 2092, 2100, 1, 0);
INSERT INTO public.games VALUES (382, 2018, 'Eighth-Final', 2083, 2102, 3, 2);
INSERT INTO public.games VALUES (383, 2018, 'Eighth-Final', 2094, 2104, 2, 0);
INSERT INTO public.games VALUES (384, 2018, 'Eighth-Final', 2082, 2106, 2, 1);
INSERT INTO public.games VALUES (385, 2018, 'Eighth-Final', 2090, 2108, 2, 1);
INSERT INTO public.games VALUES (386, 2018, 'Eighth-Final', 2096, 2110, 2, 1);
INSERT INTO public.games VALUES (387, 2018, 'Eighth-Final', 2081, 2112, 4, 3);
INSERT INTO public.games VALUES (388, 2014, 'Final', 2113, 2112, 1, 0);
INSERT INTO public.games VALUES (389, 2014, 'Third Place', 2115, 2094, 3, 0);
INSERT INTO public.games VALUES (390, 2014, 'Semi-Final', 2112, 2115, 1, 0);
INSERT INTO public.games VALUES (391, 2014, 'Semi-Final', 2113, 2094, 7, 1);
INSERT INTO public.games VALUES (392, 2014, 'Quarter-Final', 2115, 2122, 1, 0);
INSERT INTO public.games VALUES (393, 2014, 'Quarter-Final', 2112, 2083, 1, 0);
INSERT INTO public.games VALUES (394, 2014, 'Quarter-Final', 2094, 2098, 2, 1);
INSERT INTO public.games VALUES (395, 2014, 'Quarter-Final', 2113, 2081, 1, 0);
INSERT INTO public.games VALUES (396, 2014, 'Eighth-Final', 2094, 2130, 2, 1);
INSERT INTO public.games VALUES (397, 2014, 'Eighth-Final', 2098, 2096, 2, 0);
INSERT INTO public.games VALUES (398, 2014, 'Eighth-Final', 2081, 2134, 2, 0);
INSERT INTO public.games VALUES (399, 2014, 'Eighth-Final', 2113, 2136, 2, 1);
INSERT INTO public.games VALUES (400, 2014, 'Eighth-Final', 2115, 2104, 2, 1);
INSERT INTO public.games VALUES (401, 2014, 'Eighth-Final', 2122, 2140, 2, 1);
INSERT INTO public.games VALUES (402, 2014, 'Eighth-Final', 2112, 2100, 1, 0);
INSERT INTO public.games VALUES (403, 2014, 'Eighth-Final', 2083, 2144, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (2081, 'France');
INSERT INTO public.teams VALUES (2082, 'Croatia');
INSERT INTO public.teams VALUES (2083, 'Belgium');
INSERT INTO public.teams VALUES (2084, 'England');
INSERT INTO public.teams VALUES (2090, 'Russia');
INSERT INTO public.teams VALUES (2092, 'Sweden');
INSERT INTO public.teams VALUES (2094, 'Brazil');
INSERT INTO public.teams VALUES (2096, 'Uruguay');
INSERT INTO public.teams VALUES (2098, 'Colombia');
INSERT INTO public.teams VALUES (2100, 'Switzerland');
INSERT INTO public.teams VALUES (2102, 'Japan');
INSERT INTO public.teams VALUES (2104, 'Mexico');
INSERT INTO public.teams VALUES (2106, 'Denmark');
INSERT INTO public.teams VALUES (2108, 'Spain');
INSERT INTO public.teams VALUES (2110, 'Portugal');
INSERT INTO public.teams VALUES (2112, 'Argentina');
INSERT INTO public.teams VALUES (2113, 'Germany');
INSERT INTO public.teams VALUES (2115, 'Netherlands');
INSERT INTO public.teams VALUES (2122, 'Costa Rica');
INSERT INTO public.teams VALUES (2130, 'Chile');
INSERT INTO public.teams VALUES (2134, 'Nigeria');
INSERT INTO public.teams VALUES (2136, 'Algeria');
INSERT INTO public.teams VALUES (2140, 'Greece');
INSERT INTO public.teams VALUES (2144, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 403, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 2144, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

