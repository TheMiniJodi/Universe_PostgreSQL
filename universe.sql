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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(60) NOT NULL,
    asteroid_id integer NOT NULL,
    size integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer NOT NULL,
    age integer,
    radius numeric,
    name character varying(60) NOT NULL,
    notes text,
    life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age integer,
    size integer NOT NULL,
    radius numeric,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    notes text,
    life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    size integer NOT NULL,
    age integer,
    radius numeric,
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    notes text,
    life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age integer,
    size integer NOT NULL,
    radius numeric,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    notes text,
    life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('ast1', 1, 1);
INSERT INTO public.asteroid VALUES ('ast2', 2, 2);
INSERT INTO public.asteroid VALUES ('ast3', 3, 4);
INSERT INTO public.asteroid VALUES ('ast4', 4, 5);
INSERT INTO public.asteroid VALUES ('ast', 5, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 10, 11, 6, 'gal1', 'has water', true);
INSERT INTO public.galaxy VALUES (2, 11, 12, 7, 'gal2', 'maybe water', false);
INSERT INTO public.galaxy VALUES (3, 12, 13, 8, 'gal3', 'no water', false);
INSERT INTO public.galaxy VALUES (4, 13, 14, 9, 'gal4', 'no water', false);
INSERT INTO public.galaxy VALUES (5, 10, 11, 6, 'gal5', 'has water', true);
INSERT INTO public.galaxy VALUES (6, 11, 12, 7, 'gal6', 'maybe water', false);
INSERT INTO public.galaxy VALUES (7, 12, 13, 8, 'gal7', 'no water', false);
INSERT INTO public.galaxy VALUES (8, 13, 14, 9, 'gal8', 'no water', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 1, 2, 3, 'moon1', 8, 'na', false);
INSERT INTO public.moon VALUES (8, 4, 5, 6, 'moon2', 7, 'na', false);
INSERT INTO public.moon VALUES (9, 7, 8, 9, 'moon3', 7, 'na', false);
INSERT INTO public.moon VALUES (10, 10, 11, 12, 'moon4', 6, 'na', false);
INSERT INTO public.moon VALUES (11, 13, 14, 15, 'moon5', 5, 'na', false);
INSERT INTO public.moon VALUES (12, 16, 17, 18, 'moon6', 5, 'na', false);
INSERT INTO public.moon VALUES (13, 1, 2, 3, 'moon7', 8, 'na', false);
INSERT INTO public.moon VALUES (14, 4, 5, 6, 'moon8', 7, 'na', false);
INSERT INTO public.moon VALUES (15, 7, 8, 9, 'moon9', 7, 'na', false);
INSERT INTO public.moon VALUES (16, 10, 11, 12, 'moon10', 6, 'na', false);
INSERT INTO public.moon VALUES (17, 13, 14, 15, 'moo11', 5, 'na', false);
INSERT INTO public.moon VALUES (18, 16, 17, 18, 'moon12', 5, 'na', false);
INSERT INTO public.moon VALUES (19, 1, 2, 3, 'moon13', 8, 'na', false);
INSERT INTO public.moon VALUES (20, 4, 5, 6, 'moon14', 7, 'na', false);
INSERT INTO public.moon VALUES (21, 7, 8, 9, 'moon15', 7, 'na', false);
INSERT INTO public.moon VALUES (22, 10, 11, 12, 'moon16', 10, 'na', false);
INSERT INTO public.moon VALUES (23, 13, 14, 15, 'moon17', 5, 'na', false);
INSERT INTO public.moon VALUES (24, 16, 17, 18, 'moon18', 10, 'na', false);
INSERT INTO public.moon VALUES (31, 1, 2, 3, 'moon19', 8, 'na', false);
INSERT INTO public.moon VALUES (32, 4, 5, 6, 'moon20', 7, 'na', false);
INSERT INTO public.moon VALUES (33, 7, 8, 9, 'moon21', 7, 'na', false);
INSERT INTO public.moon VALUES (34, 10, 11, 12, 'moon22', 10, 'na', false);
INSERT INTO public.moon VALUES (35, 13, 14, 15, 'moon23', 8, 'na', false);
INSERT INTO public.moon VALUES (36, 16, 17, 18, 'moon24', 11, 'na', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 2, 3, 4, 'plan1', 1, 'na', false);
INSERT INTO public.planet VALUES (6, 5, 6, 7, 'plan2', 1, 'na', false);
INSERT INTO public.planet VALUES (7, 8, 9, 10, 'plan3', 2, 'na', false);
INSERT INTO public.planet VALUES (8, 11, 12, 13, 'plan4', 3, 'na', true);
INSERT INTO public.planet VALUES (9, 2, 3, 4, 'plan5', 4, 'na', false);
INSERT INTO public.planet VALUES (10, 5, 6, 7, 'plan6', 3, 'na', false);
INSERT INTO public.planet VALUES (11, 8, 9, 10, 'plan7', 2, 'na', false);
INSERT INTO public.planet VALUES (12, 11, 12, 13, 'plan8', 6, 'na', true);
INSERT INTO public.planet VALUES (17, 2, 3, 4, 'plan11', 1, 'na', false);
INSERT INTO public.planet VALUES (18, 5, 6, 7, 'plan12', 1, 'na', false);
INSERT INTO public.planet VALUES (19, 8, 9, 10, 'plan9', 2, 'na', false);
INSERT INTO public.planet VALUES (20, 11, 12, 13, 'plan10', 3, 'na', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 2, 3, 'star1', 1, 'na', false);
INSERT INTO public.star VALUES (2, 4, 5, 6, 'star2', 2, 'hot', false);
INSERT INTO public.star VALUES (3, 7, 8, 9, 'star3', 1, 'very hot', false);
INSERT INTO public.star VALUES (4, 1, 2, 3, 'star4', 3, 'na', false);
INSERT INTO public.star VALUES (5, 4, 5, 6, 'star5', 4, 'hot', false);
INSERT INTO public.star VALUES (6, 7, 8, 9, 'star6', 1, 'very hot', false);


--
-- Name: asteroid_asteroid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

