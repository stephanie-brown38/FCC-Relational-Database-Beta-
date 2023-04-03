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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (498, 113, 11);
INSERT INTO public.games VALUES (499, 114, 876);
INSERT INTO public.games VALUES (500, 114, 209);
INSERT INTO public.games VALUES (501, 115, 349);
INSERT INTO public.games VALUES (502, 115, 858);
INSERT INTO public.games VALUES (503, 114, 762);
INSERT INTO public.games VALUES (504, 114, 786);
INSERT INTO public.games VALUES (505, 114, 216);
INSERT INTO public.games VALUES (506, 116, 891);
INSERT INTO public.games VALUES (507, 116, 444);
INSERT INTO public.games VALUES (508, 117, 554);
INSERT INTO public.games VALUES (509, 117, 666);
INSERT INTO public.games VALUES (510, 116, 864);
INSERT INTO public.games VALUES (511, 116, 891);
INSERT INTO public.games VALUES (512, 116, 984);
INSERT INTO public.games VALUES (513, 118, 347);
INSERT INTO public.games VALUES (514, 119, 108);
INSERT INTO public.games VALUES (515, 119, 312);
INSERT INTO public.games VALUES (516, 118, 477);
INSERT INTO public.games VALUES (517, 118, 526);
INSERT INTO public.games VALUES (518, 118, 280);
INSERT INTO public.games VALUES (519, 120, 396);
INSERT INTO public.games VALUES (520, 120, 343);
INSERT INTO public.games VALUES (521, 121, 876);
INSERT INTO public.games VALUES (522, 121, 822);
INSERT INTO public.games VALUES (523, 120, 732);
INSERT INTO public.games VALUES (524, 120, 44);
INSERT INTO public.games VALUES (525, 120, 359);
INSERT INTO public.games VALUES (526, 122, 992);
INSERT INTO public.games VALUES (527, 123, 423);
INSERT INTO public.games VALUES (528, 123, 726);
INSERT INTO public.games VALUES (529, 122, 144);
INSERT INTO public.games VALUES (530, 122, 608);
INSERT INTO public.games VALUES (531, 122, 958);
INSERT INTO public.games VALUES (532, 124, 458);
INSERT INTO public.games VALUES (533, 124, 710);
INSERT INTO public.games VALUES (534, 125, 556);
INSERT INTO public.games VALUES (535, 125, 794);
INSERT INTO public.games VALUES (536, 124, 903);
INSERT INTO public.games VALUES (537, 124, 403);
INSERT INTO public.games VALUES (538, 124, 228);
INSERT INTO public.games VALUES (539, 126, 347);
INSERT INTO public.games VALUES (540, 126, 852);
INSERT INTO public.games VALUES (541, 127, 711);
INSERT INTO public.games VALUES (542, 127, 213);
INSERT INTO public.games VALUES (543, 126, 293);
INSERT INTO public.games VALUES (544, 126, 867);
INSERT INTO public.games VALUES (545, 126, 353);
INSERT INTO public.games VALUES (546, 128, 175);
INSERT INTO public.games VALUES (547, 129, 26);
INSERT INTO public.games VALUES (548, 129, 198);
INSERT INTO public.games VALUES (549, 128, 902);
INSERT INTO public.games VALUES (550, 128, 747);
INSERT INTO public.games VALUES (551, 128, 347);
INSERT INTO public.games VALUES (552, 130, 663);
INSERT INTO public.games VALUES (553, 131, 788);
INSERT INTO public.games VALUES (554, 131, 834);
INSERT INTO public.games VALUES (555, 130, 757);
INSERT INTO public.games VALUES (556, 130, 754);
INSERT INTO public.games VALUES (557, 130, 404);
INSERT INTO public.games VALUES (558, 132, 576);
INSERT INTO public.games VALUES (559, 132, 875);
INSERT INTO public.games VALUES (560, 133, 857);
INSERT INTO public.games VALUES (561, 132, 455);
INSERT INTO public.games VALUES (562, 132, 755);
INSERT INTO public.games VALUES (563, 132, 243);
INSERT INTO public.games VALUES (564, 134, 601);
INSERT INTO public.games VALUES (565, 135, 900);
INSERT INTO public.games VALUES (566, 135, 390);
INSERT INTO public.games VALUES (567, 134, 555);
INSERT INTO public.games VALUES (568, 134, 657);
INSERT INTO public.games VALUES (569, 134, 817);
INSERT INTO public.games VALUES (570, 136, 439);
INSERT INTO public.games VALUES (571, 136, 434);
INSERT INTO public.games VALUES (572, 137, 995);
INSERT INTO public.games VALUES (573, 137, 725);
INSERT INTO public.games VALUES (574, 136, 965);
INSERT INTO public.games VALUES (575, 136, 5);
INSERT INTO public.games VALUES (576, 136, 913);
INSERT INTO public.games VALUES (577, 138, 386);
INSERT INTO public.games VALUES (578, 139, 264);
INSERT INTO public.games VALUES (579, 139, 585);
INSERT INTO public.games VALUES (580, 138, 268);
INSERT INTO public.games VALUES (581, 138, 944);
INSERT INTO public.games VALUES (582, 138, 612);
INSERT INTO public.games VALUES (583, 140, 10);
INSERT INTO public.games VALUES (584, 141, 923);
INSERT INTO public.games VALUES (585, 141, 17);
INSERT INTO public.games VALUES (586, 142, 943);
INSERT INTO public.games VALUES (587, 142, 692);
INSERT INTO public.games VALUES (588, 141, 511);
INSERT INTO public.games VALUES (589, 141, 727);
INSERT INTO public.games VALUES (590, 141, 392);
INSERT INTO public.games VALUES (591, 143, 188);
INSERT INTO public.games VALUES (592, 144, 77);
INSERT INTO public.games VALUES (593, 143, 484);
INSERT INTO public.games VALUES (594, 143, 772);
INSERT INTO public.games VALUES (595, 143, 501);
INSERT INTO public.games VALUES (596, 145, 390);
INSERT INTO public.games VALUES (597, 145, 950);
INSERT INTO public.games VALUES (598, 146, 232);
INSERT INTO public.games VALUES (599, 146, 503);
INSERT INTO public.games VALUES (600, 145, 284);
INSERT INTO public.games VALUES (601, 145, 160);
INSERT INTO public.games VALUES (602, 145, 467);
INSERT INTO public.games VALUES (603, 147, 616);
INSERT INTO public.games VALUES (604, 148, 197);
INSERT INTO public.games VALUES (605, 148, 800);
INSERT INTO public.games VALUES (606, 147, 402);
INSERT INTO public.games VALUES (607, 147, 820);
INSERT INTO public.games VALUES (608, 147, 20);
INSERT INTO public.games VALUES (609, 149, 943);
INSERT INTO public.games VALUES (610, 149, 368);
INSERT INTO public.games VALUES (611, 150, 932);
INSERT INTO public.games VALUES (612, 149, 480);
INSERT INTO public.games VALUES (613, 149, 56);
INSERT INTO public.games VALUES (614, 149, 402);
INSERT INTO public.games VALUES (615, 151, 636);
INSERT INTO public.games VALUES (616, 151, 84);
INSERT INTO public.games VALUES (617, 152, 700);
INSERT INTO public.games VALUES (618, 152, 719);
INSERT INTO public.games VALUES (619, 151, 946);
INSERT INTO public.games VALUES (620, 151, 549);
INSERT INTO public.games VALUES (621, 151, 275);
INSERT INTO public.games VALUES (622, 153, 996);
INSERT INTO public.games VALUES (623, 153, 980);
INSERT INTO public.games VALUES (624, 154, 705);
INSERT INTO public.games VALUES (625, 154, 633);
INSERT INTO public.games VALUES (626, 154, 368);
INSERT INTO public.games VALUES (627, 155, 684);
INSERT INTO public.games VALUES (628, 155, 837);
INSERT INTO public.games VALUES (629, 113, 10);
INSERT INTO public.games VALUES (630, 156, 557);
INSERT INTO public.games VALUES (631, 156, 137);
INSERT INTO public.games VALUES (632, 157, 713);
INSERT INTO public.games VALUES (633, 157, 570);
INSERT INTO public.games VALUES (634, 156, 911);
INSERT INTO public.games VALUES (635, 156, 989);
INSERT INTO public.games VALUES (636, 156, 246);
INSERT INTO public.games VALUES (663, 189, 693);
INSERT INTO public.games VALUES (664, 189, 267);
INSERT INTO public.games VALUES (665, 190, 85);
INSERT INTO public.games VALUES (666, 190, 826);
INSERT INTO public.games VALUES (667, 189, 182);
INSERT INTO public.games VALUES (668, 189, 356);
INSERT INTO public.games VALUES (669, 189, 738);
INSERT INTO public.games VALUES (670, 191, 107);
INSERT INTO public.games VALUES (671, 191, 855);
INSERT INTO public.games VALUES (672, 192, 75);
INSERT INTO public.games VALUES (673, 192, 848);
INSERT INTO public.games VALUES (674, 191, 804);
INSERT INTO public.games VALUES (675, 191, 287);
INSERT INTO public.games VALUES (676, 191, 630);
INSERT INTO public.games VALUES (677, 193, 459);
INSERT INTO public.games VALUES (678, 194, 463);
INSERT INTO public.games VALUES (679, 194, 63);
INSERT INTO public.games VALUES (680, 193, 942);
INSERT INTO public.games VALUES (681, 193, 330);
INSERT INTO public.games VALUES (682, 193, 58);
INSERT INTO public.games VALUES (683, 195, 80);
INSERT INTO public.games VALUES (684, 195, 80);
INSERT INTO public.games VALUES (685, 196, 331);
INSERT INTO public.games VALUES (686, 196, 243);
INSERT INTO public.games VALUES (687, 195, 685);
INSERT INTO public.games VALUES (688, 195, 776);
INSERT INTO public.games VALUES (689, 195, 777);
INSERT INTO public.games VALUES (690, 140, 11);
INSERT INTO public.games VALUES (691, 197, 23);
INSERT INTO public.games VALUES (692, 197, 785);
INSERT INTO public.games VALUES (693, 198, 561);
INSERT INTO public.games VALUES (694, 198, 786);
INSERT INTO public.games VALUES (695, 197, 251);
INSERT INTO public.games VALUES (696, 197, 360);
INSERT INTO public.games VALUES (697, 197, 261);
INSERT INTO public.games VALUES (698, 199, 646);
INSERT INTO public.games VALUES (699, 199, 76);
INSERT INTO public.games VALUES (700, 200, 897);
INSERT INTO public.games VALUES (701, 200, 644);
INSERT INTO public.games VALUES (702, 199, 230);
INSERT INTO public.games VALUES (703, 199, 188);
INSERT INTO public.games VALUES (704, 199, 443);
INSERT INTO public.games VALUES (705, 201, 693);
INSERT INTO public.games VALUES (706, 201, 159);
INSERT INTO public.games VALUES (707, 202, 987);
INSERT INTO public.games VALUES (708, 202, 998);
INSERT INTO public.games VALUES (709, 201, 942);
INSERT INTO public.games VALUES (710, 201, 257);
INSERT INTO public.games VALUES (711, 201, 852);
INSERT INTO public.games VALUES (712, 203, 510);
INSERT INTO public.games VALUES (713, 203, 318);
INSERT INTO public.games VALUES (714, 204, 686);
INSERT INTO public.games VALUES (715, 204, 388);
INSERT INTO public.games VALUES (716, 203, 564);
INSERT INTO public.games VALUES (717, 203, 344);
INSERT INTO public.games VALUES (718, 203, 150);
INSERT INTO public.games VALUES (719, 205, 650);
INSERT INTO public.games VALUES (720, 205, 388);
INSERT INTO public.games VALUES (721, 206, 705);
INSERT INTO public.games VALUES (722, 206, 312);
INSERT INTO public.games VALUES (723, 205, 395);
INSERT INTO public.games VALUES (724, 205, 252);
INSERT INTO public.games VALUES (725, 205, 649);
INSERT INTO public.games VALUES (726, 207, 300);
INSERT INTO public.games VALUES (727, 207, 962);
INSERT INTO public.games VALUES (728, 208, 584);
INSERT INTO public.games VALUES (729, 207, 580);
INSERT INTO public.games VALUES (730, 207, 777);
INSERT INTO public.games VALUES (731, 207, 120);
INSERT INTO public.games VALUES (732, 209, 727);
INSERT INTO public.games VALUES (733, 209, 625);
INSERT INTO public.games VALUES (734, 210, 307);
INSERT INTO public.games VALUES (735, 210, 28);
INSERT INTO public.games VALUES (736, 209, 214);
INSERT INTO public.games VALUES (737, 209, 504);
INSERT INTO public.games VALUES (738, 209, 190);
INSERT INTO public.games VALUES (739, 211, 944);
INSERT INTO public.games VALUES (740, 211, 100);
INSERT INTO public.games VALUES (741, 212, 929);
INSERT INTO public.games VALUES (742, 212, 34);
INSERT INTO public.games VALUES (743, 211, 463);
INSERT INTO public.games VALUES (744, 211, 912);
INSERT INTO public.games VALUES (745, 211, 773);
INSERT INTO public.games VALUES (746, 213, 633);
INSERT INTO public.games VALUES (747, 213, 965);
INSERT INTO public.games VALUES (748, 214, 888);
INSERT INTO public.games VALUES (749, 214, 878);
INSERT INTO public.games VALUES (750, 213, 360);
INSERT INTO public.games VALUES (751, 213, 647);
INSERT INTO public.games VALUES (752, 213, 693);
INSERT INTO public.games VALUES (753, 215, 395);
INSERT INTO public.games VALUES (754, 216, 899);
INSERT INTO public.games VALUES (755, 216, 438);
INSERT INTO public.games VALUES (756, 215, 160);
INSERT INTO public.games VALUES (757, 215, 737);
INSERT INTO public.games VALUES (758, 215, 515);
INSERT INTO public.games VALUES (759, 217, 885);
INSERT INTO public.games VALUES (760, 217, 914);
INSERT INTO public.games VALUES (761, 217, 561);
INSERT INTO public.games VALUES (762, 218, 962);
INSERT INTO public.games VALUES (763, 219, 354);
INSERT INTO public.games VALUES (764, 219, 178);
INSERT INTO public.games VALUES (765, 218, 679);
INSERT INTO public.games VALUES (766, 218, 143);
INSERT INTO public.games VALUES (767, 218, 952);
INSERT INTO public.games VALUES (768, 220, 51);
INSERT INTO public.games VALUES (769, 220, 506);
INSERT INTO public.games VALUES (770, 221, 647);
INSERT INTO public.games VALUES (771, 221, 68);
INSERT INTO public.games VALUES (772, 220, 865);
INSERT INTO public.games VALUES (773, 220, 564);
INSERT INTO public.games VALUES (774, 220, 426);
INSERT INTO public.games VALUES (792, 250, 136);
INSERT INTO public.games VALUES (793, 250, 888);
INSERT INTO public.games VALUES (794, 251, 661);
INSERT INTO public.games VALUES (795, 251, 554);
INSERT INTO public.games VALUES (796, 250, 743);
INSERT INTO public.games VALUES (797, 250, 402);
INSERT INTO public.games VALUES (798, 250, 39);
INSERT INTO public.games VALUES (799, 252, 857);
INSERT INTO public.games VALUES (800, 253, 518);
INSERT INTO public.games VALUES (801, 252, 189);
INSERT INTO public.games VALUES (802, 252, 966);
INSERT INTO public.games VALUES (803, 252, 101);
INSERT INTO public.games VALUES (804, 113, 2);
INSERT INTO public.games VALUES (805, 113, 9);
INSERT INTO public.games VALUES (806, 254, 12);
INSERT INTO public.games VALUES (807, 255, 48);
INSERT INTO public.games VALUES (808, 256, 26);
INSERT INTO public.games VALUES (809, 256, 327);
INSERT INTO public.games VALUES (810, 255, 171);
INSERT INTO public.games VALUES (811, 255, 946);
INSERT INTO public.games VALUES (812, 255, 507);
INSERT INTO public.games VALUES (813, 257, 357);
INSERT INTO public.games VALUES (814, 258, 623);
INSERT INTO public.games VALUES (815, 258, 466);
INSERT INTO public.games VALUES (816, 257, 332);
INSERT INTO public.games VALUES (817, 257, 774);
INSERT INTO public.games VALUES (818, 257, 458);
INSERT INTO public.games VALUES (819, 259, 788);
INSERT INTO public.games VALUES (820, 259, 4);
INSERT INTO public.games VALUES (821, 260, 71);
INSERT INTO public.games VALUES (822, 260, 702);
INSERT INTO public.games VALUES (823, 259, 672);
INSERT INTO public.games VALUES (824, 259, 664);
INSERT INTO public.games VALUES (825, 259, 184);
INSERT INTO public.games VALUES (826, 261, 282);
INSERT INTO public.games VALUES (827, 261, 536);
INSERT INTO public.games VALUES (828, 262, 266);
INSERT INTO public.games VALUES (829, 262, 985);
INSERT INTO public.games VALUES (830, 261, 785);
INSERT INTO public.games VALUES (831, 261, 108);
INSERT INTO public.games VALUES (832, 261, 18);
INSERT INTO public.games VALUES (833, 263, 206);
INSERT INTO public.games VALUES (834, 264, 264);
INSERT INTO public.games VALUES (835, 264, 997);
INSERT INTO public.games VALUES (836, 263, 450);
INSERT INTO public.games VALUES (837, 263, 126);
INSERT INTO public.games VALUES (838, 263, 904);
INSERT INTO public.games VALUES (839, 265, 724);
INSERT INTO public.games VALUES (840, 266, 504);
INSERT INTO public.games VALUES (841, 266, 347);
INSERT INTO public.games VALUES (842, 265, 985);
INSERT INTO public.games VALUES (843, 265, 479);
INSERT INTO public.games VALUES (844, 265, 237);
INSERT INTO public.games VALUES (845, 267, 966);
INSERT INTO public.games VALUES (846, 268, 676);
INSERT INTO public.games VALUES (847, 268, 491);
INSERT INTO public.games VALUES (848, 267, 585);
INSERT INTO public.games VALUES (849, 267, 373);
INSERT INTO public.games VALUES (850, 267, 697);
INSERT INTO public.games VALUES (851, 269, 483);
INSERT INTO public.games VALUES (852, 269, 382);
INSERT INTO public.games VALUES (853, 270, 422);
INSERT INTO public.games VALUES (854, 270, 137);
INSERT INTO public.games VALUES (855, 269, 659);
INSERT INTO public.games VALUES (856, 269, 948);
INSERT INTO public.games VALUES (857, 269, 599);
INSERT INTO public.games VALUES (858, 271, 206);
INSERT INTO public.games VALUES (859, 271, 845);
INSERT INTO public.games VALUES (860, 272, 77);
INSERT INTO public.games VALUES (861, 272, 212);
INSERT INTO public.games VALUES (862, 271, 172);
INSERT INTO public.games VALUES (863, 271, 926);
INSERT INTO public.games VALUES (864, 271, 405);
INSERT INTO public.games VALUES (865, 273, 333);
INSERT INTO public.games VALUES (866, 273, 67);
INSERT INTO public.games VALUES (867, 274, 9);
INSERT INTO public.games VALUES (868, 273, 451);
INSERT INTO public.games VALUES (869, 273, 321);
INSERT INTO public.games VALUES (870, 273, 426);
INSERT INTO public.games VALUES (871, 275, 424);
INSERT INTO public.games VALUES (872, 276, 962);
INSERT INTO public.games VALUES (873, 276, 658);
INSERT INTO public.games VALUES (874, 275, 914);
INSERT INTO public.games VALUES (875, 275, 964);
INSERT INTO public.games VALUES (876, 275, 729);
INSERT INTO public.games VALUES (877, 277, 847);
INSERT INTO public.games VALUES (878, 278, 316);
INSERT INTO public.games VALUES (879, 278, 289);
INSERT INTO public.games VALUES (880, 277, 891);
INSERT INTO public.games VALUES (881, 277, 773);
INSERT INTO public.games VALUES (882, 277, 425);
INSERT INTO public.games VALUES (883, 279, 502);
INSERT INTO public.games VALUES (884, 279, 159);
INSERT INTO public.games VALUES (885, 280, 418);
INSERT INTO public.games VALUES (886, 280, 958);
INSERT INTO public.games VALUES (887, 279, 397);
INSERT INTO public.games VALUES (888, 279, 324);
INSERT INTO public.games VALUES (889, 279, 599);
INSERT INTO public.games VALUES (890, 281, 370);
INSERT INTO public.games VALUES (891, 281, 454);
INSERT INTO public.games VALUES (892, 282, 425);
INSERT INTO public.games VALUES (893, 282, 469);
INSERT INTO public.games VALUES (894, 281, 439);
INSERT INTO public.games VALUES (895, 281, 89);
INSERT INTO public.games VALUES (896, 281, 124);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (113, 'Stephanie');
INSERT INTO public.users VALUES (114, 'user_1680199047389');
INSERT INTO public.users VALUES (115, 'user_1680199047387');
INSERT INTO public.users VALUES (116, 'user_1680199084387');
INSERT INTO public.users VALUES (117, 'user_1680199084386');
INSERT INTO public.users VALUES (118, 'user_1680199194313');
INSERT INTO public.users VALUES (119, 'user_1680199194312');
INSERT INTO public.users VALUES (120, 'user_1680199254208');
INSERT INTO public.users VALUES (121, 'user_1680199254207');
INSERT INTO public.users VALUES (122, 'user_1680199279413');
INSERT INTO public.users VALUES (123, 'user_1680199279412');
INSERT INTO public.users VALUES (124, 'user_1680199328971');
INSERT INTO public.users VALUES (125, 'user_1680199328970');
INSERT INTO public.users VALUES (126, 'user_1680199351818');
INSERT INTO public.users VALUES (127, 'user_1680199351817');
INSERT INTO public.users VALUES (128, 'user_1680199359636');
INSERT INTO public.users VALUES (129, 'user_1680199359635');
INSERT INTO public.users VALUES (130, 'user_1680199381869');
INSERT INTO public.users VALUES (131, 'user_1680199381868');
INSERT INTO public.users VALUES (132, 'user_1680199395930');
INSERT INTO public.users VALUES (133, 'user_1680199395929');
INSERT INTO public.users VALUES (134, 'user_1680199519954');
INSERT INTO public.users VALUES (135, 'user_1680199519953');
INSERT INTO public.users VALUES (136, 'user_1680199611897');
INSERT INTO public.users VALUES (137, 'user_1680199611896');
INSERT INTO public.users VALUES (138, 'user_1680199643917');
INSERT INTO public.users VALUES (139, 'user_1680199643916');
INSERT INTO public.users VALUES (140, 'stephanie');
INSERT INTO public.users VALUES (141, 'user_1680199865786');
INSERT INTO public.users VALUES (142, 'user_1680199865785');
INSERT INTO public.users VALUES (143, 'user_1680199936797');
INSERT INTO public.users VALUES (144, 'user_1680199936796');
INSERT INTO public.users VALUES (145, 'user_1680199951036');
INSERT INTO public.users VALUES (146, 'user_1680199951035');
INSERT INTO public.users VALUES (147, 'user_1680199965049');
INSERT INTO public.users VALUES (148, 'user_1680199965048');
INSERT INTO public.users VALUES (149, 'user_1680200000636');
INSERT INTO public.users VALUES (150, 'user_1680200000635');
INSERT INTO public.users VALUES (151, 'user_1680201566841');
INSERT INTO public.users VALUES (152, 'user_1680201566840');
INSERT INTO public.users VALUES (153, 'user_1680201636786');
INSERT INTO public.users VALUES (154, 'user_1680201636787');
INSERT INTO public.users VALUES (155, 'user_1680201697608');
INSERT INTO public.users VALUES (156, 'user_1680202009000');
INSERT INTO public.users VALUES (157, 'user_1680202008999');
INSERT INTO public.users VALUES (189, 'user_1680236129101');
INSERT INTO public.users VALUES (190, 'user_1680236129100');
INSERT INTO public.users VALUES (191, 'user_1680236204731');
INSERT INTO public.users VALUES (192, 'user_1680236204730');
INSERT INTO public.users VALUES (193, 'user_1680236219885');
INSERT INTO public.users VALUES (194, 'user_1680236219884');
INSERT INTO public.users VALUES (195, 'user_1680236332466');
INSERT INTO public.users VALUES (196, 'user_1680236332465');
INSERT INTO public.users VALUES (197, 'user_1680537776807');
INSERT INTO public.users VALUES (198, 'user_1680537776806');
INSERT INTO public.users VALUES (199, 'user_1680537847477');
INSERT INTO public.users VALUES (200, 'user_1680537847476');
INSERT INTO public.users VALUES (201, 'user_1680537907293');
INSERT INTO public.users VALUES (202, 'user_1680537907292');
INSERT INTO public.users VALUES (203, 'user_1680538106609');
INSERT INTO public.users VALUES (204, 'user_1680538106608');
INSERT INTO public.users VALUES (205, 'user_1680538119973');
INSERT INTO public.users VALUES (206, 'user_1680538119972');
INSERT INTO public.users VALUES (207, 'user_1680538129276');
INSERT INTO public.users VALUES (208, 'user_1680538129275');
INSERT INTO public.users VALUES (209, 'user_1680538154740');
INSERT INTO public.users VALUES (210, 'user_1680538154739');
INSERT INTO public.users VALUES (211, 'user_1680538158260');
INSERT INTO public.users VALUES (212, 'user_1680538158259');
INSERT INTO public.users VALUES (213, 'user_1680538163567');
INSERT INTO public.users VALUES (214, 'user_1680538163566');
INSERT INTO public.users VALUES (215, 'user_1680538196344');
INSERT INTO public.users VALUES (216, 'user_1680538196343');
INSERT INTO public.users VALUES (217, 'user_1680538278680');
INSERT INTO public.users VALUES (218, 'user_1680538331488');
INSERT INTO public.users VALUES (219, 'user_1680538331487');
INSERT INTO public.users VALUES (220, 'user_1680538346043');
INSERT INTO public.users VALUES (221, 'user_1680538346042');
INSERT INTO public.users VALUES (250, 'user_1680539142160');
INSERT INTO public.users VALUES (251, 'user_1680539142159');
INSERT INTO public.users VALUES (252, 'user_1680539330728');
INSERT INTO public.users VALUES (253, 'user_1680539330727');
INSERT INTO public.users VALUES (254, 'Luna');
INSERT INTO public.users VALUES (255, 'user_1680539468961');
INSERT INTO public.users VALUES (256, 'user_1680539468960');
INSERT INTO public.users VALUES (257, 'user_1680539484676');
INSERT INTO public.users VALUES (258, 'user_1680539484675');
INSERT INTO public.users VALUES (259, 'user_1680539523804');
INSERT INTO public.users VALUES (260, 'user_1680539523803');
INSERT INTO public.users VALUES (261, 'user_1680539534812');
INSERT INTO public.users VALUES (262, 'user_1680539534811');
INSERT INTO public.users VALUES (263, 'user_1680540118432');
INSERT INTO public.users VALUES (264, 'user_1680540118431');
INSERT INTO public.users VALUES (265, 'user_1680540127608');
INSERT INTO public.users VALUES (266, 'user_1680540127607');
INSERT INTO public.users VALUES (267, 'user_1680540138931');
INSERT INTO public.users VALUES (268, 'user_1680540138930');
INSERT INTO public.users VALUES (269, 'user_1680540233632');
INSERT INTO public.users VALUES (270, 'user_1680540233631');
INSERT INTO public.users VALUES (271, 'user_1680540257425');
INSERT INTO public.users VALUES (272, 'user_1680540257424');
INSERT INTO public.users VALUES (273, 'user_1680540289023');
INSERT INTO public.users VALUES (274, 'user_1680540289022');
INSERT INTO public.users VALUES (275, 'user_1680543436501');
INSERT INTO public.users VALUES (276, 'user_1680543436500');
INSERT INTO public.users VALUES (277, 'user_1680543575233');
INSERT INTO public.users VALUES (278, 'user_1680543575232');
INSERT INTO public.users VALUES (279, 'user_1680543594607');
INSERT INTO public.users VALUES (280, 'user_1680543594606');
INSERT INTO public.users VALUES (281, 'user_1680543607350');
INSERT INTO public.users VALUES (282, 'user_1680543607349');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 896, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 282, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

