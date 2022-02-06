--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO healtentadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO healtentadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO healtentadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO healtentadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO healtentadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO healtentadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO healtentadmin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO healtentadmin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO healtentadmin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO healtentadmin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO healtentadmin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO healtentadmin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_blogdetail; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.blog_blogdetail (
    id bigint NOT NULL,
    "bID" character varying(11) NOT NULL,
    "bBanner" text NOT NULL,
    "bTitle" character varying(60) NOT NULL,
    "bDes" character varying(160) NOT NULL,
    "bAuthor" character varying(50) NOT NULL,
    "bStatus" character varying(50) NOT NULL,
    pub_date date NOT NULL,
    upd_date date NOT NULL,
    "bStat" integer[] NOT NULL,
    "bCon" text NOT NULL,
    "bTags" text NOT NULL
);


ALTER TABLE public.blog_blogdetail OWNER TO healtentadmin;

--
-- Name: blog_blogdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.blog_blogdetail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogdetail_id_seq OWNER TO healtentadmin;

--
-- Name: blog_blogdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.blog_blogdetail_id_seq OWNED BY public.blog_blogdetail.id;


--
-- Name: contact_clients; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.contact_clients (
    client_id character varying(15) NOT NULL,
    client_name character varying(50) NOT NULL,
    client_mail character varying(100) NOT NULL,
    client_request character varying(50) NOT NULL,
    client_quote character varying(5) NOT NULL,
    org_name character varying(100) NOT NULL,
    org_web character varying(100) NOT NULL,
    request_time character varying(100) NOT NULL
);


ALTER TABLE public.contact_clients OWNER TO healtentadmin;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: healtentadmin
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


ALTER TABLE public.django_admin_log OWNER TO healtentadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO healtentadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO healtentadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO healtentadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO healtentadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO healtentadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO healtentadmin;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO healtentadmin;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: healtentadmin
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO healtentadmin;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: healtentadmin
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: index_mailsubscriber; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.index_mailsubscriber (
    ms_id character varying(15) NOT NULL,
    ms_mail character varying(100) NOT NULL,
    ms_verification_status boolean NOT NULL,
    ms_mail_verify_hash character varying(175) NOT NULL,
    ms_unsubscribe_hash character varying(175) NOT NULL,
    ms_preference_hash character varying(175) NOT NULL,
    ms_info_mail_status boolean NOT NULL,
    ms_promotional_mail_status boolean NOT NULL,
    ms_update_mail_status boolean NOT NULL,
    ms_sub_status boolean NOT NULL,
    ms_sub_date date NOT NULL,
    ms_unsub_date date
);


ALTER TABLE public.index_mailsubscriber OWNER TO healtentadmin;

--
-- Name: maillytics_campaigndetail; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.maillytics_campaigndetail (
    cid character varying(11) NOT NULL,
    cname character varying(75) NOT NULL,
    cdate date NOT NULL,
    ca character varying(200) NOT NULL,
    ba character varying(100)[] NOT NULL,
    htma character varying(25) NOT NULL
);


ALTER TABLE public.maillytics_campaigndetail OWNER TO healtentadmin;

--
-- Name: maillytics_mailanalytic; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.maillytics_mailanalytic (
    cid character varying(11) NOT NULL,
    tid character varying(4) NOT NULL,
    open boolean NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    ca integer NOT NULL,
    ba integer[] NOT NULL,
    htma integer NOT NULL
);


ALTER TABLE public.maillytics_mailanalytic OWNER TO healtentadmin;

--
-- Name: programs_programdetail; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.programs_programdetail (
    pro_page_title character varying(60) NOT NULL,
    pro_page_keyword character varying(150) NOT NULL,
    pro_page_script jsonb NOT NULL,
    pro_name character varying(50) NOT NULL,
    pro_id character varying(10) NOT NULL,
    pro_status character varying(5) NOT NULL,
    pro_desc character varying(150) NOT NULL,
    pro_ic character varying(200) NOT NULL,
    pro_banner character varying(200) NOT NULL,
    pro_cnt character varying(500) NOT NULL,
    pro_news jsonb NOT NULL,
    pro_stat jsonb NOT NULL,
    pro_rev jsonb NOT NULL,
    pro_req_url character varying(50) NOT NULL
);


ALTER TABLE public.programs_programdetail OWNER TO healtentadmin;

--
-- Name: services_domaindetail; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.services_domaindetail (
    dm_page_title character varying(60) NOT NULL,
    dm_page_keyword character varying(150) NOT NULL,
    dm_page_script jsonb NOT NULL,
    dm_name character varying(100) NOT NULL,
    dm_id character varying(10) NOT NULL,
    dm_svc character varying(50) NOT NULL,
    svc_ic character varying(200) NOT NULL,
    dm_desc character varying(150) NOT NULL,
    dm_list jsonb NOT NULL,
    dm_req_url character varying(50) NOT NULL
);


ALTER TABLE public.services_domaindetail OWNER TO healtentadmin;

--
-- Name: services_servicedetail; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.services_servicedetail (
    svc_page_title character varying(60) NOT NULL,
    svc_page_keyword character varying(150) NOT NULL,
    svc_page_script jsonb NOT NULL,
    svc_name character varying(50) NOT NULL,
    svc_id character varying(10) NOT NULL,
    svc_desc character varying(150) NOT NULL,
    svc_domain character varying(50) NOT NULL,
    svc_ic character varying(200) NOT NULL,
    svc_landing_ic character varying(200) NOT NULL,
    svc_cta_text character varying(150) NOT NULL,
    svc_btn_text character varying(50) NOT NULL,
    svc_usp jsonb NOT NULL,
    svc_list jsonb NOT NULL,
    svc_req_url character varying(50) NOT NULL
);


ALTER TABLE public.services_servicedetail OWNER TO healtentadmin;

--
-- Name: subscriberanalytics_adminaccessanalytic; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.subscriberanalytics_adminaccessanalytic (
    admin_name character varying(30) NOT NULL,
    admin_id character varying(20) NOT NULL,
    access_hash character varying(175) NOT NULL,
    last_req time without time zone NOT NULL,
    total_req character varying(5) NOT NULL,
    req_type character varying(25) NOT NULL
);


ALTER TABLE public.subscriberanalytics_adminaccessanalytic OWNER TO healtentadmin;

--
-- Name: subscriberanalytics_preferenceanalytic; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.subscriberanalytics_preferenceanalytic (
    pref_id character varying(5) NOT NULL,
    sub_id character varying(15) NOT NULL,
    pref_state character varying(8) NOT NULL,
    pref_date date NOT NULL
);


ALTER TABLE public.subscriberanalytics_preferenceanalytic OWNER TO healtentadmin;

--
-- Name: subscriberanalytics_unsubscriptionanalytic; Type: TABLE; Schema: public; Owner: healtentadmin
--

CREATE TABLE public.subscriberanalytics_unsubscriptionanalytic (
    sub_id character varying(15) NOT NULL,
    uns_reason character varying(8) NOT NULL,
    uns_comment character varying(150) NOT NULL,
    uns_date date NOT NULL
);


ALTER TABLE public.subscriberanalytics_unsubscriptionanalytic OWNER TO healtentadmin;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_blogdetail id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.blog_blogdetail ALTER COLUMN id SET DEFAULT nextval('public.blog_blogdetail_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add mail subscriber	8	add_mailsubscriber
30	Can change mail subscriber	8	change_mailsubscriber
31	Can delete mail subscriber	8	delete_mailsubscriber
32	Can view mail subscriber	8	view_mailsubscriber
33	Can add services list	9	add_serviceslist
34	Can change services list	9	change_serviceslist
35	Can delete services list	9	delete_serviceslist
36	Can view services list	9	view_serviceslist
37	Can add team details	10	add_teamdetails
38	Can change team details	10	change_teamdetails
39	Can delete team details	10	delete_teamdetails
40	Can view team details	10	view_teamdetails
41	Can add blog detail	11	add_blogdetail
42	Can change blog detail	11	change_blogdetail
43	Can delete blog detail	11	delete_blogdetail
44	Can view blog detail	11	view_blogdetail
45	Can add clients	12	add_clients
46	Can change clients	12	change_clients
47	Can delete clients	12	delete_clients
48	Can view clients	12	view_clients
49	Can add campaign detail	13	add_campaigndetail
50	Can change campaign detail	13	change_campaigndetail
51	Can delete campaign detail	13	delete_campaigndetail
52	Can view campaign detail	13	view_campaigndetail
53	Can add mail analytic	14	add_mailanalytic
54	Can change mail analytic	14	change_mailanalytic
55	Can delete mail analytic	14	delete_mailanalytic
56	Can view mail analytic	14	view_mailanalytic
57	Can add admin access analytic	15	add_adminaccessanalytic
58	Can change admin access analytic	15	change_adminaccessanalytic
59	Can delete admin access analytic	15	delete_adminaccessanalytic
60	Can view admin access analytic	15	view_adminaccessanalytic
61	Can add preference analytic	16	add_preferenceanalytic
62	Can change preference analytic	16	change_preferenceanalytic
63	Can delete preference analytic	16	delete_preferenceanalytic
64	Can view preference analytic	16	view_preferenceanalytic
65	Can add unsubscription analytic	17	add_unsubscriptionanalytic
66	Can change unsubscription analytic	17	change_unsubscriptionanalytic
67	Can delete unsubscription analytic	17	delete_unsubscriptionanalytic
68	Can view unsubscription analytic	17	view_unsubscriptionanalytic
69	Can add service detail	18	add_servicedetail
70	Can change service detail	18	change_servicedetail
71	Can delete service detail	18	delete_servicedetail
72	Can view service detail	18	view_servicedetail
73	Can add domain detail	19	add_domaindetail
74	Can change domain detail	19	change_domaindetail
75	Can delete domain detail	19	delete_domaindetail
76	Can view domain detail	19	view_domaindetail
77	Can add program detail	20	add_programdetail
78	Can change program detail	20	change_programdetail
79	Can delete program detail	20	delete_programdetail
80	Can view program detail	20	view_programdetail
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$a3IJAPwADoLfuSicjE41R8$tr+zim1BiYOBMXmJ+7PKVc8WSp826BaSPNw+IoohYKs=	2022-01-30 17:26:34.296608+05:30	t	admin			simuchand.balachandran@gmail.com	t	t	2022-01-14 13:20:12.303078+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_blogdetail; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.blog_blogdetail (id, "bID", "bBanner", "bTitle", "bDes", "bAuthor", "bStatus", pub_date, upd_date, "bStat", "bCon", "bTags") FROM stdin;
\.


--
-- Data for Name: contact_clients; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.contact_clients (client_id, client_name, client_mail, client_request, client_quote, org_name, org_web, request_time) FROM stdin;
htm-cl-30-3787	Simuchand	simuchand.balachandran@gmail.com	total-care	1000	HTM	healtentmedia.com	Mon Jan 31 2022 00:25:11 GMT+0530 (India Standard Time)
htm-cl-04-4510	HTM	vishalkna25@gmail.com	total-care	1000	HTM		Fri Feb 04 2022 22:54:33 GMT+0530 (India Standard Time)
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-01-14 14:28:23.819545+05:30	htm-S01	ServiceDetail object (htm-S01)	1	[{"added": {}}]	18	1
2	2022-01-14 14:29:10.763577+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain"]}}]	18	1
3	2022-01-14 14:29:48.1803+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain"]}}]	18	1
4	2022-01-14 14:30:31.467066+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain"]}}]	18	1
5	2022-01-14 19:29:43.341367+05:30	htm-S01	ServiceDetail object (htm-S01)	1	[{"added": {}}]	18	1
6	2022-01-14 19:30:24.322671+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_request_url"]}}]	18	1
7	2022-01-14 19:30:46.388406+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_request_url"]}}]	18	1
8	2022-01-14 19:31:14.372661+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain", "Service_request_url"]}}]	18	1
9	2022-01-14 19:31:27.01274+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_domain"]}}]	18	1
10	2022-01-14 19:31:41.230414+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_domain"]}}]	18	1
11	2022-01-14 19:47:30.898695+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_btn_text"]}}]	18	1
12	2022-01-14 19:48:11.167875+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_btn_text"]}}]	18	1
13	2022-01-14 19:48:33.355286+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_btn_text"]}}]	18	1
14	2022-01-14 19:49:30.343664+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_btn_text"]}}]	18	1
15	2022-01-14 19:50:55.528288+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_request_url"]}}]	18	1
16	2022-01-14 20:22:59.751777+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
17	2022-01-15 08:10:33.150085+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
18	2022-01-15 08:42:55.366622+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
19	2022-01-15 08:47:11.660576+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
20	2022-01-15 08:53:50.94103+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
21	2022-01-15 09:07:21.775269+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
22	2022-01-15 11:38:43.553645+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
23	2022-01-15 13:07:42.465738+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_description"]}}]	18	1
24	2022-01-15 14:15:31.874698+05:30	htm-S01	ServiceDetail object (htm-S01)	1	[{"added": {}}]	18	1
25	2022-01-15 14:15:54.044798+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain"]}}]	18	1
26	2022-01-15 14:16:36.562819+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain", "Service_btn_text"]}}]	18	1
27	2022-01-15 14:16:49.548559+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_btn_text"]}}]	18	1
28	2022-01-15 14:17:14.437775+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_name", "Service_id", "Service_domain", "Service_btn_text"]}}]	18	1
29	2022-01-15 14:18:27.368864+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_request_url"]}}]	18	1
30	2022-01-15 14:18:36.480465+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_request_url"]}}]	18	1
31	2022-01-15 14:18:45.973461+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_request_url"]}}]	18	1
32	2022-01-15 14:27:00.6854+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
33	2022-01-15 21:20:47.793685+05:30	htm-S01-D1	DomainDetail object (htm-S01-D1)	1	[{"added": {}}]	19	1
34	2022-01-15 21:22:57.149195+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_list", "Domain_request_url"]}}]	19	1
35	2022-01-22 23:23:51.070811+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_description"]}}]	18	1
36	2022-01-22 23:45:39.118525+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
37	2022-01-23 00:24:59.544887+05:30	htm-S01-D1	DomainDetail object (htm-S01-D1)	2	[{"changed": {"fields": ["Domain_list"]}}]	19	1
38	2022-01-23 00:31:22.020683+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_list"]}}]	19	1
39	2022-01-23 00:35:51.457546+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
40	2022-01-23 00:41:14.200857+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
41	2022-01-23 00:46:59.514897+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_page_title"]}}]	19	1
42	2022-01-23 00:50:43.813657+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_description"]}}]	19	1
43	2022-01-23 00:52:24.668124+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_description"]}}]	19	1
44	2022-01-23 00:53:04.535654+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_description"]}}]	19	1
45	2022-01-25 20:18:01.209086+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[]	19	1
46	2022-01-25 20:39:31.494627+05:30	htm-S01-D2	DomainDetail object (htm-S01-D2)	2	[{"changed": {"fields": ["Domain_description"]}}]	19	1
47	2022-01-25 20:52:58.808955+05:30	htm-S01-D1	DomainDetail object (htm-S01-D1)	2	[{"changed": {"fields": ["Domain_page_title"]}}]	19	1
48	2022-01-25 21:01:51.453582+05:30	htm-S01-D1	DomainDetail object (htm-S01-D1)	2	[{"changed": {"fields": ["Domain_description"]}}]	19	1
49	2022-01-25 21:02:19.493556+05:30	htm-S01-D1	DomainDetail object (htm-S01-D1)	2	[]	19	1
50	2022-01-25 21:02:57.585004+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_request_url"]}}]	18	1
51	2022-01-25 21:12:50.300109+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
52	2022-01-25 21:19:28.479912+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
53	2022-01-25 21:21:17.062778+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
54	2022-01-25 21:26:20.230951+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_page_title"]}}]	18	1
55	2022-01-25 21:28:32.726732+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
56	2022-01-25 21:31:23.770481+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_cta_text"]}}]	18	1
57	2022-01-25 21:31:35.532883+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_btn_text"]}}]	18	1
58	2022-01-25 21:32:06.705998+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_cta_text"]}}]	18	1
59	2022-01-25 22:18:00.47403+05:30	htm-S02-D1	DomainDetail object (htm-S02-D1)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_service", "Domain_list", "Domain_request_url"]}}]	19	1
60	2022-01-25 22:21:06.514664+05:30	htm-S02-D2	DomainDetail object (htm-S02-D2)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_list", "Domain_request_url"]}}]	19	1
61	2022-01-25 22:22:48.8135+05:30	htm-S02-D3	DomainDetail object (htm-S02-D3)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_list", "Domain_request_url"]}}]	19	1
62	2022-01-25 22:32:08.824759+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_cta_text"]}}]	18	1
63	2022-01-25 22:34:48.369719+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
64	2022-01-25 22:39:24.686651+05:30	htm-S03-D1	DomainDetail object (htm-S03-D1)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_list", "Domain_request_url"]}}]	19	1
65	2022-01-25 22:39:52.432205+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
66	2022-01-25 22:42:44.922153+05:30	htm-S03-D2	DomainDetail object (htm-S03-D2)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_service", "Domain_list", "Domain_request_url"]}}]	19	1
67	2022-01-25 22:42:58.139691+05:30	htm-S03-D1	DomainDetail object (htm-S03-D1)	2	[{"changed": {"fields": ["Domain_service"]}}]	19	1
68	2022-01-25 22:47:28.037741+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
69	2022-01-25 22:49:30.850973+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[{"changed": {"fields": ["Service_list"]}}]	18	1
70	2022-01-25 22:50:32.011339+05:30	htm-S04	ServiceDetail object (htm-S04)	2	[]	18	1
71	2022-01-25 22:54:33.472577+05:30	htm-S04-D1	DomainDetail object (htm-S04-D1)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_service", "Domain_request_url"]}}]	19	1
72	2022-01-25 22:55:11.784874+05:30	htm-S04-D2	DomainDetail object (htm-S04-D2)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_request_url"]}}]	19	1
73	2022-01-25 22:55:37.394146+05:30	htm-S04-D3	DomainDetail object (htm-S04-D3)	2	[{"changed": {"fields": ["Domain_name", "Domain_id", "Domain_request_url"]}}]	19	1
74	2022-01-25 22:59:08.104733+05:30	htm-S04-D1	DomainDetail object (htm-S04-D1)	2	[{"changed": {"fields": ["Domain_list"]}}]	19	1
75	2022-01-25 23:22:06.353872+05:30	htm-S04-D2	DomainDetail object (htm-S04-D2)	2	[{"changed": {"fields": ["Domain_list"]}}]	19	1
76	2022-01-25 23:22:51.422085+05:30	htm-S04-D3	DomainDetail object (htm-S04-D3)	2	[{"changed": {"fields": ["Domain_list"]}}]	19	1
77	2022-01-26 16:12:28.238806+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_page_title"]}}]	18	1
78	2022-01-26 16:21:06.083074+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[]	18	1
79	2022-01-26 16:37:19.890919+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_page_script"]}}]	18	1
80	2022-01-26 17:16:04.632106+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_page_script"]}}]	18	1
81	2022-01-28 11:29:06.798917+05:30	htm-P01	ProgramDetail object (htm-P01)	1	[{"added": {}}]	20	1
82	2022-01-28 11:38:27.116691+05:30	htm-P01	ProgramDetail object (htm-P01)	3		20	1
83	2022-01-28 11:43:08.50736+05:30	htm-P01	ProgramDetail object (htm-P01)	1	[{"added": {}}]	20	1
84	2022-01-28 11:44:47.199569+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_page_title", "Program_name", "Program_id", "Program_status", "Program_request_url"]}}]	20	1
85	2022-01-28 12:25:09.851509+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
86	2022-01-28 12:25:18.392573+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
87	2022-01-28 12:58:54.176284+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
88	2022-01-28 13:00:28.197835+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[]	20	1
89	2022-01-28 14:22:07.144592+05:30	htm-P02	ProgramDetail object (htm-P02)	3		20	1
90	2022-01-28 14:22:07.149204+05:30	htm-P01	ProgramDetail object (htm-P01)	3		20	1
91	2022-01-28 14:51:07.680285+05:30	htm-P01	ProgramDetail object (htm-P01)	1	[{"added": {}}]	20	1
92	2022-01-28 14:51:37.127617+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_page_title", "Program_name", "Program_id"]}}]	20	1
93	2022-01-28 14:52:35.494131+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_request_url"]}}]	20	1
94	2022-01-28 14:53:07.644476+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
95	2022-01-28 14:53:27.647834+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
96	2022-01-28 14:53:34.692128+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[]	20	1
97	2022-01-28 14:53:44.24997+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
98	2022-01-28 15:36:32.11297+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
99	2022-01-28 15:42:44.092092+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
100	2022-01-28 15:46:05.760738+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
101	2022-01-28 15:52:29.807818+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
102	2022-01-28 15:59:37.71625+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
103	2022-01-28 16:01:09.496891+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
104	2022-01-28 16:05:53.572446+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
105	2022-01-28 22:57:30.247382+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_description"]}}]	20	1
106	2022-01-28 23:03:24.015519+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_page_script"]}}]	20	1
107	2022-01-28 23:04:57.971829+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
108	2022-01-28 23:06:29.414504+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
109	2022-01-28 23:14:50.142591+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
110	2022-01-28 23:20:02.894836+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
111	2022-01-28 23:42:13.068851+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_icon", "Program_banner"]}}]	20	1
112	2022-01-29 12:30:21.327702+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_review"]}}]	20	1
113	2022-01-29 12:30:49.415262+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
114	2022-01-29 15:16:32.387115+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_icon", "Program_banner"]}}]	20	1
115	2022-01-29 15:17:07.668792+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_icon", "Program_banner"]}}]	20	1
116	2022-01-29 15:17:33.995801+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_icon", "Program_banner"]}}]	20	1
117	2022-01-29 19:44:22.37924+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_page_script", "Program_description"]}}]	20	1
118	2022-01-29 19:45:26.335115+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
119	2022-01-29 19:51:03.711105+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_content"]}}]	20	1
120	2022-01-29 19:55:23.922379+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_content", "Program_news"]}}]	20	1
121	2022-01-29 19:56:35.228165+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_status", "Program_stat"]}}]	20	1
122	2022-01-29 19:57:29.183055+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
123	2022-01-29 19:57:47.347089+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
124	2022-01-29 19:58:27.670581+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[]	20	1
125	2022-01-29 19:59:42.873143+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
126	2022-01-29 20:04:19.847785+05:30	htm-P01	ProgramDetail object (htm-P01)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
127	2022-01-29 20:06:14.455897+05:30	htm-P02	ProgramDetail object (htm-P02)	2	[{"changed": {"fields": ["Program_news"]}}]	20	1
128	2022-02-03 21:15:03.796265+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_page_script"]}}]	18	1
129	2022-02-04 20:48:11.142588+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
130	2022-02-04 20:52:43.524288+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
131	2022-02-04 20:53:17.669282+05:30	htm-S02	ServiceDetail object (htm-S02)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
132	2022-02-04 20:56:04.03227+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
133	2022-02-04 21:11:25.16178+05:30	htm-S03	ServiceDetail object (htm-S03)	2	[{"changed": {"fields": ["Service_usp"]}}]	18	1
134	2022-02-04 22:33:08.527047+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Landing_icon"]}}]	18	1
135	2022-02-04 22:34:04.573264+05:30	htm-S01	ServiceDetail object (htm-S01)	2	[{"changed": {"fields": ["Service_icon"]}}]	18	1
136	2022-02-04 22:35:48.298058+05:30	htm-S01-D1	DomainDetail object (htm-S01-D1)	2	[{"changed": {"fields": ["Service_icon"]}}]	19	1
137	2022-02-05 16:27:49.735741+05:30	1	http://127.0.0.1:8000	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	7	1
138	2022-02-05 16:28:16.187379+05:30	1	127.0.0.1:8000	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	7	1
139	2022-02-05 18:28:48.603416+05:30	htm-ms-05-1133	MailSubscriber object (htm-ms-05-1133)	2	[{"changed": {"fields": ["Verification_status", "Unsubscribed_timestamp"]}}]	8	1
140	2022-02-05 18:32:17.922406+05:30	htm-ms-05-1133	MailSubscriber object (htm-ms-05-1133)	2	[{"changed": {"fields": ["Verification_status"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site
8	index	mailsubscriber
9	index	serviceslist
10	index	teamdetails
11	blog	blogdetail
12	contact	clients
13	maillytics	campaigndetail
14	maillytics	mailanalytic
15	subscriberanalytics	adminaccessanalytic
16	subscriberanalytics	preferenceanalytic
17	subscriberanalytics	unsubscriptionanalytic
18	services	servicedetail
19	services	domaindetail
20	programs	programdetail
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-01-03 19:27:20.347596+05:30
2	auth	0001_initial	2022-01-03 19:27:20.415774+05:30
3	admin	0001_initial	2022-01-03 19:27:20.434876+05:30
4	admin	0002_logentry_remove_auto_add	2022-01-03 19:27:20.44176+05:30
5	admin	0003_logentry_add_action_flag_choices	2022-01-03 19:27:20.450911+05:30
6	contenttypes	0002_remove_content_type_name	2022-01-03 19:27:20.465159+05:30
7	auth	0002_alter_permission_name_max_length	2022-01-03 19:27:20.472392+05:30
8	auth	0003_alter_user_email_max_length	2022-01-03 19:27:20.481908+05:30
9	auth	0004_alter_user_username_opts	2022-01-03 19:27:20.489314+05:30
10	auth	0005_alter_user_last_login_null	2022-01-03 19:27:20.496644+05:30
11	auth	0006_require_contenttypes_0002	2022-01-03 19:27:20.498867+05:30
12	auth	0007_alter_validators_add_error_messages	2022-01-03 19:27:20.50643+05:30
13	auth	0008_alter_user_username_max_length	2022-01-03 19:27:20.517312+05:30
14	auth	0009_alter_user_last_name_max_length	2022-01-03 19:27:20.525604+05:30
15	auth	0010_alter_group_name_max_length	2022-01-03 19:27:20.53419+05:30
16	auth	0011_update_proxy_permissions	2022-01-03 19:27:20.542337+05:30
17	auth	0012_alter_user_first_name_max_length	2022-01-03 19:27:20.551287+05:30
18	blog	0001_initial	2022-01-03 19:27:20.560616+05:30
19	contact	0001_initial	2022-01-03 19:27:20.572106+05:30
20	index	0001_initial	2022-01-03 19:27:20.60231+05:30
21	maillytics	0001_initial	2022-01-03 19:27:20.621178+05:30
22	sessions	0001_initial	2022-01-03 19:27:20.634418+05:30
23	sites	0001_initial	2022-01-03 19:27:20.640879+05:30
24	sites	0002_alter_domain_unique	2022-01-03 19:27:20.648211+05:30
25	subscriberanalytics	0001_initial	2022-01-03 19:27:20.669195+05:30
26	services	0001_initial	2022-01-14 13:18:11.906407+05:30
27	services	0002_domaindetail	2022-01-15 20:59:31.604264+05:30
28	programs	0001_initial	2022-01-28 11:13:33.997314+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
obb6eqp8095nyoqk8fmr0n7146nmqv5v	.eJxVjDsOwjAQBe_iGlm7sb2OKek5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmzQHH63QLHR247SHdut1nGua3LFOSuyIN2eZ1Tfl4O9--gcq_fehyMAiDSGgOljAqjsWCRlHWgYlFAbAqYmELS2kYmZHbFKDsEcqMV7w-kxzap:1n8HLz:NJEUeqbOv8Pge84lJgw_pqYzmvUgdDSr-vIGFiS-F48	2022-01-28 13:20:31.020249+05:30
wptt8657r8ok0xgid83asyzc7hqyxa7q	.eJxVjDsOwjAQBe_iGlm7sb2OKek5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmzQHH63QLHR247SHdut1nGua3LFOSuyIN2eZ1Tfl4O9--gcq_fehyMAiDSGgOljAqjsWCRlHWgYlFAbAqYmELS2kYmZHbFKDsEcqMV7w-kxzap:1nDMyn:ySLMTvx39P38m-fSXkKCweZ6h4BfWSWIv4XFXJuTfTQ	2022-02-11 14:21:37.058876+05:30
l8yfxq9lp58fg4egzr7y834bu3s2ywv8	.eJxVjDsOwjAQBe_iGlm7sb2OKek5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmzQHH63QLHR247SHdut1nGua3LFOSuyIN2eZ1Tfl4O9--gcq_fehyMAiDSGgOljAqjsWCRlHWgYlFAbAqYmELS2kYmZHbFKDsEcqMV7w-kxzap:1nE8os:nw3fE3vQ5ISiMubu7vKGUZfbPe3iSBKOwmCFm3eDmDM	2022-02-13 17:26:34.29951+05:30
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.django_site (id, domain, name) FROM stdin;
1	127.0.0.1:8000	127.0.0.1:8000
\.


--
-- Data for Name: index_mailsubscriber; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.index_mailsubscriber (ms_id, ms_mail, ms_verification_status, ms_mail_verify_hash, ms_unsubscribe_hash, ms_preference_hash, ms_info_mail_status, ms_promotional_mail_status, ms_update_mail_status, ms_sub_status, ms_sub_date, ms_unsub_date) FROM stdin;
htm-ms-04-8921	simu@gmail.com	f	2hce83cd-qBef6449608100ce90030	1t5da77eg281ee41Xja33fb34ecb65	n2392d5bAINc008J4Rbb3b8adca0c1	t	t	t	t	2022-02-04	\N
htm-ms-04-9088	test@gmail.com	f	460c750cAyNe0870f6b9030daffde8	n1b9b1fct6t84983563df5a7ede252	1TTa6a200-u6d2ahs36c6d81c6c4a5	t	t	t	t	2022-02-04	\N
htm-ms-05-1133	simuchand.balachandran@gmail.com	t	w43ab8653Pxeee4Q7U31fb4c4f52b8	7U609153X9_16d3uOib6276cf85973	_4y2e09e3sA85410nYb754115d8f36	t	f	t	f	2022-02-05	2022-02-05
\.


--
-- Data for Name: maillytics_campaigndetail; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.maillytics_campaigndetail (cid, cname, cdate, ca, ba, htma) FROM stdin;
\.


--
-- Data for Name: maillytics_mailanalytic; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.maillytics_mailanalytic (cid, tid, open, date, "time", ca, ba, htma) FROM stdin;
\.


--
-- Data for Name: programs_programdetail; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.programs_programdetail (pro_page_title, pro_page_keyword, pro_page_script, pro_name, pro_id, pro_status, pro_desc, pro_ic, pro_banner, pro_cnt, pro_news, pro_stat, pro_rev, pro_req_url) FROM stdin;
Valarchi - Accelerate your Future | Heal Tent Programs	Heal Tent Media	{"name": "Valarchi - Accelerate your Future | Heal Tent Programs", "@type": "Course", "image": "https://healtentmedia.com/assets/images/logo/healtent-text-logo-large.png", "author": {"name": "Heal Tent Media", "@type": "Organization"}, "@context": "http://schema.org", "dateCreated": "2022-01-28", "description": "Valarchi - Accelerate your future, Training and Internship programs powered by Heal Tent Media. We help you understand the actual industry standards.", "dateModified": "2022-01-28", "datePublished": "2022-01-28", "countryOfOrigin": {"name": "India", "@type": "Country"}, "hasCourseInstance": {"@type": "CourseInstance", "endDate": "2022-01-28", "startDate": "2022-01-28", "courseMode": "online"}}	Valarchi	htm-P01	false	Valarchi - Accelerate your future, Training and Internship programs powered by Heal Tent Media. We help you understand the actual industry standards.	https://htm-master-website.s3.amazonaws.com/programme-page/valarchi'21/logo.png	https://htm-master-website.s3.amazonaws.com/programme-page/valarchi'21/banner.jpeg	Valarchi - Accelerate your future, Training and Internship programs powered by Heal Tent Media. Valarchi is a uniquely structured program that help you understand the actual industry requirements and standards. <br><br> Meet like minded people and build a like minded community. Acquire skills, master it and monetize them in your own way.	{"date": "Feb 05 - Feb 06", "status": "Upcoming", "content": "Internship and Training programs.<br><br>GET INDUSTRY EXPERIENCE", "cta_btn_text": "Get Experience", "register_url": "https://buy.stripe.com/8wMcOAgqBfZubWoeUV"}	{"people": "200+", "rating": "4.9", "session": "5"}	{"1": {"name": "Vishal Kanna", "review": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iustoasperiores debitis incidunt, eius earum ipsam cupiditate libero? Iste, doloremque nihil?", "ratting": "1111"}, "2": {"name": "Simuchand B", "review": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iustoasperiores debitis incidunt, eius earum ipsam cupiditate libero? Iste, doloremque nihil?", "ratting": "11111"}, "3": {"name": "Vishal Kanna", "review": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iustoasperiores debitis incidunt, eius earum ipsam cupiditate libero? Iste, doloremque nihil?", "ratting": "1111"}}	valarchi
ReThink with Simuchand | Heal Tent Programs	Heal Tent Media	{"name": "ReThink with Simuchand | Heal Tent Programs", "@type": "Course", "image": "https://healtentmedia.com/assets/images/logo/healtent-text-logo-large.png", "author": {"name": "Heal Tent Media", "@type": "Organization"}, "@context": "http://schema.org", "dateCreated": "2022-01-28", "description": "Failure is also success. ReThink with Simuchand is a life changing acceleration program that focuses on helping individuals to re-design their life.", "dateModified": "2022-01-28", "datePublished": "2022-01-28", "countryOfOrigin": {"name": "India", "@type": "Country"}, "hasCourseInstance": {"@type": "CourseInstance", "endDate": "2022-01-28", "startDate": "2022-01-28", "courseMode": "online"}}	ReThink with Simuchand	htm-P02	true	Failure is also success. ReThink with Simuchand is a life changing acceleration program that focuses on helping individuals to re-design their life.	https://htm-master-website.s3.amazonaws.com/programme-page/rethink-with-simuchand/logo.png	https://htm-master-website.s3.amazonaws.com/programme-page/rethink-with-simuchand/banner.jpeg	Failure is also success. ReThink with Simuchand is a life changing acceleration program that focuses on helping individuals to re-design their life. ReThink, understand and ReDesign to lead a successful life.<br><br>We have already impacted  hundreds of individuals and already they are witnessing a change in their life. You can be also crack your life and improve your living standards.	{"date": "Feb 11 - Feb 12", "status": "Upcoming", "content": "You don’t need motivation to become successful.<br><br><b>LIFE CHANGING ACCELERATION PROGRAM</b>", "cta_btn_text": "Experience Growth", "register_url": "https://buy.stripe.com/8wMcOAgqBfZubWoeUV"}	{"people": "250+", "rating": "4.85", "session": "5"}	{"1": {"name": "Vishal Kanna", "review": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iustoasperiores debitis incidunt, eius earum ipsam cupiditate libero? Iste, doloremque nihil?", "ratting": "1111"}, "2": {"name": "Simuchand B", "review": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iustoasperiores debitis incidunt, eius earum ipsam cupiditate libero? Iste, doloremque nihil?", "ratting": "11111"}, "3": {"name": "Vishal Kanna", "review": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iustoasperiores debitis incidunt, eius earum ipsam cupiditate libero? Iste, doloremque nihil?", "ratting": "1111"}}	rethink-with-simuchand
\.


--
-- Data for Name: services_domaindetail; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.services_domaindetail (dm_page_title, dm_page_keyword, dm_page_script, dm_name, dm_id, dm_svc, svc_ic, dm_desc, dm_list, dm_req_url) FROM stdin;
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Business Research	htm-S01-D2	Heal Tent Total Care	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Market Analysis"}, "2": {"title": "Consumer Analysis"}, "3": {"title": "Business Analysis"}, "4": {"title": "Competition Analysis"}}	business-research
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Design Creator	htm-S03-D2	Heal Tent Creator	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Logo Design"}, "2": {"title": "Poster Design"}, "3": {"title": "Video Creations"}}	design-creator
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Content Creator	htm-S03-D1	Heal Tent Creator	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Copywriting"}, "2": {"title": "Product Description"}, "3": {"title": "Social Media Post"}, "4": {"title": "Blog Post"}, "5": {"title": "Technical Content"}}	content-creator
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Social Media Marketing	htm-S02-D1	Heal Tent Digital	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Paid Ads"}, "2": {"title": "Social Media Handle Management"}}	social-media-marketing
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Website Audit	htm-S02-D2	Heal Tent Digital	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "On-page SEO Audit"}, "2": {"title": "Off-page SEO Audit"}, "3": {"title": "Technical Audit"}}	website-audit
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Development	htm-S02-D3	Heal Tent Digital	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Website Development"}, "2": {"title": "App Development"}, "3": {"title": "Software Development"}}	development
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Corporate Re-Defined	htm-S04-D2	Heal Tent ReThink	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Leadership Training"}, "2": {"title": "Management Training"}}	corporate-redefined
Business Management - Growth Manager | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Business Management	htm-S01-D1	Heal Tent Total Care	https://htm-master-website.s3.amazonaws.com/service-page-assets/totalcare/logo.png	A dedicated and productive manager is vital for your companies success. Manage like pro with our dedicated manager to help you scale your business.	{"1": {"title": "Brand Management"}, "2": {"title": "Advertisement Workloads"}, "3": {"title": "HR Management"}}	business-management
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Well-being Re-Defined	htm-S04-D1	Heal Tent ReThink	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Physical Wellbeing"}, "2": {"title": "Emotional Wellbeing"}, "3": {"title": "Financial Wellbeing"}, "4": {"title": "Relational Wellbeing"}, "5": {"title": "Vocational Wellbeing"}, "6": {"title": "Spiritual Wellbeing"}}	wellbeing-redefined
Business Research - Understand Data | Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Personal Re-Defined	htm-S04-D3	Heal Tent ReThink	https://healtentmedia.com	Understand your business data, strategize accordingly, implement on time and witness 10x results. Data does magic when understood and we do just that.	{"1": {"title": "Industry Ready Program"}, "2": {"title": "Profiling Building"}}	personal-redefined
\.


--
-- Data for Name: services_servicedetail; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.services_servicedetail (svc_page_title, svc_page_keyword, svc_page_script, svc_name, svc_id, svc_desc, svc_domain, svc_ic, svc_landing_ic, svc_cta_text, svc_btn_text, svc_usp, svc_list, svc_req_url) FROM stdin;
Manage your business with ease - Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Heal Tent ReThink	htm-S04	We follow a simple yet effect workflow to make your brand one among the elites in your domain. Our aim is providing you the best possible solution.	Corporate Training	https://healtentmedia.com	https://healtentmedia.com	<span class="tx-hi-green">MANAGEMENT</span><br>Workloads<br><span class="tx-hi-green">Made Easy</span>	Schedule Reboot	{"01": {"title": "We Research", "content": "We empathize your brand and potential consumer to level up your brand. Heal Tent want's your brand to become successful that's why we emphasize your growth."}, "02": {"title": "We Research", "content": "We empathize your brand and potential consumer to level up your brand. Heal Tent want's your brand to become successful that's why we emphasize your growth."}, "03": {"title": "We Research", "content": "We empathize your brand and potential consumer to level up your brand. Heal Tent want's your brand to become successful that's why we emphasize your growth."}}	{"1": {"domain_url": "wellbeing-redefined", "domain_desc": "Manage your workflows like a pro, get impact reports from your Heal Tent Manager. Be it launch of your product, resource management and tracking your customer we our your choice.", "domain_title": "Well-being Re-Defined"}, "2": {"domain_url": "corporate-redefined", "domain_desc": "Understanding data is a crucial part for any business to increase your performance and get more sales and customers. Get dedicated and detailed reports on each parameter.", "domain_title": "Corporate Re-Defined"}, "3": {"domain_url": "personal-redefined", "domain_desc": "Understanding data is a crucial part for any business to increase your performance and get more sales and customers. Get dedicated and detailed reports on each parameter.", "domain_title": "Personal Re-Defined"}}	heal-tent-rethink
Manage your business with ease - Heal Tent Total Care	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Heal Tent Creator	htm-S03	We follow a simple yet effect workflow to make your brand one among the elites in your domain. Our aim is providing you the best possible solution.	Content & Design	https://healtentmedia.com	https://healtentmedia.com	<span class="tx-hi-green">CREATE</span><br>Your Dream<br><span class="tx-hi-green">Into Reality</span>	Get Your Creator	{"01": {"title": "Personalized Creation", "content": "We don't copy paste. Get your personalized creations quick and go viral. Making impact with a difference is our trade mark."}, "02": {"title": "Interest-based Creation", "content": "We put your consumers/customers/followers firt before we create. Get the on-demand interest-based creations with Heal Tent Creator."}, "03": {"title": "Professional Creation", "content": "We belive in quality over quantity. Standards are never compromized, our creation are elite."}}	{"1": {"domain_url": "content-creator", "domain_desc": "Manage your workflows like a pro, get impact reports from your Heal Tent Manager. Be it launch of your product, resource management and tracking your customer we our your choice.", "domain_title": "Content"}, "2": {"domain_url": "design-creator", "domain_desc": "Understanding data is a crucial part for any business to increase your performance and get more sales and customers. Get dedicated and detailed reports on each parameter.", "domain_title": "Design"}}	heal-tent-creator
Go digital and transform your business - Heal Tent Digital	Heal Tent Media	{"Business Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}, "Research Management": {"domain_url": "business-management", "domain_desc": "Management made easy with Heal Tent Total Care. You pay for only what we provide no more no less."}}	Heal Tent Digital	htm-S02	We follow a simple yet effect workflow to make your brand one among the elites in your domain. Our aim is providing you the best possible solution.	Digital Transformation	https://healtentmedia.com	https://healtentmedia.com	<span class="tx-hi-blue">TRANSFORM</span><br>your business<br><span class="tx-hi-blue">Digitally</span>	Go Digital	{"01": {"title": "Go Digital", "content": "The world is consuming internet make use of the digital space. Take your business online with our quick-to-market strategy."}, "02": {"title": "Make Global Impact", "content": "Get your business/brand/product recoginized in a global stage for bigger and better impact. Your professional business profile/product in now simple."}, "03": {"title": "Grow 10x", "content": "With well standardized branding strategy get more sales and customers."}}	{"1": {"domain_url": "social-media-marketing", "domain_desc": "Manage your workflows like a pro, get impact reports from your Heal Tent Manager. Be it launch of your product, resource management and tracking your customer we our your choice.", "domain_title": "Social Media Marketing"}, "2": {"domain_url": "website-audit", "domain_desc": "Understanding data is a crucial part for any business to increase your performance and get more sales and customers. Get dedicated and detailed reports on each parameter.", "domain_title": "Website Audit"}, "3": {"domain_url": "development", "domain_desc": "Understanding data is a crucial part for any business to increase your performance and get more sales and customers. Get dedicated and detailed reports on each parameter.", "domain_title": "Development"}}	heal-tent-digital
Manage your business with ease | Heal Tent Total Care	Heal Tent Media	{"@type": "Service", "@context": "http://schema.org/", "provider": {"name": "Heal Tent Media", "@type": "Organization"}, "serviceType": "Management & Research Services", "hasOfferCatalog": {"name": "Heal Tent Media", "@type": "OfferCatalog", "itemListElement": [{"name": "Business Management", "@type": "OfferCatalog", "itemListElement": [{"@type": "Offer", "itemOffered": {"name": "Brand Management", "@type": "Service"}}, {"@type": "Offer", "itemOffered": {"name": "Advertisement Workloads", "@type": "Service"}}, {"@type": "Offer", "itemOffered": {"name": "HR Management", "@type": "Service"}}]}, {"name": "Research Management", "@type": "OfferCatalog", "itemListElement": [{"@type": "Offer", "itemOffered": {"name": "Market Analysis", "@type": "Service"}}, {"@type": "Offer", "itemOffered": {"name": "Consumer Analysis", "@type": "Service"}}, {"@type": "Offer", "itemOffered": {"name": "Business Analysis", "@type": "Service"}}, {"@type": "Offer", "itemOffered": {"name": "Competition Analysis", "@type": "Service"}}]}]}}	Heal Tent Total Care	htm-S01	Focus on the core of your business. Leave the rest to us. We assure you total care for all your management workloads.	Management & Research	https://htm-master-website.s3.amazonaws.com/service-page-assets/totalcare/logo.png	https://htm-master-website.s3.amazonaws.com/character-assests/character-totalcare.png	<span class="tx-hi-green">MANAGEMENT</span><br>Workloads<br><span class="tx-hi-green">Made Easy</span>	Get Your Manager	{"01": {"title": "Total Care", "content": "Get the best possible care for your business that will boost your business 10x. Care promised on all aspects."}, "02": {"title": "Dedicated Manager", "content": "Heal Tent Manager is your business growth hacker to give you more sales and customers. Manager who understand."}, "03": {"title": "Impact Reports", "content": "Heal Tent Impact Report to help you understand of what is happening and how it's affecting your business growth."}}	{"1": {"domain_url": "business-management", "domain_desc": "Manage your workflows like a pro, get impact reports from your Heal Tent Manager. Be it launch of your product, resource management and tracking your customer we our your choice.", "domain_title": "Business Management"}, "2": {"domain_url": "business-research", "domain_desc": "Understanding data is a crucial part for any business to increase your performance and get more sales and customers. Get dedicated and detailed reports on each parameter.", "domain_title": "Research Management"}}	heal-tent-total-care
\.


--
-- Data for Name: subscriberanalytics_adminaccessanalytic; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.subscriberanalytics_adminaccessanalytic (admin_name, admin_id, access_hash, last_req, total_req, req_type) FROM stdin;
\.


--
-- Data for Name: subscriberanalytics_preferenceanalytic; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.subscriberanalytics_preferenceanalytic (pref_id, sub_id, pref_state, pref_date) FROM stdin;
1	htm-ms-05-1133	11211021	2022-02-05
\.


--
-- Data for Name: subscriberanalytics_unsubscriptionanalytic; Type: TABLE DATA; Schema: public; Owner: healtentadmin
--

COPY public.subscriberanalytics_unsubscriptionanalytic (sub_id, uns_reason, uns_comment, uns_date) FROM stdin;
htm-ms-05-1133	unsr-010		2022-02-05
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_blogdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.blog_blogdetail_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 140, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: healtentadmin
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogdetail blog_blogdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.blog_blogdetail
    ADD CONSTRAINT blog_blogdetail_pkey PRIMARY KEY (id);


--
-- Name: contact_clients contact_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.contact_clients
    ADD CONSTRAINT contact_clients_pkey PRIMARY KEY (client_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: index_mailsubscriber index_mailsubscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.index_mailsubscriber
    ADD CONSTRAINT index_mailsubscriber_pkey PRIMARY KEY (ms_id);


--
-- Name: maillytics_campaigndetail maillytics_campaigndetail_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.maillytics_campaigndetail
    ADD CONSTRAINT maillytics_campaigndetail_pkey PRIMARY KEY (cid);


--
-- Name: maillytics_mailanalytic maillytics_mailanalytic_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.maillytics_mailanalytic
    ADD CONSTRAINT maillytics_mailanalytic_pkey PRIMARY KEY (tid);


--
-- Name: programs_programdetail programs_programdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.programs_programdetail
    ADD CONSTRAINT programs_programdetail_pkey PRIMARY KEY (pro_id);


--
-- Name: services_domaindetail services_domaindetail_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.services_domaindetail
    ADD CONSTRAINT services_domaindetail_pkey PRIMARY KEY (dm_id);


--
-- Name: services_servicedetail services_servicedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.services_servicedetail
    ADD CONSTRAINT services_servicedetail_pkey PRIMARY KEY (svc_id);


--
-- Name: subscriberanalytics_adminaccessanalytic subscriberanalytics_adminaccessanalytic_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.subscriberanalytics_adminaccessanalytic
    ADD CONSTRAINT subscriberanalytics_adminaccessanalytic_pkey PRIMARY KEY (admin_id);


--
-- Name: subscriberanalytics_preferenceanalytic subscriberanalytics_preferenceanalytic_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.subscriberanalytics_preferenceanalytic
    ADD CONSTRAINT subscriberanalytics_preferenceanalytic_pkey PRIMARY KEY (pref_id);


--
-- Name: subscriberanalytics_unsubscriptionanalytic subscriberanalytics_unsubscriptionanalytic_pkey; Type: CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.subscriberanalytics_unsubscriptionanalytic
    ADD CONSTRAINT subscriberanalytics_unsubscriptionanalytic_pkey PRIMARY KEY (sub_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: contact_clients_client_id_613c6b79_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX contact_clients_client_id_613c6b79_like ON public.contact_clients USING btree (client_id varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: index_mailsubscriber_ms_id_38874a8d_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX index_mailsubscriber_ms_id_38874a8d_like ON public.index_mailsubscriber USING btree (ms_id varchar_pattern_ops);


--
-- Name: maillytics_campaigndetail_cid_e38089fd_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX maillytics_campaigndetail_cid_e38089fd_like ON public.maillytics_campaigndetail USING btree (cid varchar_pattern_ops);


--
-- Name: maillytics_mailanalytic_tid_269a8195_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX maillytics_mailanalytic_tid_269a8195_like ON public.maillytics_mailanalytic USING btree (tid varchar_pattern_ops);


--
-- Name: programs_programdetail_pro_id_28be9af9_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX programs_programdetail_pro_id_28be9af9_like ON public.programs_programdetail USING btree (pro_id varchar_pattern_ops);


--
-- Name: services_domaindetail_dm_id_eafdd536_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX services_domaindetail_dm_id_eafdd536_like ON public.services_domaindetail USING btree (dm_id varchar_pattern_ops);


--
-- Name: services_servicedetail_svc_id_0f2e3f7f_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX services_servicedetail_svc_id_0f2e3f7f_like ON public.services_servicedetail USING btree (svc_id varchar_pattern_ops);


--
-- Name: subscriberanalytics_adminaccessanalytic_admin_id_837bdd26_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX subscriberanalytics_adminaccessanalytic_admin_id_837bdd26_like ON public.subscriberanalytics_adminaccessanalytic USING btree (admin_id varchar_pattern_ops);


--
-- Name: subscriberanalytics_preferenceanalytic_pref_id_f39634fa_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX subscriberanalytics_preferenceanalytic_pref_id_f39634fa_like ON public.subscriberanalytics_preferenceanalytic USING btree (pref_id varchar_pattern_ops);


--
-- Name: subscriberanalytics_unsubscriptionanalytic_sub_id_d200c864_like; Type: INDEX; Schema: public; Owner: healtentadmin
--

CREATE INDEX subscriberanalytics_unsubscriptionanalytic_sub_id_d200c864_like ON public.subscriberanalytics_unsubscriptionanalytic USING btree (sub_id varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: healtentadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

