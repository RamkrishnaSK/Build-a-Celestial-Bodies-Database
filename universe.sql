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
    name character varying(30) NOT NULL,
    about text NOT NULL,
    age character varying(30),
    distance_to_earth character varying(30),
    escape_velocity_in_kmpersec integer
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
    name character varying(30) NOT NULL,
    about text NOT NULL,
    orbital_period character varying(10),
    discovered date,
    surface_pressure_in_kpa integer,
    near_to_uranus boolean,
    near_to_earth boolean,
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    info text NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    about text NOT NULL,
    age character varying(30),
    gravity character varying(30),
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
    name character varying(30) NOT NULL,
    about text NOT NULL,
    magnitude numeric(1,1),
    radius character varying(30),
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes our solar system with the name describing the galaxy appearance from Earth : a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye', '13.61 billion years', '923330 lightyears', 550);
INSERT INTO public.galaxy VALUES (2, 'Small Magellanc Cloud', 'It is a dwarf near the Milky Way. It has a total mass of approximately 7 billion solar masses', '6.51 billion years', '199000 lightyears', 400);
INSERT INTO public.galaxy VALUES (3, 'Triangulam Galaxy', 'The Triangulam Galaxy is a spiral galaxy which is way far from earth catalogued as Messier 33 or NGC 598', '8.5 billion years', '176890 lightyears', 600);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'Andromeda Galaxy also known as Messier 31, M31, or NGC 224 originally the Andromeda Nebula is a barred galaxy with the diameter of about 46.5 kiloparsec and the nearest galaxy to the Milky Way', '10.01 billion years', '110000 lightyears', 610);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 'It is a starbusrt galaxy approximately 12 million light-years away in the constellation Ursa Major. It is the second-largest member of the M81 Group.!', '11.42 billion years', '18500 lightyears', 611);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'It is also known as Messier 51a NGC 5194, is an interacting grand design spiral galaxy which was the first galaxy to be classified as a spiral galaxy ', '400.3 billion years', '30000 lightyears', 771);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'It is the only Earth natural Satellite', '27days', '1609-01-01', 122, false, false, NULL);
INSERT INTO public.moon VALUES (2, 'Mimas', 'It is the smallest astronomical body', '31days', '1609-01-12', 122, false, false, NULL);
INSERT INTO public.moon VALUES (3, 'Enceladus', 'It is the 6th largest moon of Saturn', '30days', '1609-06-23', 137, false, false, NULL);
INSERT INTO public.moon VALUES (4, 'D1', 'abt1', '21days', '1600-12-12', 126, false, true, NULL);
INSERT INTO public.moon VALUES (5, 'D2', 'abt1', '21days', '1600-12-12', 126, false, true, 1);
INSERT INTO public.moon VALUES (6, 'D7', 'abt1', '21days', '1600-12-12', 126, false, true, 2);
INSERT INTO public.moon VALUES (7, 'D8', 'abt1', '21days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (8, 'D9', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (9, 'D10', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (10, 'D11', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (11, 'D12', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (12, 'D13', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (13, 'D43', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (14, 'D44', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (15, 'D45', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (16, 'D46', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (17, 'D47', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (18, 'D48', 'abt1', '21days', '1600-12-12', 126, false, true, 4);
INSERT INTO public.moon VALUES (19, 'D51', 'abt1', '21days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (20, 'D52', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (21, 'D53', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (22, 'D443', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (23, 'D443`', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (24, 'D55', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (25, 'D155', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (26, 'D165', 'abt1', '23days', '1600-12-12', 126, false, true, 3);
INSERT INTO public.moon VALUES (27, 'D265', 'abt1', '23days', '1600-12-12', 126, false, true, 3);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'M1', 'Info1');
INSERT INTO public.more_info VALUES (2, 'M2', 'Info2');
INSERT INTO public.more_info VALUES (3, 'M3', 'Info3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest Planet in the Solar System', '4.5billion years', '3.7m/s2', 1);
INSERT INTO public.planet VALUES (2, 'Earth', 'The Earth is the third planet from the Sun and the only astronomical object known to harbor life.', '4.543 billion years', '9.807m/s2', 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'It is the 5th planet from the Sun and the largest in the Solar System.', '4.603 billion years', '6.8m/s2', 4);
INSERT INTO public.planet VALUES (4, 'Saturn', 'It is the 6th planet from the Sun', '4.1 billion years', '9.8m/s2', 5);
INSERT INTO public.planet VALUES (5, 'Mars', 'It is the 4th planet from the Sun and the scond-smallest planet in the Solar System and only being bigger larger than Mercury', '4.603 billion years', '5.7m/s2', 2);
INSERT INTO public.planet VALUES (6, 'Venus', 'It is the 2nd planet from the Sun', '4.603 billion years', '5.7m/s2', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'It is the 7th planet from the Sun', '4.603 billion years', '5.6m/s2', 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'It is the 8th planet from the Sun', '4.603 billion years', '5.6m/s2', 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 'It is a dwarf planet', '4.603 billion years', '5.6m/s2', 2);
INSERT INTO public.planet VALUES (10, 'P-33', 'It is a not a planet', '3.2 billion years', '1.6m/s2', 5);
INSERT INTO public.planet VALUES (11, 'P-43', 'It is a not a planet', '7.2 billion years', '1.7m/s2', 5);
INSERT INTO public.planet VALUES (12, 'P-53', 'It is a not a planet', '5.2 billion years', '2.7m/s2', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 'It is a red supergiant of spectral type M1-2 and one of the largest stars visible to the naked eye.', 0.5, '642.5 light years', 2);
INSERT INTO public.star VALUES (2, 'Formalhaut', 'It is the brightest star in the southerern constellation ', 0.6, '25.11 light years', 3);
INSERT INTO public.star VALUES (3, 'Sun', 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core', 0.7, '4.603 billion years', 2);
INSERT INTO public.star VALUES (4, 'Sirius', 'Sirius is the brightest star in the night sky. Its name is derived from the Greek word Serios which has the Orbital Period of 50 years', 0.7, '8.61 light years', 2);
INSERT INTO public.star VALUES (5, 'Antares', 'It is the brightest star in the constellation of scorpious and it has a Bayer designation scorpii. Its age is 11.01 million years', 0.9, '11.01 million years', 5);
INSERT INTO public.star VALUES (6, 'Denebola', 'It is the second-brightest star in the Zodiac constellation of Leo.', 0.8, '35.8 light years', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

