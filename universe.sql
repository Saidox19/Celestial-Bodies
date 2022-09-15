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
    name character varying(40),
    age integer NOT NULL,
    children integer NOT NULL,
    income numeric(10,3),
    email text,
    marital_status boolean,
    house_id text NOT NULL,
    awareness boolean
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
-- Name: galaxy_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_moon (
    galaxy_moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    city character varying(40) NOT NULL
);


ALTER TABLE public.galaxy_moon OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    age integer NOT NULL,
    children integer NOT NULL,
    income numeric(10,3),
    email text,
    marital_status boolean,
    house_id text NOT NULL,
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
    name character varying(40),
    age integer NOT NULL,
    children integer NOT NULL,
    income numeric(10,3),
    email text,
    marital_status boolean,
    house_id text NOT NULL,
    star_id integer NOT NULL,
    awareness boolean
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
    name character varying(40),
    age integer NOT NULL,
    children integer NOT NULL,
    income numeric(10,3),
    email text,
    marital_status boolean,
    house_id text NOT NULL,
    galaxy_id integer NOT NULL,
    awareness boolean
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Olawale', 24, 3, NULL, NULL, NULL, 'Orowunmi Street', NULL);
INSERT INTO public.galaxy VALUES (2, 'Olayinka', 33, 1, NULL, NULL, NULL, 'Alhaji Ajala', NULL);
INSERT INTO public.galaxy VALUES (3, 'Ridwanullahi', 35, 4, NULL, NULL, NULL, 'Abbi Avenue', NULL);
INSERT INTO public.galaxy VALUES (4, 'Toheed', 26, 1, NULL, NULL, NULL, 'Opeloyeru', NULL);
INSERT INTO public.galaxy VALUES (5, 'Muizi', 22, 1, NULL, NULL, NULL, 'Alagba Street', NULL);
INSERT INTO public.galaxy VALUES (6, 'Anifat', 18, 1, NULL, NULL, NULL, 'Alhaji Jimoh Street', NULL);


--
-- Data for Name: galaxy_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_moon VALUES (1, 'Kingsley', 'Surulere');
INSERT INTO public.galaxy_moon VALUES (2, 'Charles', 'Orile');
INSERT INTO public.galaxy_moon VALUES (3, 'Bright', 'Bode Thomas');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ade', 45, 3, NULL, NULL, NULL, 'Ade', 7);
INSERT INTO public.moon VALUES (2, 'Adeola', 45, 3, NULL, NULL, NULL, 'Adeola', 8);
INSERT INTO public.moon VALUES (3, 'Adeola Ola', 45, 3, NULL, NULL, NULL, 'Adeola Avenue', 9);
INSERT INTO public.moon VALUES (4, 'Adeola Olawale', 45, 3, NULL, NULL, NULL, 'Adeola Street', 10);
INSERT INTO public.moon VALUES (5, 'Olawale Osho', 45, 3, NULL, NULL, NULL, 'Adeola Osho Street', 11);
INSERT INTO public.moon VALUES (6, 'Olawale Oshowole', 45, 3, NULL, NULL, NULL, 'Adeola sho Street', 11);
INSERT INTO public.moon VALUES (7, 'Ol Osho', 45, 3, NULL, NULL, NULL, 'Adeola Osho Stt', 15);
INSERT INTO public.moon VALUES (8, ' Ike Osho', 45, 3, NULL, NULL, NULL, 'Alhaji Stt', 17);
INSERT INTO public.moon VALUES (9, ' IkeShoronmuo', 45, 3, NULL, NULL, NULL, 'AlhajiJimoh Stt', 17);
INSERT INTO public.moon VALUES (10, ' Ike Shoronmuo', 45, 3, NULL, NULL, NULL, 'Alhaji OlaJimoh Stt', 16);
INSERT INTO public.moon VALUES (11, ' Ike Shoronmuo', 45, 3, NULL, NULL, NULL, 'Alhaji Ola Stt', 16);
INSERT INTO public.moon VALUES (12, ' Ike Igabo', 45, 3, NULL, NULL, NULL, 'Alh Ola Stt', 16);
INSERT INTO public.moon VALUES (13, ' Ike Igabo', 45, 3, NULL, NULL, NULL, 'Alh Sreettt', 17);
INSERT INTO public.moon VALUES (14, ' Ike Adubi', 45, 3, NULL, NULL, NULL, 'Alh Sret', 17);
INSERT INTO public.moon VALUES (15, ' Ike Adubi', 45, 3, NULL, NULL, NULL, 'Olaiyat', 17);
INSERT INTO public.moon VALUES (16, 'Moroutodun', 56, 5, NULL, NULL, NULL, 'Irepoodun', 11);
INSERT INTO public.moon VALUES (17, 'Aiyedaade', 23, 1, NULL, NULL, NULL, 'Irepodun street', 8);
INSERT INTO public.moon VALUES (18, ' Ike Adubi', 45, 3, NULL, NULL, NULL, 'Olaiya street', 17);
INSERT INTO public.moon VALUES (19, 'Moroutodun', 56, 5, NULL, NULL, NULL, 'Ipoodun', 11);
INSERT INTO public.moon VALUES (20, 'Aiyedaade', 23, 1, NULL, NULL, NULL, 'Irepodun stret', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Olawale', 24, 3, NULL, NULL, NULL, 'Orowunmi Street', 2, NULL);
INSERT INTO public.planet VALUES (8, 'Olayinka', 33, 1, NULL, NULL, NULL, 'Alhaji Ajala', 3, NULL);
INSERT INTO public.planet VALUES (9, 'Ridwanullahi', 35, 4, NULL, NULL, NULL, 'Abbi Avenue', 4, NULL);
INSERT INTO public.planet VALUES (10, 'Toheed', 26, 1, NULL, NULL, NULL, 'Opeloyeru', 5, NULL);
INSERT INTO public.planet VALUES (11, 'Muizi', 22, 1, NULL, NULL, NULL, 'Alagba Street', 6, NULL);
INSERT INTO public.planet VALUES (12, 'Anifat', 18, 1, NULL, NULL, NULL, 'Alhaji Jimoh Street', 7, NULL);
INSERT INTO public.planet VALUES (14, 'Olawale', 24, 3, NULL, NULL, NULL, 'Orowunmi Road Street', 2, NULL);
INSERT INTO public.planet VALUES (15, 'Olayinka', 33, 1, NULL, NULL, NULL, 'Alhaji Ajala Street', 3, NULL);
INSERT INTO public.planet VALUES (16, 'Ridwanullahi', 35, 4, NULL, NULL, NULL, 'Abbi Avenue Lane', 4, NULL);
INSERT INTO public.planet VALUES (17, 'Toheed', 26, 1, NULL, NULL, NULL, 'Opeloyeru Street', 5, NULL);
INSERT INTO public.planet VALUES (18, 'Muizi', 22, 1, NULL, NULL, NULL, 'Alagba Nla Street', 6, NULL);
INSERT INTO public.planet VALUES (19, 'Anifat', 18, 1, NULL, NULL, NULL, 'Al Jimoh Street', 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Olawale', 24, 3, NULL, NULL, NULL, 'Orowunmi Street', 1, NULL);
INSERT INTO public.star VALUES (3, 'Olayinka', 33, 1, NULL, NULL, NULL, 'Alhaji Ajala', 2, NULL);
INSERT INTO public.star VALUES (4, 'Ridwanullahi', 35, 4, NULL, NULL, NULL, 'Abbi Avenue', 3, NULL);
INSERT INTO public.star VALUES (5, 'Toheed', 26, 1, NULL, NULL, NULL, 'Opeloyeru', 4, NULL);
INSERT INTO public.star VALUES (6, 'Muizi', 22, 1, NULL, NULL, NULL, 'Alagba Street', 5, NULL);
INSERT INTO public.star VALUES (7, 'Anifat', 18, 1, NULL, NULL, NULL, 'Alhaji Jimoh Street', 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_house_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_house_id_key UNIQUE (house_id);


--
-- Name: galaxy_moon galaxy_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_name_key UNIQUE (name);


--
-- Name: galaxy_moon galaxy_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_pkey PRIMARY KEY (galaxy_moon_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_house_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_house_id_key UNIQUE (house_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_house_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_house_id_key UNIQUE (house_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_house_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_house_id_key UNIQUE (house_id);


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
