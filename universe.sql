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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    comet_color character varying(20),
    comet_speed integer
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comet_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_size integer NOT NULL,
    num_of_stars integer NOT NULL,
    distance_from_earth numeric(15,3) NOT NULL,
    char_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_char_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_char_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_char_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_char_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_char_id_seq OWNED BY public.galaxy.char_id;


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
    name character varying(30) NOT NULL,
    is_rogue boolean NOT NULL,
    around_planet character varying(30) NOT NULL,
    moon_color character varying(20),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_char_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_char_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_char_id_seq OWNER TO freecodecamp;

--
-- Name: moon_char_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_char_id_seq OWNED BY public.moon.planet_id;


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
    planet_info text,
    is_habitable boolean,
    number_of_moons integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_char_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_char_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_char_id_seq OWNER TO freecodecamp;

--
-- Name: planet_char_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_char_id_seq OWNED BY public.planet.star_id;


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
    name character varying(30) NOT NULL,
    star_age numeric(20,4) NOT NULL,
    star_type character varying(20),
    star_size integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_char_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_char_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_char_id_seq OWNER TO freecodecamp;

--
-- Name: star_char_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_char_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy char_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN char_id SET DEFAULT nextval('public.galaxy_char_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_char_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_char_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_char_id_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'shiva', 'blue', 10000000);
INSERT INTO public.comets VALUES (2, 'neowise', 'golden yellow', 50000000);
INSERT INTO public.comets VALUES (3, 'hale boop', 'violet', 7000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 30, 69000, 0.000, 1);
INSERT INTO public.galaxy VALUES (2, 'Adromeda', 40, 89000, 2537000.000, 2);
INSERT INTO public.galaxy VALUES (3, 'Backward', 40, 500000, 11100000.000, 3);
INSERT INTO public.galaxy VALUES (4, 'Bear Paw', 5, 5000, 20000000.000, 4);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 17, 450000, 17290000.000, 5);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 13, 1000, 11420000.000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'nila', false, 'Earth', 'White', 10);
INSERT INTO public.moon VALUES (2, 'Cerberus', false, 'Proxima Centauri b', 'Red', 11);
INSERT INTO public.moon VALUES (3, 'Asteria', false, 'TRAPPIST-1e', 'Gray', 12);
INSERT INTO public.moon VALUES (4, 'Achelous', false, 'Kepler-186f', 'Yellow', 13);
INSERT INTO public.moon VALUES (5, 'Oberon', false, 'Gliese 581c', 'Blue', 14);
INSERT INTO public.moon VALUES (6, 'Cordelia', false, 'HD 40307g', 'Green', 15);
INSERT INTO public.moon VALUES (7, 'Europa', false, 'Earth', 'Gray', 10);
INSERT INTO public.moon VALUES (8, 'Deimos', false, 'Proxima Centauri b', 'Brown', 11);
INSERT INTO public.moon VALUES (9, 'Lysithea', false, 'TRAPPIST-1e', 'Orange', 12);
INSERT INTO public.moon VALUES (10, 'Despina', false, 'Kepler-186f', 'Purple', 13);
INSERT INTO public.moon VALUES (11, 'Puck', false, 'Gliese 581c', 'Cyan', 14);
INSERT INTO public.moon VALUES (12, 'Bianca', false, 'HD 40307g', 'Magenta', 15);
INSERT INTO public.moon VALUES (13, 'Phoebe', false, 'Earth', 'Black', 10);
INSERT INTO public.moon VALUES (14, 'Callisto', false, 'Proxima Centauri b', 'White', 11);
INSERT INTO public.moon VALUES (15, 'Titan', false, 'TRAPPIST-1e', 'Red', 12);
INSERT INTO public.moon VALUES (16, 'Ganymede', false, 'Kepler-186f', 'Yellow', 13);
INSERT INTO public.moon VALUES (17, 'Rhea', false, 'Gliese 581c', 'Gray', 14);
INSERT INTO public.moon VALUES (18, 'Thebe', false, 'HD 40307g', 'Brown', 15);
INSERT INTO public.moon VALUES (19, 'Mimas', false, 'Earth', 'Orange', 10);
INSERT INTO public.moon VALUES (20, 'Proteus', false, 'Proxima Centauri b', 'Purple', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Earth', 'Earth Is 3rd planet from sun . Its the only habitable planet in the solar system . Its located in the milky way galaxy ', true, 1, 1);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 'Proxima Centauri b is an exoplanet orbiting in the habitable zone of the red dwarf star Proxima Centauri, the closest star to the Sun.', true, 0, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'TRAPPIST-1e is one of the seven Earth-sized exoplanets orbiting the ultracool dwarf star TRAPPIST-1.', true, 0, 3);
INSERT INTO public.planet VALUES (13, 'Kepler-186f', 'Kepler-186f is the first Earth-size planet to be found in the habitable zone of another star. It orbits the red dwarf Kepler-186 every 130 days.', true, 0, 4);
INSERT INTO public.planet VALUES (14, 'Gliese 581c', 'Gliese 581c is an exoplanet orbiting the star Gliese 581 approximately 20.3 light-years away in the constellation of Libra. It was the first potentially habitable exoplanet to be discovered.', true, 0, 5);
INSERT INTO public.planet VALUES (15, 'HD 40307g', 'HD 40307g is an exoplanet orbiting the star HD 40307 approximately 42 light-years away in the constellation Pictor. It is located in the habitable zone of its star.', true, 0, 6);
INSERT INTO public.planet VALUES (18, 'Wolf 1061 C', 'It is an exoplanet', false, 0, 2);
INSERT INTO public.planet VALUES (19, 'Gliese 581g', 'Gliese 581g is a disputed exoplanet candidate with potential habitability.', false, 1, 3);
INSERT INTO public.planet VALUES (21, 'HD 189733b', 'HD 189733b is an exoplanet known for its deep azure-blue color, caused by high clouds laced with silicate particles.', false, 0, 2);
INSERT INTO public.planet VALUES (22, 'LHS 1140 b', 'LHS 1140 b is a rocky exoplanet within the habitable zone of the red dwarf star LHS 1140.', true, 2, 6);
INSERT INTO public.planet VALUES (23, 'WASP-12b', 'WASP-12b is a hot Jupiter exoplanet known for its inflated size and close orbit around its host star.', false, 4, 4);
INSERT INTO public.planet VALUES (24, 'Kepler-452b', 'Kepler-452b is an exoplanet orbiting within the habitable zone of its star, Kepler-452.', true, 1, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 4603000000.0000, 'yellow', 865000, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 5600000000.0000, 'red dwarf', 84400, 2);
INSERT INTO public.star VALUES (4, 'Betelguese', 9000000.0000, 'red supergiant', 1000000000, 3);
INSERT INTO public.star VALUES (5, 'Sirius', 230000000.0000, 'white dwarf', 14000, 4);
INSERT INTO public.star VALUES (6, 'Alpha Centaauri A', 650000000.0000, 'yellow dwarf', 1000000, 5);
INSERT INTO public.star VALUES (7, 'Vega', 455000000.0000, 'main sequence', 240000, 6);
INSERT INTO public.star VALUES (1, 'Stephenson', 50000000.0000, 'white giant', 200000000, 1);


--
-- Name: comets_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comet_id_seq', 3, true);


--
-- Name: galaxy_char_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_char_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_char_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_char_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_char_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_char_id_seq', 10, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_char_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_char_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: comets comets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_name_key UNIQUE (name);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_char_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_char_id_key UNIQUE (char_id);


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

