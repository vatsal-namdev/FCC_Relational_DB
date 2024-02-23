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
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    composition text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    velocity integer,
    size numeric(5,2),
    description text,
    visible_with_eye boolean,
    atmosphere boolean
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
    name character varying(20) NOT NULL,
    age integer,
    distance integer,
    size numeric(5,2),
    description text,
    visible_with_eye boolean,
    atmosphere boolean,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    distance integer,
    size numeric(5,2),
    description text,
    visible_with_eye boolean,
    atmosphere boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    distance integer,
    size numeric(5,2),
    description text,
    visible_with_eye boolean,
    atmosphere boolean,
    galaxy_id integer NOT NULL
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

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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

INSERT INTO public.asteroid VALUES (1, 'A1', 10, 'C-type');
INSERT INTO public.asteroid VALUES (2, 'A2', 6, 'S-type');
INSERT INTO public.asteroid VALUES (3, 'A3', 11, 'C-type');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Butterfly', 4000, 450, 5.21, 'The Butterfly Galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, 'Bode', 3800, 732, 6.76, 'Bodes galaxy', false, false);
INSERT INTO public.galaxy VALUES (3, 'Anther', 2403, 546, 5.88, 'ANther galaxy', true, false);
INSERT INTO public.galaxy VALUES (4, 'Cart Wheel', 2500, 666, 8.79, 'Largest Galaxy', true, false);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 5000, 798, 7.33, 'Main Galaxy', true, true);
INSERT INTO public.galaxy VALUES (6, 'Fict', 2300, 432, 3.20, 'Not known', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 10, 1, 0.12, 'Earth moon', true, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 12, 2, 0.14, 'Mars moon', true, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 2, 0.16, 'Mars moon', true, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 13, 3, 0.13, 'Jupiter moon', true, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 13, 3, 0.16, 'Jupiter moon', true, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 14, 3, 0.17, 'Jupiter moon', false, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 14, 4, 0.17, 'Jupiter moon', false, false, 5);
INSERT INTO public.moon VALUES (8, 'Metis', 17, 3, 0.16, 'Jupiter moon', false, false, 5);
INSERT INTO public.moon VALUES (9, 'Thebe', 17, 3, 0.12, 'Jupiter moon', false, false, 5);
INSERT INTO public.moon VALUES (10, 'Titan', 20, 4, 1.80, 'Saturn moon', false, false, 6);
INSERT INTO public.moon VALUES (11, 'Lapetus', 21, 4, 1.60, 'Saturn moon', true, false, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 21, 3, 1.40, 'Saturn moon', false, false, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 19, 3, 1.70, 'Saturn moon', true, false, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 20, 4, 1.50, 'Saturn moon', true, false, 6);
INSERT INTO public.moon VALUES (15, 'Titania', 22, 4, 1.50, 'Uranus moon', true, false, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 20, 3, 1.70, 'Uranus moon', false, false, 7);
INSERT INTO public.moon VALUES (17, 'Arial', 18, 4, 1.90, 'Uranus moon', false, false, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 19, 5, 1.90, 'Neptune moon', true, false, 8);
INSERT INTO public.moon VALUES (19, 'Proteus', 19, 7, 1.80, 'Neptune moon', false, false, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 23, 8, 2.00, 'Pluto moon', false, false, 9);
INSERT INTO public.moon VALUES (21, 'Nix', 24, 7, 2.10, 'Pluto moon', false, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 52, 25, 1.20, 'Near Sun', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 50, 23, 1.00, 'Sister planet', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 50, 22, 0.66, 'Our planet', true, true, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 49, 20, 0.90, 'Brother', true, true, 5);
INSERT INTO public.planet VALUES (5, 'Ceres', 44, 19, 1.18, 'Middle one', false, false, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', 55, 30, 2.10, 'Ring', true, false, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 38, 29, 1.80, 'Gas giant', true, false, 3);
INSERT INTO public.planet VALUES (8, 'Uranus', 39, 26, 1.62, 'Ice giant', true, false, 3);
INSERT INTO public.planet VALUES (9, 'Neptune', 24, 19, 0.60, 'Farthest', true, false, 4);
INSERT INTO public.planet VALUES (10, 'Pluto', 25, 55, 0.28, 'dwarf', true, false, 4);
INSERT INTO public.planet VALUES (11, 'Charon', 25, 55, 0.13, 'pluto moon', false, false, 6);
INSERT INTO public.planet VALUES (12, 'Eris', 234, 49, 0.18, 'finding', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Dog star', 1500, 42, 1.20, 'Sirius', true, false, 2);
INSERT INTO public.star VALUES (2, 'Sirius', 1200, 42, 1.20, 'Dog star', true, false, 2);
INSERT INTO public.star VALUES (3, 'Pollaris', 1400, 35, 2.00, 'North star', true, false, 1);
INSERT INTO public.star VALUES (4, 'Vega', 1556, 24, 1.80, 'Famous star', true, false, 3);
INSERT INTO public.star VALUES (5, 'Anthera', 2345, 34, 2.30, 'The south star', true, false, 4);
INSERT INTO public.star VALUES (6, 'Druva', 2400, 36, 2.40, 'Eternal', true, false, 5);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


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

