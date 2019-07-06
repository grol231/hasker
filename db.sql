--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.17
-- Dumped by pg_dump version 9.5.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.answers (
    id integer NOT NULL,
    content text,
    author text,
    answer_date date,
    flag boolean
);


ALTER TABLE public.answers OWNER TO hasker;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO hasker;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO hasker;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO hasker;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO hasker;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO hasker;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO hasker;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO hasker;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO hasker;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO hasker;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO hasker;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO hasker;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO hasker;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO hasker;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO hasker;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO hasker;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO hasker;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO hasker;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO hasker;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO hasker;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO hasker;

--
-- Name: question_tags; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.question_tags (
    tag_id integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.question_tags OWNER TO hasker;

--
-- Name: question_tags_question_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.question_tags_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_tags_question_id_seq OWNER TO hasker;

--
-- Name: question_tags_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.question_tags_question_id_seq OWNED BY public.question_tags.question_id;


--
-- Name: question_tags_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.question_tags_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_tags_tag_id_seq OWNER TO hasker;

--
-- Name: question_tags_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.question_tags_tag_id_seq OWNED BY public.question_tags.tag_id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    content text,
    author text,
    question_date date
);


ALTER TABLE public.questions OWNER TO hasker;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO hasker;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    label text
);


ALTER TABLE public.tags OWNER TO hasker;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO hasker;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    login text,
    password text,
    photo text
);


ALTER TABLE public.users OWNER TO hasker;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO hasker;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: vote_for_answers; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.vote_for_answers (
    user_id integer NOT NULL,
    answer_id integer NOT NULL,
    voting_flag boolean
);


ALTER TABLE public.vote_for_answers OWNER TO hasker;

--
-- Name: vote_for_answers_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.vote_for_answers_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vote_for_answers_answer_id_seq OWNER TO hasker;

--
-- Name: vote_for_answers_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.vote_for_answers_answer_id_seq OWNED BY public.vote_for_answers.answer_id;


--
-- Name: vote_for_answers_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.vote_for_answers_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vote_for_answers_user_id_seq OWNER TO hasker;

--
-- Name: vote_for_answers_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.vote_for_answers_user_id_seq OWNED BY public.vote_for_answers.user_id;


--
-- Name: vote_for_questions; Type: TABLE; Schema: public; Owner: hasker
--

CREATE TABLE public.vote_for_questions (
    user_id integer NOT NULL,
    question_id integer NOT NULL,
    voting_flag boolean
);


ALTER TABLE public.vote_for_questions OWNER TO hasker;

--
-- Name: vote_for_questions_question_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.vote_for_questions_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vote_for_questions_question_id_seq OWNER TO hasker;

--
-- Name: vote_for_questions_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.vote_for_questions_question_id_seq OWNED BY public.vote_for_questions.question_id;


--
-- Name: vote_for_questions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hasker
--

CREATE SEQUENCE public.vote_for_questions_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vote_for_questions_user_id_seq OWNER TO hasker;

--
-- Name: vote_for_questions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasker
--

ALTER SEQUENCE public.vote_for_questions_user_id_seq OWNED BY public.vote_for_questions.user_id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: tag_id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.question_tags ALTER COLUMN tag_id SET DEFAULT nextval('public.question_tags_tag_id_seq'::regclass);


--
-- Name: question_id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.question_tags ALTER COLUMN question_id SET DEFAULT nextval('public.question_tags_question_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_answers ALTER COLUMN user_id SET DEFAULT nextval('public.vote_for_answers_user_id_seq'::regclass);


--
-- Name: answer_id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_answers ALTER COLUMN answer_id SET DEFAULT nextval('public.vote_for_answers_answer_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_questions ALTER COLUMN user_id SET DEFAULT nextval('public.vote_for_questions_user_id_seq'::regclass);


--
-- Name: question_id; Type: DEFAULT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_questions ALTER COLUMN question_id SET DEFAULT nextval('public.vote_for_questions_question_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.answers (id, content, author, answer_date, flag) FROM stdin;
\.


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.answers_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	4	add_permission
6	Can change permission	4	change_permission
7	Can delete permission	4	delete_permission
8	Can view permission	4	view_permission
9	Can add user	2	add_user
10	Can change user	2	change_user
11	Can delete user	2	delete_user
12	Can view user	2	view_user
13	Can add group	3	add_group
14	Can change group	3	change_group
15	Can delete group	3	delete_group
16	Can view group	3	view_group
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$NjbbtGv3O0yJ$MsGnRFnIUBAQw73+rkNXjHXMrkwbkIyetdPJHLcUxD8=	\N	t	hasker			kosgrimi@yandex.ru	t	t	2019-07-02 17:00:03.28728+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	user
3	auth	group
4	auth	permission
5	contenttypes	contenttype
6	sessions	session
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-07-02 16:57:55.705331+00
2	auth	0001_initial	2019-07-02 16:57:55.774234+00
3	admin	0001_initial	2019-07-02 16:57:55.851591+00
4	admin	0002_logentry_remove_auto_add	2019-07-02 16:57:55.868552+00
5	admin	0003_logentry_add_action_flag_choices	2019-07-02 16:57:55.887397+00
6	contenttypes	0002_remove_content_type_name	2019-07-02 16:57:55.906513+00
7	auth	0002_alter_permission_name_max_length	2019-07-02 16:57:55.922243+00
8	auth	0003_alter_user_email_max_length	2019-07-02 16:57:55.932021+00
9	auth	0004_alter_user_username_opts	2019-07-02 16:57:55.941563+00
10	auth	0005_alter_user_last_login_null	2019-07-02 16:57:55.960749+00
11	auth	0006_require_contenttypes_0002	2019-07-02 16:57:55.962894+00
12	auth	0007_alter_validators_add_error_messages	2019-07-02 16:57:55.970762+00
13	auth	0008_alter_user_username_max_length	2019-07-02 16:57:55.989548+00
14	auth	0009_alter_user_last_name_max_length	2019-07-02 16:57:55.999859+00
15	auth	0010_alter_group_name_max_length	2019-07-02 16:57:56.00834+00
16	auth	0011_update_proxy_permissions	2019-07-02 16:57:56.028669+00
17	sessions	0001_initial	2019-07-02 16:57:56.041422+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: question_tags; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.question_tags (tag_id, question_id) FROM stdin;
\.


--
-- Name: question_tags_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.question_tags_question_id_seq', 1, false);


--
-- Name: question_tags_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.question_tags_tag_id_seq', 1, false);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.questions (id, content, author, question_date) FROM stdin;
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.questions_id_seq', 1, false);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.tags (id, label) FROM stdin;
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.users (id, email, login, password, photo) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Data for Name: vote_for_answers; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.vote_for_answers (user_id, answer_id, voting_flag) FROM stdin;
\.


--
-- Name: vote_for_answers_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.vote_for_answers_answer_id_seq', 1, false);


--
-- Name: vote_for_answers_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.vote_for_answers_user_id_seq', 1, false);


--
-- Data for Name: vote_for_questions; Type: TABLE DATA; Schema: public; Owner: hasker
--

COPY public.vote_for_questions (user_id, question_id, voting_flag) FROM stdin;
\.


--
-- Name: vote_for_questions_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.vote_for_questions_question_id_seq', 1, false);


--
-- Name: vote_for_questions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasker
--

SELECT pg_catalog.setval('public.vote_for_questions_user_id_seq', 1, false);


--
-- Name: answers_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: hasker
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: question_tags_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.question_tags
    ADD CONSTRAINT question_tags_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: question_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.question_tags
    ADD CONSTRAINT question_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.users(id);


--
-- Name: vote_for_answers_answer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_answers
    ADD CONSTRAINT vote_for_answers_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.answers(id);


--
-- Name: vote_for_answers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_answers
    ADD CONSTRAINT vote_for_answers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: vote_for_questions_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_questions
    ADD CONSTRAINT vote_for_questions_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: vote_for_questions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasker
--

ALTER TABLE ONLY public.vote_for_questions
    ADD CONSTRAINT vote_for_questions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

