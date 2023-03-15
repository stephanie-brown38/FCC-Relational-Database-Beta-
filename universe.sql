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
    name character varying(20) NOT NULL,
    type text,
    distance_in_parsecs integer,
    constellation character varying(60),
    galaxy_id integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(100),
    galaxy_types_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    designation character varying(20),
    mass character varying(20),
    planet_id integer
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
    name character varying(30) NOT NULL,
    mass character varying(20),
    has_moon boolean,
    has_rings boolean,
    star character varying(20),
    star_id integer
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
    magnitude numeric(4,2),
    constellation text,
    distance_in_parsecs integer,
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 'Barred Spiral', 765, 'Andromeda', 1);
INSERT INTO public.galaxy VALUES ('Backward Galaxy', 'Unbarred Spiral', 34000000, 'Centaurus', 2);
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 'Spiral', 5212223, 'Coma Berenices', 3);
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 'Lenticular Ring', 150000000, 'Sculptor', 4);
INSERT INTO public.galaxy VALUES ('Messier 81', 'Spiral', 29, 'Ursa Major', 5);
INSERT INTO public.galaxy VALUES ('Circinus Galaxy', 'Seyfert', 4000000, 'Circinus', 6);
INSERT INTO public.galaxy VALUES ('Milky Way', 'Barred Spiral', 0, 'Sagittarius', 7);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (5, 'Spiral', 'Spiral galaxies can be recognized by their flat disks of rotating gas and dust', 1);
INSERT INTO public.galaxy_types VALUES (1, 'Barred Spiral', 'Barred Spiral galaxies are a spiral galaxy with a central bar shaped structure made of stars', 2);
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular', 'Lenticular galaxies are a mix of spiral and elliptical galaxies', 3);
INSERT INTO public.galaxy_types VALUES (6, 'Seyfert', 'Seyfert galaxies are any class of spiral galaxies that have a small compact bright nuclei', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth 1', '0.606 Earth Mass', 12);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars 1', '10.8 X 10^15 kg', 11);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars 2', '1.8 X 10^15 kg', 11);
INSERT INTO public.moon VALUES (4, 'Lo', 'Jupiter 1', '0.015 Earth Mass', 6);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter 2', '0.008 Earth Mass', 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter 3', '0.025 Earth Mass', 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter 4', '0.018 Earth Mass', 6);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn 4', '0.0225 Earth Mass', 5);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn 5', '4 X 10^-4 Earth Mass', 5);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Saturn 8', '0.1155 Earth Mass', 5);
INSERT INTO public.moon VALUES (11, 'Dione', 'Saturn 4', '1.834X10^-4 Earths', 5);
INSERT INTO public.moon VALUES (12, 'PA-99-N2 C moon', 'PA-99-N2', 'Unknown', 1);
INSERT INTO public.moon VALUES (13, 'Titania', 'Uranus 3', '3.527+0.09X1021kg', 10);
INSERT INTO public.moon VALUES (14, 'Oberon', 'Uranus 4', '3.076+0.08X10^21kg', 10);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Uranus 2', '1.275+0.02X10^21kg', 10);
INSERT INTO public.moon VALUES (16, 'Triton', 'Neptune 1', '0.00359 Earth Mass', 7);
INSERT INTO public.moon VALUES (17, 'Nereid', 'Neptune 2', '3.1X10^19 kg', 7);
INSERT INTO public.moon VALUES (18, 'Charon', 'Pluto 1', '2.66 X 10^4 Earths', 13);
INSERT INTO public.moon VALUES (19, 'Styx', 'Pluto 5', '7.5 X 10^15 kg', 13);
INSERT INTO public.moon VALUES (20, 'Hydra', 'Pluto 3', '4.8 + 4.2 X 10^16 kg', 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Proxima Centauri b', '1.17 Earth Masses', false, false, 'Centaurus', 2);
INSERT INTO public.planet VALUES (3, 'Proxima Cantauri c', '7 Earth Masses', false, false, 'Centaurus', 2);
INSERT INTO public.planet VALUES (4, '11 Cromae Berenices', '19.4 Jupiters', false, false, 'B Cromae Berenices', 3);
INSERT INTO public.planet VALUES (5, 'Saturn', '95.159 Earth Mass', true, true, 'The Sun', 7);
INSERT INTO public.planet VALUES (6, 'Jupiter', '317.8 Earth Mass', true, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (7, 'Neptune', '17.74 Earth Mass', true, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (9, 'Venus', '0.815 Earth Mass', false, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (8, 'Mercury', '0.055 Earth Mass', false, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (1, 'PA-99-N2', '6.34 Jupiter Masses', true, false, 'Andromeda', 1);
INSERT INTO public.planet VALUES (10, 'Uranus', '14.536 Earth Mass', true, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (11, 'Mars', '0.107 Earth Mass', true, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (12, 'EARTH', '1 Earth Mass', true, false, 'The Sun', 7);
INSERT INTO public.planet VALUES (13, 'Pluto', '0.00218 Earth Mass', true, false, 'The Sun', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 2.10, 'Great Square of Pegasus', 54, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri AB', -0.30, 'Centaurus', 1, 2);
INSERT INTO public.star VALUES (3, 'B Cromae Berenices', 4.20, 'Coma Berenices', 10, 3);
INSERT INTO public.star VALUES (4, 'Alpha Sculptoris', 4.80, 'Sculptor', 240, 4);
INSERT INTO public.star VALUES (5, 'Dubhe', 1.79, 'Ursa Major', 38, 5);
INSERT INTO public.star VALUES (6, 'Alpha Circini', 3.19, 'Circinus', 16, 6);
INSERT INTO public.star VALUES (7, 'The Sun', 4.83, 'Sagittarius', 5, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

