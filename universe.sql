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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(40) NOT NULL,
    description text,
    age numeric
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    age numeric
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_details (
    planet_details_id integer NOT NULL,
    planet_id integer NOT NULL,
    details text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planet_details OWNER TO freecodecamp;

--
-- Name: planet_details_planet_details_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_details_planet_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_details_planet_details_id_seq OWNER TO freecodecamp;

--
-- Name: planet_details_planet_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_details_planet_details_id_seq OWNED BY public.planet_details.planet_details_id;


--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age numeric,
    type character varying(40)
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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet_details planet_details_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_details ALTER COLUMN planet_details_id SET DEFAULT nextval('public.planet_details_planet_details_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (5, 'NGC 4826', '(R)SA(rs)ab', 'Black Eye Galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 'NGC 3031', 'SA(s)ab', 'Messier 81', NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'sbc', 'Galaxy that includes Solar System', 1.361);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'SA(s)b', 'Nearest major galaxy to the Milky Way', 1.001);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 'SB(s)m pec', 'Pair of interacting galaxies', NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 4622', 'SA(r)ab', 'Also called Backward galaxy due to the apperance of its rotation', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', true, 4.5);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', false, NULL);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', false, NULL);
INSERT INTO public.moon VALUES (4, 6, 'Titan', true, NULL);
INSERT INTO public.moon VALUES (5, 6, 'Enceladus', true, NULL);
INSERT INTO public.moon VALUES (6, 6, 'Japet', true, NULL);
INSERT INTO public.moon VALUES (7, 6, 'Dione', true, NULL);
INSERT INTO public.moon VALUES (8, 6, 'Mimas', true, NULL);
INSERT INTO public.moon VALUES (9, 6, 'Tethys', true, NULL);
INSERT INTO public.moon VALUES (10, 6, 'Rhea', NULL, NULL);
INSERT INTO public.moon VALUES (11, 6, 'Hyperion', false, NULL);
INSERT INTO public.moon VALUES (12, 3, 'Europa', true, NULL);
INSERT INTO public.moon VALUES (13, 3, 'Io', true, NULL);
INSERT INTO public.moon VALUES (14, 3, 'Ganymede', true, NULL);
INSERT INTO public.moon VALUES (15, 3, 'Callisto', true, NULL);
INSERT INTO public.moon VALUES (16, 3, 'Thebe', NULL, NULL);
INSERT INTO public.moon VALUES (17, 3, 'Themisto', NULL, NULL);
INSERT INTO public.moon VALUES (18, 3, 'Ersa', NULL, NULL);
INSERT INTO public.moon VALUES (19, 3, 'Elara', NULL, NULL);
INSERT INTO public.moon VALUES (20, 3, 'Dia', NULL, NULL);
INSERT INTO public.moon VALUES (21, 3, 'Euphorie', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'rocky', true, 1);
INSERT INTO public.planet VALUES (1, 'Mars', 'rocky', false, 2);
INSERT INTO public.planet VALUES (1, 'Jupiter', 'gas', false, 3);
INSERT INTO public.planet VALUES (1, 'Venus', 'rocky', false, 4);
INSERT INTO public.planet VALUES (1, 'Mercury', 'rocky', false, 5);
INSERT INTO public.planet VALUES (1, 'Saturn', 'gas', false, 6);
INSERT INTO public.planet VALUES (1, 'Uranus', 'gas', false, 7);
INSERT INTO public.planet VALUES (1, 'Neptune', 'gas', false, 8);
INSERT INTO public.planet VALUES (2, 'Proxima b', 'rocky', NULL, 9);
INSERT INTO public.planet VALUES (2, 'Proxima d', 'rocky', NULL, 10);
INSERT INTO public.planet VALUES (2, 'Proxima c', NULL, NULL, 11);
INSERT INTO public.planet VALUES (2, 'Candidate 1', NULL, NULL, 12);


--
-- Data for Name: planet_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_details VALUES (1, 1, 'detail earth 1', 'de1');
INSERT INTO public.planet_details VALUES (2, 1, 'detail earth 2', 'de2');
INSERT INTO public.planet_details VALUES (3, 2, 'detail mars 1', 'dm1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 4.603, 'G2V');
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 4.5, 'M5.5Ve');
INSERT INTO public.star VALUES (3, 1, 'Rigil Kentaurus', 4.8, 'G2V');
INSERT INTO public.star VALUES (4, 1, 'Toliman', 5.3, 'K1V');
INSERT INTO public.star VALUES (5, 1, 'Barnard', 12, 'M4.0Ve');
INSERT INTO public.star VALUES (6, 1, 'Ran', 700, 'K2V');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_details_planet_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_details_planet_details_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_details planet_details_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_details
    ADD CONSTRAINT planet_details_name_key UNIQUE (name);


--
-- Name: planet_details planet_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_details
    ADD CONSTRAINT planet_details_pkey PRIMARY KEY (planet_details_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_details fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_details
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

