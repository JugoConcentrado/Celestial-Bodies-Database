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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance integer,
    diameter integer,
    is_explored boolean
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
    name character varying(255) NOT NULL,
    radius integer,
    distance_to_planet integer,
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
    name character varying(255) NOT NULL,
    is_habitable boolean,
    has_water boolean NOT NULL,
    radius numeric,
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
-- Name: sea; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sea (
    sea_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer
);


ALTER TABLE public.sea OWNER TO freecodecamp;

--
-- Name: sea_sea_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sea_sea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sea_sea_id_seq OWNER TO freecodecamp;

--
-- Name: sea_sea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sea_sea_id_seq OWNED BY public.sea.sea_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer,
    system_name text,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sea sea_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sea ALTER COLUMN sea_id SET DEFAULT nextval('public.sea_sea_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 100000, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 3, 200000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 3, 60000, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 28, 170000, false);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 500, 150000, false);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 160, 50000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (47, 'Phobos', 11, 9200, 4);
INSERT INTO public.moon VALUES (48, 'Deimos', 6, 23460, 4);
INSERT INTO public.moon VALUES (49, 'Io', 1821, 421800, 5);
INSERT INTO public.moon VALUES (50, 'Europa', 1569, 671100, 5);
INSERT INTO public.moon VALUES (51, 'Ganymede', 2529, 1070400, 5);
INSERT INTO public.moon VALUES (52, 'Callisto', 2410, 1882700, 5);
INSERT INTO public.moon VALUES (53, 'Leda', 20, 111400, 5);
INSERT INTO public.moon VALUES (54, 'Himalia', 86, 11461000, 5);
INSERT INTO public.moon VALUES (55, 'Lysithea', 18, 117100, 5);
INSERT INTO public.moon VALUES (56, 'Elara', 43, 11481000, 5);
INSERT INTO public.moon VALUES (57, 'Ananke', 23, 21204000, 5);
INSERT INTO public.moon VALUES (58, 'Carme', 23, 23351000, 5);
INSERT INTO public.moon VALUES (59, 'Praxidike', 7, 23986000, 5);
INSERT INTO public.moon VALUES (60, 'Sinope', 38, 23986000, 5);
INSERT INTO public.moon VALUES (61, 'Pasiphae', 28, 24034000, 5);
INSERT INTO public.moon VALUES (62, 'Autonoe', 99, 24282000, 5);
INSERT INTO public.moon VALUES (63, 'Callirrhoe', 12, 24103000, 5);
INSERT INTO public.moon VALUES (64, 'Themisto', 6, 793600, 5);
INSERT INTO public.moon VALUES (65, 'Megaclithe', 59, 24047000, 5);
INSERT INTO public.moon VALUES (66, 'Euanthe', 34, 24686000, 5);
INSERT INTO public.moon VALUES (67, 'Harpalyke', 20, 20934000, 5);
INSERT INTO public.moon VALUES (68, 'Aoede', 43, 23986000, 5);
INSERT INTO public.moon VALUES (69, 'Taygete', 20, 20426000, 5);
INSERT INTO public.moon VALUES (70, 'Eurydome', 18, 23344000, 5);
INSERT INTO public.moon VALUES (71, 'Sponde', 2, 24288000, 5);
INSERT INTO public.moon VALUES (72, 'Kale', 16, 23493000, 5);
INSERT INTO public.moon VALUES (73, 'Polydeuces', 4, 21401000, 5);
INSERT INTO public.moon VALUES (74, 'Jupiter XLVIII', NULL, NULL, 5);
INSERT INTO public.moon VALUES (75, 'Jupiter XLIX', NULL, NULL, 5);
INSERT INTO public.moon VALUES (76, 'Jupiter L', NULL, NULL, 5);
INSERT INTO public.moon VALUES (77, 'Jupiter LI', NULL, NULL, 5);
INSERT INTO public.moon VALUES (78, 'Jupiter LII', NULL, NULL, 5);
INSERT INTO public.moon VALUES (79, 'Jupiter LIII', NULL, NULL, 5);
INSERT INTO public.moon VALUES (80, 'Jupiter LIV', NULL, NULL, 5);
INSERT INTO public.moon VALUES (81, 'Jupiter LV', NULL, NULL, 5);
INSERT INTO public.moon VALUES (82, 'Erriapo', 16, 17342000, 5);
INSERT INTO public.moon VALUES (83, 'Narvi', 3, 18556000, 5);
INSERT INTO public.moon VALUES (84, 'Iocaste', 5, 21276000, 5);
INSERT INTO public.moon VALUES (85, 'Mneme', 2, 20720000, 5);
INSERT INTO public.moon VALUES (86, 'Hermippe', 3, 21887000, 5);
INSERT INTO public.moon VALUES (87, 'Jupiter LVII', NULL, NULL, 5);
INSERT INTO public.moon VALUES (88, 'Jupiter LVIII', NULL, NULL, 5);
INSERT INTO public.moon VALUES (89, 'Jupiter LIX', NULL, NULL, 5);
INSERT INTO public.moon VALUES (90, 'Jupiter LX', NULL, NULL, 5);
INSERT INTO public.moon VALUES (91, 'Jupiter LXI', NULL, NULL, 5);
INSERT INTO public.moon VALUES (92, 'Jupiter LXII', NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 2440, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 6052, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 6371, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, false, 3397, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 69911, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, false, 58232, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, false, 25362, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 24622, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, false, 1185, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', false, false, 473, 1);
INSERT INTO public.planet VALUES (11, 'Eris', false, false, 1173, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', false, false, 1433, 1);


--
-- Data for Name: sea; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sea VALUES (1, 'Arctic Ocean', 3);
INSERT INTO public.sea VALUES (2, 'North Atlantic Ocean', 3);
INSERT INTO public.sea VALUES (3, 'South Atlantic Ocean', 3);
INSERT INTO public.sea VALUES (4, 'North Pacific Ocean', 3);
INSERT INTO public.sea VALUES (5, 'South Pacific Ocean', 3);
INSERT INTO public.sea VALUES (6, 'Indian Ocean', 3);
INSERT INTO public.sea VALUES (7, 'Southern Ocean', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 695500, 'Solar System', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 'Sirius System', 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 0, 'Alpha Centauri System', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', -1300, 'Orion Constellation', 1);
INSERT INTO public.star VALUES (5, 'Rigel', 71, 'Orion Constellation', 1);
INSERT INTO public.star VALUES (6, 'Altair', 2, 'Aquila Constellation', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 92, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: sea_sea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sea_sea_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: sea sea_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sea
    ADD CONSTRAINT sea_pkey PRIMARY KEY (sea_id);


--
-- Name: sea sea_sea_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sea
    ADD CONSTRAINT sea_sea_id_key UNIQUE (sea_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: sea planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sea
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

