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
    name character varying NOT NULL,
    description text NOT NULL,
    galaxy_types integer,
    distance_from_earth numeric
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
-- Name: general_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.general_info (
    general_info_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.general_info OWNER TO freecodecamp;

--
-- Name: general_info_general_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.general_info_general_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_info_general_info_id_seq OWNER TO freecodecamp;

--
-- Name: general_info_general_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.general_info_general_info_id_seq OWNED BY public.general_info.general_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    radius numeric,
    has_water boolean,
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
    name character varying NOT NULL,
    description text,
    planet_types integer,
    has_life boolean,
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
    name character varying NOT NULL,
    description text,
    age_in_million_years integer,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: general_info general_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info ALTER COLUMN general_info_id SET DEFAULT nextval('public.general_info_general_info_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'la nuestra', 1, 3.25);
INSERT INTO public.galaxy VALUES (2, 'Palo de Hockey', 'nombre deportivo', 2, 5);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'de la guerra de las galaxias', 3, 18);
INSERT INTO public.galaxy VALUES (4, 'Nube de Magallanes', 'bien', 4, 24);
INSERT INTO public.galaxy VALUES (5, 'del cigarro', 'no es saludable', 5, 12);
INSERT INTO public.galaxy VALUES (6, 'del Molinete', 'muchas vueltas', 6, 11);
INSERT INTO public.galaxy VALUES (7, 'del Sombrero', 'a la cabeza', 7, 31);


--
-- Data for Name: general_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.general_info VALUES (1, 'planetas', 'son casi todos de la Via Lactea');
INSERT INTO public.general_info VALUES (2, 'Lunas', 'las busque en Google');
INSERT INTO public.general_info VALUES (3, 'galaxias', 'no encontramos extraterrestres');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Luna', 23, true, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Deimos', 11, false, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Phobos', 32, false, 2);
INSERT INTO public.moon VALUES (4, 'Adrastea', 'Adrastea', 44, false, 2);
INSERT INTO public.moon VALUES (5, 'Aitne', 'Aitne', 22, false, 3);
INSERT INTO public.moon VALUES (6, 'Ananke', 'Ananke', 21, false, 3);
INSERT INTO public.moon VALUES (7, 'Calisto', 'Callisto', 98, false, 4);
INSERT INTO public.moon VALUES (8, 'Carpo', 'Carpo', 45, false, 4);
INSERT INTO public.moon VALUES (9, 'Cyllene', 'Cylenne', 35, false, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 'Elara', 76, false, 5);
INSERT INTO public.moon VALUES (11, 'Eukelade', 'Eukelade', 67, false, 6);
INSERT INTO public.moon VALUES (12, 'Ganymede', 'Ganimede', 37, false, 6);
INSERT INTO public.moon VALUES (13, 'Hegemone', 'Hegemone', 65, false, 7);
INSERT INTO public.moon VALUES (14, 'Helike', 'Helike', 5, false, 7);
INSERT INTO public.moon VALUES (15, 'Himalia', 'Himalia', 23, false, 1);
INSERT INTO public.moon VALUES (16, 'Kore', 'Kore', 11, false, 1);
INSERT INTO public.moon VALUES (17, 'Leda', 'Leda', 32, false, 2);
INSERT INTO public.moon VALUES (18, 'Metis', 'Metis', 44, false, 2);
INSERT INTO public.moon VALUES (19, 'Pasiphae', 'Pasiphae', 22, false, 3);
INSERT INTO public.moon VALUES (20, 'Sinope', 'Sinope', 21, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Tierra', 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercurio', 'Mercurio', 2, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Venus', 3, false, 2);
INSERT INTO public.planet VALUES (4, 'Marte', 'Marte', 4, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter', 5, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Saturno', 6, false, 3);
INSERT INTO public.planet VALUES (7, 'Urano', 'Urano', 7, false, 4);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'Neptuno', 8, false, 4);
INSERT INTO public.planet VALUES (9, 'Balon de Rugby', 'Balon de Rugby', 1, false, 1);
INSERT INTO public.planet VALUES (10, 'La enana marron', 'La enana marron', 2, false, 1);
INSERT INTO public.planet VALUES (11, 'La estrella de Barnard', 'La estrella de Barnard', 3, false, 2);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', '51 Pegasi b', 4, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 'Sirio', 3, false, 1);
INSERT INTO public.star VALUES (2, 'Canopus', 'Canopus', 42, true, 2);
INSERT INTO public.star VALUES (3, 'Arturo', 'Arturo', 21, true, 3);
INSERT INTO public.star VALUES (4, 'Vega', 'Vega', 11, false, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 'Rigel', 23, true, 5);
INSERT INTO public.star VALUES (6, 'Hadar', 'Hadar', 28, false, 6);
INSERT INTO public.star VALUES (7, 'Capella', 'Capella', 33, true, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: general_info_general_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.general_info_general_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 33, true);


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
-- Name: general_info general_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info
    ADD CONSTRAINT general_info_name_key UNIQUE (name);


--
-- Name: general_info general_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_info
    ADD CONSTRAINT general_info_pkey PRIMARY KEY (general_info_id);


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
