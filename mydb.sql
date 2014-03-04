--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO kconfig;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO kconfig;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO kconfig;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO kconfig;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_message; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_message (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.auth_message OWNER TO kconfig;

--
-- Name: auth_message_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_message_id_seq OWNER TO kconfig;

--
-- Name: auth_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_message_id_seq OWNED BY auth_message.id;


--
-- Name: auth_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_message_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO kconfig;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO kconfig;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_permission_id_seq', 39, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO kconfig;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO kconfig;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO kconfig;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO kconfig;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO kconfig;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO kconfig;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO kconfig;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO kconfig;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('django_content_type_id_seq', 13, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO kconfig;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO kconfig;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO kconfig;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: kconfig_hangupcauseresults; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE kconfig_hangupcauseresults (
    id integer NOT NULL,
    result_datetime character varying(30) NOT NULL,
    hangup_cause integer NOT NULL,
    call_count integer NOT NULL
);


ALTER TABLE public.kconfig_hangupcauseresults OWNER TO kconfig;

--
-- Name: kconfig_hangupcauseresults_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE kconfig_hangupcauseresults_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.kconfig_hangupcauseresults_id_seq OWNER TO kconfig;

--
-- Name: kconfig_hangupcauseresults_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE kconfig_hangupcauseresults_id_seq OWNED BY kconfig_hangupcauseresults.id;


--
-- Name: kconfig_hangupcauseresults_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('kconfig_hangupcauseresults_id_seq', 8521, true);


--
-- Name: kconfig_machineinfo; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE kconfig_machineinfo (
    id integer NOT NULL,
    location_id character varying(30) NOT NULL,
    machine_ip character varying(30) NOT NULL,
    freeswitch boolean NOT NULL,
    database boolean NOT NULL,
    incalld boolean NOT NULL,
    outcalld boolean NOT NULL,
    preprocessd boolean NOT NULL,
    postprocessd boolean NOT NULL,
    krpycd boolean NOT NULL,
    krpycd_incalld boolean NOT NULL,
    monit boolean NOT NULL,
    redis boolean NOT NULL,
    rabbitmq boolean NOT NULL,
    apache boolean NOT NULL
);


ALTER TABLE public.kconfig_machineinfo OWNER TO kconfig;

--
-- Name: kconfig_machineinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE kconfig_machineinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.kconfig_machineinfo_id_seq OWNER TO kconfig;

--
-- Name: kconfig_machineinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE kconfig_machineinfo_id_seq OWNED BY kconfig_machineinfo.id;


--
-- Name: kconfig_machineinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('kconfig_machineinfo_id_seq', 17, true);


--
-- Name: kconfig_selftestresults; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE kconfig_selftestresults (
    id integer NOT NULL,
    selftest_type character varying(30) NOT NULL,
    number_associated character varying(30) NOT NULL,
    result boolean NOT NULL,
    totalcalls integer NOT NULL,
    successcalls integer NOT NULL,
    failcalls integer NOT NULL,
    result_time timestamp with time zone NOT NULL
);


ALTER TABLE public.kconfig_selftestresults OWNER TO kconfig;

--
-- Name: kconfig_selftestresults_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE kconfig_selftestresults_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.kconfig_selftestresults_id_seq OWNER TO kconfig;

--
-- Name: kconfig_selftestresults_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE kconfig_selftestresults_id_seq OWNED BY kconfig_selftestresults.id;


--
-- Name: kconfig_selftestresults_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('kconfig_selftestresults_id_seq', 12386, true);


--
-- Name: kconfig_systeminfo; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE kconfig_systeminfo (
    location character varying(30) NOT NULL,
    cluster_ip character varying(30) NOT NULL,
    db_ip character varying(30) NOT NULL,
    rabbit_ip character varying(30) NOT NULL,
    redis_ip character varying(30) NOT NULL,
    release_version character varying(30) NOT NULL
);


ALTER TABLE public.kconfig_systeminfo OWNER TO kconfig;

--
-- Name: kconfig_totalselftest; Type: TABLE; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE TABLE kconfig_totalselftest (
    id integer NOT NULL,
    selftest_type character varying(30) NOT NULL,
    totalcalls character varying(30) NOT NULL,
    successcalls character varying(30) NOT NULL,
    failcalls character varying(30) NOT NULL
);


ALTER TABLE public.kconfig_totalselftest OWNER TO kconfig;

--
-- Name: kconfig_totalselftest_id_seq; Type: SEQUENCE; Schema: public; Owner: kconfig
--

CREATE SEQUENCE kconfig_totalselftest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.kconfig_totalselftest_id_seq OWNER TO kconfig;

--
-- Name: kconfig_totalselftest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kconfig
--

ALTER SEQUENCE kconfig_totalselftest_id_seq OWNED BY kconfig_totalselftest.id;


--
-- Name: kconfig_totalselftest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kconfig
--

SELECT pg_catalog.setval('kconfig_totalselftest_id_seq', 1, false);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_message ALTER COLUMN id SET DEFAULT nextval('auth_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY kconfig_hangupcauseresults ALTER COLUMN id SET DEFAULT nextval('kconfig_hangupcauseresults_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY kconfig_machineinfo ALTER COLUMN id SET DEFAULT nextval('kconfig_machineinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY kconfig_selftestresults ALTER COLUMN id SET DEFAULT nextval('kconfig_selftestresults_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY kconfig_totalselftest ALTER COLUMN id SET DEFAULT nextval('kconfig_totalselftest_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_message (id, user_id, message) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add message	4	add_message
11	Can change message	4	change_message
12	Can delete message	4	delete_message
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add systeminfo	8	add_systeminfo
23	Can change systeminfo	8	change_systeminfo
24	Can delete systeminfo	8	delete_systeminfo
25	Can add machineinfo	9	add_machineinfo
26	Can change machineinfo	9	change_machineinfo
27	Can delete machineinfo	9	delete_machineinfo
28	Can add selftestresults	10	add_selftestresults
29	Can change selftestresults	10	change_selftestresults
30	Can delete selftestresults	10	delete_selftestresults
31	Can add totalselftest	11	add_totalselftest
32	Can change totalselftest	11	change_totalselftest
33	Can delete totalselftest	11	delete_totalselftest
37	Can add hangupcauseresults	13	add_hangupcauseresults
38	Can change hangupcauseresults	13	change_hangupcauseresults
39	Can delete hangupcauseresults	13	delete_hangupcauseresults
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	kadmin			admin@knowlarity.com	sha1$5158f$84abe58d2919161bf68e796db11316b1c1d20cb2	t	t	t	2013-06-20 08:55:49.767002+05:30	2013-06-20 08:55:49.767002+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	message	auth	message
5	content type	contenttypes	contenttype
6	session	sessions	session
7	site	sites	site
8	systeminfo	kconfig	systeminfo
9	machineinfo	kconfig	machineinfo
10	selftestresults	kconfig	selftestresults
11	totalselftest	kconfig	totalselftest
13	hangupcauseresults	kconfig	hangupcauseresults
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: kconfig_hangupcauseresults; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY kconfig_hangupcauseresults (id, result_datetime, hangup_cause, call_count) FROM stdin;
114	2013-09-13 12:00	902	1676
115	2013-09-13 12:00	200	5092
116	2013-09-13 12:00	900	13824
117	2013-09-13 12:00	904	1587
118	2013-09-13 12:00	150	789
119	2013-09-13 12:00	919	427
120	2013-09-13 12:00	926	1783
121	2013-09-13 12:00	916	4194
122	2013-09-13 12:00	911	9024
123	2013-09-13 12:00	913	3087
124	2013-09-13 13:00	902	1656
125	2013-09-13 13:00	200	2113
126	2013-09-13 13:00	900	16091
127	2013-09-13 13:00	904	2285
128	2013-09-13 13:00	919	566
129	2013-09-13 13:00	926	1536
130	2013-09-13 13:00	922	526
131	2013-09-13 13:00	916	4976
132	2013-09-13 13:00	911	8217
133	2013-09-13 13:00	913	5559
134	2013-09-13 15:00	902	1891
135	2013-09-13 15:00	903	441
136	2013-09-13 15:00	900	20664
137	2013-09-13 15:00	904	3809
138	2013-09-13 15:00	150	690
139	2013-09-13 15:00	919	545
140	2013-09-13 15:00	926	995
141	2013-09-13 15:00	922	2150
142	2013-09-13 15:00	916	11460
143	2013-09-13 15:00	935	413
144	2013-09-13 16:00	902	2193
145	2013-09-13 16:00	903	348
146	2013-09-13 16:00	900	19707
147	2013-09-13 16:00	904	3128
148	2013-09-13 16:00	150	1268
149	2013-09-13 16:00	926	1322
150	2013-09-13 16:00	917	327
151	2013-09-13 16:00	916	9971
152	2013-09-13 16:00	922	1531
153	2013-09-13 16:00	935	441
154	2013-09-13 17:00	902	1303
155	2013-09-13 17:00	150	364
156	2013-09-13 17:00	900	16989
157	2013-09-13 17:00	904	2165
158	2013-09-13 17:00	110	359
159	2013-09-13 17:00	914	264
160	2013-09-13 17:00	917	445
161	2013-09-13 17:00	916	7129
162	2013-09-13 17:00	922	741
163	2013-09-13 17:00	926	1008
164	2013-09-13 18:00	902	1643
165	2013-09-13 18:00	903	280
166	2013-09-13 18:00	900	23648
167	2013-09-13 18:00	904	3195
168	2013-09-13 18:00	150	4719
169	2013-09-13 18:00	926	554
170	2013-09-13 18:00	917	510
171	2013-09-13 18:00	916	10088
172	2013-09-13 18:00	922	1758
173	2013-09-13 18:00	935	488
174	2013-09-13 19:00	902	1523
175	2013-09-13 19:00	903	221
176	2013-09-13 19:00	900	20001
177	2013-09-13 19:00	904	2282
178	2013-09-13 19:00	150	4004
179	2013-09-13 19:00	926	424
180	2013-09-13 19:00	917	488
181	2013-09-13 19:00	916	7606
182	2013-09-13 19:00	922	896
183	2013-09-13 19:00	935	435
184	2013-09-13 20:00	902	1685
185	2013-09-13 20:00	903	190
186	2013-09-13 20:00	900	17742
187	2013-09-13 20:00	904	1717
188	2013-09-13 20:00	150	216
189	2013-09-13 20:00	926	350
190	2013-09-13 20:00	917	350
191	2013-09-13 20:00	916	5894
192	2013-09-13 20:00	922	536
193	2013-09-13 20:00	935	450
194	2013-09-13 21:00	902	1123
195	2013-09-13 21:00	903	108
196	2013-09-13 21:00	900	13000
94	2013-09-13 11:00	902	1479
95	2013-09-13 11:00	200	4403
96	2013-09-13 11:00	900	13348
97	2013-09-13 11:00	904	1713
98	2013-09-13 11:00	150	1521
99	2013-09-13 11:00	919	575
100	2013-09-13 11:00	926	1637
101	2013-09-13 11:00	916	7347
102	2013-09-13 11:00	911	7465
103	2013-09-13 11:00	913	3450
197	2013-09-13 21:00	916	3995
198	2013-09-13 21:00	904	1288
199	2013-09-13 21:00	926	359
200	2013-09-13 21:00	917	204
201	2013-09-13 21:00	930	87
202	2013-09-13 21:00	922	587
203	2013-09-13 21:00	935	350
204	2013-09-13 22:00	902	507
205	2013-09-13 22:00	150	56
206	2013-09-13 22:00	900	6794
207	2013-09-13 22:00	916	1525
208	2013-09-13 22:00	904	607
209	2013-09-13 22:00	926	289
210	2013-09-13 22:00	917	118
211	2013-09-13 22:00	930	66
212	2013-09-13 22:00	922	277
213	2013-09-13 22:00	935	105
214	2013-09-13 23:00	902	127
215	2013-09-13 23:00	150	128
216	2013-09-13 23:00	900	2958
217	2013-09-13 23:00	904	337
218	2013-09-13 23:00	926	128
219	2013-09-13 23:00	703	47
220	2013-09-13 23:00	110	31
221	2013-09-13 23:00	922	138
222	2013-09-13 23:00	916	726
223	2013-09-13 23:00	935	52
224	2013-09-14 00:00	902	55
225	2013-09-14 00:00	150	152
226	2013-09-14 00:00	900	1476
227	2013-09-14 00:00	904	176
228	2013-09-14 00:00	3548	12
229	2013-09-14 00:00	926	54
230	2013-09-14 00:00	917	13
231	2013-09-14 00:00	916	276
232	2013-09-14 00:00	922	66
233	2013-09-14 00:00	935	23
234	2013-09-14 01:00	902	38
235	2013-09-14 01:00	150	145
236	2013-09-14 01:00	900	810
237	2013-09-14 01:00	904	102
238	2013-09-14 01:00	3548	8
239	2013-09-14 01:00	926	40
240	2013-09-14 01:00	917	17
241	2013-09-14 01:00	916	177
242	2013-09-14 01:00	922	20
243	2013-09-14 01:00	500	9
244	2013-09-14 02:00	902	15
245	2013-09-14 02:00	150	36
246	2013-09-14 02:00	900	365
247	2013-09-14 02:00	904	76
248	2013-09-14 02:00	3548	7
249	2013-09-14 02:00	926	17
250	2013-09-14 02:00	920	4
251	2013-09-14 02:00	922	11
252	2013-09-14 02:00	916	54
253	2013-09-14 02:00	500	8
254	2013-09-14 03:00	902	7
255	2013-09-14 03:00	150	19
256	2013-09-14 03:00	900	254
257	2013-09-14 03:00	901	4
258	2013-09-14 03:00	904	32
259	2013-09-14 03:00	3548	19
260	2013-09-14 03:00	919	2
261	2013-09-14 03:00	926	12
262	2013-09-14 03:00	916	88
263	2013-09-14 03:00	500	8
264	2013-09-14 04:00	902	13
265	2013-09-14 04:00	903	4
266	2013-09-14 04:00	900	359
267	2013-09-14 04:00	904	41
268	2013-09-14 04:00	3548	7
269	2013-09-14 04:00	919	4
270	2013-09-14 04:00	926	7
271	2013-09-14 04:00	922	5
272	2013-09-14 04:00	916	62
273	2013-09-14 04:00	500	8
274	2013-09-14 05:00	902	72
275	2013-09-14 05:00	903	4
276	2013-09-14 05:00	900	1349
277	2013-09-14 05:00	907	5
278	2013-09-14 05:00	904	93
279	2013-09-14 05:00	500	9
280	2013-09-14 05:00	922	36
281	2013-09-14 05:00	916	228
282	2013-09-14 05:00	935	8
283	2013-09-14 05:00	912	4
284	2013-09-14 06:00	902	423
285	2013-09-14 06:00	903	26
286	2013-09-14 06:00	900	7214
287	2013-09-14 06:00	907	20
288	2013-09-14 06:00	904	487
289	2013-09-14 06:00	926	108
290	2013-09-14 06:00	917	47
291	2013-09-14 06:00	916	1394
292	2013-09-14 06:00	922	102
293	2013-09-14 06:00	935	66
294	2013-09-14 07:00	902	805
295	2013-09-14 07:00	903	80
296	2013-09-14 07:00	900	14602
297	2013-09-14 07:00	901	87
298	2013-09-14 07:00	904	856
299	2013-09-14 07:00	926	101
300	2013-09-14 07:00	917	101
301	2013-09-14 07:00	916	2991
302	2013-09-14 07:00	922	356
303	2013-09-14 07:00	935	217
304	2013-09-14 08:00	902	1065
305	2013-09-14 08:00	903	80
306	2013-09-14 08:00	900	15107
307	2013-09-14 08:00	904	1123
308	2013-09-14 08:00	150	1345
309	2013-09-14 08:00	926	168
310	2013-09-14 08:00	917	118
311	2013-09-14 08:00	916	3435
312	2013-09-14 08:00	922	403
313	2013-09-14 08:00	935	353
314	2013-09-14 09:00	902	1265
315	2013-09-14 09:00	903	164
316	2013-09-14 09:00	900	17342
317	2013-09-14 09:00	904	1475
318	2013-09-14 09:00	150	888
319	2013-09-14 09:00	926	841
320	2013-09-14 09:00	917	225
321	2013-09-14 09:00	916	4320
322	2013-09-14 09:00	922	476
323	2013-09-14 09:00	935	269
324	2013-09-14 10:00	902	1990
325	2013-09-14 10:00	150	3612
326	2013-09-14 10:00	900	20910
327	2013-09-14 10:00	904	1938
328	2013-09-14 10:00	919	273
329	2013-09-14 10:00	926	1583
330	2013-09-14 10:00	917	241
331	2013-09-14 10:00	916	5418
332	2013-09-14 10:00	922	570
333	2013-09-14 10:00	935	241
334	2013-09-14 11:00	902	1855
335	2013-09-14 11:00	150	1213
336	2013-09-14 11:00	900	22725
337	2013-09-14 11:00	904	2141
338	2013-09-14 11:00	919	632
339	2013-09-14 11:00	926	1492
340	2013-09-14 11:00	917	273
341	2013-09-14 11:00	916	5884
342	2013-09-14 11:00	922	560
343	2013-09-14 11:00	935	216
344	2013-09-14 12:00	902	2314
345	2013-09-14 12:00	150	672
346	2013-09-14 12:00	900	24201
347	2013-09-14 12:00	904	2790
348	2013-09-14 12:00	926	1342
349	2013-09-14 12:00	919	458
350	2013-09-14 12:00	110	232
351	2013-09-14 12:00	922	570
352	2013-09-14 12:00	916	8336
353	2013-09-14 12:00	935	262
354	2013-09-14 13:00	902	2280
355	2013-09-14 13:00	903	204
356	2013-09-14 13:00	900	24668
357	2013-09-14 13:00	904	2039
358	2013-09-14 13:00	150	524
359	2013-09-14 13:00	919	262
360	2013-09-14 13:00	926	1586
361	2013-09-14 13:00	922	753
362	2013-09-14 13:00	916	6668
363	2013-09-14 13:00	935	279
364	2013-09-14 14:00	902	1827
365	2013-09-14 14:00	150	622
366	2013-09-14 14:00	900	22773
367	2013-09-14 14:00	901	222
368	2013-09-14 14:00	904	2248
369	2013-09-14 14:00	919	306
370	2013-09-14 14:00	926	1154
371	2013-09-14 14:00	922	837
372	2013-09-14 14:00	916	5312
373	2013-09-14 14:00	935	285
374	2013-09-14 15:00	902	1666
375	2013-09-14 15:00	150	2954
376	2013-09-14 15:00	900	22240
377	2013-09-14 15:00	904	2028
378	2013-09-14 15:00	919	341
379	2013-09-14 15:00	926	1402
380	2013-09-14 15:00	914	215
381	2013-09-14 15:00	922	672
382	2013-09-14 15:00	916	3903
383	2013-09-14 15:00	935	256
384	2013-09-14 16:00	902	1616
385	2013-09-14 16:00	150	1447
386	2013-09-14 16:00	900	19851
387	2013-09-14 16:00	904	1339
388	2013-09-14 16:00	926	1028
389	2013-09-14 16:00	919	152
390	2013-09-14 16:00	110	150
391	2013-09-14 16:00	922	421
392	2013-09-14 16:00	916	3343
393	2013-09-14 16:00	935	203
394	2013-09-14 17:00	902	1375
395	2013-09-14 17:00	150	228
396	2013-09-14 17:00	900	19069
397	2013-09-14 17:00	904	1361
398	2013-09-14 17:00	926	752
399	2013-09-14 17:00	110	172
400	2013-09-14 17:00	917	245
401	2013-09-14 17:00	916	3084
402	2013-09-14 17:00	922	310
403	2013-09-14 17:00	935	203
404	2013-09-14 18:00	902	1346
405	2013-09-14 18:00	150	161
406	2013-09-14 18:00	900	18184
407	2013-09-14 18:00	901	109
408	2013-09-14 18:00	904	1524
409	2013-09-14 18:00	926	562
410	2013-09-14 18:00	917	295
411	2013-09-14 18:00	916	3511
412	2013-09-14 18:00	922	410
413	2013-09-14 18:00	935	251
414	2013-09-14 19:00	902	1570
415	2013-09-14 19:00	903	117
416	2013-09-14 19:00	900	19438
417	2013-09-14 19:00	904	1386
418	2013-09-14 19:00	150	438
419	2013-09-14 19:00	926	320
420	2013-09-14 19:00	917	399
421	2013-09-14 19:00	916	3677
422	2013-09-14 19:00	922	421
423	2013-09-14 19:00	935	301
424	2013-09-14 20:00	902	1439
425	2013-09-14 20:00	903	101
426	2013-09-14 20:00	900	17853
427	2013-09-14 20:00	904	1312
428	2013-09-14 20:00	150	302
429	2013-09-14 20:00	926	250
430	2013-09-14 20:00	917	199
431	2013-09-14 20:00	916	3580
432	2013-09-14 20:00	922	672
433	2013-09-14 20:00	935	346
434	2013-09-14 21:00	902	996
435	2013-09-14 21:00	903	89
436	2013-09-14 21:00	900	13905
437	2013-09-14 21:00	916	2518
438	2013-09-14 21:00	904	1171
439	2013-09-14 21:00	926	186
440	2013-09-14 21:00	917	155
441	2013-09-14 21:00	930	100
442	2013-09-14 21:00	922	404
443	2013-09-14 21:00	935	233
444	2013-09-14 21:00	902	996
445	2013-09-14 21:00	903	89
446	2013-09-14 21:00	900	13909
447	2013-09-14 21:00	916	2521
448	2013-09-14 21:00	904	1171
449	2013-09-14 21:00	926	190
450	2013-09-14 21:00	917	155
451	2013-09-14 21:00	930	100
452	2013-09-14 21:00	922	404
453	2013-09-14 21:00	935	233
454	2013-09-14 22:00	902	595
455	2013-09-14 22:00	150	143
456	2013-09-14 22:00	900	9847
457	2013-09-14 22:00	904	559
458	2013-09-14 22:00	926	83
459	2013-09-14 22:00	110	50
460	2013-09-14 22:00	917	100
461	2013-09-14 22:00	916	1244
462	2013-09-14 22:00	922	165
463	2013-09-14 22:00	935	68
464	2013-09-14 23:00	902	209
465	2013-09-14 23:00	150	500
466	2013-09-14 23:00	900	3903
467	2013-09-14 23:00	904	212
468	2013-09-14 23:00	703	65
469	2013-09-14 23:00	110	39
470	2013-09-14 23:00	917	63
471	2013-09-14 23:00	916	453
472	2013-09-14 23:00	922	126
473	2013-09-14 23:00	926	107
474	2013-09-15 00:00	902	71
475	2013-09-15 00:00	150	52
476	2013-09-15 00:00	900	1004
477	2013-09-15 00:00	904	78
478	2013-09-15 00:00	3548	12
479	2013-09-15 00:00	926	43
480	2013-09-15 00:00	917	17
481	2013-09-15 00:00	916	127
482	2013-09-15 00:00	922	34
483	2013-09-15 00:00	935	12
484	2013-09-15 01:00	902	34
485	2013-09-15 01:00	150	120
486	2013-09-15 01:00	900	679
487	2013-09-15 01:00	901	9
488	2013-09-15 01:00	904	52
489	2013-09-15 01:00	926	47
490	2013-09-15 01:00	917	43
491	2013-09-15 01:00	916	76
492	2013-09-15 01:00	922	25
493	2013-09-15 01:00	500	8
494	2013-09-15 02:00	902	19
495	2013-09-15 02:00	150	45
496	2013-09-15 02:00	900	306
497	2013-09-15 02:00	916	46
498	2013-09-15 02:00	904	43
499	2013-09-15 02:00	926	41
500	2013-09-15 02:00	917	7
501	2013-09-15 02:00	930	8
502	2013-09-15 02:00	922	11
503	2013-09-15 02:00	500	8
504	2013-09-15 03:00	902	30
505	2013-09-15 03:00	150	25
506	2013-09-15 03:00	900	242
507	2013-09-15 03:00	901	3
508	2013-09-15 03:00	904	32
509	2013-09-15 03:00	3548	17
510	2013-09-15 03:00	926	43
511	2013-09-15 03:00	922	6
512	2013-09-15 03:00	916	29
513	2013-09-15 03:00	500	8
514	2013-09-15 04:00	902	13
515	2013-09-15 04:00	903	1
516	2013-09-15 04:00	900	334
517	2013-09-15 04:00	904	19
518	2013-09-15 04:00	3548	10
519	2013-09-15 04:00	926	9
520	2013-09-15 04:00	922	3
521	2013-09-15 04:00	916	44
522	2013-09-15 04:00	500	8
523	2013-09-15 04:00	912	4
524	2013-09-15 05:00	902	46
525	2013-09-15 05:00	900	966
526	2013-09-15 05:00	904	70
527	2013-09-15 05:00	905	7
528	2013-09-15 05:00	3548	27
529	2013-09-15 05:00	926	20
530	2013-09-15 05:00	500	8
531	2013-09-15 05:00	922	18
532	2013-09-15 05:00	916	136
533	2013-09-15 05:00	935	8
534	2013-09-15 06:00	902	409
535	2013-09-15 06:00	903	34
536	2013-09-15 06:00	900	4695
537	2013-09-15 06:00	907	24
538	2013-09-15 06:00	904	372
539	2013-09-15 06:00	920	21
540	2013-09-15 06:00	917	26
541	2013-09-15 06:00	916	926
542	2013-09-15 06:00	922	207
543	2013-09-15 06:00	935	45
544	2013-09-15 07:00	902	954
545	2013-09-15 07:00	903	63
546	2013-09-15 07:00	900	9321
547	2013-09-15 07:00	907	48
548	2013-09-15 07:00	904	838
549	2013-09-15 07:00	150	80
550	2013-09-15 07:00	926	59
551	2013-09-15 07:00	922	297
552	2013-09-15 07:00	916	2307
553	2013-09-15 07:00	935	235
554	2013-09-15 08:00	902	1479
555	2013-09-15 08:00	150	282
556	2013-09-15 08:00	900	13367
557	2013-09-15 08:00	901	95
558	2013-09-15 08:00	904	1209
559	2013-09-15 08:00	926	175
560	2013-09-15 08:00	921	126
561	2013-09-15 08:00	922	341
562	2013-09-15 08:00	916	3161
563	2013-09-15 08:00	935	440
564	2013-09-15 09:00	902	2080
565	2013-09-15 09:00	903	176
566	2013-09-15 09:00	900	15308
567	2013-09-15 09:00	904	1521
568	2013-09-15 09:00	150	2139
569	2013-09-15 09:00	926	324
570	2013-09-15 09:00	917	268
571	2013-09-15 09:00	916	3298
572	2013-09-15 09:00	922	362
573	2013-09-15 09:00	935	360
574	2013-09-15 10:00	902	2325
575	2013-09-15 10:00	150	857
576	2013-09-15 10:00	900	17154
577	2013-09-15 10:00	907	139
578	2013-09-15 10:00	904	1575
579	2013-09-15 10:00	926	567
580	2013-09-15 10:00	917	484
581	2013-09-15 10:00	916	3843
582	2013-09-15 10:00	922	447
583	2013-09-15 10:00	935	275
584	2013-09-15 11:00	902	1916
585	2013-09-15 11:00	150	333
586	2013-09-15 11:00	900	22957
587	2013-09-15 11:00	904	1686
588	2013-09-15 11:00	926	619
589	2013-09-15 11:00	914	211
590	2013-09-15 11:00	917	559
591	2013-09-15 11:00	916	4124
592	2013-09-15 11:00	922	558
593	2013-09-15 11:00	935	319
594	2013-09-15 12:00	902	1805
595	2013-09-15 12:00	903	156
596	2013-09-15 12:00	900	19747
597	2013-09-15 12:00	904	1603
598	2013-09-15 12:00	150	337
599	2013-09-15 12:00	926	619
600	2013-09-15 12:00	917	562
601	2013-09-15 12:00	916	4015
602	2013-09-15 12:00	922	523
603	2013-09-15 12:00	935	309
604	2013-09-15 13:00	902	1656
605	2013-09-15 13:00	150	1205
606	2013-09-15 13:00	900	18177
607	2013-09-15 13:00	904	1517
608	2013-09-15 13:00	926	990
609	2013-09-15 13:00	914	194
610	2013-09-15 13:00	917	385
611	2013-09-15 13:00	916	3934
612	2013-09-15 13:00	922	558
613	2013-09-15 13:00	935	308
614	2013-09-15 14:00	902	1536
615	2013-09-15 14:00	150	1115
616	2013-09-15 14:00	900	16636
617	2013-09-15 14:00	904	1413
618	2013-09-15 14:00	926	605
619	2013-09-15 14:00	920	137
620	2013-09-15 14:00	917	432
621	2013-09-15 14:00	916	3566
622	2013-09-15 14:00	922	454
623	2013-09-15 14:00	935	311
624	2013-09-15 15:00	902	1314
625	2013-09-15 15:00	903	151
626	2013-09-15 15:00	900	14980
627	2013-09-15 15:00	904	1442
628	2013-09-15 15:00	150	957
629	2013-09-15 15:00	926	464
630	2013-09-15 15:00	917	242
631	2013-09-15 15:00	916	3353
632	2013-09-15 15:00	922	431
633	2013-09-15 15:00	935	276
634	2013-09-15 16:00	902	1614
635	2013-09-15 16:00	150	1089
636	2013-09-15 16:00	900	15326
637	2013-09-15 16:00	904	1414
638	2013-09-15 16:00	926	354
639	2013-09-15 16:00	920	127
640	2013-09-15 16:00	917	368
641	2013-09-15 16:00	916	3713
642	2013-09-15 16:00	922	519
643	2013-09-15 16:00	935	299
644	2013-09-15 17:00	902	1462
645	2013-09-15 17:00	903	122
646	2013-09-15 17:00	900	14479
647	2013-09-15 17:00	904	1182
648	2013-09-15 17:00	150	139
649	2013-09-15 17:00	926	413
650	2013-09-15 17:00	917	413
651	2013-09-15 17:00	916	3052
652	2013-09-15 17:00	922	433
653	2013-09-15 17:00	935	280
654	2013-09-15 18:00	902	1436
655	2013-09-15 18:00	903	138
656	2013-09-15 18:00	900	14966
657	2013-09-15 18:00	901	141
658	2013-09-15 18:00	904	1319
659	2013-09-15 18:00	926	412
660	2013-09-15 18:00	917	248
661	2013-09-15 18:00	916	3329
662	2013-09-15 18:00	922	492
663	2013-09-15 18:00	935	271
664	2013-09-15 19:00	902	1612
665	2013-09-15 19:00	150	130
666	2013-09-15 19:00	900	16954
667	2013-09-15 19:00	904	1349
668	2013-09-15 19:00	926	219
669	2013-09-15 19:00	920	141
670	2013-09-15 19:00	917	294
671	2013-09-15 19:00	916	4001
672	2013-09-15 19:00	922	466
673	2013-09-15 19:00	935	490
674	2013-09-15 20:00	902	1509
675	2013-09-15 20:00	150	227
676	2013-09-15 20:00	900	16857
677	2013-09-15 20:00	916	3865
678	2013-09-15 20:00	904	1559
679	2013-09-15 20:00	926	238
680	2013-09-15 20:00	917	206
681	2013-09-15 20:00	930	213
682	2013-09-15 20:00	922	649
683	2013-09-15 20:00	935	531
684	2013-09-15 21:00	902	1198
685	2013-09-15 21:00	900	12664
686	2013-09-15 21:00	916	2494
687	2013-09-15 21:00	907	73
688	2013-09-15 21:00	904	961
689	2013-09-15 21:00	926	144
690	2013-09-15 21:00	917	92
691	2013-09-15 21:00	930	224
692	2013-09-15 21:00	922	534
693	2013-09-15 21:00	935	348
694	2013-09-15 22:00	902	751
695	2013-09-15 22:00	903	66
696	2013-09-15 22:00	900	8924
697	2013-09-15 22:00	904	1070
698	2013-09-15 22:00	150	121
699	2013-09-15 22:00	926	91
700	2013-09-15 22:00	917	66
701	2013-09-15 22:00	916	1733
702	2013-09-15 22:00	922	427
703	2013-09-15 22:00	935	218
704	2013-09-15 23:00	902	210
705	2013-09-15 23:00	150	910
706	2013-09-15 23:00	900	3378
707	2013-09-15 23:00	904	301
708	2013-09-15 23:00	703	41
709	2013-09-15 23:00	926	66
710	2013-09-15 23:00	917	40
711	2013-09-15 23:00	916	630
712	2013-09-15 23:00	922	195
713	2013-09-15 23:00	935	38
714	2013-09-16 00:00	902	49
715	2013-09-16 00:00	900	1118
716	2013-09-16 00:00	904	96
717	2013-09-16 00:00	926	35
718	2013-09-16 00:00	919	8
719	2013-09-16 00:00	500	10
720	2013-09-16 00:00	917	18
721	2013-09-16 00:00	916	170
722	2013-09-16 00:00	922	31
723	2013-09-16 00:00	935	13
724	2013-09-16 01:00	902	18
725	2013-09-16 01:00	900	577
726	2013-09-16 01:00	901	7
727	2013-09-16 01:00	904	61
728	2013-09-16 01:00	3548	14
729	2013-09-16 01:00	919	15
730	2013-09-16 01:00	926	16
731	2013-09-16 01:00	922	9
732	2013-09-16 01:00	916	51
733	2013-09-16 01:00	500	14
734	2013-09-16 02:00	902	7
735	2013-09-16 02:00	900	418
736	2013-09-16 02:00	904	31
737	2013-09-16 02:00	3548	25
738	2013-09-16 02:00	919	2
739	2013-09-16 02:00	926	12
740	2013-09-16 02:00	917	2
741	2013-09-16 02:00	916	34
742	2013-09-16 02:00	922	8
743	2013-09-16 02:00	500	10
744	2013-09-16 03:00	902	4
745	2013-09-16 03:00	903	2
746	2013-09-16 03:00	900	229
747	2013-09-16 03:00	904	14
748	2013-09-16 03:00	908	2
749	2013-09-16 03:00	3548	12
750	2013-09-16 03:00	919	6
751	2013-09-16 03:00	926	2
752	2013-09-16 03:00	916	14
753	2013-09-16 03:00	500	8
754	2013-09-16 04:00	902	8
755	2013-09-16 04:00	900	265
756	2013-09-16 04:00	904	15
757	2013-09-16 04:00	3548	20
758	2013-09-16 04:00	919	4
759	2013-09-16 04:00	926	4
760	2013-09-16 04:00	917	6
761	2013-09-16 04:00	916	25
762	2013-09-16 04:00	922	3
763	2013-09-16 04:00	500	8
764	2013-09-16 05:00	902	56
765	2013-09-16 05:00	903	3
766	2013-09-16 05:00	900	921
767	2013-09-16 05:00	901	7
768	2013-09-16 05:00	904	87
769	2013-09-16 05:00	3548	13
770	2013-09-16 05:00	926	4
771	2013-09-16 05:00	500	9
772	2013-09-16 05:00	916	162
773	2013-09-16 05:00	935	6
774	2013-09-16 06:00	902	385
775	2013-09-16 06:00	903	24
776	2013-09-16 06:00	900	4431
777	2013-09-16 06:00	904	403
778	2013-09-16 06:00	905	18
779	2013-09-16 06:00	919	17
780	2013-09-16 06:00	914	16
781	2013-09-16 06:00	922	129
782	2013-09-16 06:00	916	1011
783	2013-09-16 06:00	935	41
784	2013-09-16 07:00	902	849
785	2013-09-16 07:00	903	33
786	2013-09-16 07:00	900	8254
787	2013-09-16 07:00	901	83
788	2013-09-16 07:00	904	772
789	2013-09-16 07:00	150	43
790	2013-09-16 07:00	917	40
791	2013-09-16 07:00	916	1968
792	2013-09-16 07:00	922	244
793	2013-09-16 07:00	935	172
794	2013-09-16 08:00	902	1044
795	2013-09-16 08:00	150	445
796	2013-09-16 08:00	900	9930
797	2013-09-16 08:00	901	82
798	2013-09-16 08:00	904	1006
799	2013-09-16 08:00	926	184
800	2013-09-16 08:00	917	185
801	2013-09-16 08:00	916	2204
802	2013-09-16 08:00	922	295
803	2013-09-16 08:00	935	285
804	2013-09-16 09:00	902	1324
805	2013-09-16 09:00	903	121
806	2013-09-16 09:00	900	12794
807	2013-09-16 09:00	904	1418
808	2013-09-16 09:00	150	949
809	2013-09-16 09:00	926	410
810	2013-09-16 09:00	917	408
811	2013-09-16 09:00	916	2941
812	2013-09-16 09:00	922	450
813	2013-09-16 09:00	935	259
814	2013-09-16 10:00	902	2008
815	2013-09-16 10:00	150	960
816	2013-09-16 10:00	900	15049
817	2013-09-16 10:00	904	1598
818	2013-09-16 10:00	919	246
819	2013-09-16 10:00	926	1256
820	2013-09-16 10:00	917	262
821	2013-09-16 10:00	916	3380
822	2013-09-16 10:00	922	479
823	2013-09-16 10:00	935	185
824	2013-09-16 11:00	902	2323
825	2013-09-16 11:00	903	331
826	2013-09-16 11:00	900	21253
827	2013-09-16 11:00	904	2944
828	2013-09-16 11:00	150	1725
829	2013-09-16 11:00	919	503
830	2013-09-16 11:00	926	1440
831	2013-09-16 11:00	922	1670
832	2013-09-16 11:00	916	5181
833	2013-09-16 11:00	935	378
834	2013-09-16 12:00	902	1886
835	2013-09-16 12:00	903	326
836	2013-09-16 12:00	900	19283
837	2013-09-16 12:00	904	2512
838	2013-09-16 12:00	150	1663
839	2013-09-16 12:00	919	619
840	2013-09-16 12:00	926	1291
841	2013-09-16 12:00	922	941
842	2013-09-16 12:00	916	4766
843	2013-09-16 12:00	935	347
844	2013-09-16 13:00	902	2155
845	2013-09-16 13:00	150	951
846	2013-09-16 13:00	900	20246
847	2013-09-16 13:00	904	2591
848	2013-09-16 13:00	919	557
849	2013-09-16 13:00	926	1072
850	2013-09-16 13:00	914	331
851	2013-09-16 13:00	922	1178
852	2013-09-16 13:00	916	4982
853	2013-09-16 13:00	935	332
854	2013-09-16 14:00	902	2158
855	2013-09-16 14:00	150	946
856	2013-09-16 14:00	900	21264
857	2013-09-16 14:00	904	2721
858	2013-09-16 14:00	919	569
859	2013-09-16 14:00	926	1105
860	2013-09-16 14:00	914	310
861	2013-09-16 14:00	922	1016
862	2013-09-16 14:00	916	4977
863	2013-09-16 14:00	935	344
864	2013-09-16 15:00	902	2107
865	2013-09-16 15:00	903	285
866	2013-09-16 15:00	900	19330
867	2013-09-16 15:00	904	2568
868	2013-09-16 15:00	150	1118
869	2013-09-16 15:00	919	472
870	2013-09-16 15:00	926	968
871	2013-09-16 15:00	922	871
872	2013-09-16 15:00	916	4701
873	2013-09-16 15:00	935	316
874	2013-09-16 16:00	902	2214
875	2013-09-16 16:00	903	330
876	2013-09-16 16:00	900	19914
877	2013-09-16 16:00	904	2772
878	2013-09-16 16:00	150	2251
879	2013-09-16 16:00	919	713
880	2013-09-16 16:00	926	882
881	2013-09-16 16:00	922	1202
882	2013-09-16 16:00	916	5099
883	2013-09-16 16:00	935	366
884	2013-09-16 17:00	902	1837
885	2013-09-16 17:00	150	623
886	2013-09-16 17:00	900	20236
887	2013-09-16 17:00	904	2781
888	2013-09-16 17:00	919	844
889	2013-09-16 17:00	926	869
890	2013-09-16 17:00	917	466
891	2013-09-16 17:00	916	5512
892	2013-09-16 17:00	922	1441
893	2013-09-16 17:00	935	405
894	2013-09-16 18:00	902	1603
895	2013-09-16 18:00	150	11154
896	2013-09-16 18:00	900	23832
897	2013-09-16 18:00	904	2958
898	2013-09-16 18:00	919	440
899	2013-09-16 18:00	926	538
900	2013-09-16 18:00	917	589
901	2013-09-16 18:00	916	6029
902	2013-09-16 18:00	922	1608
903	2013-09-16 18:00	935	440
904	2013-09-16 19:00	902	1652
905	2013-09-16 19:00	150	7186
906	2013-09-16 19:00	900	22408
907	2013-09-16 19:00	904	2601
908	2013-09-16 19:00	926	436
909	2013-09-16 19:00	922	881
910	2013-09-16 19:00	917	586
911	2013-09-16 19:00	916	5410
912	2013-09-16 19:00	100	292
913	2013-09-16 19:00	935	482
914	2013-09-16 20:00	902	1616
915	2013-09-16 20:00	903	205
916	2013-09-16 20:00	900	19756
917	2013-09-16 20:00	904	2459
918	2013-09-16 20:00	150	495
919	2013-09-16 20:00	926	307
920	2013-09-16 20:00	917	515
921	2013-09-16 20:00	916	5242
922	2013-09-16 20:00	922	968
923	2013-09-16 20:00	935	457
924	2013-09-16 21:00	902	997
925	2013-09-16 21:00	150	141
926	2013-09-16 21:00	900	13153
927	2013-09-16 21:00	907	91
928	2013-09-16 21:00	904	1348
929	2013-09-16 21:00	926	242
930	2013-09-16 21:00	917	305
931	2013-09-16 21:00	916	2610
932	2013-09-16 21:00	922	490
933	2013-09-16 21:00	935	399
934	2013-09-16 22:00	902	957
935	2013-09-16 22:00	903	85
936	2013-09-16 22:00	900	10490
937	2013-09-16 22:00	907	91
938	2013-09-16 22:00	904	1599
939	2013-09-16 22:00	926	286
940	2013-09-16 22:00	917	206
941	2013-09-16 22:00	916	2088
942	2013-09-16 22:00	922	617
943	2013-09-16 22:00	935	408
944	2013-09-16 23:00	902	284
945	2013-09-16 23:00	150	563
946	2013-09-16 23:00	900	3637
947	2013-09-16 23:00	904	438
948	2013-09-16 23:00	703	51
949	2013-09-16 23:00	926	133
950	2013-09-16 23:00	917	55
951	2013-09-16 23:00	916	668
952	2013-09-16 23:00	922	176
953	2013-09-16 23:00	935	68
954	2013-09-17 00:00	902	57
955	2013-09-17 00:00	903	17
956	2013-09-17 00:00	900	1369
957	2013-09-17 00:00	904	135
958	2013-09-17 00:00	150	19
959	2013-09-17 00:00	3548	21
960	2013-09-17 00:00	926	46
961	2013-09-17 00:00	922	38
962	2013-09-17 00:00	916	200
963	2013-09-17 00:00	935	22
964	2013-09-17 01:00	902	63
965	2013-09-17 01:00	150	20
966	2013-09-17 01:00	900	732
967	2013-09-17 01:00	904	41
968	2013-09-17 01:00	3548	14
969	2013-09-17 01:00	926	35
970	2013-09-17 01:00	917	10
971	2013-09-17 01:00	916	107
972	2013-09-17 01:00	922	23
973	2013-09-17 01:00	500	8
974	2013-09-17 02:00	902	26
975	2013-09-17 02:00	903	4
976	2013-09-17 02:00	900	386
977	2013-09-17 02:00	904	32
978	2013-09-17 02:00	3548	25
979	2013-09-17 02:00	926	14
980	2013-09-17 02:00	500	8
981	2013-09-17 02:00	920	4
982	2013-09-17 02:00	916	55
983	2013-09-17 02:00	935	6
984	2013-09-17 03:00	902	10
985	2013-09-17 03:00	900	237
986	2013-09-17 03:00	904	28
987	2013-09-17 03:00	3548	27
988	2013-09-17 03:00	926	8
989	2013-09-17 03:00	500	8
990	2013-09-17 03:00	920	4
991	2013-09-17 03:00	917	5
992	2013-09-17 03:00	916	31
993	2013-09-17 03:00	913	1
994	2013-09-17 04:00	902	16
995	2013-09-17 04:00	900	318
996	2013-09-17 04:00	904	27
997	2013-09-17 04:00	3548	8
998	2013-09-17 04:00	919	2
999	2013-09-17 04:00	926	7
1000	2013-09-17 04:00	917	2
1001	2013-09-17 04:00	916	29
1002	2013-09-17 04:00	500	8
1003	2013-09-17 04:00	912	2
1004	2013-09-17 05:00	902	77
1005	2013-09-17 05:00	900	1136
1006	2013-09-17 05:00	904	91
1007	2013-09-17 05:00	3548	27
1008	2013-09-17 05:00	926	32
1009	2013-09-17 05:00	500	8
1010	2013-09-17 05:00	110	6
1011	2013-09-17 05:00	922	28
1012	2013-09-17 05:00	916	174
1013	2013-09-17 05:00	935	9
1014	2013-09-17 06:00	902	394
1015	2013-09-17 06:00	903	48
1016	2013-09-17 06:00	900	5189
1017	2013-09-17 06:00	904	487
1018	2013-09-17 06:00	3548	16
1019	2013-09-17 06:00	920	24
1020	2013-09-17 06:00	917	33
1021	2013-09-17 06:00	916	1052
1022	2013-09-17 06:00	922	105
1023	2013-09-17 06:00	935	62
1024	2013-09-17 07:00	902	936
1025	2013-09-17 07:00	903	41
1026	2013-09-17 07:00	900	9205
1027	2013-09-17 07:00	901	57
1028	2013-09-17 07:00	904	855
1029	2013-09-17 07:00	926	121
1030	2013-09-17 07:00	917	72
1031	2013-09-17 07:00	916	2249
1032	2013-09-17 07:00	922	267
1033	2013-09-17 07:00	935	274
1034	2013-09-17 08:00	902	1022
1035	2013-09-17 08:00	150	182
1036	2013-09-17 08:00	900	12047
1037	2013-09-17 08:00	901	77
1038	2013-09-17 08:00	904	1136
1039	2013-09-17 08:00	926	142
1040	2013-09-17 08:00	917	84
1041	2013-09-17 08:00	916	2602
1042	2013-09-17 08:00	922	287
1043	2013-09-17 08:00	935	381
1044	2013-09-17 09:00	902	1553
1045	2013-09-17 09:00	903	476
1046	2013-09-17 09:00	900	18701
1047	2013-09-17 09:00	901	363
1048	2013-09-17 09:00	904	3534
1049	2013-09-17 09:00	150	530
1050	2013-09-17 09:00	926	645
1051	2013-09-17 09:00	922	2601
1052	2013-09-17 09:00	916	6459
1053	2013-09-17 09:00	935	606
1054	2013-09-17 10:00	902	2783
1055	2013-09-17 10:00	903	435
1056	2013-09-17 10:00	900	20449
1057	2013-09-17 10:00	904	3294
1058	2013-09-17 10:00	150	1093
1059	2013-09-17 10:00	919	488
1060	2013-09-17 10:00	926	1374
1061	2013-09-17 10:00	922	2530
1062	2013-09-17 10:00	916	6942
1063	2013-09-17 10:00	935	484
1064	2013-09-17 11:00	902	2278
1065	2013-09-17 11:00	903	654
1066	2013-09-17 11:00	900	21218
1067	2013-09-17 11:00	901	562
1068	2013-09-17 11:00	904	3229
1069	2013-09-17 11:00	150	1363
1070	2013-09-17 11:00	919	606
1071	2013-09-17 11:00	922	3240
1072	2013-09-17 11:00	916	8092
1073	2013-09-17 11:00	926	1622
1074	2013-09-17 12:00	902	1791
1075	2013-09-17 12:00	903	616
1076	2013-09-17 12:00	900	21752
1077	2013-09-17 12:00	901	644
1078	2013-09-17 12:00	904	3257
1079	2013-09-17 12:00	150	969
1080	2013-09-17 12:00	919	547
1081	2013-09-17 12:00	922	3511
1082	2013-09-17 12:00	916	8474
1083	2013-09-17 12:00	926	1343
1084	2013-09-17 13:00	902	1861
1085	2013-09-17 13:00	903	551
1086	2013-09-17 13:00	900	21718
1087	2013-09-17 13:00	901	454
1088	2013-09-17 13:00	904	3029
1089	2013-09-17 13:00	150	529
1090	2013-09-17 13:00	926	1041
1091	2013-09-17 13:00	922	3072
1092	2013-09-17 13:00	916	7949
1093	2013-09-17 13:00	935	404
1094	2013-09-17 14:00	902	940
1095	2013-09-17 14:00	903	290
1096	2013-09-17 14:00	900	14744
1097	2013-09-17 14:00	904	2069
1098	2013-09-17 14:00	150	695
1099	2013-09-17 14:00	926	1116
1100	2013-09-17 14:00	110	638
1101	2013-09-17 14:00	922	1508
1102	2013-09-17 14:00	916	4100
1103	2013-09-17 14:00	935	249
1104	2013-09-17 15:00	902	896
1105	2013-09-17 15:00	903	452
1106	2013-09-17 15:00	900	13207
1107	2013-09-17 15:00	904	2590
1108	2013-09-17 15:00	150	508
1109	2013-09-17 15:00	919	259
1110	2013-09-17 15:00	914	256
1111	2013-09-17 15:00	922	1900
1112	2013-09-17 15:00	916	4327
1113	2013-09-17 15:00	926	1111
1114	2013-09-17 16:00	902	770
1115	2013-09-17 16:00	903	429
1116	2013-09-17 16:00	900	11743
1117	2013-09-17 16:00	904	2173
1118	2013-09-17 16:00	150	1113
1119	2013-09-17 16:00	919	244
1120	2013-09-17 16:00	926	1030
1121	2013-09-17 16:00	922	2272
1122	2013-09-17 16:00	916	4349
1123	2013-09-17 16:00	935	185
1124	2013-09-17 17:00	902	1312
1125	2013-09-17 17:00	903	456
1126	2013-09-17 17:00	900	18794
1127	2013-09-17 17:00	904	2916
1128	2013-09-17 17:00	150	394
1129	2013-09-17 17:00	919	225
1130	2013-09-17 17:00	926	1182
1131	2013-09-17 17:00	922	2447
1132	2013-09-17 17:00	916	5401
1133	2013-09-17 17:00	935	356
1134	2013-09-17 18:00	902	1605
1135	2013-09-17 18:00	903	242
1136	2013-09-17 18:00	900	25728
1137	2013-09-17 18:00	904	2958
1138	2013-09-17 18:00	150	8595
1139	2013-09-17 18:00	926	863
1140	2013-09-17 18:00	110	191
1141	2013-09-17 18:00	922	909
1142	2013-09-17 18:00	916	5083
1143	2013-09-17 18:00	935	541
1144	2013-09-17 19:00	902	1697
1145	2013-09-17 19:00	150	6882
1146	2013-09-17 19:00	900	24870
1147	2013-09-17 19:00	907	222
1148	2013-09-17 19:00	904	2730
1149	2013-09-17 19:00	926	622
1150	2013-09-17 19:00	917	207
1151	2013-09-17 19:00	916	5436
1152	2013-09-17 19:00	922	996
1153	2013-09-17 19:00	935	605
1154	2013-09-17 20:00	902	1655
1155	2013-09-17 20:00	903	277
1156	2013-09-17 20:00	900	22165
1157	2013-09-17 20:00	907	257
1158	2013-09-17 20:00	904	3140
1159	2013-09-17 20:00	926	616
1160	2013-09-17 20:00	914	349
1161	2013-09-17 20:00	922	951
1162	2013-09-17 20:00	916	5522
1163	2013-09-17 20:00	935	726
1164	2013-09-17 21:00	902	1392
1165	2013-09-17 21:00	903	395
1166	2013-09-17 21:00	900	20464
1167	2013-09-17 21:00	907	235
1168	2013-09-17 21:00	904	3785
1169	2013-09-17 21:00	926	313
1170	2013-09-17 21:00	110	194
1171	2013-09-17 21:00	922	1303
1172	2013-09-17 21:00	916	5235
1173	2013-09-17 21:00	935	812
1174	2013-09-17 22:00	902	1269
1175	2013-09-17 22:00	903	515
1176	2013-09-17 22:00	900	16563
1177	2013-09-17 22:00	907	202
1178	2013-09-17 22:00	904	5844
1179	2013-09-17 22:00	926	398
1180	2013-09-17 22:00	917	179
1181	2013-09-17 22:00	916	6226
1182	2013-09-17 22:00	922	1901
1183	2013-09-17 22:00	935	1264
1184	2013-09-17 23:00	902	994
1185	2013-09-17 23:00	903	824
1186	2013-09-17 23:00	900	10448
1187	2013-09-17 23:00	904	7648
1188	2013-09-17 23:00	150	330
1189	2013-09-17 23:00	703	166
1190	2013-09-17 23:00	920	196
1191	2013-09-17 23:00	922	3106
1192	2013-09-17 23:00	916	7357
1193	2013-09-17 23:00	935	1560
1194	2013-09-18 00:00	902	350
1195	2013-09-18 00:00	903	52
1196	2013-09-18 00:00	900	3257
1197	2013-09-18 00:00	901	46
1198	2013-09-18 00:00	904	1224
1199	2013-09-18 00:00	926	51
1200	2013-09-18 00:00	920	85
1201	2013-09-18 00:00	922	382
1202	2013-09-18 00:00	916	1161
1203	2013-09-18 00:00	935	137
1204	2013-09-18 01:00	902	29
1205	2013-09-18 01:00	903	9
1206	2013-09-18 01:00	900	583
1207	2013-09-18 01:00	901	6
1208	2013-09-18 01:00	904	69
1209	2013-09-18 01:00	3548	38
1210	2013-09-18 01:00	926	18
1211	2013-09-18 01:00	922	26
1212	2013-09-18 01:00	916	66
1213	2013-09-18 01:00	500	9
1214	2013-09-18 02:00	902	11
1215	2013-09-18 02:00	900	456
1216	2013-09-18 02:00	907	4
1217	2013-09-18 02:00	904	25
1218	2013-09-18 02:00	3548	11
1219	2013-09-18 02:00	926	20
1220	2013-09-18 02:00	500	9
1221	2013-09-18 02:00	922	6
1222	2013-09-18 02:00	916	48
1223	2013-09-18 02:00	104	4
1224	2013-09-18 03:00	902	10
1225	2013-09-18 03:00	900	218
1226	2013-09-18 03:00	901	11
1227	2013-09-18 03:00	904	26
1228	2013-09-18 03:00	3548	25
1229	2013-09-18 03:00	926	9
1230	2013-09-18 03:00	500	8
1231	2013-09-18 03:00	917	6
1232	2013-09-18 03:00	916	36
1233	2013-09-18 03:00	104	4
1234	2013-09-18 04:00	902	15
1235	2013-09-18 04:00	900	315
1236	2013-09-18 04:00	904	18
1237	2013-09-18 04:00	3548	33
1238	2013-09-18 04:00	919	5
1239	2013-09-18 04:00	926	8
1240	2013-09-18 04:00	917	9
1241	2013-09-18 04:00	916	41
1242	2013-09-18 04:00	922	9
1243	2013-09-18 04:00	500	8
1244	2013-09-18 05:00	902	99
1245	2013-09-18 05:00	903	4
1246	2013-09-18 05:00	900	1030
1247	2013-09-18 05:00	904	99
1248	2013-09-18 05:00	3548	31
1249	2013-09-18 05:00	926	4
1250	2013-09-18 05:00	500	8
1251	2013-09-18 05:00	922	13
1252	2013-09-18 05:00	916	189
1253	2013-09-18 05:00	935	5
1254	2013-09-18 06:00	902	478
1255	2013-09-18 06:00	903	37
1256	2013-09-18 06:00	900	5417
1257	2013-09-18 06:00	904	471
1258	2013-09-18 06:00	3548	32
1259	2013-09-18 06:00	920	21
1260	2013-09-18 06:00	917	20
1261	2013-09-18 06:00	916	1083
1262	2013-09-18 06:00	922	187
1263	2013-09-18 06:00	935	51
1264	2013-09-18 07:00	902	948
1265	2013-09-18 07:00	903	91
1266	2013-09-18 07:00	900	9939
1267	2013-09-18 07:00	904	883
1268	2013-09-18 07:00	200	42
1269	2013-09-18 07:00	926	92
1270	2013-09-18 07:00	920	38
1271	2013-09-18 07:00	922	281
1272	2013-09-18 07:00	916	2246
1273	2013-09-18 07:00	935	239
1274	2013-09-18 08:00	902	1128
1275	2013-09-18 08:00	903	71
1276	2013-09-18 08:00	900	13025
1277	2013-09-18 08:00	904	1161
1278	2013-09-18 08:00	150	293
1279	2013-09-18 08:00	926	121
1280	2013-09-18 08:00	110	60
1281	2013-09-18 08:00	922	313
1282	2013-09-18 08:00	916	2905
1283	2013-09-18 08:00	935	335
1284	2013-09-18 09:00	902	1459
1285	2013-09-18 09:00	903	516
1286	2013-09-18 09:00	900	18253
1287	2013-09-18 09:00	901	333
1288	2013-09-18 09:00	904	3379
1289	2013-09-18 09:00	150	444
1290	2013-09-18 09:00	926	680
1291	2013-09-18 09:00	922	2530
1292	2013-09-18 09:00	916	7350
1293	2013-09-18 09:00	935	533
1294	2013-09-18 10:00	902	1636
1295	2013-09-18 10:00	903	475
1296	2013-09-18 10:00	900	20148
1297	2013-09-18 10:00	901	681
1298	2013-09-18 10:00	904	3146
1299	2013-09-18 10:00	150	640
1300	2013-09-18 10:00	919	432
1301	2013-09-18 10:00	922	2475
1302	2013-09-18 10:00	916	7470
1303	2013-09-18 10:00	926	1564
1304	2013-09-18 11:00	902	1548
1305	2013-09-18 11:00	903	403
1306	2013-09-18 11:00	900	21262
1307	2013-09-18 11:00	901	395
1308	2013-09-18 11:00	904	3037
1309	2013-09-18 11:00	150	1148
1310	2013-09-18 11:00	110	442
1311	2013-09-18 11:00	922	2073
1312	2013-09-18 11:00	916	7128
1313	2013-09-18 11:00	926	1774
1314	2013-09-18 12:00	902	1527
1315	2013-09-18 12:00	903	390
1316	2013-09-18 12:00	900	21770
1317	2013-09-18 12:00	901	347
1318	2013-09-18 12:00	904	2601
1319	2013-09-18 12:00	150	1114
1320	2013-09-18 12:00	926	2369
1321	2013-09-18 12:00	922	1834
1322	2013-09-18 12:00	916	6285
1323	2013-09-18 12:00	935	371
1324	2013-09-18 13:00	902	1531
1325	2013-09-18 13:00	150	507
1326	2013-09-18 13:00	900	24932
1327	2013-09-18 13:00	904	2740
1328	2013-09-18 13:00	919	1515
1329	2013-09-18 13:00	926	1379
1330	2013-09-18 13:00	917	456
1331	2013-09-18 13:00	916	6132
1332	2013-09-18 13:00	922	5108
1333	2013-09-18 13:00	935	427
1334	2013-09-18 14:00	902	1510
1335	2013-09-18 14:00	903	301
1336	2013-09-18 14:00	900	27214
1337	2013-09-18 14:00	904	2332
1338	2013-09-18 14:00	150	856
1339	2013-09-18 14:00	919	378
1340	2013-09-18 14:00	926	1121
1341	2013-09-18 14:00	922	7914
1342	2013-09-18 14:00	916	5467
1343	2013-09-18 14:00	935	445
1344	2013-09-18 15:00	902	1382
1345	2013-09-18 15:00	903	306
1346	2013-09-18 15:00	900	28861
1347	2013-09-18 15:00	904	2323
1348	2013-09-18 15:00	150	624
1349	2013-09-18 15:00	926	878
1350	2013-09-18 15:00	110	523
1351	2013-09-18 15:00	922	10616
1352	2013-09-18 15:00	916	4916
1353	2013-09-18 15:00	935	373
1354	2013-09-18 16:00	902	1546
1355	2013-09-18 16:00	903	227
1356	2013-09-18 16:00	900	30210
1357	2013-09-18 16:00	904	2075
1358	2013-09-18 16:00	150	1267
1359	2013-09-18 16:00	926	1480
1360	2013-09-18 16:00	110	218
1361	2013-09-18 16:00	922	13301
1362	2013-09-18 16:00	916	4649
1363	2013-09-18 16:00	935	289
1364	2013-09-18 17:00	902	1281
1365	2013-09-18 17:00	903	186
1366	2013-09-18 17:00	900	35497
1367	2013-09-18 17:00	901	169
1368	2013-09-18 17:00	904	1989
1369	2013-09-18 17:00	150	354
1370	2013-09-18 17:00	926	1221
1371	2013-09-18 17:00	922	18057
1372	2013-09-18 17:00	916	4335
1373	2013-09-18 17:00	935	397
1374	2013-09-18 18:00	902	1457
1375	2013-09-18 18:00	150	5378
1376	2013-09-18 18:00	900	33260
1377	2013-09-18 18:00	904	2065
1378	2013-09-18 18:00	926	821
1379	2013-09-18 18:00	922	13957
1380	2013-09-18 18:00	917	297
1381	2013-09-18 18:00	916	3961
1382	2013-09-18 18:00	100	275
1383	2013-09-18 18:00	935	363
1384	2013-09-18 19:00	902	1613
1385	2013-09-18 19:00	150	2538
1386	2013-09-18 19:00	900	25968
1387	2013-09-18 19:00	901	186
1388	2013-09-18 19:00	904	2121
1389	2013-09-18 19:00	926	524
1390	2013-09-18 19:00	917	240
1391	2013-09-18 19:00	916	4546
1392	2013-09-18 19:00	922	5108
1393	2013-09-18 19:00	935	478
1394	2013-09-18 20:00	902	1494
1395	2013-09-18 20:00	903	177
1396	2013-09-18 20:00	900	23584
1397	2013-09-18 20:00	904	2071
1398	2013-09-18 20:00	150	205
1399	2013-09-18 20:00	926	474
1400	2013-09-18 20:00	917	205
1401	2013-09-18 20:00	916	4487
1402	2013-09-18 20:00	922	4770
1403	2013-09-18 20:00	935	581
1404	2013-09-18 21:00	902	908
1405	2013-09-18 21:00	903	85
1406	2013-09-18 21:00	900	12643
1407	2013-09-18 21:00	916	2461
1408	2013-09-18 21:00	904	1060
1409	2013-09-18 21:00	926	341
1410	2013-09-18 21:00	917	105
1411	2013-09-18 21:00	930	214
1412	2013-09-18 21:00	922	482
1413	2013-09-18 21:00	935	272
1414	2013-09-18 22:00	902	1035
1415	2013-09-18 22:00	903	432
1416	2013-09-18 22:00	900	16051
1417	2013-09-18 22:00	904	3639
1418	2013-09-18 22:00	926	633
1419	2013-09-18 22:00	920	140
1420	2013-09-18 22:00	917	153
1421	2013-09-18 22:00	916	3713
1422	2013-09-18 22:00	922	3237
1423	2013-09-18 22:00	935	766
1424	2013-09-18 23:00	902	343
1425	2013-09-18 23:00	200	1479
1426	2013-09-18 23:00	900	21257
1427	2013-09-18 23:00	904	2283
1428	2013-09-18 23:00	926	347
1429	2013-09-18 23:00	921	3218
1430	2013-09-18 23:00	922	16015
1431	2013-09-18 23:00	916	1517
1432	2013-09-18 23:00	911	2394
1433	2013-09-18 23:00	935	417
1434	2013-09-19 00:00	902	62
1435	2013-09-19 00:00	200	18956
1436	2013-09-19 00:00	900	21607
1437	2013-09-19 00:00	904	240
1438	2013-09-19 00:00	926	174
1439	2013-09-19 00:00	921	1648
1440	2013-09-19 00:00	922	20338
1441	2013-09-19 00:00	916	198
1442	2013-09-19 00:00	911	26322
1443	2013-09-19 00:00	935	30
1444	2013-09-19 01:00	902	79
1445	2013-09-19 01:00	200	10073
1446	2013-09-19 01:00	900	13393
1447	2013-09-19 01:00	904	93
1448	2013-09-19 01:00	921	34
1449	2013-09-19 01:00	922	12742
1450	2013-09-19 01:00	916	80
1451	2013-09-19 01:00	911	14517
1452	2013-09-19 01:00	910	30
1453	2013-09-19 01:00	926	76
1454	2013-09-19 02:00	902	18
1455	2013-09-19 02:00	200	9471
1456	2013-09-19 02:00	900	13313
1457	2013-09-19 02:00	904	89
1458	2013-09-19 02:00	3548	44
1459	2013-09-19 02:00	921	21
1460	2013-09-19 02:00	922	12886
1461	2013-09-19 02:00	916	52
1462	2013-09-19 02:00	911	13744
1463	2013-09-19 02:00	926	82
1464	2013-09-19 03:00	200	9303
1465	2013-09-19 03:00	900	13059
1466	2013-09-19 03:00	904	33
1467	2013-09-19 03:00	3548	41
1468	2013-09-19 03:00	921	19
1469	2013-09-19 03:00	917	10
1470	2013-09-19 03:00	916	19
1471	2013-09-19 03:00	911	13512
1472	2013-09-19 03:00	922	12817
1473	2013-09-19 03:00	926	67
1474	2013-09-19 04:00	902	19
1475	2013-09-19 04:00	200	9919
1476	2013-09-19 04:00	900	13465
1477	2013-09-19 04:00	904	29
1478	2013-09-19 04:00	3548	55
1479	2013-09-19 04:00	921	240
1480	2013-09-19 04:00	922	13229
1481	2013-09-19 04:00	916	25
1482	2013-09-19 04:00	911	14079
1483	2013-09-19 04:00	926	60
1484	2013-09-19 05:00	902	46
1485	2013-09-19 05:00	200	13081
1486	2013-09-19 05:00	900	13872
1487	2013-09-19 05:00	904	150
1488	2013-09-19 05:00	3548	25
1489	2013-09-19 05:00	921	382
1490	2013-09-19 05:00	922	13015
1491	2013-09-19 05:00	916	172
1492	2013-09-19 05:00	911	12182
1493	2013-09-19 05:00	926	76
1494	2013-09-19 06:00	902	376
1495	2013-09-19 06:00	200	4577
1496	2013-09-19 06:00	900	22562
1497	2013-09-19 06:00	904	569
1498	2013-09-19 06:00	921	4622
1499	2013-09-19 06:00	917	58
1500	2013-09-19 06:00	916	953
1501	2013-09-19 06:00	911	2969
1502	2013-09-19 06:00	922	18321
1503	2013-09-19 06:00	935	130
1504	2013-09-19 07:00	902	581
1505	2013-09-19 07:00	903	70
1506	2013-09-19 07:00	900	17112
1507	2013-09-19 07:00	904	791
1508	2013-09-19 07:00	110	63
1509	2013-09-19 07:00	921	1073
1510	2013-09-19 07:00	917	136
1511	2013-09-19 07:00	916	1745
1512	2013-09-19 07:00	922	10123
1513	2013-09-19 07:00	935	201
1514	2013-09-19 08:00	902	950
1515	2013-09-19 08:00	903	86
1516	2013-09-19 08:00	900	13337
1517	2013-09-19 08:00	904	1077
1518	2013-09-19 08:00	150	275
1519	2013-09-19 08:00	926	141
1520	2013-09-19 08:00	917	116
1521	2013-09-19 08:00	916	2449
1522	2013-09-19 08:00	922	2435
1523	2013-09-19 08:00	935	329
1524	2013-09-19 09:00	902	1263
1525	2013-09-19 09:00	150	642
1526	2013-09-19 09:00	900	35479
1527	2013-09-19 09:00	904	2640
1528	2013-09-19 09:00	919	203
1529	2013-09-19 09:00	926	778
1530	2013-09-19 09:00	917	383
1531	2013-09-19 09:00	916	3866
1532	2013-09-19 09:00	922	20669
1533	2013-09-19 09:00	935	598
1534	2013-09-19 10:00	902	1625
1535	2013-09-19 10:00	150	619
1536	2013-09-19 10:00	900	39104
1537	2013-09-19 10:00	904	2061
1538	2013-09-19 10:00	919	772
1539	2013-09-19 10:00	926	2473
1540	2013-09-19 10:00	917	1162
1541	2013-09-19 10:00	916	3829
1542	2013-09-19 10:00	922	22793
1543	2013-09-19 10:00	935	296
1544	2013-09-19 11:00	902	1451
1545	2013-09-19 11:00	150	857
1546	2013-09-19 11:00	900	36770
1547	2013-09-19 11:00	904	2325
1548	2013-09-19 11:00	919	1214
1549	2013-09-19 11:00	926	2205
1550	2013-09-19 11:00	917	765
1551	2013-09-19 11:00	916	3738
1552	2013-09-19 11:00	922	19792
1553	2013-09-19 11:00	935	337
1554	2013-09-19 12:00	902	1246
1555	2013-09-19 12:00	150	1182
1556	2013-09-19 12:00	900	36299
1557	2013-09-19 12:00	904	2435
1558	2013-09-19 12:00	919	1301
1559	2013-09-19 12:00	926	2116
1560	2013-09-19 12:00	917	422
1561	2013-09-19 12:00	916	4291
1562	2013-09-19 12:00	922	16782
1563	2013-09-19 12:00	935	344
1564	2013-09-19 13:00	902	1646
1565	2013-09-19 13:00	200	725
1566	2013-09-19 13:00	900	23323
1567	2013-09-19 13:00	904	2204
1568	2013-09-19 13:00	150	431
1569	2013-09-19 13:00	919	949
1570	2013-09-19 13:00	917	341
1571	2013-09-19 13:00	916	8780
1572	2013-09-19 13:00	922	2586
1573	2013-09-19 13:00	926	1186
1574	2013-09-19 14:00	902	1995
1575	2013-09-19 14:00	200	1269
1576	2013-09-19 14:00	900	22052
1577	2013-09-19 14:00	904	1863
1578	2013-09-19 14:00	150	919
1579	2013-09-19 14:00	919	390
1580	2013-09-19 14:00	922	1402
1581	2013-09-19 14:00	916	11846
1582	2013-09-19 14:00	911	542
1583	2013-09-19 14:00	926	1424
1584	2013-09-19 15:00	902	1415
1585	2013-09-19 15:00	200	1606
1586	2013-09-19 15:00	900	21546
1587	2013-09-19 15:00	904	2485
1588	2013-09-19 15:00	150	1153
1589	2013-09-19 15:00	917	331
1590	2013-09-19 15:00	916	11915
1591	2013-09-19 15:00	911	792
1592	2013-09-19 15:00	922	1314
1593	2013-09-19 15:00	926	1173
1594	2013-09-19 16:00	902	1692
1595	2013-09-19 16:00	200	3629
1596	2013-09-19 16:00	900	25586
1597	2013-09-19 16:00	904	2599
1598	2013-09-19 16:00	150	1692
1599	2013-09-19 16:00	917	425
1600	2013-09-19 16:00	916	7401
1601	2013-09-19 16:00	911	3027
1602	2013-09-19 16:00	922	5555
1603	2013-09-19 16:00	926	1622
1604	2013-09-19 17:00	902	1460
1605	2013-09-19 17:00	200	4229
1606	2013-09-19 17:00	900	29623
1607	2013-09-19 17:00	904	2506
1608	2013-09-19 17:00	150	641
1609	2013-09-19 17:00	914	443
1610	2013-09-19 17:00	922	9996
1611	2013-09-19 17:00	916	7028
1612	2013-09-19 17:00	911	3591
1613	2013-09-19 17:00	926	2014
1614	2013-09-19 18:00	902	1415
1615	2013-09-19 18:00	200	3966
1616	2013-09-19 18:00	900	26419
1617	2013-09-19 18:00	904	2030
1618	2013-09-19 18:00	150	5237
1619	2013-09-19 18:00	917	359
1620	2013-09-19 18:00	916	6559
1621	2013-09-19 18:00	911	3655
1622	2013-09-19 18:00	922	4212
1623	2013-09-19 18:00	926	1225
1624	2013-09-19 19:00	902	1372
1625	2013-09-19 19:00	200	4493
1626	2013-09-19 19:00	900	23329
1627	2013-09-19 19:00	904	2545
1628	2013-09-19 19:00	150	5956
1629	2013-09-19 19:00	926	1030
1630	2013-09-19 19:00	922	1352
1631	2013-09-19 19:00	916	7318
1632	2013-09-19 19:00	911	3771
1633	2013-09-19 19:00	935	440
1634	2013-09-19 20:00	902	1340
1635	2013-09-19 20:00	200	4426
1636	2013-09-19 20:00	900	21234
1637	2013-09-19 20:00	904	1880
1638	2013-09-19 20:00	926	1065
1639	2013-09-19 20:00	917	444
1640	2013-09-19 20:00	916	6504
1641	2013-09-19 20:00	911	3572
1642	2013-09-19 20:00	922	1677
1643	2013-09-19 20:00	935	403
1644	2013-09-19 21:00	902	1046
1645	2013-09-19 21:00	200	2770
1646	2013-09-19 21:00	900	16434
1647	2013-09-19 21:00	904	1412
1648	2013-09-19 21:00	926	907
1649	2013-09-19 21:00	917	331
1650	2013-09-19 21:00	916	5027
1651	2013-09-19 21:00	911	2617
1652	2013-09-19 21:00	922	1393
1653	2013-09-19 21:00	935	252
1654	2013-09-19 22:00	902	738
1655	2013-09-19 22:00	200	1452
1656	2013-09-19 22:00	900	12229
1657	2013-09-19 22:00	904	1515
1658	2013-09-19 22:00	926	644
1659	2013-09-19 22:00	917	197
1660	2013-09-19 22:00	916	3336
1661	2013-09-19 22:00	911	1508
1662	2013-09-19 22:00	922	2314
1663	2013-09-19 22:00	935	171
1664	2013-09-19 23:00	902	414
1665	2013-09-19 23:00	903	207
1666	2013-09-19 23:00	900	18060
1667	2013-09-19 23:00	904	3245
1668	2013-09-19 23:00	200	2113
1669	2013-09-19 23:00	926	421
1670	2013-09-19 23:00	922	11758
1671	2013-09-19 23:00	916	3530
1672	2013-09-19 23:00	911	2075
1673	2013-09-19 23:00	935	312
1674	2013-09-20 00:00	902	129
1675	2013-09-20 00:00	200	7350
1676	2013-09-20 00:00	900	23672
1677	2013-09-20 00:00	904	1482
1678	2013-09-20 00:00	903	100
1679	2013-09-20 00:00	921	3458
1680	2013-09-20 00:00	922	21477
1681	2013-09-20 00:00	916	1308
1682	2013-09-20 00:00	911	7776
1683	2013-09-20 00:00	935	144
1684	2013-09-20 01:00	200	9820
1685	2013-09-20 01:00	900	25127
1686	2013-09-20 01:00	904	667
1687	2013-09-20 01:00	903	50
1688	2013-09-20 01:00	926	56
1689	2013-09-20 01:00	921	2739
1690	2013-09-20 01:00	922	24108
1691	2013-09-20 01:00	916	702
1692	2013-09-20 01:00	911	9946
1693	2013-09-20 01:00	935	60
1694	2013-09-20 02:00	200	13910
1695	2013-09-20 02:00	900	25600
1696	2013-09-20 02:00	904	399
1697	2013-09-20 02:00	903	43
1698	2013-09-20 02:00	926	62
1699	2013-09-20 02:00	921	3251
1700	2013-09-20 02:00	922	25050
1701	2013-09-20 02:00	916	405
1702	2013-09-20 02:00	911	7499
1703	2013-09-20 02:00	935	45
1704	2013-09-20 03:00	200	18529
1705	2013-09-20 03:00	900	27124
1706	2013-09-20 03:00	904	102
1707	2013-09-20 03:00	3548	55
1708	2013-09-20 03:00	926	170
1709	2013-09-20 03:00	921	1602
1710	2013-09-20 03:00	922	26936
1711	2013-09-20 03:00	916	77
1712	2013-09-20 03:00	911	11202
1713	2013-09-20 03:00	935	19
1714	2013-09-20 04:00	200	24719
1715	2013-09-20 04:00	900	36799
1716	2013-09-20 04:00	904	101
1717	2013-09-20 04:00	3548	19
1718	2013-09-20 04:00	926	249
1719	2013-09-20 04:00	921	2256
1720	2013-09-20 04:00	922	36451
1721	2013-09-20 04:00	916	79
1722	2013-09-20 04:00	911	14941
1723	2013-09-20 04:00	935	17
1724	2013-09-20 05:00	902	48
1725	2013-09-20 05:00	200	19145
1726	2013-09-20 05:00	900	26989
1727	2013-09-20 05:00	904	138
1728	2013-09-20 05:00	3548	39
1729	2013-09-20 05:00	921	796
1730	2013-09-20 05:00	922	26262
1731	2013-09-20 05:00	916	210
1732	2013-09-20 05:00	911	11496
1733	2013-09-20 05:00	926	194
1734	2013-09-20 06:00	902	198
1735	2013-09-20 06:00	200	16324
1736	2013-09-20 06:00	900	28208
1737	2013-09-20 06:00	907	51
1738	2013-09-20 06:00	904	508
1739	2013-09-20 06:00	921	2692
1740	2013-09-20 06:00	922	24001
1741	2013-09-20 06:00	916	828
1742	2013-09-20 06:00	911	10897
1743	2013-09-20 06:00	926	215
1744	2013-09-20 07:00	902	560
1745	2013-09-20 07:00	200	10660
1746	2013-09-20 07:00	900	15294
1747	2013-09-20 07:00	904	897
1748	2013-09-20 07:00	926	248
1749	2013-09-20 07:00	921	60
1750	2013-09-20 07:00	922	7186
1751	2013-09-20 07:00	916	2008
1752	2013-09-20 07:00	911	8755
1753	2013-09-20 07:00	935	88
1754	2013-09-20 08:00	902	839
1755	2013-09-20 08:00	200	10669
1756	2013-09-20 08:00	900	12325
1757	2013-09-20 08:00	904	1234
1758	2013-09-20 08:00	150	307
1759	2013-09-20 08:00	926	382
1760	2013-09-20 08:00	922	1266
1761	2013-09-20 08:00	916	2512
1762	2013-09-20 08:00	911	9842
1763	2013-09-20 08:00	935	183
1764	2013-09-20 09:00	902	936
1765	2013-09-20 09:00	200	3891
1766	2013-09-20 09:00	900	25162
1767	2013-09-20 09:00	904	1628
1768	2013-09-20 09:00	150	514
1769	2013-09-20 09:00	921	597
1770	2013-09-20 09:00	922	12070
1771	2013-09-20 09:00	916	8421
1772	2013-09-20 09:00	911	3350
1773	2013-09-20 09:00	926	1587
1774	2013-09-20 10:00	902	1600
1775	2013-09-20 10:00	200	3792
1776	2013-09-20 10:00	900	32416
1777	2013-09-20 10:00	904	1790
1778	2013-09-20 10:00	150	645
1779	2013-09-20 10:00	917	383
1780	2013-09-20 10:00	916	4650
1781	2013-09-20 10:00	911	4058
1782	2013-09-20 10:00	922	16869
1783	2013-09-20 10:00	926	2389
1784	2013-09-20 11:00	902	1605
1785	2013-09-20 11:00	200	3818
1786	2013-09-20 11:00	900	34448
1787	2013-09-20 11:00	904	1980
1788	2013-09-20 11:00	150	881
1789	2013-09-20 11:00	919	369
1790	2013-09-20 11:00	922	17248
1791	2013-09-20 11:00	916	3974
1792	2013-09-20 11:00	911	4501
1793	2013-09-20 11:00	926	2211
1794	2013-09-20 12:00	902	2027
1795	2013-09-20 12:00	200	3227
1796	2013-09-20 12:00	900	28024
1797	2013-09-20 12:00	904	2099
1798	2013-09-20 12:00	150	970
1799	2013-09-20 12:00	919	830
1800	2013-09-20 12:00	922	8450
1801	2013-09-20 12:00	916	3947
1802	2013-09-20 12:00	911	4038
1803	2013-09-20 12:00	926	2418
1804	2013-09-20 13:00	902	1455
1805	2013-09-20 13:00	200	2151
1806	2013-09-20 13:00	900	17973
1807	2013-09-20 13:00	904	1511
1808	2013-09-20 13:00	150	598
1809	2013-09-20 13:00	919	507
1810	2013-09-20 13:00	922	3100
1811	2013-09-20 13:00	916	3051
1812	2013-09-20 13:00	911	2600
1813	2013-09-20 13:00	926	1241
1814	2013-09-20 14:00	902	1132
1815	2013-09-20 14:00	200	3651
1816	2013-09-20 14:00	900	18340
1817	2013-09-20 14:00	904	2209
1818	2013-09-20 14:00	914	1151
1819	2013-09-20 14:00	922	1064
1820	2013-09-20 14:00	916	4424
1821	2013-09-20 14:00	911	4516
1822	2013-09-20 14:00	926	862
1823	2013-09-20 14:00	912	937
1824	2013-09-20 15:00	902	1019
1825	2013-09-20 15:00	200	1547
1826	2013-09-20 15:00	900	15375
1827	2013-09-20 15:00	904	1761
1828	2013-09-20 15:00	914	1706
1829	2013-09-20 15:00	922	579
1830	2013-09-20 15:00	916	8218
1831	2013-09-20 15:00	911	1717
1832	2013-09-20 15:00	926	623
1833	2013-09-20 15:00	912	1460
1834	2013-09-20 16:00	902	1156
1835	2013-09-20 16:00	200	2357
1836	2013-09-20 16:00	900	19631
1837	2013-09-20 16:00	904	2395
1838	2013-09-20 16:00	909	1856
1839	2013-09-20 16:00	914	2602
1840	2013-09-20 16:00	922	2586
1841	2013-09-20 16:00	916	7761
1842	2013-09-20 16:00	911	2826
1843	2013-09-20 16:00	912	1428
1844	2013-09-20 17:00	902	1231
1845	2013-09-20 17:00	200	3611
1846	2013-09-20 17:00	900	25106
1847	2013-09-20 17:00	904	2252
1848	2013-09-20 17:00	919	894
1849	2013-09-20 17:00	914	2547
1850	2013-09-20 17:00	922	7832
1851	2013-09-20 17:00	916	5405
1852	2013-09-20 17:00	911	4183
1853	2013-09-20 17:00	926	838
1854	2013-09-20 18:00	902	1416
1855	2013-09-20 18:00	200	3760
1856	2013-09-20 18:00	900	26190
1857	2013-09-20 18:00	904	2071
1858	2013-09-20 18:00	150	1092
1859	2013-09-20 18:00	914	2111
1860	2013-09-20 18:00	922	8524
1861	2013-09-20 18:00	916	5409
1862	2013-09-20 18:00	911	4453
1863	2013-09-20 18:00	926	519
1864	2013-09-20 19:00	902	1395
1865	2013-09-20 19:00	200	3617
1866	2013-09-20 19:00	900	21436
1867	2013-09-20 19:00	904	1997
1868	2013-09-20 19:00	150	555
1869	2013-09-20 19:00	914	801
1870	2013-09-20 19:00	922	1461
1871	2013-09-20 19:00	916	5434
1872	2013-09-20 19:00	911	4609
1873	2013-09-20 19:00	926	599
1874	2013-09-20 20:00	902	1431
1875	2013-09-20 20:00	200	3596
1876	2013-09-20 20:00	900	21793
1877	2013-09-20 20:00	904	1978
1878	2013-09-20 20:00	926	1122
1879	2013-09-20 20:00	917	326
1880	2013-09-20 20:00	916	5717
1881	2013-09-20 20:00	911	4367
1882	2013-09-20 20:00	922	887
1883	2013-09-20 20:00	935	303
1884	2013-09-20 21:00	902	1073
1885	2013-09-20 21:00	200	959
1886	2013-09-20 21:00	900	14889
1887	2013-09-20 21:00	904	1173
1888	2013-09-20 21:00	150	200
1889	2013-09-20 21:00	926	419
1890	2013-09-20 21:00	922	504
1891	2013-09-20 21:00	916	8881
1892	2013-09-20 21:00	911	584
1893	2013-09-20 21:00	935	179
1894	2013-09-20 22:00	902	812
1895	2013-09-20 22:00	903	136
1896	2013-09-20 22:00	900	12222
1897	2013-09-20 22:00	904	1294
1898	2013-09-20 22:00	150	75
1899	2013-09-20 22:00	926	578
1900	2013-09-20 22:00	917	205
1901	2013-09-20 22:00	916	2124
1902	2013-09-20 22:00	922	994
1903	2013-09-20 22:00	935	148
1904	2013-09-20 23:00	902	539
1905	2013-09-20 23:00	903	424
1906	2013-09-20 23:00	900	10297
1907	2013-09-20 23:00	904	3957
1908	2013-09-20 23:00	703	249
1909	2013-09-20 23:00	926	442
1910	2013-09-20 23:00	917	110
1911	2013-09-20 23:00	916	2570
1912	2013-09-20 23:00	922	3181
1913	2013-09-20 23:00	935	525
1914	2013-09-21 00:00	902	456
1915	2013-09-21 00:00	903	252
1916	2013-09-21 00:00	900	10907
1917	2013-09-21 00:00	904	5122
1918	2013-09-21 00:00	926	65
1919	2013-09-21 00:00	920	62
1920	2013-09-21 00:00	922	6099
1921	2013-09-21 00:00	916	2908
1922	2013-09-21 00:00	935	995
1923	2013-09-21 00:00	912	67
1924	2013-09-21 01:00	902	151
1925	2013-09-21 01:00	903	188
1926	2013-09-21 01:00	900	15304
1927	2013-09-21 01:00	904	2151
1928	2013-09-21 01:00	200	307
1929	2013-09-21 01:00	921	3363
1930	2013-09-21 01:00	922	13357
1931	2013-09-21 01:00	916	1294
1932	2013-09-21 01:00	911	210
1933	2013-09-21 01:00	935	409
1934	2013-09-21 02:00	902	104
1935	2013-09-21 02:00	200	6150
1936	2013-09-21 02:00	900	22473
1937	2013-09-21 02:00	904	2479
1938	2013-09-21 02:00	903	268
1939	2013-09-21 02:00	921	4965
1940	2013-09-21 02:00	922	21074
1941	2013-09-21 02:00	916	1623
1942	2013-09-21 02:00	911	3938
1943	2013-09-21 02:00	935	322
1944	2013-09-21 03:00	902	81
1945	2013-09-21 03:00	903	207
1946	2013-09-21 03:00	900	17168
1947	2013-09-21 03:00	904	1692
1948	2013-09-21 03:00	200	4634
1949	2013-09-21 03:00	921	3222
1950	2013-09-21 03:00	922	16321
1951	2013-09-21 03:00	916	1091
1952	2013-09-21 03:00	911	3124
1953	2013-09-21 03:00	935	196
1954	2013-09-21 04:00	902	111
1955	2013-09-21 04:00	200	7324
1956	2013-09-21 04:00	900	24047
1957	2013-09-21 04:00	904	1733
1958	2013-09-21 04:00	903	170
1959	2013-09-21 04:00	921	5156
1960	2013-09-21 04:00	922	23001
1961	2013-09-21 04:00	916	1303
1962	2013-09-21 04:00	911	4857
1963	2013-09-21 04:00	935	188
1964	2013-09-21 05:00	902	62
1965	2013-09-21 05:00	200	10368
1966	2013-09-21 05:00	900	26797
1967	2013-09-21 05:00	904	458
1968	2013-09-21 05:00	926	42
1969	2013-09-21 05:00	921	5054
1970	2013-09-21 05:00	922	25378
1971	2013-09-21 05:00	916	443
1972	2013-09-21 05:00	911	7074
1973	2013-09-21 05:00	935	42
1974	2013-09-21 06:00	902	309
1975	2013-09-21 06:00	200	7619
1976	2013-09-21 06:00	900	26374
1977	2013-09-21 06:00	904	490
1978	2013-09-21 06:00	3548	46
1979	2013-09-21 06:00	921	2925
1980	2013-09-21 06:00	922	20836
1981	2013-09-21 06:00	916	884
1982	2013-09-21 06:00	911	5642
1983	2013-09-21 06:00	935	83
1984	2013-09-21 07:00	902	682
1985	2013-09-21 07:00	200	9274
1986	2013-09-21 07:00	900	23243
1987	2013-09-21 07:00	904	910
1988	2013-09-21 07:00	926	128
1989	2013-09-21 07:00	921	418
1990	2013-09-21 07:00	922	12693
1991	2013-09-21 07:00	916	2071
1992	2013-09-21 07:00	911	7621
1993	2013-09-21 07:00	935	175
1994	2013-09-21 08:00	902	992
1995	2013-09-21 08:00	200	6010
1996	2013-09-21 08:00	900	16176
1997	2013-09-21 08:00	904	972
1998	2013-09-21 08:00	150	379
1999	2013-09-21 08:00	926	603
2000	2013-09-21 08:00	922	4067
2001	2013-09-21 08:00	916	2398
2002	2013-09-21 08:00	911	4885
2003	2013-09-21 08:00	935	210
2004	2013-09-21 09:00	902	1341
2005	2013-09-21 09:00	200	11859
2006	2013-09-21 09:00	900	25253
2007	2013-09-21 09:00	904	2101
2008	2013-09-21 09:00	150	445
2009	2013-09-21 09:00	926	1335
2010	2013-09-21 09:00	922	7637
2011	2013-09-21 09:00	916	3664
2012	2013-09-21 09:00	911	10398
2013	2013-09-21 09:00	935	326
2014	2013-09-21 10:00	902	1895
2015	2013-09-21 10:00	200	6459
2016	2013-09-21 10:00	900	30830
2017	2013-09-21 10:00	904	1841
2018	2013-09-21 10:00	150	555
2019	2013-09-21 10:00	917	357
2020	2013-09-21 10:00	916	4324
2021	2013-09-21 10:00	911	5618
2022	2013-09-21 10:00	922	11427
2023	2013-09-21 10:00	926	2456
2024	2013-09-21 11:00	902	1852
2025	2013-09-21 11:00	150	1107
2026	2013-09-21 11:00	900	32523
2027	2013-09-21 11:00	904	1972
2028	2013-09-21 11:00	905	244
2029	2013-09-21 11:00	926	2290
2030	2013-09-21 11:00	917	560
2031	2013-09-21 11:00	916	6609
2032	2013-09-21 11:00	922	11070
2033	2013-09-21 11:00	935	373
2034	2013-09-21 12:00	902	1590
2035	2013-09-21 12:00	150	563
2036	2013-09-21 12:00	900	30869
2037	2013-09-21 12:00	904	2060
2038	2013-09-21 12:00	905	370
2039	2013-09-21 12:00	926	1471
2040	2013-09-21 12:00	917	306
2041	2013-09-21 12:00	916	5960
2042	2013-09-21 12:00	922	7964
2043	2013-09-21 12:00	935	361
2044	2013-09-21 13:00	902	1525
2045	2013-09-21 13:00	200	307
2046	2013-09-21 13:00	900	32187
2047	2013-09-21 13:00	904	2179
2048	2013-09-21 13:00	150	451
2049	2013-09-21 13:00	926	987
2050	2013-09-21 13:00	917	278
2051	2013-09-21 13:00	916	6613
2052	2013-09-21 13:00	922	9657
2053	2013-09-21 13:00	935	309
2054	2013-09-21 14:00	902	1520
2055	2013-09-21 14:00	200	1871
2056	2013-09-21 14:00	900	30760
2057	2013-09-21 14:00	904	2058
2058	2013-09-21 14:00	150	1147
2059	2013-09-21 14:00	926	1051
2060	2013-09-21 14:00	922	8638
2061	2013-09-21 14:00	916	6971
2062	2013-09-21 14:00	911	1553
2063	2013-09-21 14:00	935	318
2064	2013-09-21 15:00	902	1530
2065	2013-09-21 15:00	150	3943
2066	2013-09-21 15:00	900	27499
2067	2013-09-21 15:00	904	2411
2068	2013-09-21 15:00	905	293
2069	2013-09-21 15:00	926	1483
2070	2013-09-21 15:00	914	294
2071	2013-09-21 15:00	922	5305
2072	2013-09-21 15:00	916	6140
2073	2013-09-21 15:00	935	462
2074	2013-09-21 16:00	902	1504
2075	2013-09-21 16:00	200	428
2076	2013-09-21 16:00	900	30580
2077	2013-09-21 16:00	904	2031
2078	2013-09-21 16:00	150	2083
2079	2013-09-21 16:00	926	1911
2080	2013-09-21 16:00	917	226
2081	2013-09-21 16:00	916	6435
2082	2013-09-21 16:00	922	10003
2083	2013-09-21 16:00	935	361
2084	2013-09-21 17:00	902	1426
2085	2013-09-21 17:00	200	263
2086	2013-09-21 17:00	900	29531
2087	2013-09-21 17:00	904	2265
2088	2013-09-21 17:00	150	454
2089	2013-09-21 17:00	926	1071
2090	2013-09-21 17:00	917	258
2091	2013-09-21 17:00	916	6420
2092	2013-09-21 17:00	922	9549
2093	2013-09-21 17:00	935	359
2094	2013-09-21 18:00	902	1569
2095	2013-09-21 18:00	200	555
2096	2013-09-21 18:00	900	27885
2097	2013-09-21 18:00	904	1911
2098	2013-09-21 18:00	150	283
2099	2013-09-21 18:00	926	705
2100	2013-09-21 18:00	917	692
2101	2013-09-21 18:00	916	6387
2102	2013-09-21 18:00	922	6351
2103	2013-09-21 18:00	935	346
2104	2013-09-21 19:00	902	1512
2105	2013-09-21 19:00	200	773
2106	2013-09-21 19:00	900	23741
2107	2013-09-21 19:00	907	284
2108	2013-09-21 19:00	904	2117
2109	2013-09-21 19:00	926	482
2110	2013-09-21 19:00	917	828
2111	2013-09-21 19:00	916	6245
2112	2013-09-21 19:00	922	1802
2113	2013-09-21 19:00	935	435
2114	2013-09-21 20:00	902	1659
2115	2013-09-21 20:00	200	961
2116	2013-09-21 20:00	900	21603
2117	2013-09-21 20:00	907	342
2118	2013-09-21 20:00	904	1953
2119	2013-09-21 20:00	917	895
2120	2013-09-21 20:00	916	6225
2121	2013-09-21 20:00	911	315
2122	2013-09-21 20:00	922	1133
2123	2013-09-21 20:00	935	354
2124	2013-09-21 23:00	902	19
2125	2013-09-21 23:00	150	17
2126	2013-09-21 23:00	900	1999
2127	2013-09-21 23:00	916	103
2128	2013-09-21 23:00	904	67
2129	2013-09-21 23:00	3548	54
2130	2013-09-21 23:00	110	515
2131	2013-09-21 23:00	917	177
2132	2013-09-21 23:00	930	37
2133	2013-09-21 23:00	926	69
2134	2013-09-22 00:00	902	301
2135	2013-09-22 00:00	903	161
2136	2013-09-22 00:00	900	12366
2137	2013-09-22 00:00	904	3169
2138	2013-09-22 00:00	200	129
2139	2013-09-22 00:00	926	82
2140	2013-09-22 00:00	921	480
2141	2013-09-22 00:00	922	8168
2142	2013-09-22 00:00	916	3563
2143	2013-09-22 00:00	935	700
2144	2013-09-22 01:00	902	936
2145	2013-09-22 01:00	903	487
2146	2013-09-22 01:00	900	13450
2147	2013-09-22 01:00	904	7079
2148	2013-09-22 01:00	200	137
2149	2013-09-22 01:00	921	548
2150	2013-09-22 01:00	917	119
2151	2013-09-22 01:00	916	5538
2152	2013-09-22 01:00	922	7930
2153	2013-09-22 01:00	935	1410
2154	2013-09-22 02:00	902	495
2155	2013-09-22 02:00	903	445
2156	2013-09-22 02:00	900	7803
2157	2013-09-22 02:00	904	5524
2158	2013-09-22 02:00	200	101
2159	2013-09-22 02:00	921	476
2160	2013-09-22 02:00	917	90
2161	2013-09-22 02:00	916	4662
2162	2013-09-22 02:00	922	6172
2163	2013-09-22 02:00	935	1122
2164	2013-09-22 03:00	902	357
2165	2013-09-22 03:00	903	433
2166	2013-09-22 03:00	900	14880
2167	2013-09-22 03:00	904	4174
2168	2013-09-22 03:00	200	742
2169	2013-09-22 03:00	921	2762
2170	2013-09-22 03:00	922	14660
2171	2013-09-22 03:00	916	5885
2172	2013-09-22 03:00	911	625
2173	2013-09-22 03:00	935	805
2174	2013-09-22 04:00	902	139
2175	2013-09-22 04:00	200	9695
2176	2013-09-22 04:00	900	27994
2177	2013-09-22 04:00	904	992
2178	2013-09-22 04:00	903	67
2179	2013-09-22 04:00	921	5193
2180	2013-09-22 04:00	922	27548
2181	2013-09-22 04:00	916	5851
2182	2013-09-22 04:00	911	9844
2183	2013-09-22 04:00	935	96
2184	2013-09-22 05:00	902	109
2185	2013-09-22 05:00	200	9616
2186	2013-09-22 05:00	900	23658
2187	2013-09-22 05:00	904	102
2188	2013-09-22 05:00	3548	36
2189	2013-09-22 05:00	921	2598
2190	2013-09-22 05:00	922	22936
2191	2013-09-22 05:00	916	4860
2192	2013-09-22 05:00	911	9765
2193	2013-09-22 05:00	926	100
2194	2013-09-22 06:00	902	301
2195	2013-09-22 06:00	200	5974
2196	2013-09-22 06:00	900	17323
2197	2013-09-22 06:00	904	368
2198	2013-09-22 06:00	150	82
2199	2013-09-22 06:00	921	616
2200	2013-09-22 06:00	922	13972
2201	2013-09-22 06:00	916	4910
2202	2013-09-22 06:00	911	5688
2203	2013-09-22 06:00	926	187
2204	2013-09-22 07:00	902	237
2205	2013-09-22 07:00	200	10691
2206	2013-09-22 07:00	900	20813
2207	2013-09-22 07:00	904	1269
2208	2013-09-22 07:00	926	256
2209	2013-09-22 07:00	921	1091
2210	2013-09-22 07:00	922	13682
2211	2013-09-22 07:00	916	7105
2212	2013-09-22 07:00	911	10541
2213	2013-09-22 07:00	935	167
2214	2013-09-22 08:00	902	238
2215	2013-09-22 08:00	200	6647
2216	2013-09-22 08:00	900	16365
2217	2013-09-22 08:00	904	1599
2218	2013-09-22 08:00	150	247
2219	2013-09-22 08:00	926	356
2220	2013-09-22 08:00	922	7429
2221	2013-09-22 08:00	916	6530
2222	2013-09-22 08:00	911	7465
2223	2013-09-22 08:00	935	256
2224	2013-09-22 09:00	200	11563
2225	2013-09-22 09:00	900	19494
2226	2013-09-22 09:00	904	2688
2227	2013-09-22 09:00	150	2053
2228	2013-09-22 09:00	926	638
2229	2013-09-22 09:00	921	851
2230	2013-09-22 09:00	922	5639
2231	2013-09-22 09:00	916	9592
2232	2013-09-22 09:00	911	11787
2233	2013-09-22 09:00	935	508
2234	2013-09-22 10:00	902	864
2235	2013-09-22 10:00	200	3118
2236	2013-09-22 10:00	900	25890
2237	2013-09-22 10:00	904	3614
2238	2013-09-22 10:00	926	878
2239	2013-09-22 10:00	917	342
2240	2013-09-22 10:00	916	6837
2241	2013-09-22 10:00	911	3023
2242	2013-09-22 10:00	922	8418
2243	2013-09-22 10:00	935	738
2244	2013-09-22 11:00	902	665
2245	2013-09-22 11:00	903	365
2246	2013-09-22 11:00	900	28502
2247	2013-09-22 11:00	904	3920
2248	2013-09-22 11:00	200	1077
2249	2013-09-22 11:00	926	684
2250	2013-09-22 11:00	922	9212
2251	2013-09-22 11:00	916	4484
2252	2013-09-22 11:00	911	806
2253	2013-09-22 11:00	935	772
2254	2013-09-22 12:00	902	733
2255	2013-09-22 12:00	200	1178
2256	2013-09-22 12:00	900	26042
2257	2013-09-22 12:00	904	3946
2258	2013-09-22 12:00	926	718
2259	2013-09-22 12:00	917	406
2260	2013-09-22 12:00	916	4073
2261	2013-09-22 12:00	911	852
2262	2013-09-22 12:00	922	7640
2263	2013-09-22 12:00	935	770
2264	2013-09-22 13:00	902	602
2265	2013-09-22 13:00	200	1261
2266	2013-09-22 13:00	900	27647
2267	2013-09-22 13:00	904	3878
2268	2013-09-22 13:00	150	1383
2269	2013-09-22 13:00	926	934
2270	2013-09-22 13:00	922	9229
2271	2013-09-22 13:00	916	4215
2272	2013-09-22 13:00	911	977
2273	2013-09-22 13:00	935	787
2274	2013-09-22 14:00	902	689
2275	2013-09-22 14:00	903	361
2276	2013-09-22 14:00	900	24725
2277	2013-09-22 14:00	904	4184
2278	2013-09-22 14:00	200	897
2279	2013-09-22 14:00	926	513
2280	2013-09-22 14:00	922	7074
2281	2013-09-22 14:00	916	5084
2282	2013-09-22 14:00	911	562
2283	2013-09-22 14:00	935	922
2284	2013-09-22 15:00	902	744
2285	2013-09-22 15:00	200	1616
2286	2013-09-22 15:00	900	26301
2287	2013-09-22 15:00	904	4574
2288	2013-09-22 15:00	150	336
2289	2013-09-22 15:00	926	344
2290	2013-09-22 15:00	922	8561
2291	2013-09-22 15:00	916	4481
2292	2013-09-22 15:00	911	1147
2293	2013-09-22 15:00	935	866
2294	2013-09-22 16:00	902	781
2295	2013-09-22 16:00	200	1607
2296	2013-09-22 16:00	900	24941
2297	2013-09-22 16:00	904	5073
2298	2013-09-22 16:00	150	904
2299	2013-09-22 16:00	926	363
2300	2013-09-22 16:00	922	7721
2301	2013-09-22 16:00	916	4669
2302	2013-09-22 16:00	911	1222
2303	2013-09-22 16:00	935	1013
2304	2013-09-22 17:00	902	782
2305	2013-09-22 17:00	200	1369
2306	2013-09-22 17:00	900	25743
2307	2013-09-22 17:00	904	4970
2308	2013-09-22 17:00	150	368
2309	2013-09-22 17:00	926	354
2310	2013-09-22 17:00	922	8730
2311	2013-09-22 17:00	916	4695
2312	2013-09-22 17:00	911	1065
2313	2013-09-22 17:00	935	1011
2314	2013-09-22 18:00	902	713
2315	2013-09-22 18:00	903	375
2316	2013-09-22 18:00	900	25037
2317	2013-09-22 18:00	904	4644
2318	2013-09-22 18:00	200	1670
2319	2013-09-22 18:00	926	290
2320	2013-09-22 18:00	922	8499
2321	2013-09-22 18:00	916	4558
2322	2013-09-22 18:00	911	1322
2323	2013-09-22 18:00	935	946
2324	2013-09-22 19:00	902	725
2325	2013-09-22 19:00	200	1497
2326	2013-09-22 19:00	900	25058
2327	2013-09-22 19:00	904	3933
2328	2013-09-22 19:00	926	344
2329	2013-09-22 19:00	914	1025
2330	2013-09-22 19:00	922	8438
2331	2013-09-22 19:00	916	4574
2332	2013-09-22 19:00	911	1185
2333	2013-09-22 19:00	935	854
2334	2013-09-22 20:00	902	677
2335	2013-09-22 20:00	903	408
2336	2013-09-22 20:00	900	24693
2337	2013-09-22 20:00	904	3817
2338	2013-09-22 20:00	200	1512
2339	2013-09-22 20:00	914	2832
2340	2013-09-22 20:00	922	8549
2341	2013-09-22 20:00	916	4468
2342	2013-09-22 20:00	911	1269
2343	2013-09-22 20:00	935	830
2344	2013-09-22 21:00	902	358
2345	2013-09-22 21:00	903	248
2346	2013-09-22 21:00	900	16271
2347	2013-09-22 21:00	904	2810
2348	2013-09-22 21:00	200	801
2349	2013-09-22 21:00	914	697
2350	2013-09-22 21:00	922	4929
2351	2013-09-22 21:00	916	2801
2352	2013-09-22 21:00	911	635
2353	2013-09-22 21:00	935	664
2354	2013-09-22 22:00	902	514
2355	2013-09-22 22:00	903	256
2356	2013-09-22 22:00	900	13531
2357	2013-09-22 22:00	904	3125
2358	2013-09-22 22:00	200	656
2359	2013-09-22 22:00	926	324
2360	2013-09-22 22:00	922	4505
2361	2013-09-22 22:00	916	2570
2362	2013-09-22 22:00	911	543
2363	2013-09-22 22:00	935	669
2364	2013-09-22 23:00	902	312
2365	2013-09-22 23:00	903	259
2366	2013-09-22 23:00	900	12824
2367	2013-09-22 23:00	904	4702
2368	2013-09-22 23:00	200	865
2369	2013-09-22 23:00	917	128
2370	2013-09-22 23:00	916	3238
2371	2013-09-22 23:00	911	713
2372	2013-09-22 23:00	922	5846
2373	2013-09-22 23:00	935	873
2374	2013-09-23 00:00	902	364
2375	2013-09-23 00:00	903	261
2376	2013-09-23 00:00	900	8797
2377	2013-09-23 00:00	904	5004
2378	2013-09-23 00:00	200	466
2379	2013-09-23 00:00	926	46
2380	2013-09-23 00:00	922	3897
2381	2013-09-23 00:00	916	3092
2382	2013-09-23 00:00	911	471
2383	2013-09-23 00:00	935	797
2384	2013-09-23 01:00	902	340
2385	2013-09-23 01:00	903	342
2386	2013-09-23 01:00	900	8718
2387	2013-09-23 01:00	904	5553
2388	2013-09-23 01:00	200	528
2389	2013-09-23 01:00	926	101
2390	2013-09-23 01:00	922	4836
2391	2013-09-23 01:00	916	3437
2392	2013-09-23 01:00	911	560
2393	2013-09-23 01:00	935	824
2394	2013-09-23 02:00	902	248
2395	2013-09-23 02:00	903	606
2396	2013-09-23 02:00	900	8588
2397	2013-09-23 02:00	904	5007
2398	2013-09-23 02:00	200	1343
2399	2013-09-23 02:00	914	224
2400	2013-09-23 02:00	922	7164
2401	2013-09-23 02:00	916	3684
2402	2013-09-23 02:00	911	1267
2403	2013-09-23 02:00	935	756
2404	2013-09-23 03:00	902	305
2405	2013-09-23 03:00	903	344
2406	2013-09-23 03:00	900	6477
2407	2013-09-23 03:00	904	5776
2408	2013-09-23 03:00	200	4954
2409	2013-09-23 03:00	926	151
2410	2013-09-23 03:00	922	5087
2411	2013-09-23 03:00	916	4296
2412	2013-09-23 03:00	911	4306
2413	2013-09-23 03:00	935	952
2414	2013-09-23 04:00	902	259
2415	2013-09-23 04:00	200	5359
2416	2013-09-23 04:00	900	8055
2417	2013-09-23 04:00	904	4904
2418	2013-09-23 04:00	903	415
2419	2013-09-23 04:00	921	321
2420	2013-09-23 04:00	922	7286
2421	2013-09-23 04:00	916	4135
2422	2013-09-23 04:00	911	4727
2423	2013-09-23 04:00	935	887
2424	2013-09-23 05:00	902	294
2425	2013-09-23 05:00	200	4772
2426	2013-09-23 05:00	900	9920
2427	2013-09-23 05:00	904	4630
2428	2013-09-23 05:00	903	477
2429	2013-09-23 05:00	921	500
2430	2013-09-23 05:00	922	8587
2431	2013-09-23 05:00	916	4010
2432	2013-09-23 05:00	911	4439
2433	2013-09-23 05:00	935	793
2434	2013-09-23 06:00	902	205
2435	2013-09-23 06:00	200	5122
2436	2013-09-23 06:00	900	22489
2437	2013-09-23 06:00	904	1379
2438	2013-09-23 06:00	926	168
2439	2013-09-23 06:00	921	4868
2440	2013-09-23 06:00	922	19231
2441	2013-09-23 06:00	916	1172
2442	2013-09-23 06:00	911	5153
2443	2013-09-23 06:00	935	209
2444	2013-09-23 07:00	902	183
2445	2013-09-23 07:00	200	5616
2446	2013-09-23 07:00	900	23235
2447	2013-09-23 07:00	904	1461
2448	2013-09-23 07:00	926	229
2449	2013-09-23 07:00	921	1764
2450	2013-09-23 07:00	922	16733
2451	2013-09-23 07:00	916	1216
2452	2013-09-23 07:00	911	5073
2453	2013-09-23 07:00	935	268
2454	2013-09-23 08:00	200	5167
2455	2013-09-23 08:00	900	21876
2456	2013-09-23 08:00	904	1855
2457	2013-09-23 08:00	150	501
2458	2013-09-23 08:00	926	336
2459	2013-09-23 08:00	921	252
2460	2013-09-23 08:00	922	12741
2461	2013-09-23 08:00	916	1557
2462	2013-09-23 08:00	911	4857
2463	2013-09-23 08:00	935	372
2464	2013-09-23 09:00	902	568
2465	2013-09-23 09:00	200	6421
2466	2013-09-23 09:00	900	25556
2467	2013-09-23 09:00	904	3036
2468	2013-09-23 09:00	150	607
2469	2013-09-23 09:00	926	594
2470	2013-09-23 09:00	922	12547
2471	2013-09-23 09:00	916	4462
2472	2013-09-23 09:00	911	5699
2473	2013-09-23 09:00	935	542
2474	2013-09-23 10:00	902	1812
2475	2013-09-23 10:00	200	1545
2476	2013-09-23 10:00	900	28460
2477	2013-09-23 10:00	904	3463
2478	2013-09-23 10:00	150	882
2479	2013-09-23 10:00	926	1821
2480	2013-09-23 10:00	922	12674
2481	2013-09-23 10:00	916	6201
2482	2013-09-23 10:00	911	691
2483	2013-09-23 10:00	935	555
2484	2013-09-23 11:00	902	920
2485	2013-09-23 11:00	200	778
2486	2013-09-23 11:00	900	28225
2487	2013-09-23 11:00	904	3182
2488	2013-09-23 11:00	150	1161
2489	2013-09-23 11:00	919	353
2490	2013-09-23 11:00	926	1405
2491	2013-09-23 11:00	922	11309
2492	2013-09-23 11:00	916	5471
2493	2013-09-23 11:00	935	582
2494	2013-09-23 12:00	902	945
2495	2013-09-23 12:00	200	950
2496	2013-09-23 12:00	900	27960
2497	2013-09-23 12:00	904	3064
2498	2013-09-23 12:00	150	1033
2499	2013-09-23 12:00	919	458
2500	2013-09-23 12:00	926	1460
2501	2013-09-23 12:00	922	11558
2502	2013-09-23 12:00	916	5477
2503	2013-09-23 12:00	935	501
2504	2013-09-23 13:00	902	1094
2505	2013-09-23 13:00	200	508
2506	2013-09-23 13:00	900	29580
2507	2013-09-23 13:00	904	3087
2508	2013-09-23 13:00	150	597
2509	2013-09-23 13:00	919	334
2510	2013-09-23 13:00	926	1398
2511	2013-09-23 13:00	922	14239
2512	2013-09-23 13:00	916	5861
2513	2013-09-23 13:00	935	522
2514	2013-09-23 14:00	902	884
2515	2013-09-23 14:00	200	717
2516	2013-09-23 14:00	900	29028
2517	2013-09-23 14:00	904	3179
2518	2013-09-23 14:00	150	688
2519	2013-09-23 14:00	919	295
2520	2013-09-23 14:00	926	1187
2521	2013-09-23 14:00	922	12299
2522	2013-09-23 14:00	916	5580
2523	2013-09-23 14:00	935	596
2524	2013-09-23 15:00	902	942
2525	2013-09-23 15:00	200	936
2526	2013-09-23 15:00	900	27754
2527	2013-09-23 15:00	904	3600
2528	2013-09-23 15:00	150	968
2529	2013-09-23 15:00	926	1211
2530	2013-09-23 15:00	922	10490
2531	2013-09-23 15:00	916	5462
2532	2013-09-23 15:00	911	331
2533	2013-09-23 15:00	935	569
2534	2013-09-23 16:00	902	777
2535	2013-09-23 16:00	200	792
2536	2013-09-23 16:00	900	26924
2537	2013-09-23 16:00	904	3327
2538	2013-09-23 16:00	150	1770
2539	2013-09-23 16:00	926	1201
2540	2013-09-23 16:00	922	10977
2541	2013-09-23 16:00	916	5620
2542	2013-09-23 16:00	911	292
2543	2013-09-23 16:00	935	620
2544	2013-09-23 17:00	902	702
2545	2013-09-23 17:00	903	310
2546	2013-09-23 17:00	900	25456
2547	2013-09-23 17:00	904	3572
2548	2013-09-23 17:00	200	979
2549	2013-09-23 17:00	150	358
2550	2013-09-23 17:00	926	915
2551	2013-09-23 17:00	922	8061
2552	2013-09-23 17:00	916	5202
2553	2013-09-23 17:00	935	579
2554	2013-09-23 18:00	902	622
2555	2013-09-23 18:00	200	818
2556	2013-09-23 18:00	900	28027
2557	2013-09-23 18:00	904	3231
2558	2013-09-23 18:00	150	2416
2559	2013-09-23 18:00	926	630
2560	2013-09-23 18:00	922	9604
2561	2013-09-23 18:00	916	5336
2562	2013-09-23 18:00	911	260
2563	2013-09-23 18:00	935	575
2564	2013-09-23 19:00	902	671
2565	2013-09-23 19:00	200	757
2566	2013-09-23 19:00	900	24284
2567	2013-09-23 19:00	904	3000
2568	2013-09-23 19:00	150	636
2569	2013-09-23 19:00	926	638
2570	2013-09-23 19:00	110	329
2571	2013-09-23 19:00	922	5858
2572	2013-09-23 19:00	916	5382
2573	2013-09-23 19:00	935	549
2574	2013-09-23 20:00	902	546
2575	2013-09-23 20:00	903	281
2576	2013-09-23 20:00	900	24007
2577	2013-09-23 20:00	904	3033
2578	2013-09-23 20:00	200	1312
2579	2013-09-23 20:00	926	688
2580	2013-09-23 20:00	922	7488
2581	2013-09-23 20:00	916	5495
2582	2013-09-23 20:00	911	537
2583	2013-09-23 20:00	935	581
2584	2013-09-23 21:00	902	442
2585	2013-09-23 21:00	200	525
2586	2013-09-23 21:00	900	18311
2587	2013-09-23 21:00	904	2217
2588	2013-09-23 21:00	926	395
2589	2013-09-23 21:00	917	255
2590	2013-09-23 21:00	916	3690
2591	2013-09-23 21:00	911	206
2592	2013-09-23 21:00	922	5643
2593	2013-09-23 21:00	935	380
2594	2013-09-23 22:00	902	645
2595	2013-09-23 22:00	903	222
2596	2013-09-23 22:00	900	13862
2597	2013-09-23 22:00	904	3188
2598	2013-09-23 22:00	200	329
2599	2013-09-23 22:00	926	445
2600	2013-09-23 22:00	922	3733
2601	2013-09-23 22:00	916	3406
2602	2013-09-23 22:00	911	141
2603	2013-09-23 22:00	935	499
2604	2013-09-23 23:00	902	329
2605	2013-09-23 23:00	903	290
2606	2013-09-23 23:00	900	13259
2607	2013-09-23 23:00	904	4869
2608	2013-09-23 23:00	200	534
2609	2013-09-23 23:00	703	358
2610	2013-09-23 23:00	926	228
2611	2013-09-23 23:00	922	5641
2612	2013-09-23 23:00	916	4380
2613	2013-09-23 23:00	935	727
2614	2013-09-24 00:00	902	432
2615	2013-09-24 00:00	903	316
2616	2013-09-24 00:00	900	13477
2617	2013-09-24 00:00	904	6717
2618	2013-09-24 00:00	200	852
2619	2013-09-24 00:00	921	204
2620	2013-09-24 00:00	922	6679
2621	2013-09-24 00:00	916	6064
2622	2013-09-24 00:00	911	383
2623	2013-09-24 00:00	935	1069
2624	2013-09-24 01:00	902	342
2625	2013-09-24 01:00	903	321
2626	2013-09-24 01:00	900	9963
2627	2013-09-24 01:00	904	5626
2628	2013-09-24 01:00	200	301
2629	2013-09-24 01:00	926	119
2630	2013-09-24 01:00	922	5097
2631	2013-09-24 01:00	916	4762
2632	2013-09-24 01:00	911	117
2633	2013-09-24 01:00	935	926
2634	2013-09-24 02:00	902	9
2635	2013-09-24 02:00	903	5
2636	2013-09-24 02:00	900	362
2637	2013-09-24 02:00	904	54
2638	2013-09-24 02:00	3548	23
2639	2013-09-24 02:00	926	8
2640	2013-09-24 02:00	500	9
2641	2013-09-24 02:00	922	33
2642	2013-09-24 02:00	916	57
2643	2013-09-24 02:00	935	7
2644	2013-09-24 03:00	902	15
2645	2013-09-24 03:00	903	1
2646	2013-09-24 03:00	900	216
2647	2013-09-24 03:00	930	3
2648	2013-09-24 03:00	916	9
2649	2013-09-24 03:00	904	12
2650	2013-09-24 03:00	3548	33
2651	2013-09-24 03:00	926	10
2652	2013-09-24 03:00	549	2
2653	2013-09-24 03:00	500	9
2654	2013-09-24 04:00	902	1
2655	2013-09-24 04:00	900	241
2656	2013-09-24 04:00	916	11
2657	2013-09-24 04:00	904	6
2658	2013-09-24 04:00	3548	38
2659	2013-09-24 04:00	926	1
2660	2013-09-24 04:00	110	3
2661	2013-09-24 04:00	549	1
2662	2013-09-24 04:00	502	4
2663	2013-09-24 04:00	500	8
2664	2013-09-24 05:00	902	254
2665	2013-09-24 05:00	903	228
2666	2013-09-24 05:00	900	5981
2667	2013-09-24 05:00	904	2943
2668	2013-09-24 05:00	200	327
2669	2013-09-24 05:00	921	55
2670	2013-09-24 05:00	922	1568
2671	2013-09-24 05:00	916	2601
2672	2013-09-24 05:00	911	142
2673	2013-09-24 05:00	935	630
2674	2013-09-24 06:00	902	287
2675	2013-09-24 06:00	903	220
2676	2013-09-24 06:00	900	13212
2677	2013-09-24 06:00	904	3437
2678	2013-09-24 06:00	200	440
2679	2013-09-24 06:00	921	67
2680	2013-09-24 06:00	922	7023
2681	2013-09-24 06:00	916	4298
2682	2013-09-24 06:00	911	91
2683	2013-09-24 06:00	935	621
2684	2013-09-24 07:00	902	363
2685	2013-09-24 07:00	903	281
2686	2013-09-24 07:00	900	19183
2687	2013-09-24 07:00	904	4242
2688	2013-09-24 07:00	200	1443
2689	2013-09-24 07:00	919	98
2690	2013-09-24 07:00	922	9231
2691	2013-09-24 07:00	916	5783
2692	2013-09-24 07:00	911	492
2693	2013-09-24 07:00	935	911
2694	2013-09-24 08:00	902	509
2695	2013-09-24 08:00	903	329
2696	2013-09-24 08:00	900	19007
2697	2013-09-24 08:00	904	4278
2698	2013-09-24 08:00	200	1475
2699	2013-09-24 08:00	150	284
2700	2013-09-24 08:00	922	6805
2701	2013-09-24 08:00	916	5513
2702	2013-09-24 08:00	911	734
2703	2013-09-24 08:00	935	1065
2704	2013-09-24 09:00	902	599
2705	2013-09-24 09:00	200	1291
2706	2013-09-24 09:00	900	25812
2707	2013-09-24 09:00	904	4414
2708	2013-09-24 09:00	150	511
2709	2013-09-24 09:00	926	1444
2710	2013-09-24 09:00	922	10311
2711	2013-09-24 09:00	916	6121
2712	2013-09-24 09:00	911	460
2713	2013-09-24 09:00	935	891
2714	2013-09-24 10:00	902	1309
2715	2013-09-24 10:00	200	1349
2716	2013-09-24 10:00	900	23214
2717	2013-09-24 10:00	904	4518
2718	2013-09-24 10:00	926	1485
2719	2013-09-24 10:00	100	750
2720	2013-09-24 10:00	916	5928
2721	2013-09-24 10:00	911	557
2722	2013-09-24 10:00	922	4412
2723	2013-09-24 10:00	935	887
2724	2013-09-24 11:00	902	933
2725	2013-09-24 11:00	200	1174
2726	2013-09-24 11:00	900	24315
2727	2013-09-24 11:00	904	4290
2728	2013-09-24 11:00	150	873
2729	2013-09-24 11:00	926	1330
2730	2013-09-24 11:00	100	1886
2731	2013-09-24 11:00	916	5596
2732	2013-09-24 11:00	922	4266
2733	2013-09-24 11:00	935	814
2734	2013-09-24 12:00	902	849
2735	2013-09-24 12:00	200	1066
2736	2013-09-24 12:00	900	24169
2737	2013-09-24 12:00	904	3838
2738	2013-09-24 12:00	150	1097
2739	2013-09-24 12:00	926	1202
2740	2013-09-24 12:00	100	1903
2741	2013-09-24 12:00	916	5473
2742	2013-09-24 12:00	922	4215
2743	2013-09-24 12:00	935	680
2744	2013-09-24 13:00	902	856
2745	2013-09-24 13:00	200	1159
2746	2013-09-24 13:00	900	23250
2747	2013-09-24 13:00	904	4073
2748	2013-09-24 13:00	926	1070
2749	2013-09-24 13:00	110	706
2750	2013-09-24 13:00	100	1744
2751	2013-09-24 13:00	916	5207
2752	2013-09-24 13:00	922	3719
2753	2013-09-24 13:00	935	710
2754	2013-09-24 14:00	902	811
2755	2013-09-24 14:00	200	977
2756	2013-09-24 14:00	900	22634
2757	2013-09-24 14:00	904	3618
2758	2013-09-24 14:00	919	751
2759	2013-09-24 14:00	926	1222
2760	2013-09-24 14:00	100	1822
2761	2013-09-24 14:00	916	5091
2762	2013-09-24 14:00	922	4284
2763	2013-09-24 14:00	935	642
2764	2013-09-24 15:00	902	3040
2765	2013-09-24 15:00	200	1141
2766	2013-09-24 15:00	900	20343
2767	2013-09-24 15:00	904	3688
2768	2013-09-24 15:00	150	903
2769	2013-09-24 15:00	926	1068
2770	2013-09-24 15:00	100	998
2771	2013-09-24 15:00	916	11697
2772	2013-09-24 15:00	922	3155
2773	2013-09-24 15:00	935	598
2774	2013-09-24 16:00	902	1072
2775	2013-09-24 16:00	200	2247
2776	2013-09-24 16:00	900	27679
2777	2013-09-24 16:00	904	4875
2778	2013-09-24 16:00	150	1554
2779	2013-09-24 16:00	100	1911
2780	2013-09-24 16:00	916	6755
2781	2013-09-24 16:00	911	964
2782	2013-09-24 16:00	922	4493
2783	2013-09-24 16:00	926	1024
2784	2013-09-24 17:00	902	4489
2785	2013-09-24 17:00	200	2462
2786	2013-09-24 17:00	900	22045
2787	2013-09-24 17:00	904	5292
2788	2013-09-24 17:00	920	866
2789	2013-09-24 17:00	100	2347
2790	2013-09-24 17:00	916	13752
2791	2013-09-24 17:00	911	1087
2792	2013-09-24 17:00	922	6167
2793	2013-09-24 17:00	926	937
2794	2013-09-24 18:00	902	1129
2795	2013-09-24 18:00	200	3125
2796	2013-09-24 18:00	900	27251
2797	2013-09-24 18:00	904	5026
2798	2013-09-24 18:00	926	1087
2799	2013-09-24 18:00	100	1614
2800	2013-09-24 18:00	916	7697
2801	2013-09-24 18:00	911	1473
2802	2013-09-24 18:00	922	3939
2803	2013-09-24 18:00	935	915
2804	2013-09-24 19:00	902	901
2805	2013-09-24 19:00	200	2099
2806	2013-09-24 19:00	900	24153
2807	2013-09-24 19:00	904	3797
2808	2013-09-24 19:00	926	832
2809	2013-09-24 19:00	100	2069
2810	2013-09-24 19:00	916	6867
2811	2013-09-24 19:00	911	898
2812	2013-09-24 19:00	922	4676
2813	2013-09-24 19:00	935	814
2814	2013-09-24 20:00	902	1427
2815	2013-09-24 20:00	200	1826
2816	2013-09-24 20:00	900	21158
2817	2013-09-24 20:00	904	3728
2818	2013-09-24 20:00	926	605
2819	2013-09-24 20:00	100	2100
2820	2013-09-24 20:00	916	7733
2821	2013-09-24 20:00	911	843
2822	2013-09-24 20:00	922	4743
2823	2013-09-24 20:00	935	794
2824	2013-09-24 21:00	902	513
2825	2013-09-24 21:00	200	1380
2826	2013-09-24 21:00	900	17326
2827	2013-09-24 21:00	904	3395
2828	2013-09-24 21:00	926	308
2829	2013-09-24 21:00	100	1197
2830	2013-09-24 21:00	916	4985
2831	2013-09-24 21:00	911	579
2832	2013-09-24 21:00	922	2733
2833	2013-09-24 21:00	935	678
2834	2013-09-24 22:00	902	562
2835	2013-09-24 22:00	200	1386
2836	2013-09-24 22:00	900	17301
2837	2013-09-24 22:00	904	4737
2838	2013-09-24 22:00	926	429
2839	2013-09-24 22:00	100	2045
2840	2013-09-24 22:00	916	5476
2841	2013-09-24 22:00	911	665
2842	2013-09-24 22:00	922	4597
2843	2013-09-24 22:00	935	877
2844	2013-09-24 23:00	902	468
2845	2013-09-24 23:00	903	216
2846	2013-09-24 23:00	900	10775
2847	2013-09-24 23:00	904	4119
2848	2013-09-24 23:00	703	317
2849	2013-09-24 23:00	926	637
2850	2013-09-24 23:00	100	1313
2851	2013-09-24 23:00	916	4159
2852	2013-09-24 23:00	922	3340
2853	2013-09-24 23:00	935	662
2854	2013-09-25 00:00	902	421
2855	2013-09-25 00:00	903	219
2856	2013-09-25 00:00	900	8054
2857	2013-09-25 00:00	904	5142
2858	2013-09-25 00:00	200	183
2859	2013-09-25 00:00	921	155
2860	2013-09-25 00:00	100	1115
2861	2013-09-25 00:00	916	4689
2862	2013-09-25 00:00	922	3104
2863	2013-09-25 00:00	935	932
2864	2013-09-25 01:00	902	446
2865	2013-09-25 01:00	903	317
2866	2013-09-25 01:00	900	9015
2867	2013-09-25 01:00	904	6855
2868	2013-09-25 01:00	200	203
2869	2013-09-25 01:00	921	125
2870	2013-09-25 01:00	100	883
2871	2013-09-25 01:00	916	5218
2872	2013-09-25 01:00	922	2683
2873	2013-09-25 01:00	935	1241
2874	2013-09-25 02:00	902	451
2875	2013-09-25 02:00	903	358
2876	2013-09-25 02:00	900	7882
2877	2013-09-25 02:00	907	78
2878	2013-09-25 02:00	904	6717
2879	2013-09-25 02:00	920	88
2880	2013-09-25 02:00	100	906
2881	2013-09-25 02:00	916	5185
2882	2013-09-25 02:00	922	3132
2883	2013-09-25 02:00	935	1293
2884	2013-09-25 03:00	902	291
2885	2013-09-25 03:00	903	276
2886	2013-09-25 03:00	900	7820
2887	2013-09-25 03:00	901	76
2888	2013-09-25 03:00	904	6053
2889	2013-09-25 03:00	920	72
2890	2013-09-25 03:00	100	1956
2891	2013-09-25 03:00	916	5651
2892	2013-09-25 03:00	922	5193
2893	2013-09-25 03:00	935	1101
2894	2013-09-25 04:00	902	291
2895	2013-09-25 04:00	903	378
2896	2013-09-25 04:00	900	7459
2897	2013-09-25 04:00	904	6036
2898	2013-09-25 04:00	200	107
2899	2013-09-25 04:00	920	79
2900	2013-09-25 04:00	100	1901
2901	2013-09-25 04:00	916	6646
2902	2013-09-25 04:00	922	5308
2903	2013-09-25 04:00	935	1031
2904	2013-09-25 05:00	902	339
2905	2013-09-25 05:00	903	410
2906	2013-09-25 05:00	900	7713
2907	2013-09-25 05:00	904	5816
2908	2013-09-25 05:00	200	155
2909	2013-09-25 05:00	921	107
2910	2013-09-25 05:00	100	1443
2911	2013-09-25 05:00	916	6167
2912	2013-09-25 05:00	922	4452
2913	2013-09-25 05:00	935	1057
2914	2013-09-25 06:00	902	270
2915	2013-09-25 06:00	903	231
2916	2013-09-25 06:00	900	11159
2917	2013-09-25 06:00	904	3828
2918	2013-09-25 06:00	200	366
2919	2013-09-25 06:00	914	62
2920	2013-09-25 06:00	100	2398
2921	2013-09-25 06:00	916	4421
2922	2013-09-25 06:00	922	6079
2923	2013-09-25 06:00	935	631
2924	2013-09-25 07:00	902	271
2925	2013-09-25 07:00	903	216
2926	2013-09-25 07:00	900	11619
2927	2013-09-25 07:00	904	3100
2928	2013-09-25 07:00	200	256
2929	2013-09-25 07:00	922	4516
2930	2013-09-25 07:00	917	89
2931	2013-09-25 07:00	916	4072
2932	2013-09-25 07:00	100	1877
2933	2013-09-25 07:00	935	540
2934	2013-09-25 08:00	902	326
2935	2013-09-25 08:00	903	191
2936	2013-09-25 08:00	900	12817
2937	2013-09-25 08:00	904	2845
2938	2013-09-25 08:00	150	292
2939	2013-09-25 08:00	926	171
2940	2013-09-25 08:00	100	1806
2941	2013-09-25 08:00	916	3328
2942	2013-09-25 08:00	922	4176
2943	2013-09-25 08:00	935	516
2944	2013-09-25 09:00	902	725
2945	2013-09-25 09:00	200	614
2946	2013-09-25 09:00	900	24794
2947	2013-09-25 09:00	904	5261
2948	2013-09-25 09:00	150	739
2949	2013-09-25 09:00	926	719
2950	2013-09-25 09:00	100	3615
2951	2013-09-25 09:00	916	7915
2952	2013-09-25 09:00	922	8476
2953	2013-09-25 09:00	935	1015
2954	2013-09-25 10:00	902	1425
2955	2013-09-25 10:00	200	703
2956	2013-09-25 10:00	900	27403
2957	2013-09-25 10:00	904	4509
2958	2013-09-25 10:00	150	546
2959	2013-09-25 10:00	926	1456
2960	2013-09-25 10:00	100	3084
2961	2013-09-25 10:00	916	7065
2962	2013-09-25 10:00	922	6762
2963	2013-09-25 10:00	935	733
2964	2013-09-25 11:00	902	858
2965	2013-09-25 11:00	150	768
2966	2013-09-25 11:00	900	25606
2967	2013-09-25 11:00	904	4654
2968	2013-09-25 11:00	926	1490
2969	2013-09-25 11:00	110	712
2970	2013-09-25 11:00	100	3168
2971	2013-09-25 11:00	916	7415
2972	2013-09-25 11:00	922	7452
2973	2013-09-25 11:00	935	808
2974	2013-09-25 12:00	902	921
2975	2013-09-25 12:00	150	719
2976	2013-09-25 12:00	900	25381
2977	2013-09-25 12:00	904	4362
2978	2013-09-25 12:00	926	2198
2979	2013-09-25 12:00	110	2457
2980	2013-09-25 12:00	100	2851
2981	2013-09-25 12:00	916	6777
2982	2013-09-25 12:00	922	6537
2983	2013-09-25 12:00	935	750
2984	2013-09-25 13:00	902	977
2985	2013-09-25 13:00	200	809
2986	2013-09-25 13:00	900	26097
2987	2013-09-25 13:00	904	4605
2988	2013-09-25 13:00	150	468
2989	2013-09-25 13:00	926	1251
2990	2013-09-25 13:00	100	2861
2991	2013-09-25 13:00	916	7245
2992	2013-09-25 13:00	922	6325
2993	2013-09-25 13:00	935	676
2994	2013-09-25 14:00	902	1150
2995	2013-09-25 14:00	200	1035
2996	2013-09-25 14:00	900	26234
2997	2013-09-25 14:00	904	4703
2998	2013-09-25 14:00	150	387
2999	2013-09-25 14:00	926	1372
3000	2013-09-25 14:00	100	2882
3001	2013-09-25 14:00	916	7152
3002	2013-09-25 14:00	922	6237
3003	2013-09-25 14:00	935	725
3004	2013-09-25 15:00	902	893
3005	2013-09-25 15:00	200	1062
3006	2013-09-25 15:00	900	25361
3007	2013-09-25 15:00	904	4493
3008	2013-09-25 15:00	150	803
3009	2013-09-25 15:00	100	2727
3010	2013-09-25 15:00	916	7752
3011	2013-09-25 15:00	911	750
3012	2013-09-25 15:00	922	6442
3013	2013-09-25 15:00	926	1893
3014	2013-09-25 16:00	902	791
3015	2013-09-25 16:00	903	478
3016	2013-09-25 16:00	900	27476
3017	2013-09-25 16:00	904	4714
3018	2013-09-25 16:00	150	1538
3019	2013-09-25 16:00	926	1173
3020	2013-09-25 16:00	100	2444
3021	2013-09-25 16:00	916	7782
3022	2013-09-25 16:00	922	5933
3023	2013-09-25 16:00	935	800
3024	2013-09-25 17:00	902	704
3025	2013-09-25 17:00	903	405
3026	2013-09-25 17:00	900	25844
3027	2013-09-25 17:00	904	4710
3028	2013-09-25 17:00	926	1091
3029	2013-09-25 17:00	110	1776
3030	2013-09-25 17:00	100	3157
3031	2013-09-25 17:00	916	7633
3032	2013-09-25 17:00	922	7343
3033	2013-09-25 17:00	935	776
3034	2013-09-25 18:00	902	790
3035	2013-09-25 18:00	150	697
3036	2013-09-25 18:00	900	27507
3037	2013-09-25 18:00	904	4800
3038	2013-09-25 18:00	926	1124
3039	2013-09-25 18:00	110	619
3040	2013-09-25 18:00	100	2480
3041	2013-09-25 18:00	916	8485
3042	2013-09-25 18:00	922	6113
3043	2013-09-25 18:00	935	786
3044	2013-09-25 19:00	902	767
3045	2013-09-25 19:00	200	412
3046	2013-09-25 19:00	900	29624
3047	2013-09-25 19:00	904	4325
3048	2013-09-25 19:00	926	738
3049	2013-09-25 19:00	922	7121
3050	2013-09-25 19:00	917	395
3051	2013-09-25 19:00	916	6582
3052	2013-09-25 19:00	100	3437
3053	2013-09-25 19:00	935	753
3054	2013-09-25 20:00	902	774
3055	2013-09-25 20:00	200	525
3056	2013-09-25 20:00	900	27627
3057	2013-09-25 20:00	904	4503
3058	2013-09-25 20:00	926	1069
3059	2013-09-25 20:00	914	417
3060	2013-09-25 20:00	100	2570
3061	2013-09-25 20:00	916	6858
3062	2013-09-25 20:00	922	5285
3063	2013-09-25 20:00	935	832
3064	2013-09-25 21:00	902	390
3065	2013-09-25 21:00	200	215
3066	2013-09-25 21:00	900	21289
3067	2013-09-25 21:00	904	2952
3068	2013-09-25 21:00	926	630
3069	2013-09-25 21:00	922	5161
3070	2013-09-25 21:00	917	285
3071	2013-09-25 21:00	916	3945
3072	2013-09-25 21:00	100	2549
3073	2013-09-25 21:00	935	599
3074	2013-09-25 22:00	902	548
3075	2013-09-25 22:00	903	252
3076	2013-09-25 22:00	900	14430
3077	2013-09-25 22:00	904	2980
3078	2013-09-25 22:00	926	659
3079	2013-09-25 22:00	922	2218
3080	2013-09-25 22:00	917	214
3081	2013-09-25 22:00	916	3014
3082	2013-09-25 22:00	100	877
3083	2013-09-25 22:00	935	511
3084	2013-09-25 23:00	902	378
3085	2013-09-25 23:00	903	367
3086	2013-09-25 23:00	900	14841
3087	2013-09-25 23:00	904	5296
3088	2013-09-25 23:00	703	498
3089	2013-09-25 23:00	110	349
3090	2013-09-25 23:00	100	1724
3091	2013-09-25 23:00	916	4849
3092	2013-09-25 23:00	922	3976
3093	2013-09-25 23:00	935	988
3094	2013-09-26 00:00	902	376
3095	2013-09-26 00:00	903	335
3096	2013-09-26 00:00	900	13155
3097	2013-09-26 00:00	904	7208
3098	2013-09-26 00:00	913	205
3099	2013-09-26 00:00	914	321
3100	2013-09-26 00:00	100	2856
3101	2013-09-26 00:00	916	5962
3102	2013-09-26 00:00	922	6263
3103	2013-09-26 00:00	935	1363
3104	2013-09-26 01:00	902	410
3105	2013-09-26 01:00	903	525
3106	2013-09-26 01:00	900	8260
3107	2013-09-26 01:00	904	7546
3108	2013-09-26 01:00	920	186
3109	2013-09-26 01:00	914	208
3110	2013-09-26 01:00	100	1793
3111	2013-09-26 01:00	916	5596
3112	2013-09-26 01:00	922	4579
3113	2013-09-26 01:00	935	1201
3114	2013-09-26 02:00	902	312
3115	2013-09-26 02:00	903	493
3116	2013-09-26 02:00	900	8205
3117	2013-09-26 02:00	904	7053
3118	2013-09-26 02:00	920	224
3119	2013-09-26 02:00	921	78
3120	2013-09-26 02:00	100	3023
3121	2013-09-26 02:00	916	6362
3122	2013-09-26 02:00	922	6601
3123	2013-09-26 02:00	935	1275
3124	2013-09-26 03:00	902	372
3125	2013-09-26 03:00	903	502
3126	2013-09-26 03:00	900	7849
3127	2013-09-26 03:00	904	7590
3128	2013-09-26 03:00	913	42
3129	2013-09-26 03:00	920	262
3130	2013-09-26 03:00	100	3051
3131	2013-09-26 03:00	916	6982
3132	2013-09-26 03:00	922	7138
3133	2013-09-26 03:00	935	1266
3134	2013-09-26 04:00	902	296
3135	2013-09-26 04:00	903	422
3136	2013-09-26 04:00	900	9546
3137	2013-09-26 04:00	904	6003
3138	2013-09-26 04:00	920	279
3139	2013-09-26 04:00	921	281
3140	2013-09-26 04:00	100	4557
3141	2013-09-26 04:00	916	6665
3142	2013-09-26 04:00	922	9198
3143	2013-09-26 04:00	935	1043
3144	2013-09-26 05:00	902	212
3145	2013-09-26 05:00	200	1056
3146	2013-09-26 05:00	900	12006
3147	2013-09-26 05:00	904	2945
3148	2013-09-26 05:00	921	250
3149	2013-09-26 05:00	100	6128
3150	2013-09-26 05:00	916	4269
3151	2013-09-26 05:00	911	928
3152	2013-09-26 05:00	922	11473
3153	2013-09-26 05:00	935	448
3154	2013-09-26 06:00	902	149
3155	2013-09-26 06:00	200	8352
3156	2013-09-26 06:00	900	19675
3157	2013-09-26 06:00	904	653
3158	2013-09-26 06:00	921	530
3159	2013-09-26 06:00	100	6877
3160	2013-09-26 06:00	916	3862
3161	2013-09-26 06:00	911	7220
3162	2013-09-26 06:00	922	15772
3163	2013-09-26 06:00	926	134
3164	2013-09-26 07:00	200	4896
3165	2013-09-26 07:00	900	15941
3166	2013-09-26 07:00	904	913
3167	2013-09-26 07:00	926	150
3168	2013-09-26 07:00	921	281
3169	2013-09-26 07:00	100	4843
3170	2013-09-26 07:00	916	3304
3171	2013-09-26 07:00	911	5681
3172	2013-09-26 07:00	922	10019
3173	2013-09-26 07:00	913	306
3174	2013-09-26 08:00	200	2927
3175	2013-09-26 08:00	900	15392
3176	2013-09-26 08:00	904	1177
3177	2013-09-26 08:00	150	654
3178	2013-09-26 08:00	926	566
3179	2013-09-26 08:00	100	2867
3180	2013-09-26 08:00	916	3422
3181	2013-09-26 08:00	911	3306
3182	2013-09-26 08:00	922	5803
3183	2013-09-26 08:00	935	219
3184	2013-09-26 09:00	200	12519
3185	2013-09-26 09:00	900	24641
3186	2013-09-26 09:00	904	3483
3187	2013-09-26 09:00	150	670
3188	2013-09-26 09:00	926	775
3189	2013-09-26 09:00	100	3577
3190	2013-09-26 09:00	916	8056
3191	2013-09-26 09:00	911	14118
3192	2013-09-26 09:00	922	8729
3193	2013-09-26 09:00	913	778
3194	2013-09-26 10:00	902	1218
3195	2013-09-26 10:00	200	13157
3196	2013-09-26 10:00	900	30208
3197	2013-09-26 10:00	904	3764
3198	2013-09-26 10:00	926	1775
3199	2013-09-26 10:00	100	3469
3200	2013-09-26 10:00	916	7234
3201	2013-09-26 10:00	911	14703
3202	2013-09-26 10:00	922	8762
3203	2013-09-26 10:00	913	767
3204	2013-09-26 11:00	902	833
3205	2013-09-26 11:00	200	11974
3206	2013-09-26 11:00	900	26949
3207	2013-09-26 11:00	904	4262
3208	2013-09-26 11:00	926	1563
3209	2013-09-26 11:00	100	2993
3210	2013-09-26 11:00	916	9687
3211	2013-09-26 11:00	911	13175
3212	2013-09-26 11:00	922	8161
3213	2013-09-26 11:00	913	1005
3214	2013-09-26 12:00	902	957
3215	2013-09-26 12:00	200	12449
3216	2013-09-26 12:00	900	27555
3217	2013-09-26 12:00	904	4381
3218	2013-09-26 12:00	150	628
3219	2013-09-26 12:00	100	2696
3220	2013-09-26 12:00	916	9985
3221	2013-09-26 12:00	911	13198
3222	2013-09-26 12:00	922	7592
3223	2013-09-26 12:00	926	1698
3224	2013-09-26 13:00	902	902
3225	2013-09-26 13:00	200	12749
3226	2013-09-26 13:00	900	26534
3227	2013-09-26 13:00	904	4241
3228	2013-09-26 13:00	926	1601
3229	2013-09-26 13:00	100	2882
3230	2013-09-26 13:00	916	9237
3231	2013-09-26 13:00	911	13672
3232	2013-09-26 13:00	922	7938
3233	2013-09-26 13:00	913	851
3234	2013-09-26 14:00	902	835
3235	2013-09-26 14:00	200	6124
3236	2013-09-26 14:00	900	26916
3237	2013-09-26 14:00	904	4101
3238	2013-09-26 14:00	914	537
3239	2013-09-26 14:00	100	4189
3240	2013-09-26 14:00	916	6863
3241	2013-09-26 14:00	911	6702
3242	2013-09-26 14:00	922	9367
3243	2013-09-26 14:00	926	1402
3244	2013-09-26 15:00	902	881
3245	2013-09-26 15:00	200	4749
3246	2013-09-26 15:00	900	29154
3247	2013-09-26 15:00	904	4062
3248	2013-09-26 15:00	926	1573
3249	2013-09-26 15:00	100	4298
3250	2013-09-26 15:00	916	6489
3251	2013-09-26 15:00	911	4576
3252	2013-09-26 15:00	922	9626
3253	2013-09-26 15:00	935	601
3254	2013-09-26 16:00	902	831
3255	2013-09-26 16:00	200	4636
3256	2013-09-26 16:00	900	31251
3257	2013-09-26 16:00	904	4224
3258	2013-09-26 16:00	150	1806
3259	2013-09-26 16:00	100	4815
3260	2013-09-26 16:00	916	5759
3261	2013-09-26 16:00	911	4802
3262	2013-09-26 16:00	922	11062
3263	2013-09-26 16:00	926	1698
3264	2013-09-26 17:00	902	705
3265	2013-09-26 17:00	903	682
3266	2013-09-26 17:00	900	30749
3267	2013-09-26 17:00	904	4259
3268	2013-09-26 17:00	200	5332
3269	2013-09-26 17:00	100	5698
3270	2013-09-26 17:00	916	5499
3271	2013-09-26 17:00	911	5246
3272	2013-09-26 17:00	922	12835
3273	2013-09-26 17:00	926	1354
3274	2013-09-26 18:00	902	718
3275	2013-09-26 18:00	903	642
3276	2013-09-26 18:00	900	30923
3277	2013-09-26 18:00	904	3375
3278	2013-09-26 18:00	200	2457
3279	2013-09-26 18:00	100	5692
3280	2013-09-26 18:00	916	3840
3281	2013-09-26 18:00	911	2434
3282	2013-09-26 18:00	922	13596
3283	2013-09-26 18:00	926	1794
3284	2013-09-26 19:00	902	672
3285	2013-09-26 19:00	903	381
3286	2013-09-26 19:00	900	25417
3287	2013-09-26 19:00	904	3470
3288	2013-09-26 19:00	926	990
3289	2013-09-26 19:00	922	6401
3290	2013-09-26 19:00	100	9066
3291	2013-09-26 19:00	916	4293
3292	2013-09-26 19:00	917	273
3293	2013-09-26 19:00	935	729
3294	2013-09-26 20:00	902	416
3295	2013-09-26 20:00	903	252
3296	2013-09-26 20:00	900	19214
3297	2013-09-26 20:00	904	2718
3298	2013-09-26 20:00	200	166
3299	2013-09-26 20:00	926	763
3300	2013-09-26 20:00	100	7381
3301	2013-09-26 20:00	916	3224
3302	2013-09-26 20:00	922	3914
3303	2013-09-26 20:00	935	609
3304	2013-09-26 21:00	902	258
3305	2013-09-26 21:00	903	207
3306	2013-09-26 21:00	900	12786
3307	2013-09-26 21:00	904	2017
3308	2013-09-26 21:00	926	628
3309	2013-09-26 21:00	922	2145
3310	2013-09-26 21:00	100	4243
3311	2013-09-26 21:00	916	2206
3312	2013-09-26 21:00	917	299
3313	2013-09-26 21:00	935	380
3314	2013-09-26 22:00	902	438
3315	2013-09-26 22:00	903	224
3316	2013-09-26 22:00	900	11712
3317	2013-09-26 22:00	904	2764
3318	2013-09-26 22:00	926	576
3319	2013-09-26 22:00	922	2952
3320	2013-09-26 22:00	100	4774
3321	2013-09-26 22:00	916	2377
3322	2013-09-26 22:00	917	272
3323	2013-09-26 22:00	935	454
3324	2013-09-26 23:00	902	436
3325	2013-09-26 23:00	903	418
3326	2013-09-26 23:00	900	13326
3327	2013-09-26 23:00	904	5361
3328	2013-09-26 23:00	703	310
3329	2013-09-26 23:00	926	203
3330	2013-09-26 23:00	100	8266
3331	2013-09-26 23:00	916	4158
3332	2013-09-26 23:00	922	4848
3333	2013-09-26 23:00	935	957
3334	2013-09-27 00:00	200	411
3335	2013-09-27 00:00	900	11823
3336	2013-09-27 00:00	907	305
3337	2013-09-27 00:00	904	4208
3338	2013-09-27 00:00	903	522
3339	2013-09-27 00:00	921	1111
3340	2013-09-27 00:00	100	19251
3341	2013-09-27 00:00	916	3134
3342	2013-09-27 00:00	922	9297
3343	2013-09-27 00:00	935	722
3344	2013-09-27 01:00	200	5853
3345	2013-09-27 01:00	900	13635
3346	2013-09-27 01:00	904	2804
3347	2013-09-27 01:00	903	307
3348	2013-09-27 01:00	921	1761
3349	2013-09-27 01:00	100	18031
3350	2013-09-27 01:00	916	1923
3351	2013-09-27 01:00	911	1756
3352	2013-09-27 01:00	922	12339
3353	2013-09-27 01:00	935	441
3354	2013-09-27 02:00	200	8114
3355	2013-09-27 02:00	900	14950
3356	2013-09-27 02:00	904	3943
3357	2013-09-27 02:00	903	367
3358	2013-09-27 02:00	921	915
3359	2013-09-27 02:00	100	16497
3360	2013-09-27 02:00	916	2925
3361	2013-09-27 02:00	911	3432
3362	2013-09-27 02:00	922	14213
3363	2013-09-27 02:00	935	427
3364	2013-09-27 03:00	200	5081
3365	2013-09-27 03:00	900	17629
3366	2013-09-27 03:00	904	408
3367	2013-09-27 03:00	3548	40
3368	2013-09-27 03:00	921	6261
3369	2013-09-27 03:00	100	22400
3370	2013-09-27 03:00	916	286
3371	2013-09-27 03:00	911	1413
3372	2013-09-27 03:00	922	17406
3373	2013-09-27 03:00	935	65
3374	2013-09-27 04:00	200	13035
3375	2013-09-27 04:00	900	16663
3376	2013-09-27 04:00	904	101
3377	2013-09-27 04:00	3548	47
3378	2013-09-27 04:00	921	6150
3379	2013-09-27 04:00	100	20610
3380	2013-09-27 04:00	916	52
3381	2013-09-27 04:00	911	5577
3382	2013-09-27 04:00	922	16377
3383	2013-09-27 04:00	926	224
3384	2013-09-27 05:00	902	71
3385	2013-09-27 05:00	200	18990
3386	2013-09-27 05:00	900	15976
3387	2013-09-27 05:00	904	133
3388	2013-09-27 05:00	921	3799
3389	2013-09-27 05:00	100	15922
3390	2013-09-27 05:00	916	222
3391	2013-09-27 05:00	911	9073
3392	2013-09-27 05:00	922	14847
3393	2013-09-27 05:00	926	380
3394	2013-09-27 06:00	902	385
3395	2013-09-27 06:00	200	20942
3396	2013-09-27 06:00	900	18445
3397	2013-09-27 06:00	904	630
3398	2013-09-27 06:00	921	2644
3399	2013-09-27 06:00	100	18104
3400	2013-09-27 06:00	916	1080
3401	2013-09-27 06:00	911	14193
3402	2013-09-27 06:00	922	13575
3403	2013-09-27 06:00	926	617
3404	2013-09-27 07:00	902	466
3405	2013-09-27 07:00	200	14345
3406	2013-09-27 07:00	900	15826
3407	2013-09-27 07:00	904	1033
3408	2013-09-27 07:00	921	887
3409	2013-09-27 07:00	100	12934
3410	2013-09-27 07:00	916	2032
3411	2013-09-27 07:00	911	10692
3412	2013-09-27 07:00	922	6828
3413	2013-09-27 07:00	926	550
3414	2013-09-27 08:00	200	17671
3415	2013-09-27 08:00	900	18719
3416	2013-09-27 08:00	904	948
3417	2013-09-27 08:00	150	557
3418	2013-09-27 08:00	921	805
3419	2013-09-27 08:00	100	10167
3420	2013-09-27 08:00	916	2169
3421	2013-09-27 08:00	911	12480
3422	2013-09-27 08:00	922	7729
3423	2013-09-27 08:00	926	1200
3424	2013-09-27 09:00	902	670
3425	2013-09-27 09:00	200	28321
3426	2013-09-27 09:00	900	22977
3427	2013-09-27 09:00	904	1759
3428	2013-09-27 09:00	150	975
3429	2013-09-27 09:00	100	7023
3430	2013-09-27 09:00	916	3542
3431	2013-09-27 09:00	911	20087
3432	2013-09-27 09:00	922	9047
3433	2013-09-27 09:00	926	1314
3434	2013-09-27 10:00	902	1533
3435	2013-09-27 10:00	200	15072
3436	2013-09-27 10:00	900	22614
3437	2013-09-27 10:00	904	3169
3438	2013-09-27 10:00	150	506
3439	2013-09-27 10:00	100	5821
3440	2013-09-27 10:00	916	5285
3441	2013-09-27 10:00	911	11987
3442	2013-09-27 10:00	922	4119
3443	2013-09-27 10:00	926	2264
3444	2013-09-27 11:00	902	1177
3445	2013-09-27 11:00	200	13654
3446	2013-09-27 11:00	900	23416
3447	2013-09-27 11:00	904	2559
3448	2013-09-27 11:00	150	634
3449	2013-09-27 11:00	100	6477
3450	2013-09-27 11:00	916	4876
3451	2013-09-27 11:00	911	10607
3452	2013-09-27 11:00	922	4285
3453	2013-09-27 11:00	926	1998
3454	2013-09-27 12:00	902	944
3455	2013-09-27 12:00	200	11522
3456	2013-09-27 12:00	900	23406
3457	2013-09-27 12:00	904	1603
3458	2013-09-27 12:00	110	534
3459	2013-09-27 12:00	100	11430
3460	2013-09-27 12:00	916	4008
3461	2013-09-27 12:00	911	8892
3462	2013-09-27 12:00	922	6392
3463	2013-09-27 12:00	926	2131
3464	2013-09-27 13:00	902	1241
3465	2013-09-27 13:00	200	3019
3466	2013-09-27 13:00	900	24006
3467	2013-09-27 13:00	904	2373
3468	2013-09-27 13:00	108	6583
3469	2013-09-27 13:00	100	8167
3470	2013-09-27 13:00	916	4401
3471	2013-09-27 13:00	911	1819
3472	2013-09-27 13:00	922	4458
3473	2013-09-27 13:00	926	945
3474	2013-09-27 14:00	902	1135
3475	2013-09-27 14:00	200	4433
3476	2013-09-27 14:00	900	25077
3477	2013-09-27 14:00	904	2178
3478	2013-09-27 14:00	922	6554
3479	2013-09-27 14:00	100	12030
3480	2013-09-27 14:00	916	4895
3481	2013-09-27 14:00	911	554
3482	2013-09-27 14:00	917	305
3483	2013-09-27 14:00	926	1082
3484	2013-09-27 15:00	902	1076
3485	2013-09-27 15:00	200	5447
3486	2013-09-27 15:00	900	25698
3487	2013-09-27 15:00	904	2056
3488	2013-09-27 15:00	150	479
3489	2013-09-27 15:00	100	13713
3490	2013-09-27 15:00	916	4631
3491	2013-09-27 15:00	911	675
3492	2013-09-27 15:00	922	6661
3493	2013-09-27 15:00	926	2084
3494	2013-09-27 16:00	902	1121
3495	2013-09-27 16:00	200	3469
3496	2013-09-27 16:00	900	23957
3497	2013-09-27 16:00	904	1813
3498	2013-09-27 16:00	150	1346
3499	2013-09-27 16:00	100	14618
3500	2013-09-27 16:00	916	4493
3501	2013-09-27 16:00	911	344
3502	2013-09-27 16:00	922	5610
3503	2013-09-27 16:00	926	2213
3504	2013-09-27 17:00	902	1074
3505	2013-09-27 17:00	200	3231
3506	2013-09-27 17:00	900	21956
3507	2013-09-27 17:00	904	1988
3508	2013-09-27 17:00	150	519
3509	2013-09-27 17:00	100	7752
3510	2013-09-27 17:00	916	4934
3511	2013-09-27 17:00	911	341
3512	2013-09-27 17:00	922	3610
3513	2013-09-27 17:00	926	2921
3514	2013-09-27 18:00	902	1321
3515	2013-09-27 18:00	200	4491
3516	2013-09-27 18:00	900	22703
3517	2013-09-27 18:00	904	2199
3518	2013-09-27 18:00	150	641
3519	2013-09-27 18:00	920	1037
3520	2013-09-27 18:00	100	5970
3521	2013-09-27 18:00	916	4585
3522	2013-09-27 18:00	922	2061
3523	2013-09-27 18:00	926	2071
3524	2013-09-27 19:00	902	940
3525	2013-09-27 19:00	200	3769
3526	2013-09-27 19:00	900	22443
3527	2013-09-27 19:00	904	2410
3528	2013-09-27 19:00	110	1343
3529	2013-09-27 19:00	920	1900
3530	2013-09-27 19:00	100	5304
3531	2013-09-27 19:00	916	3832
3532	2013-09-27 19:00	922	4431
3533	2013-09-27 19:00	926	1083
3534	2013-09-27 20:00	200	2345
3535	2013-09-27 20:00	900	19100
3536	2013-09-27 20:00	904	4443
3537	2013-09-27 20:00	926	818
3538	2013-09-27 20:00	110	5452
3539	2013-09-27 20:00	920	1093
3540	2013-09-27 20:00	100	4647
3541	2013-09-27 20:00	916	3430
3542	2013-09-27 20:00	922	5340
3543	2013-09-27 20:00	935	2724
3544	2013-09-27 21:00	902	983
3545	2013-09-27 21:00	900	19359
3546	2013-09-27 21:00	904	3644
3547	2013-09-27 21:00	926	612
3548	2013-09-27 21:00	922	1275
3549	2013-09-27 21:00	920	494
3550	2013-09-27 21:00	917	441
3551	2013-09-27 21:00	916	4373
3552	2013-09-27 21:00	100	2124
3553	2013-09-27 21:00	935	869
3554	2013-09-27 22:00	902	1160
3555	2013-09-27 22:00	903	443
3556	2013-09-27 22:00	900	16410
3557	2013-09-27 22:00	904	4258
3558	2013-09-27 22:00	926	682
3559	2013-09-27 22:00	922	1266
3560	2013-09-27 22:00	917	262
3561	2013-09-27 22:00	916	5082
3562	2013-09-27 22:00	100	332
3563	2013-09-27 22:00	935	925
3564	2013-09-27 23:00	902	627
3565	2013-09-27 23:00	903	795
3566	2013-09-27 23:00	900	9319
3567	2013-09-27 23:00	904	5787
3568	2013-09-27 23:00	703	307
3569	2013-09-27 23:00	926	468
3570	2013-09-27 23:00	917	205
3571	2013-09-27 23:00	916	4785
3572	2013-09-27 23:00	922	2292
3573	2013-09-27 23:00	935	1051
3574	2013-09-28 00:00	902	455
3575	2013-09-28 00:00	903	312
3576	2013-09-28 00:00	900	4086
3577	2013-09-28 00:00	904	3426
3578	2013-09-28 00:00	920	616
3579	2013-09-28 00:00	921	122
3580	2013-09-28 00:00	100	2454
3581	2013-09-28 00:00	916	2806
3582	2013-09-28 00:00	922	1076
3583	2013-09-28 00:00	935	677
3584	2013-09-28 01:00	902	84
3585	2013-09-28 01:00	900	1039
3586	2013-09-28 01:00	904	132
3587	2013-09-28 01:00	3548	19
3588	2013-09-28 01:00	919	10
3589	2013-09-28 01:00	926	80
3590	2013-09-28 01:00	917	53
3591	2013-09-28 01:00	916	113
3592	2013-09-28 01:00	922	8
3593	2013-09-28 01:00	500	11
3594	2013-09-28 02:00	902	53
3595	2013-09-28 02:00	900	574
3596	2013-09-28 02:00	904	85
3597	2013-09-28 02:00	3548	20
3598	2013-09-28 02:00	926	41
3599	2013-09-28 02:00	917	18
3600	2013-09-28 02:00	916	69
3601	2013-09-28 02:00	502	3
3602	2013-09-28 02:00	922	13
3603	2013-09-28 02:00	500	10
3604	2013-09-28 03:00	902	15
3605	2013-09-28 03:00	900	391
3606	2013-09-28 03:00	904	36
3607	2013-09-28 03:00	3548	39
3608	2013-09-28 03:00	926	13
3609	2013-09-28 03:00	917	34
3610	2013-09-28 03:00	916	34
3611	2013-09-28 03:00	502	6
3612	2013-09-28 03:00	922	8
3613	2013-09-28 03:00	500	8
3614	2013-09-28 04:00	902	15
3615	2013-09-28 04:00	900	407
3616	2013-09-28 04:00	904	20
3617	2013-09-28 04:00	3548	31
3618	2013-09-28 04:00	919	5
3619	2013-09-28 04:00	926	8
3620	2013-09-28 04:00	922	7
3621	2013-09-28 04:00	916	51
3622	2013-09-28 04:00	502	6
3623	2013-09-28 04:00	500	6
3624	2013-09-28 05:00	902	138
3625	2013-09-28 05:00	900	1534
3626	2013-09-28 05:00	904	95
3627	2013-09-28 05:00	3548	34
3628	2013-09-28 05:00	500	9
3629	2013-09-28 05:00	920	8
3630	2013-09-28 05:00	917	18
3631	2013-09-28 05:00	916	304
3632	2013-09-28 05:00	922	12
3633	2013-09-28 05:00	935	12
3634	2013-09-28 06:00	902	721
3635	2013-09-28 06:00	903	38
3636	2013-09-28 06:00	900	7445
3637	2013-09-28 06:00	904	578
3638	2013-09-28 06:00	3548	48
3639	2013-09-28 06:00	920	38
3640	2013-09-28 06:00	917	54
3641	2013-09-28 06:00	916	1348
3642	2013-09-28 06:00	922	115
3643	2013-09-28 06:00	935	78
3644	2013-09-28 07:00	902	988
3645	2013-09-28 07:00	903	67
3646	2013-09-28 07:00	900	13707
3647	2013-09-28 07:00	904	848
3648	2013-09-28 07:00	200	54
3649	2013-09-28 07:00	150	54
3650	2013-09-28 07:00	926	149
3651	2013-09-28 07:00	922	255
3652	2013-09-28 07:00	916	2394
3653	2013-09-28 07:00	935	232
3654	2013-09-28 08:00	902	1116
3655	2013-09-28 08:00	903	95
3656	2013-09-28 08:00	900	16662
3657	2013-09-28 08:00	904	1223
3658	2013-09-28 08:00	150	1401
3659	2013-09-28 08:00	919	182
3660	2013-09-28 08:00	926	893
3661	2013-09-28 08:00	922	391
3662	2013-09-28 08:00	916	2972
3663	2013-09-28 08:00	935	362
3664	2013-09-28 09:00	902	1453
3665	2013-09-28 09:00	903	458
3666	2013-09-28 09:00	900	20583
3667	2013-09-28 09:00	904	3797
3668	2013-09-28 09:00	150	1026
3669	2013-09-28 09:00	919	361
3670	2013-09-28 09:00	926	1074
3671	2013-09-28 09:00	922	2530
3672	2013-09-28 09:00	916	6753
3673	2013-09-28 09:00	935	706
3674	2013-09-28 10:00	902	1907
3675	2013-09-28 10:00	903	544
3676	2013-09-28 10:00	900	23445
3677	2013-09-28 10:00	904	3684
3678	2013-09-28 10:00	150	1827
3679	2013-09-28 10:00	919	365
3680	2013-09-28 10:00	926	1787
3681	2013-09-28 10:00	922	2878
3682	2013-09-28 10:00	916	7391
3683	2013-09-28 10:00	935	451
3684	2013-09-28 11:00	902	1785
3685	2013-09-28 11:00	903	350
3686	2013-09-28 11:00	900	23992
3687	2013-09-28 11:00	904	2770
3688	2013-09-28 11:00	150	1514
3689	2013-09-28 11:00	926	1653
3690	2013-09-28 11:00	110	241
3691	2013-09-28 11:00	922	1333
3692	2013-09-28 11:00	916	5892
3693	2013-09-28 11:00	935	316
3694	2013-09-28 12:00	902	1620
3695	2013-09-28 12:00	150	922
3696	2013-09-28 12:00	900	22938
3697	2013-09-28 12:00	904	1693
3698	2013-09-28 12:00	905	288
3699	2013-09-28 12:00	919	289
3700	2013-09-28 12:00	926	1680
3701	2013-09-28 12:00	922	574
3702	2013-09-28 12:00	916	4521
3703	2013-09-28 12:00	935	259
3704	2013-09-28 13:00	902	1701
3705	2013-09-28 13:00	150	788
3706	2013-09-28 13:00	900	24171
3707	2013-09-28 13:00	904	1791
3708	2013-09-28 13:00	905	224
3709	2013-09-28 13:00	926	1459
3710	2013-09-28 13:00	917	250
3711	2013-09-28 13:00	916	4627
3712	2013-09-28 13:00	922	436
3713	2013-09-28 13:00	935	232
3714	2013-09-28 14:00	902	1715
3715	2013-09-28 14:00	903	221
3716	2013-09-28 14:00	900	22342
3717	2013-09-28 14:00	904	1880
3718	2013-09-28 14:00	150	746
3719	2013-09-28 14:00	926	1371
3720	2013-09-28 14:00	110	1069
3721	2013-09-28 14:00	922	733
3722	2013-09-28 14:00	916	4344
3723	2013-09-28 14:00	935	280
3724	2013-09-28 15:00	902	1647
3725	2013-09-28 15:00	150	455
3726	2013-09-28 15:00	900	21923
3727	2013-09-28 15:00	904	1968
3728	2013-09-28 15:00	926	1043
3729	2013-09-28 15:00	110	961
3730	2013-09-28 15:00	914	188
3731	2013-09-28 15:00	922	1542
3732	2013-09-28 15:00	916	4393
3733	2013-09-28 15:00	935	308
3734	2013-09-28 16:00	902	1569
3735	2013-09-28 16:00	150	1875
3736	2013-09-28 16:00	900	19371
3737	2013-09-28 16:00	904	1419
3738	2013-09-28 16:00	905	166
3739	2013-09-28 16:00	926	1293
3740	2013-09-28 16:00	110	160
3741	2013-09-28 16:00	922	889
3742	2013-09-28 16:00	916	4068
3743	2013-09-28 16:00	935	191
3744	2013-09-28 17:00	902	1426
3745	2013-09-28 17:00	150	248
3746	2013-09-28 17:00	900	18517
3747	2013-09-28 17:00	904	1309
3748	2013-09-28 17:00	926	1142
3749	2013-09-28 17:00	500	189
3750	2013-09-28 17:00	110	145
3751	2013-09-28 17:00	922	746
3752	2013-09-28 17:00	916	3755
3753	2013-09-28 17:00	935	198
3754	2013-09-28 18:00	902	1798
3755	2013-09-28 18:00	150	235
3756	2013-09-28 18:00	900	20179
3757	2013-09-28 18:00	904	1475
3758	2013-09-28 18:00	926	741
3759	2013-09-28 18:00	500	161
3760	2013-09-28 18:00	917	240
3761	2013-09-28 18:00	916	4297
3762	2013-09-28 18:00	922	386
3763	2013-09-28 18:00	935	258
3764	2013-09-28 19:00	902	1886
3765	2013-09-28 19:00	903	179
3766	2013-09-28 19:00	900	21884
3767	2013-09-28 19:00	904	1805
3768	2013-09-28 19:00	150	264
3769	2013-09-28 19:00	926	478
3770	2013-09-28 19:00	917	195
3771	2013-09-28 19:00	916	5085
3772	2013-09-28 19:00	922	827
3773	2013-09-28 19:00	935	435
3774	2013-09-28 20:00	902	1875
3775	2013-09-28 20:00	900	20142
3776	2013-09-28 20:00	904	1391
3777	2013-09-28 20:00	926	386
3778	2013-09-28 20:00	919	151
3779	2013-09-28 20:00	110	154
3780	2013-09-28 20:00	917	183
3781	2013-09-28 20:00	916	4364
3782	2013-09-28 20:00	922	467
3783	2013-09-28 20:00	935	409
3784	2013-09-28 21:00	902	1118
3785	2013-09-28 21:00	900	15550
3786	2013-09-28 21:00	916	2828
3787	2013-09-28 21:00	904	1158
3788	2013-09-28 21:00	926	192
3789	2013-09-28 21:00	110	97
3790	2013-09-28 21:00	917	249
3791	2013-09-28 21:00	930	133
3792	2013-09-28 21:00	922	426
3793	2013-09-28 21:00	935	311
3794	2013-09-28 22:00	902	762
3795	2013-09-28 22:00	903	103
3796	2013-09-28 22:00	900	8750
3797	2013-09-28 22:00	904	706
3798	2013-09-28 22:00	926	188
3799	2013-09-28 22:00	110	72
3800	2013-09-28 22:00	917	230
3801	2013-09-28 22:00	916	1607
3802	2013-09-28 22:00	922	384
3803	2013-09-28 22:00	935	137
3804	2013-09-28 23:00	902	318
3805	2013-09-28 23:00	903	654
3806	2013-09-28 23:00	900	4570
3807	2013-09-28 23:00	907	214
3808	2013-09-28 23:00	904	835
3809	2013-09-28 23:00	926	72
3810	2013-09-28 23:00	917	179
3811	2013-09-28 23:00	916	1102
3812	2013-09-28 23:00	922	2495
3813	2013-09-28 23:00	935	154
3814	2013-09-29 00:00	902	150
3815	2013-09-29 00:00	150	51
3816	2013-09-29 00:00	900	1713
3817	2013-09-29 00:00	904	175
3818	2013-09-29 00:00	3548	27
3819	2013-09-29 00:00	110	26
3820	2013-09-29 00:00	917	31
3821	2013-09-29 00:00	916	199
3822	2013-09-29 00:00	922	58
3823	2013-09-29 00:00	926	54
3824	2013-09-29 01:00	902	178
3825	2013-09-29 01:00	150	145
3826	2013-09-29 01:00	900	1368
3827	2013-09-29 01:00	904	136
3828	2013-09-29 01:00	3548	37
3829	2013-09-29 01:00	110	23
3830	2013-09-29 01:00	917	92
3831	2013-09-29 01:00	916	112
3832	2013-09-29 01:00	922	39
3833	2013-09-29 01:00	926	107
3834	2013-09-29 02:00	902	27
3835	2013-09-29 02:00	150	170
3836	2013-09-29 02:00	900	521
3837	2013-09-29 02:00	904	31
3838	2013-09-29 02:00	3548	37
3839	2013-09-29 02:00	926	32
3840	2013-09-29 02:00	110	46
3841	2013-09-29 02:00	917	22
3842	2013-09-29 02:00	916	37
3843	2013-09-29 02:00	500	8
3844	2013-09-29 03:00	902	17
3845	2013-09-29 03:00	150	140
3846	2013-09-29 03:00	900	413
3847	2013-09-29 03:00	904	38
3848	2013-09-29 03:00	3548	40
3849	2013-09-29 03:00	110	51
3850	2013-09-29 03:00	917	15
3851	2013-09-29 03:00	916	33
3852	2013-09-29 03:00	922	9
3853	2013-09-29 03:00	926	27
3854	2013-09-29 04:00	902	13
3855	2013-09-29 04:00	150	43
3856	2013-09-29 04:00	900	340
3857	2013-09-29 04:00	904	45
3858	2013-09-29 04:00	3548	27
3859	2013-09-29 04:00	919	7
3860	2013-09-29 04:00	110	43
3861	2013-09-29 04:00	922	10
3862	2013-09-29 04:00	916	37
3863	2013-09-29 04:00	926	13
3864	2013-09-29 05:00	902	133
3865	2013-09-29 05:00	903	505
3866	2013-09-29 05:00	900	986
3867	2013-09-29 05:00	901	22
3868	2013-09-29 05:00	907	121
3869	2013-09-29 05:00	904	429
3870	2013-09-29 05:00	922	1435
3871	2013-09-29 05:00	916	482
3872	2013-09-29 05:00	935	138
3873	2013-09-29 05:00	912	21
3874	2013-09-29 06:00	902	525
3875	2013-09-29 06:00	900	5607
3876	2013-09-29 06:00	904	465
3877	2013-09-29 06:00	3548	44
3878	2013-09-29 06:00	110	26
3879	2013-09-29 06:00	917	40
3880	2013-09-29 06:00	916	1030
3881	2013-09-29 06:00	502	19
3882	2013-09-29 06:00	922	91
3883	2013-09-29 06:00	935	91
3884	2013-09-29 07:00	902	1142
3885	2013-09-29 07:00	903	61
3886	2013-09-29 07:00	900	12073
3887	2013-09-29 07:00	904	1047
3888	2013-09-29 07:00	150	151
3889	2013-09-29 07:00	926	67
3890	2013-09-29 07:00	110	114
3891	2013-09-29 07:00	922	316
3892	2013-09-29 07:00	916	2864
3893	2013-09-29 07:00	935	302
3894	2013-09-29 08:00	902	1136
3895	2013-09-29 08:00	903	80
3896	2013-09-29 08:00	900	15026
3897	2013-09-29 08:00	904	1317
3898	2013-09-29 08:00	150	191
3899	2013-09-29 08:00	926	300
3900	2013-09-29 08:00	110	146
3901	2013-09-29 08:00	922	421
3902	2013-09-29 08:00	916	3231
3903	2013-09-29 08:00	935	394
3904	2013-09-29 09:00	902	1575
3905	2013-09-29 09:00	903	177
3906	2013-09-29 09:00	900	20167
3907	2013-09-29 09:00	904	2032
3908	2013-09-29 09:00	150	744
3909	2013-09-29 09:00	926	613
3910	2013-09-29 09:00	110	182
3911	2013-09-29 09:00	922	535
3912	2013-09-29 09:00	916	4548
3913	2013-09-29 09:00	935	491
3914	2013-09-29 10:00	902	2281
3915	2013-09-29 10:00	903	266
3916	2013-09-29 10:00	900	20786
3917	2013-09-29 10:00	904	2128
3918	2013-09-29 10:00	150	390
3919	2013-09-29 10:00	926	1125
3920	2013-09-29 10:00	917	299
3921	2013-09-29 10:00	916	5358
3922	2013-09-29 10:00	922	987
3923	2013-09-29 10:00	935	388
3924	2013-09-29 11:00	902	1799
3925	2013-09-29 11:00	903	547
3926	2013-09-29 11:00	900	23776
3927	2013-09-29 11:00	904	3478
3928	2013-09-29 11:00	150	539
3929	2013-09-29 11:00	919	417
3930	2013-09-29 11:00	926	953
3931	2013-09-29 11:00	922	2653
3932	2013-09-29 11:00	916	7473
3933	2013-09-29 11:00	935	441
3934	2013-09-29 12:00	902	1610
3935	2013-09-29 12:00	150	375
3936	2013-09-29 12:00	900	20050
3937	2013-09-29 12:00	904	1458
3938	2013-09-29 12:00	919	222
3939	2013-09-29 12:00	926	998
3940	2013-09-29 12:00	917	308
3941	2013-09-29 12:00	916	4238
3942	2013-09-29 12:00	922	483
3943	2013-09-29 12:00	935	273
3944	2013-09-29 13:00	902	1607
3945	2013-09-29 13:00	150	433
3946	2013-09-29 13:00	900	18965
3947	2013-09-29 13:00	904	1372
3948	2013-09-29 13:00	926	1061
3949	2013-09-29 13:00	914	149
3950	2013-09-29 13:00	917	193
3951	2013-09-29 13:00	916	3730
3952	2013-09-29 13:00	922	521
3953	2013-09-29 13:00	935	210
3954	2013-09-29 14:00	902	1421
3955	2013-09-29 14:00	903	163
3956	2013-09-29 14:00	900	16937
3957	2013-09-29 14:00	904	1303
3958	2013-09-29 14:00	926	575
3959	2013-09-29 14:00	110	114
3960	2013-09-29 14:00	917	255
3961	2013-09-29 14:00	916	3403
3962	2013-09-29 14:00	922	500
3963	2013-09-29 14:00	935	263
3964	2013-09-29 15:00	902	1277
3965	2013-09-29 15:00	150	318
3966	2013-09-29 15:00	900	18605
3967	2013-09-29 15:00	904	1201
3968	2013-09-29 15:00	926	554
3969	2013-09-29 15:00	110	164
3970	2013-09-29 15:00	917	202
3971	2013-09-29 15:00	916	3393
3972	2013-09-29 15:00	922	439
3973	2013-09-29 15:00	935	223
3974	2013-09-29 16:00	902	1230
3975	2013-09-29 16:00	150	1612
3976	2013-09-29 16:00	900	16336
3977	2013-09-29 16:00	904	1249
3978	2013-09-29 16:00	926	609
3979	2013-09-29 16:00	110	166
3980	2013-09-29 16:00	917	136
3981	2013-09-29 16:00	916	3696
3982	2013-09-29 16:00	922	503
3983	2013-09-29 16:00	935	308
3984	2013-09-29 17:00	902	1475
3985	2013-09-29 17:00	903	127
3986	2013-09-29 17:00	900	15370
3987	2013-09-29 17:00	904	1178
3988	2013-09-29 17:00	150	336
3989	2013-09-29 17:00	926	417
3990	2013-09-29 17:00	110	153
3991	2013-09-29 17:00	922	444
3992	2013-09-29 17:00	916	3637
3993	2013-09-29 17:00	935	290
3994	2013-09-29 18:00	902	1688
3995	2013-09-29 18:00	150	283
3996	2013-09-29 18:00	900	17861
3997	2013-09-29 18:00	904	1291
3998	2013-09-29 18:00	926	465
3999	2013-09-29 18:00	110	186
4000	2013-09-29 18:00	917	138
4001	2013-09-29 18:00	916	4103
4002	2013-09-29 18:00	922	603
4003	2013-09-29 18:00	935	357
4004	2013-09-29 19:00	902	1926
4005	2013-09-29 19:00	903	156
4006	2013-09-29 19:00	900	19286
4007	2013-09-29 19:00	904	1488
4008	2013-09-29 19:00	150	538
4009	2013-09-29 19:00	926	336
4010	2013-09-29 19:00	110	170
4011	2013-09-29 19:00	922	729
4012	2013-09-29 19:00	916	4613
4013	2013-09-29 19:00	935	496
4014	2013-09-29 20:00	902	1493
4015	2013-09-29 20:00	150	251
4016	2013-09-29 20:00	900	17019
4017	2013-09-29 20:00	904	1149
4018	2013-09-29 20:00	926	324
4019	2013-09-29 20:00	110	164
4020	2013-09-29 20:00	917	140
4021	2013-09-29 20:00	916	3728
4022	2013-09-29 20:00	922	449
4023	2013-09-29 20:00	935	453
4024	2013-09-29 21:00	902	1087
4025	2013-09-29 21:00	150	228
4026	2013-09-29 21:00	900	12849
4027	2013-09-29 21:00	904	920
4028	2013-09-29 21:00	926	145
4029	2013-09-29 21:00	110	111
4030	2013-09-29 21:00	917	147
4031	2013-09-29 21:00	916	2538
4032	2013-09-29 21:00	922	450
4033	2013-09-29 21:00	935	318
4034	2013-09-29 22:00	902	511
4035	2013-09-29 22:00	150	154
4036	2013-09-29 22:00	900	7175
4037	2013-09-29 22:00	904	608
4038	2013-09-29 22:00	3548	47
4039	2013-09-29 22:00	926	69
4040	2013-09-29 22:00	917	93
4041	2013-09-29 22:00	916	1278
4042	2013-09-29 22:00	922	177
4043	2013-09-29 22:00	935	121
4044	2013-09-29 23:00	902	176
4045	2013-09-29 23:00	900	3069
4046	2013-09-29 23:00	904	281
4047	2013-09-29 23:00	3548	31
4048	2013-09-29 23:00	703	54
4049	2013-09-29 23:00	926	55
4050	2013-09-29 23:00	917	113
4051	2013-09-29 23:00	916	415
4052	2013-09-29 23:00	922	94
4053	2013-09-29 23:00	935	58
4054	2013-09-30 00:00	902	46
4055	2013-09-30 00:00	900	1272
4056	2013-09-30 00:00	904	149
4057	2013-09-30 00:00	3548	50
4058	2013-09-30 00:00	926	38
4059	2013-09-30 00:00	500	14
4060	2013-09-30 00:00	917	21
4061	2013-09-30 00:00	916	164
4062	2013-09-30 00:00	922	59
4063	2013-09-30 00:00	935	29
4064	2013-09-30 01:00	902	43
4065	2013-09-30 01:00	900	558
4066	2013-09-30 01:00	904	39
4067	2013-09-30 01:00	3548	45
4068	2013-09-30 01:00	926	32
4069	2013-09-30 01:00	500	10
4070	2013-09-30 01:00	917	11
4071	2013-09-30 01:00	916	56
4072	2013-09-30 01:00	922	22
4073	2013-09-30 01:00	104	12
4074	2013-09-30 02:00	902	8
4075	2013-09-30 02:00	903	14
4076	2013-09-30 02:00	900	344
4077	2013-09-30 02:00	901	7
4078	2013-09-30 02:00	904	45
4079	2013-09-30 02:00	3548	44
4080	2013-09-30 02:00	926	12
4081	2013-09-30 02:00	922	11
4082	2013-09-30 02:00	916	47
4083	2013-09-30 02:00	500	11
4084	2013-09-30 03:00	902	5
4085	2013-09-30 03:00	900	218
4086	2013-09-30 03:00	904	27
4087	2013-09-30 03:00	3548	31
4088	2013-09-30 03:00	926	7
4089	2013-09-30 03:00	500	8
4090	2013-09-30 03:00	110	4
4091	2013-09-30 03:00	917	4
4092	2013-09-30 03:00	916	41
4093	2013-09-30 03:00	935	4
4094	2013-09-30 04:00	902	20
4095	2013-09-30 04:00	900	321
4096	2013-09-30 04:00	904	25
4097	2013-09-30 04:00	3548	31
4098	2013-09-30 04:00	926	12
4099	2013-09-30 04:00	919	4
4100	2013-09-30 04:00	110	10
4101	2013-09-30 04:00	922	4
4102	2013-09-30 04:00	916	51
4103	2013-09-30 04:00	500	8
4104	2013-09-30 05:00	902	81
4105	2013-09-30 05:00	900	903
4106	2013-09-30 05:00	904	147
4107	2013-09-30 05:00	3548	28
4108	2013-09-30 05:00	500	8
4109	2013-09-30 05:00	110	7
4110	2013-09-30 05:00	917	10
4111	2013-09-30 05:00	916	157
4112	2013-09-30 05:00	922	38
4113	2013-09-30 05:00	935	15
4114	2013-09-30 06:00	902	581
4115	2013-09-30 06:00	903	27
4116	2013-09-30 06:00	900	4682
4117	2013-09-30 06:00	904	462
4118	2013-09-30 06:00	150	31
4119	2013-09-30 06:00	3548	34
4120	2013-09-30 06:00	917	17
4121	2013-09-30 06:00	916	1063
4122	2013-09-30 06:00	922	152
4123	2013-09-30 06:00	935	74
4124	2013-09-30 07:00	902	947
4125	2013-09-30 07:00	903	63
4126	2013-09-30 07:00	900	10134
4127	2013-09-30 07:00	904	842
4128	2013-09-30 07:00	150	163
4129	2013-09-30 07:00	3548	48
4130	2013-09-30 07:00	926	45
4131	2013-09-30 07:00	922	400
4132	2013-09-30 07:00	916	2384
4133	2013-09-30 07:00	935	210
4134	2013-09-30 08:00	902	1064
4135	2013-09-30 08:00	903	81
4136	2013-09-30 08:00	900	11997
4137	2013-09-30 08:00	904	1045
4138	2013-09-30 08:00	150	680
4139	2013-09-30 08:00	926	144
4140	2013-09-30 08:00	917	244
4141	2013-09-30 08:00	916	2534
4142	2013-09-30 08:00	922	311
4143	2013-09-30 08:00	935	328
4144	2013-09-30 09:00	902	1144
4145	2013-09-30 09:00	903	113
4146	2013-09-30 09:00	900	13682
4147	2013-09-30 09:00	904	1387
4148	2013-09-30 09:00	150	1145
4149	2013-09-30 09:00	926	277
4150	2013-09-30 09:00	917	287
4151	2013-09-30 09:00	916	3134
4152	2013-09-30 09:00	922	320
4153	2013-09-30 09:00	935	247
4154	2013-09-30 10:00	902	1233
4155	2013-09-30 10:00	150	1133
4156	2013-09-30 10:00	900	16934
4157	2013-09-30 10:00	904	1557
4158	2013-09-30 10:00	926	2170
4159	2013-09-30 10:00	110	139
4160	2013-09-30 10:00	917	702
4161	2013-09-30 10:00	916	3818
4162	2013-09-30 10:00	922	520
4163	2013-09-30 10:00	935	261
4164	2013-09-30 11:00	902	1505
4165	2013-09-30 11:00	150	1597
4166	2013-09-30 11:00	900	20960
4167	2013-09-30 11:00	904	2359
4168	2013-09-30 11:00	919	1406
4169	2013-09-30 11:00	926	1436
4170	2013-09-30 11:00	917	278
4171	2013-09-30 11:00	916	5867
4172	2013-09-30 11:00	922	1416
4173	2013-09-30 11:00	935	313
4174	2013-09-30 12:00	902	1631
4175	2013-09-30 12:00	903	460
4176	2013-09-30 12:00	900	22468
4177	2013-09-30 12:00	904	3292
4178	2013-09-30 12:00	150	1198
4179	2013-09-30 12:00	919	2237
4180	2013-09-30 12:00	917	372
4181	2013-09-30 12:00	916	8052
4182	2013-09-30 12:00	922	2706
4183	2013-09-30 12:00	926	1389
4184	2013-09-30 13:00	902	1737
4185	2013-09-30 13:00	903	561
4186	2013-09-30 13:00	900	22724
4187	2013-09-30 13:00	904	3643
4188	2013-09-30 13:00	150	1471
4189	2013-09-30 13:00	919	471
4190	2013-09-30 13:00	926	1148
4191	2013-09-30 13:00	922	2464
4192	2013-09-30 13:00	916	7457
4193	2013-09-30 13:00	935	451
4194	2013-09-30 14:00	902	1641
4195	2013-09-30 14:00	903	498
4196	2013-09-30 14:00	900	24223
4197	2013-09-30 14:00	904	3767
4198	2013-09-30 14:00	150	1005
4199	2013-09-30 14:00	926	1844
4200	2013-09-30 14:00	917	483
4201	2013-09-30 14:00	916	6195
4202	2013-09-30 14:00	922	1858
4203	2013-09-30 14:00	935	516
4204	2013-09-30 15:00	902	1752
4205	2013-09-30 15:00	903	581
4206	2013-09-30 15:00	900	24387
4207	2013-09-30 15:00	904	3950
4208	2013-09-30 15:00	150	799
4209	2013-09-30 15:00	926	1574
4210	2013-09-30 15:00	917	542
4211	2013-09-30 15:00	916	6850
4212	2013-09-30 15:00	922	2276
4213	2013-09-30 15:00	935	502
4214	2013-09-30 16:00	902	1471
4215	2013-09-30 16:00	903	292
4216	2013-09-30 16:00	900	22549
4217	2013-09-30 16:00	904	2879
4218	2013-09-30 16:00	150	2100
4219	2013-09-30 16:00	926	1422
4220	2013-09-30 16:00	917	279
4221	2013-09-30 16:00	916	5520
4222	2013-09-30 16:00	922	1265
4223	2013-09-30 16:00	935	394
4224	2013-09-30 17:00	902	1568
4225	2013-09-30 17:00	903	334
4226	2013-09-30 17:00	900	21755
4227	2013-09-30 17:00	904	2638
4228	2013-09-30 17:00	150	396
4229	2013-09-30 17:00	926	1265
4230	2013-09-30 17:00	110	249
4231	2013-09-30 17:00	922	1823
4232	2013-09-30 17:00	916	6320
4233	2013-09-30 17:00	935	358
4234	2013-09-30 18:00	902	2293
4235	2013-09-30 18:00	903	546
4236	2013-09-30 18:00	900	24533
4237	2013-09-30 18:00	904	3320
4238	2013-09-30 18:00	150	744
4239	2013-09-30 18:00	926	1183
4240	2013-09-30 18:00	917	610
4241	2013-09-30 18:00	916	8215
4242	2013-09-30 18:00	922	2751
4243	2013-09-30 18:00	935	508
4244	2013-09-30 19:00	902	2110
4245	2013-09-30 19:00	150	623
4246	2013-09-30 19:00	900	27075
4247	2013-09-30 19:00	904	2798
4248	2013-09-30 19:00	919	356
4249	2013-09-30 19:00	926	713
4250	2013-09-30 19:00	917	483
4251	2013-09-30 19:00	916	6941
4252	2013-09-30 19:00	922	1597
4253	2013-09-30 19:00	935	455
4254	2013-09-30 20:00	902	2263
4255	2013-09-30 20:00	150	197
4256	2013-09-30 20:00	900	20994
4257	2013-09-30 20:00	907	154
4258	2013-09-30 20:00	904	1514
4259	2013-09-30 20:00	926	1287
4260	2013-09-30 20:00	917	875
4261	2013-09-30 20:00	916	4277
4262	2013-09-30 20:00	922	554
4263	2013-09-30 20:00	935	283
4264	2013-09-30 21:00	902	1366
4265	2013-09-30 21:00	903	160
4266	2013-09-30 21:00	900	15634
4267	2013-09-30 21:00	907	118
4268	2013-09-30 21:00	904	1428
4269	2013-09-30 21:00	926	571
4270	2013-09-30 21:00	917	471
4271	2013-09-30 21:00	916	3012
4272	2013-09-30 21:00	922	438
4273	2013-09-30 21:00	935	205
4274	2013-09-30 22:00	902	802
4275	2013-09-30 22:00	150	335
4276	2013-09-30 22:00	900	12051
4277	2013-09-30 22:00	904	638
4278	2013-09-30 22:00	926	1158
4279	2013-09-30 22:00	110	74
4280	2013-09-30 22:00	917	1063
4281	2013-09-30 22:00	916	1811
4282	2013-09-30 22:00	922	286
4283	2013-09-30 22:00	935	101
4284	2013-09-30 23:00	902	239
4285	2013-09-30 23:00	150	40
4286	2013-09-30 23:00	900	4750
4287	2013-09-30 23:00	904	412
4288	2013-09-30 23:00	703	48
4289	2013-09-30 23:00	926	307
4290	2013-09-30 23:00	917	455
4291	2013-09-30 23:00	916	700
4292	2013-09-30 23:00	922	140
4293	2013-09-30 23:00	935	33
4294	2013-10-01 00:00	902	65
4295	2013-10-01 00:00	900	1343
4296	2013-10-01 00:00	904	156
4297	2013-10-01 00:00	3548	37
4298	2013-10-01 00:00	926	42
4299	2013-10-01 00:00	500	9
4300	2013-10-01 00:00	917	12
4301	2013-10-01 00:00	916	241
4302	2013-10-01 00:00	922	22
4303	2013-10-01 00:00	935	11
4304	2013-10-01 01:00	902	47
4305	2013-10-01 01:00	900	839
4306	2013-10-01 01:00	904	120
4307	2013-10-01 01:00	3548	32
4308	2013-10-01 01:00	926	48
4309	2013-10-01 01:00	917	12
4310	2013-10-01 01:00	916	92
4311	2013-10-01 01:00	502	10
4312	2013-10-01 01:00	922	11
4313	2013-10-01 01:00	500	12
4314	2013-10-01 02:00	902	16
4315	2013-10-01 02:00	903	3
4316	2013-10-01 02:00	900	424
4317	2013-10-01 02:00	901	8
4318	2013-10-01 02:00	904	73
4319	2013-10-01 02:00	3548	33
4320	2013-10-01 02:00	926	31
4321	2013-10-01 02:00	922	20
4322	2013-10-01 02:00	916	47
4323	2013-10-01 02:00	500	9
4324	2013-10-01 03:00	902	8
4325	2013-10-01 03:00	900	292
4326	2013-10-01 03:00	901	9
4327	2013-10-01 03:00	904	45
4328	2013-10-01 03:00	3548	24
4329	2013-10-01 03:00	926	10
4330	2013-10-01 03:00	919	5
4331	2013-10-01 03:00	500	8
4332	2013-10-01 03:00	916	43
4333	2013-10-01 03:00	935	9
4334	2013-10-01 04:00	902	7
4335	2013-10-01 04:00	903	23
4336	2013-10-01 04:00	900	332
4337	2013-10-01 04:00	904	66
4338	2013-10-01 04:00	3548	30
4339	2013-10-01 04:00	919	3
4340	2013-10-01 04:00	500	8
4341	2013-10-01 04:00	922	25
4342	2013-10-01 04:00	916	54
4343	2013-10-01 04:00	935	9
4344	2013-10-01 05:00	902	55
4345	2013-10-01 05:00	900	944
4346	2013-10-01 05:00	904	117
4347	2013-10-01 05:00	3548	22
4348	2013-10-01 05:00	500	11
4349	2013-10-01 05:00	920	11
4350	2013-10-01 05:00	917	8
4351	2013-10-01 05:00	916	327
4352	2013-10-01 05:00	922	61
4353	2013-10-01 05:00	935	17
4354	2013-10-01 06:00	902	744
4355	2013-10-01 06:00	903	29
4356	2013-10-01 06:00	900	5842
4357	2013-10-01 06:00	904	434
4358	2013-10-01 06:00	3548	24
4359	2013-10-01 06:00	110	28
4360	2013-10-01 06:00	917	46
4361	2013-10-01 06:00	916	1406
4362	2013-10-01 06:00	922	130
4363	2013-10-01 06:00	935	65
4364	2013-10-01 07:00	902	958
4365	2013-10-01 07:00	903	61
4366	2013-10-01 07:00	900	9880
4367	2013-10-01 07:00	904	887
4368	2013-10-01 07:00	926	84
4369	2013-10-01 07:00	110	51
4370	2013-10-01 07:00	917	71
4371	2013-10-01 07:00	916	2363
4372	2013-10-01 07:00	922	278
4373	2013-10-01 07:00	935	205
4374	2013-10-01 08:00	902	969
4375	2013-10-01 08:00	903	90
4376	2013-10-01 08:00	900	11260
4377	2013-10-01 08:00	904	1014
4378	2013-10-01 08:00	150	252
4379	2013-10-01 08:00	926	231
4380	2013-10-01 08:00	917	545
4381	2013-10-01 08:00	916	2516
4382	2013-10-01 08:00	922	303
4383	2013-10-01 08:00	935	265
4384	2013-10-01 09:00	902	1115
4385	2013-10-01 09:00	903	393
4386	2013-10-01 09:00	900	15310
4387	2013-10-01 09:00	904	2927
4388	2013-10-01 09:00	150	695
4389	2013-10-01 09:00	926	392
4390	2013-10-01 09:00	917	528
4391	2013-10-01 09:00	916	5692
4392	2013-10-01 09:00	922	2129
4393	2013-10-01 09:00	935	498
4394	2013-10-01 10:00	902	1687
4395	2013-10-01 10:00	150	827
4396	2013-10-01 10:00	900	14765
4397	2013-10-01 10:00	904	1130
4398	2013-10-01 10:00	926	1717
4399	2013-10-01 10:00	110	639
4400	2013-10-01 10:00	914	563
4401	2013-10-01 10:00	917	1291
4402	2013-10-01 10:00	916	3596
4403	2013-10-01 10:00	913	268
4404	2013-10-01 11:00	902	1161
4405	2013-10-01 11:00	150	898
4406	2013-10-01 11:00	900	15195
4407	2013-10-01 11:00	904	1121
4408	2013-10-01 11:00	905	146
4409	2013-10-01 11:00	110	416
4410	2013-10-01 11:00	917	528
4411	2013-10-01 11:00	916	3120
4412	2013-10-01 11:00	922	268
4413	2013-10-01 11:00	926	1618
4414	2013-10-01 12:00	902	1125
4415	2013-10-01 12:00	150	767
4416	2013-10-01 12:00	900	17155
4417	2013-10-01 12:00	904	1289
4418	2013-10-01 12:00	905	250
4419	2013-10-01 12:00	110	188
4420	2013-10-01 12:00	917	442
4421	2013-10-01 12:00	916	3716
4422	2013-10-01 12:00	922	332
4423	2013-10-01 12:00	926	1725
4424	2013-10-01 13:00	902	1310
4425	2013-10-01 13:00	150	886
4426	2013-10-01 13:00	900	17271
4427	2013-10-01 13:00	904	1430
4428	2013-10-01 13:00	905	200
4429	2013-10-01 13:00	110	183
4430	2013-10-01 13:00	917	282
4431	2013-10-01 13:00	916	3550
4432	2013-10-01 13:00	922	375
4433	2013-10-01 13:00	926	1305
4434	2013-10-01 14:00	902	1284
4435	2013-10-01 14:00	150	625
4436	2013-10-01 14:00	900	17449
4437	2013-10-01 14:00	904	1663
4438	2013-10-01 14:00	926	1158
4439	2013-10-01 14:00	110	1942
4440	2013-10-01 14:00	917	192
4441	2013-10-01 14:00	916	3703
4442	2013-10-01 14:00	922	727
4443	2013-10-01 14:00	935	224
4444	2013-10-01 15:00	902	1281
4445	2013-10-01 15:00	150	491
4446	2013-10-01 15:00	900	16225
4447	2013-10-01 15:00	904	1427
4448	2013-10-01 15:00	905	169
4449	2013-10-01 15:00	926	1278
4450	2013-10-01 15:00	917	259
4451	2013-10-01 15:00	916	4140
4452	2013-10-01 15:00	922	365
4453	2013-10-01 15:00	935	165
4454	2013-10-01 16:00	902	1203
4455	2013-10-01 16:00	150	1168
4456	2013-10-01 16:00	900	16091
4457	2013-10-01 16:00	904	1500
4458	2013-10-01 16:00	919	182
4459	2013-10-01 16:00	926	1146
4460	2013-10-01 16:00	917	273
4461	2013-10-01 16:00	916	3784
4462	2013-10-01 16:00	922	966
4463	2013-10-01 16:00	935	164
4464	2013-10-01 17:00	902	1357
4465	2013-10-01 17:00	150	263
4466	2013-10-01 17:00	900	16116
4467	2013-10-01 17:00	904	1353
4468	2013-10-01 17:00	919	169
4469	2013-10-01 17:00	914	287
4470	2013-10-01 17:00	917	518
4471	2013-10-01 17:00	916	3820
4472	2013-10-01 17:00	922	953
4473	2013-10-01 17:00	926	1600
4474	2013-10-01 18:00	902	1589
4475	2013-10-01 18:00	903	134
4476	2013-10-01 18:00	900	19792
4477	2013-10-01 18:00	904	1391
4478	2013-10-01 18:00	150	347
4479	2013-10-01 18:00	926	1935
4480	2013-10-01 18:00	917	772
4481	2013-10-01 18:00	916	4298
4482	2013-10-01 18:00	922	596
4483	2013-10-01 18:00	935	182
4484	2013-10-01 19:00	902	1633
4485	2013-10-01 19:00	150	154
4486	2013-10-01 19:00	900	19563
4487	2013-10-01 19:00	904	1404
4488	2013-10-01 19:00	919	113
4489	2013-10-01 19:00	926	889
4490	2013-10-01 19:00	917	424
4491	2013-10-01 19:00	916	4744
4492	2013-10-01 19:00	922	1172
4493	2013-10-01 19:00	935	250
4494	2013-10-01 20:00	902	1777
4495	2013-10-01 20:00	150	115
4496	2013-10-01 20:00	900	16829
4497	2013-10-01 20:00	904	1309
4498	2013-10-01 20:00	919	209
4499	2013-10-01 20:00	926	842
4500	2013-10-01 20:00	917	905
4501	2013-10-01 20:00	916	4020
4502	2013-10-01 20:00	922	494
4503	2013-10-01 20:00	935	152
4504	2013-10-01 21:00	902	1430
4505	2013-10-01 21:00	903	73
4506	2013-10-01 21:00	900	12535
4507	2013-10-01 21:00	904	902
4508	2013-10-01 21:00	919	213
4509	2013-10-01 21:00	926	555
4510	2013-10-01 21:00	917	1190
4511	2013-10-01 21:00	916	2307
4512	2013-10-01 21:00	922	388
4513	2013-10-01 21:00	935	128
4514	2013-10-01 22:00	902	777
4515	2013-10-01 22:00	900	7104
4516	2013-10-01 22:00	907	39
4517	2013-10-01 22:00	904	534
4518	2013-10-01 22:00	919	56
4519	2013-10-01 22:00	926	694
4520	2013-10-01 22:00	917	761
4521	2013-10-01 22:00	916	1123
4522	2013-10-01 22:00	922	231
4523	2013-10-01 22:00	935	61
4524	2013-10-01 23:00	902	193
4525	2013-10-01 23:00	900	3366
4526	2013-10-01 23:00	904	224
4527	2013-10-01 23:00	926	508
4528	2013-10-01 23:00	703	33
4529	2013-10-01 23:00	110	31
4530	2013-10-01 23:00	917	283
4531	2013-10-01 23:00	916	488
4532	2013-10-01 23:00	922	107
4533	2013-10-01 23:00	935	33
4534	2013-10-02 00:00	902	42
4535	2013-10-02 00:00	900	1387
4536	2013-10-02 00:00	904	118
4537	2013-10-02 00:00	926	123
4538	2013-10-02 00:00	110	16
4539	2013-10-02 00:00	920	19
4540	2013-10-02 00:00	917	19
4541	2013-10-02 00:00	916	183
4542	2013-10-02 00:00	922	112
4543	2013-10-02 00:00	935	14
4544	2013-10-02 01:00	902	62
4545	2013-10-02 01:00	150	24
4546	2013-10-02 01:00	900	907
4547	2013-10-02 01:00	904	97
4548	2013-10-02 01:00	3548	13
4549	2013-10-02 01:00	926	227
4550	2013-10-02 01:00	917	37
4551	2013-10-02 01:00	916	91
4552	2013-10-02 01:00	922	69
4553	2013-10-02 01:00	500	9
4554	2013-10-02 02:00	902	44
4555	2013-10-02 02:00	900	427
4556	2013-10-02 02:00	904	73
4557	2013-10-02 02:00	3548	18
4558	2013-10-02 02:00	926	89
4559	2013-10-02 02:00	917	9
4560	2013-10-02 02:00	916	56
4561	2013-10-02 02:00	502	8
4562	2013-10-02 02:00	922	60
4563	2013-10-02 02:00	500	7
4564	2013-10-02 03:00	902	15
4565	2013-10-02 03:00	903	3
4566	2013-10-02 03:00	900	272
4567	2013-10-02 03:00	904	46
4568	2013-10-02 03:00	3548	4
4569	2013-10-02 03:00	926	58
4570	2013-10-02 03:00	500	8
4571	2013-10-02 03:00	922	4
4572	2013-10-02 03:00	916	67
4573	2013-10-02 03:00	935	8
4574	2013-10-02 04:00	902	17
4575	2013-10-02 04:00	900	272
4576	2013-10-02 04:00	904	62
4577	2013-10-02 04:00	3548	6
4578	2013-10-02 04:00	919	4
4579	2013-10-02 04:00	926	35
4580	2013-10-02 04:00	922	18
4581	2013-10-02 04:00	916	53
4582	2013-10-02 04:00	502	6
4583	2013-10-02 04:00	500	8
4584	2013-10-02 05:00	902	90
4585	2013-10-02 05:00	903	8
4586	2013-10-02 05:00	900	859
4587	2013-10-02 05:00	904	107
4588	2013-10-02 05:00	150	44
4589	2013-10-02 05:00	3548	20
4590	2013-10-02 05:00	926	20
4591	2013-10-02 05:00	922	12
4592	2013-10-02 05:00	916	148
4593	2013-10-02 05:00	935	14
4594	2013-10-02 06:00	902	538
4595	2013-10-02 06:00	903	37
4596	2013-10-02 06:00	900	4065
4597	2013-10-02 06:00	901	23
4598	2013-10-02 06:00	904	396
4599	2013-10-02 06:00	150	118
4600	2013-10-02 06:00	917	27
4601	2013-10-02 06:00	916	989
4602	2013-10-02 06:00	922	74
4603	2013-10-02 06:00	935	35
4604	2013-10-02 07:00	902	1010
4605	2013-10-02 07:00	903	50
4606	2013-10-02 07:00	900	9794
4607	2013-10-02 07:00	904	879
4608	2013-10-02 07:00	150	46
4609	2013-10-02 07:00	926	57
4610	2013-10-02 07:00	917	46
4611	2013-10-02 07:00	916	2137
4612	2013-10-02 07:00	922	293
4613	2013-10-02 07:00	935	201
4614	2013-10-02 08:00	902	1318
4615	2013-10-02 08:00	903	108
4616	2013-10-02 08:00	900	13815
4617	2013-10-02 08:00	904	1176
4618	2013-10-02 08:00	150	538
4619	2013-10-02 08:00	926	195
4620	2013-10-02 08:00	917	264
4621	2013-10-02 08:00	916	2965
4622	2013-10-02 08:00	922	579
4623	2013-10-02 08:00	935	335
4624	2013-10-02 09:00	902	1452
4625	2013-10-02 09:00	150	627
4626	2013-10-02 09:00	900	17404
4627	2013-10-02 09:00	904	1306
4628	2013-10-02 09:00	926	686
4629	2013-10-02 09:00	110	92
4630	2013-10-02 09:00	917	442
4631	2013-10-02 09:00	916	3622
4632	2013-10-02 09:00	922	388
4633	2013-10-02 09:00	935	344
4634	2013-10-02 10:00	902	1663
4635	2013-10-02 10:00	903	142
4636	2013-10-02 10:00	900	19992
4637	2013-10-02 10:00	904	1714
4638	2013-10-02 10:00	150	298
4639	2013-10-02 10:00	926	1030
4640	2013-10-02 10:00	917	999
4641	2013-10-02 10:00	916	3922
4642	2013-10-02 10:00	922	422
4643	2013-10-02 10:00	935	322
4644	2013-10-02 11:00	902	1602
4645	2013-10-02 11:00	150	270
4646	2013-10-02 11:00	900	21746
4647	2013-10-02 11:00	904	1504
4648	2013-10-02 11:00	926	836
4649	2013-10-02 11:00	110	208
4650	2013-10-02 11:00	917	608
4651	2013-10-02 11:00	916	3990
4652	2013-10-02 11:00	922	451
4653	2013-10-02 11:00	935	303
4654	2013-10-02 12:00	902	1466
4655	2013-10-02 12:00	150	258
4656	2013-10-02 12:00	900	18073
4657	2013-10-02 12:00	904	1399
4658	2013-10-02 12:00	926	1495
4659	2013-10-02 12:00	110	128
4660	2013-10-02 12:00	917	261
4661	2013-10-02 12:00	916	3807
4662	2013-10-02 12:00	922	442
4663	2013-10-02 12:00	935	334
4664	2013-10-02 13:00	902	1243
4665	2013-10-02 13:00	150	1633
4666	2013-10-02 13:00	900	19300
4667	2013-10-02 13:00	904	1527
4668	2013-10-02 13:00	926	1272
4669	2013-10-02 13:00	914	179
4670	2013-10-02 13:00	917	200
4671	2013-10-02 13:00	916	3508
4672	2013-10-02 13:00	922	377
4673	2013-10-02 13:00	935	328
4674	2013-10-02 14:00	902	1226
4675	2013-10-02 14:00	903	111
4676	2013-10-02 14:00	900	16102
4677	2013-10-02 14:00	904	1302
4678	2013-10-02 14:00	926	783
4679	2013-10-02 14:00	110	126
4680	2013-10-02 14:00	917	176
4681	2013-10-02 14:00	916	3300
4682	2013-10-02 14:00	922	390
4683	2013-10-02 14:00	935	300
4684	2013-10-02 15:00	902	1061
4685	2013-10-02 15:00	903	108
4686	2013-10-02 15:00	900	14176
4687	2013-10-02 15:00	904	1245
4688	2013-10-02 15:00	926	772
4689	2013-10-02 15:00	110	106
4690	2013-10-02 15:00	917	176
4691	2013-10-02 15:00	916	3117
4692	2013-10-02 15:00	922	363
4693	2013-10-02 15:00	935	287
4694	2013-10-02 16:00	902	1071
4695	2013-10-02 16:00	150	1669
4696	2013-10-02 16:00	900	15558
4697	2013-10-02 16:00	904	1131
4698	2013-10-02 16:00	919	141
4699	2013-10-02 16:00	926	1106
4700	2013-10-02 16:00	917	212
4701	2013-10-02 16:00	916	3298
4702	2013-10-02 16:00	922	282
4703	2013-10-02 16:00	935	304
4704	2013-10-02 17:00	902	1178
4705	2013-10-02 17:00	903	113
4706	2013-10-02 17:00	900	14890
4707	2013-10-02 17:00	904	1230
4708	2013-10-02 17:00	926	480
4709	2013-10-02 17:00	110	141
4710	2013-10-02 17:00	917	632
4711	2013-10-02 17:00	916	3098
4712	2013-10-02 17:00	922	332
4713	2013-10-02 17:00	935	285
4714	2013-10-02 18:00	902	1475
4715	2013-10-02 18:00	150	290
4716	2013-10-02 18:00	900	17453
4717	2013-10-02 18:00	904	1294
4718	2013-10-02 18:00	926	360
4719	2013-10-02 18:00	920	124
4720	2013-10-02 18:00	917	921
4721	2013-10-02 18:00	916	3358
4722	2013-10-02 18:00	922	547
4723	2013-10-02 18:00	935	369
4724	2013-10-02 19:00	902	1935
4725	2013-10-02 19:00	903	123
4726	2013-10-02 19:00	900	19241
4727	2013-10-02 19:00	904	1393
4728	2013-10-02 19:00	150	332
4729	2013-10-02 19:00	926	250
4730	2013-10-02 19:00	917	1188
4731	2013-10-02 19:00	916	3922
4732	2013-10-02 19:00	922	533
4733	2013-10-02 19:00	935	415
4734	2013-10-02 20:00	902	1519
4735	2013-10-02 20:00	903	115
4736	2013-10-02 20:00	900	15775
4737	2013-10-02 20:00	904	1222
4738	2013-10-02 20:00	926	276
4739	2013-10-02 20:00	110	86
4740	2013-10-02 20:00	917	997
4741	2013-10-02 20:00	916	3350
4742	2013-10-02 20:00	922	494
4743	2013-10-02 20:00	935	385
4744	2013-10-02 21:00	902	977
4745	2013-10-02 21:00	150	152
4746	2013-10-02 21:00	900	11810
4747	2013-10-02 21:00	907	81
4748	2013-10-02 21:00	904	895
4749	2013-10-02 21:00	926	172
4750	2013-10-02 21:00	917	658
4751	2013-10-02 21:00	916	2250
4752	2013-10-02 21:00	922	446
4753	2013-10-02 21:00	935	278
4754	2013-10-02 22:00	902	571
4755	2013-10-02 22:00	150	35
4756	2013-10-02 22:00	900	6542
4757	2013-10-02 22:00	904	503
4758	2013-10-02 22:00	926	149
4759	2013-10-02 22:00	110	36
4760	2013-10-02 22:00	917	402
4761	2013-10-02 22:00	916	1033
4762	2013-10-02 22:00	922	163
4763	2013-10-02 22:00	935	86
4764	2013-10-02 23:00	902	193
4765	2013-10-02 23:00	150	26
4766	2013-10-02 23:00	900	3343
4767	2013-10-02 23:00	904	235
4768	2013-10-02 23:00	703	26
4769	2013-10-02 23:00	926	135
4770	2013-10-02 23:00	917	165
4771	2013-10-02 23:00	916	394
4772	2013-10-02 23:00	922	112
4773	2013-10-02 23:00	935	25
4774	2013-10-03 00:00	902	61
4775	2013-10-03 00:00	900	1283
4776	2013-10-03 00:00	904	87
4777	2013-10-03 00:00	3548	21
4778	2013-10-03 00:00	926	44
4779	2013-10-03 00:00	500	9
4780	2013-10-03 00:00	110	8
4781	2013-10-03 00:00	922	39
4782	2013-10-03 00:00	916	122
4783	2013-10-03 00:00	935	10
4784	2013-10-03 01:00	902	70
4785	2013-10-03 01:00	903	9
4786	2013-10-03 01:00	900	948
4787	2013-10-03 01:00	904	89
4788	2013-10-03 01:00	3548	9
4789	2013-10-03 01:00	926	43
4790	2013-10-03 01:00	917	8
4791	2013-10-03 01:00	916	118
4792	2013-10-03 01:00	922	15
4793	2013-10-03 01:00	935	6
4794	2013-10-03 02:00	902	28
4795	2013-10-03 02:00	900	343
4796	2013-10-03 02:00	904	84
4797	2013-10-03 02:00	908	4
4798	2013-10-03 02:00	3548	9
4799	2013-10-03 02:00	926	30
4800	2013-10-03 02:00	500	8
4801	2013-10-03 02:00	922	26
4802	2013-10-03 02:00	916	46
4803	2013-10-03 02:00	935	7
4804	2013-10-03 03:00	902	5
4805	2013-10-03 03:00	903	4
4806	2013-10-03 03:00	900	252
4807	2013-10-03 03:00	904	40
4808	2013-10-03 03:00	3548	12
4809	2013-10-03 03:00	926	27
4810	2013-10-03 03:00	500	8
4811	2013-10-03 03:00	922	14
4812	2013-10-03 03:00	916	27
4813	2013-10-03 03:00	935	5
4814	2013-10-03 04:00	902	19
4815	2013-10-03 04:00	900	423
4816	2013-10-03 04:00	904	50
4817	2013-10-03 04:00	3548	16
4818	2013-10-03 04:00	926	49
4819	2013-10-03 04:00	917	6
4820	2013-10-03 04:00	916	45
4821	2013-10-03 04:00	502	7
4822	2013-10-03 04:00	922	13
4823	2013-10-03 04:00	500	8
4824	2013-10-03 05:00	902	93
4825	2013-10-03 05:00	150	8
4826	2013-10-03 05:00	900	1348
4827	2013-10-03 05:00	907	8
4828	2013-10-03 05:00	904	128
4829	2013-10-03 05:00	3548	16
4830	2013-10-03 05:00	500	8
4831	2013-10-03 05:00	922	62
4832	2013-10-03 05:00	916	199
4833	2013-10-03 05:00	935	5
4834	2013-10-03 06:00	902	514
4835	2013-10-03 06:00	900	5081
4836	2013-10-03 06:00	907	77
4837	2013-10-03 06:00	904	352
4838	2013-10-03 06:00	905	16
4839	2013-10-03 06:00	110	20
4840	2013-10-03 06:00	917	74
4841	2013-10-03 06:00	916	951
4842	2013-10-03 06:00	922	193
4843	2013-10-03 06:00	935	60
4844	2013-10-03 07:00	902	828
4845	2013-10-03 07:00	903	42
4846	2013-10-03 07:00	900	9830
4847	2013-10-03 07:00	907	39
4848	2013-10-03 07:00	904	745
4849	2013-10-03 07:00	926	44
4850	2013-10-03 07:00	917	59
4851	2013-10-03 07:00	916	1743
4852	2013-10-03 07:00	922	256
4853	2013-10-03 07:00	935	159
4854	2013-10-03 08:00	902	985
4855	2013-10-03 08:00	150	658
4856	2013-10-03 08:00	900	10429
4857	2013-10-03 08:00	904	879
4858	2013-10-03 08:00	905	78
4859	2013-10-03 08:00	926	127
4860	2013-10-03 08:00	917	263
4861	2013-10-03 08:00	916	2279
4862	2013-10-03 08:00	922	289
4863	2013-10-03 08:00	935	238
4864	2013-10-03 09:00	902	1095
4865	2013-10-03 09:00	150	699
4866	2013-10-03 09:00	900	13313
4867	2013-10-03 09:00	904	1853
4868	2013-10-03 09:00	905	394
4869	2013-10-03 09:00	926	363
4870	2013-10-03 09:00	917	252
4871	2013-10-03 09:00	916	3372
4872	2013-10-03 09:00	922	941
4873	2013-10-03 09:00	935	309
4874	2013-10-03 10:00	902	1399
4875	2013-10-03 10:00	903	571
4876	2013-10-03 10:00	900	19220
4877	2013-10-03 10:00	904	3606
4878	2013-10-03 10:00	905	906
4879	2013-10-03 10:00	150	779
4880	2013-10-03 10:00	917	530
4881	2013-10-03 10:00	916	5442
4882	2013-10-03 10:00	922	2284
4883	2013-10-03 10:00	926	1473
4884	2013-10-03 11:00	902	1424
4885	2013-10-03 11:00	150	903
4886	2013-10-03 11:00	900	19895
4887	2013-10-03 11:00	904	3022
4888	2013-10-03 11:00	905	1352
4889	2013-10-03 11:00	926	1376
4890	2013-10-03 11:00	110	502
4891	2013-10-03 11:00	922	1580
4892	2013-10-03 11:00	916	4535
4893	2013-10-03 11:00	935	391
4894	2013-10-03 12:00	902	1541
4895	2013-10-03 12:00	903	458
4896	2013-10-03 12:00	900	22055
4897	2013-10-03 12:00	904	3698
4898	2013-10-03 12:00	905	1079
4899	2013-10-03 12:00	150	1088
4900	2013-10-03 12:00	926	1268
4901	2013-10-03 12:00	922	2265
4902	2013-10-03 12:00	916	6357
4903	2013-10-03 12:00	935	429
4904	2013-10-03 13:00	902	1380
4905	2013-10-03 13:00	903	450
4906	2013-10-03 13:00	900	22044
4907	2013-10-03 13:00	904	3358
4908	2013-10-03 13:00	150	969
4909	2013-10-03 13:00	919	544
4910	2013-10-03 13:00	917	412
4911	2013-10-03 13:00	916	5647
4912	2013-10-03 13:00	922	1790
4913	2013-10-03 13:00	926	1527
4914	2013-10-03 14:00	902	1434
4915	2013-10-03 14:00	903	335
4916	2013-10-03 14:00	900	18932
4917	2013-10-03 14:00	904	2179
4918	2013-10-03 14:00	150	591
4919	2013-10-03 14:00	919	379
4920	2013-10-03 14:00	926	1260
4921	2013-10-03 14:00	922	1104
4922	2013-10-03 14:00	916	3963
4923	2013-10-03 14:00	935	294
4924	2013-10-03 15:00	902	1315
4925	2013-10-03 15:00	903	522
4926	2013-10-03 15:00	900	20749
4927	2013-10-03 15:00	904	3665
4928	2013-10-03 15:00	150	476
4929	2013-10-03 15:00	926	1447
4930	2013-10-03 15:00	922	1898
4931	2013-10-03 15:00	916	6281
4932	2013-10-03 15:00	911	2878
4933	2013-10-03 15:00	913	3113
4934	2013-10-03 16:00	902	1444
4935	2013-10-03 16:00	150	1457
4936	2013-10-03 16:00	900	19510
4937	2013-10-03 16:00	904	3021
4938	2013-10-03 16:00	919	484
4939	2013-10-03 16:00	926	1478
4940	2013-10-03 16:00	922	1702
4941	2013-10-03 16:00	916	5667
4942	2013-10-03 16:00	911	2386
4943	2013-10-03 16:00	913	2492
4944	2013-10-03 17:00	902	1209
4945	2013-10-03 17:00	150	315
4946	2013-10-03 17:00	900	18074
4947	2013-10-03 17:00	904	2291
4948	2013-10-03 17:00	926	1462
4949	2013-10-03 17:00	913	2254
4950	2013-10-03 17:00	922	1221
4951	2013-10-03 17:00	916	4657
4952	2013-10-03 17:00	911	2108
4953	2013-10-03 17:00	935	274
4954	2013-10-03 18:00	902	1141
4955	2013-10-03 18:00	150	350
4956	2013-10-03 18:00	900	19549
4957	2013-10-03 18:00	904	1852
4958	2013-10-03 18:00	926	1007
4959	2013-10-03 18:00	917	308
4960	2013-10-03 18:00	916	4181
4961	2013-10-03 18:00	911	2418
4962	2013-10-03 18:00	922	786
4963	2013-10-03 18:00	913	2326
4964	2013-10-03 19:00	902	1387
4965	2013-10-03 19:00	900	19659
4966	2013-10-03 19:00	904	1959
4967	2013-10-03 19:00	919	875
4968	2013-10-03 19:00	926	775
4969	2013-10-03 19:00	917	421
4970	2013-10-03 19:00	916	4219
4971	2013-10-03 19:00	911	2823
4972	2013-10-03 19:00	922	666
4973	2013-10-03 19:00	913	2711
4974	2013-10-03 20:00	902	1111
4975	2013-10-03 20:00	900	16144
4976	2013-10-03 20:00	904	1518
4977	2013-10-03 20:00	919	1094
4978	2013-10-03 20:00	926	421
4979	2013-10-03 20:00	917	792
4980	2013-10-03 20:00	916	3365
4981	2013-10-03 20:00	911	2065
4982	2013-10-03 20:00	922	412
4983	2013-10-03 20:00	913	2046
4984	2013-10-03 21:00	902	806
4985	2013-10-03 21:00	900	12472
4986	2013-10-03 21:00	904	1226
4987	2013-10-03 21:00	919	1331
4988	2013-10-03 21:00	926	359
4989	2013-10-03 21:00	917	612
4990	2013-10-03 21:00	916	2390
4991	2013-10-03 21:00	911	1512
4992	2013-10-03 21:00	922	439
4993	2013-10-03 21:00	913	1593
4994	2013-10-03 22:00	902	409
4995	2013-10-03 22:00	900	6368
4996	2013-10-03 22:00	904	426
4997	2013-10-03 22:00	919	253
4998	2013-10-03 22:00	926	607
4999	2013-10-03 22:00	917	412
5000	2013-10-03 22:00	916	1027
5001	2013-10-03 22:00	911	510
5002	2013-10-03 22:00	922	178
5003	2013-10-03 22:00	913	579
5004	2013-10-03 23:00	902	173
5005	2013-10-03 23:00	900	2927
5006	2013-10-03 23:00	904	318
5007	2013-10-03 23:00	926	311
5008	2013-10-03 23:00	920	31
5009	2013-10-03 23:00	917	177
5010	2013-10-03 23:00	916	355
5011	2013-10-03 23:00	911	194
5012	2013-10-03 23:00	922	55
5013	2013-10-03 23:00	913	225
5014	2013-10-04 00:00	902	35
5015	2013-10-04 00:00	900	1189
5016	2013-10-04 00:00	904	100
5017	2013-10-04 00:00	3548	28
5018	2013-10-04 00:00	926	67
5019	2013-10-04 00:00	917	32
5020	2013-10-04 00:00	916	117
5021	2013-10-04 00:00	911	57
5022	2013-10-04 00:00	922	37
5023	2013-10-04 00:00	913	79
5024	2013-10-04 01:00	902	22
5025	2013-10-04 01:00	900	482
5026	2013-10-04 01:00	904	56
5027	2013-10-04 01:00	3548	32
5028	2013-10-04 01:00	926	43
5029	2013-10-04 01:00	500	9
5030	2013-10-04 01:00	922	12
5031	2013-10-04 01:00	916	57
5032	2013-10-04 01:00	911	32
5033	2013-10-04 01:00	913	29
5034	2013-10-04 02:00	902	11
5035	2013-10-04 02:00	900	289
5036	2013-10-04 02:00	904	53
5037	2013-10-04 02:00	3548	21
5038	2013-10-04 02:00	926	23
5039	2013-10-04 02:00	500	8
5040	2013-10-04 02:00	917	17
5041	2013-10-04 02:00	916	37
5042	2013-10-04 02:00	911	11
5043	2013-10-04 02:00	913	10
5044	2013-10-04 03:00	902	5
5045	2013-10-04 03:00	900	199
5046	2013-10-04 03:00	904	22
5047	2013-10-04 03:00	3548	22
5048	2013-10-04 03:00	926	10
5049	2013-10-04 03:00	500	8
5050	2013-10-04 03:00	920	2
5051	2013-10-04 03:00	917	8
5052	2013-10-04 03:00	916	20
5053	2013-10-04 03:00	913	6
5054	2013-10-04 04:00	902	26
5055	2013-10-04 04:00	900	462
5056	2013-10-04 04:00	904	22
5057	2013-10-04 04:00	3548	26
5058	2013-10-04 04:00	926	23
5059	2013-10-04 04:00	917	19
5060	2013-10-04 04:00	916	44
5061	2013-10-04 04:00	911	19
5062	2013-10-04 04:00	922	16
5063	2013-10-04 04:00	913	17
5064	2013-10-04 05:00	902	61
5065	2013-10-04 05:00	150	32
5066	2013-10-04 05:00	900	1424
5067	2013-10-04 05:00	904	97
5068	2013-10-04 05:00	3548	11
5069	2013-10-04 05:00	917	29
5070	2013-10-04 05:00	916	194
5071	2013-10-04 05:00	911	82
5072	2013-10-04 05:00	922	14
5073	2013-10-04 05:00	913	107
5074	2013-10-04 06:00	902	354
5075	2013-10-04 06:00	900	4341
5076	2013-10-04 06:00	904	387
5077	2013-10-04 06:00	926	56
5078	2013-10-04 06:00	913	583
5079	2013-10-04 06:00	917	90
5080	2013-10-04 06:00	916	907
5081	2013-10-04 06:00	911	507
5082	2013-10-04 06:00	922	81
5083	2013-10-04 06:00	935	42
5084	2013-10-04 07:00	902	736
5085	2013-10-04 07:00	150	82
5086	2013-10-04 07:00	900	9421
5087	2013-10-04 07:00	904	783
5088	2013-10-04 07:00	926	162
5089	2013-10-04 07:00	913	1396
5090	2013-10-04 07:00	922	246
5091	2013-10-04 07:00	916	2054
5092	2013-10-04 07:00	911	1197
5093	2013-10-04 07:00	935	108
5094	2013-10-04 08:00	902	739
5095	2013-10-04 08:00	150	433
5096	2013-10-04 08:00	900	13126
5097	2013-10-04 08:00	904	777
5098	2013-10-04 08:00	926	383
5099	2013-10-04 08:00	917	153
5100	2013-10-04 08:00	916	2484
5101	2013-10-04 08:00	911	1304
5102	2013-10-04 08:00	922	259
5103	2013-10-04 08:00	913	1480
5104	2013-10-04 09:00	902	1157
5105	2013-10-04 09:00	150	527
5106	2013-10-04 09:00	900	18989
5107	2013-10-04 09:00	904	3884
5108	2013-10-04 09:00	926	750
5109	2013-10-04 09:00	913	3060
5110	2013-10-04 09:00	922	2073
5111	2013-10-04 09:00	916	5563
5112	2013-10-04 09:00	911	2943
5113	2013-10-04 09:00	935	480
5114	2013-10-04 10:00	902	1473
5115	2013-10-04 10:00	903	559
5116	2013-10-04 10:00	900	22722
5117	2013-10-04 10:00	904	3794
5118	2013-10-04 10:00	150	918
5119	2013-10-04 10:00	926	2079
5120	2013-10-04 10:00	922	2103
5121	2013-10-04 10:00	916	6061
5122	2013-10-04 10:00	911	2804
5123	2013-10-04 10:00	913	2943
5124	2013-10-04 11:00	902	1449
5125	2013-10-04 11:00	150	1101
5126	2013-10-04 11:00	900	22705
5127	2013-10-04 11:00	904	3560
5128	2013-10-04 11:00	926	1781
5129	2013-10-04 11:00	913	1516
5130	2013-10-04 11:00	922	2224
5131	2013-10-04 11:00	916	6279
5132	2013-10-04 11:00	911	1252
5133	2013-10-04 11:00	935	459
5134	2013-10-04 12:00	902	1365
5135	2013-10-04 12:00	903	492
5136	2013-10-04 12:00	900	22984
5137	2013-10-04 12:00	904	3735
5138	2013-10-04 12:00	150	879
5139	2013-10-04 12:00	919	277
5140	2013-10-04 12:00	926	1675
5141	2013-10-04 12:00	922	2487
5142	2013-10-04 12:00	916	6567
5143	2013-10-04 12:00	935	487
5144	2013-10-04 13:00	902	1512
5145	2013-10-04 13:00	903	742
5146	2013-10-04 13:00	900	24393
5147	2013-10-04 13:00	907	281
5148	2013-10-04 13:00	904	4122
5149	2013-10-04 13:00	150	357
5150	2013-10-04 13:00	926	1435
5151	2013-10-04 13:00	922	3063
5152	2013-10-04 13:00	916	6799
5153	2013-10-04 13:00	935	490
5154	2013-10-04 14:00	902	1326
5155	2013-10-04 14:00	150	353
5156	2013-10-04 14:00	900	20193
5157	2013-10-04 14:00	904	2133
5158	2013-10-04 14:00	926	1469
5159	2013-10-04 14:00	919	334
5160	2013-10-04 14:00	110	370
5161	2013-10-04 14:00	922	976
5162	2013-10-04 14:00	916	4409
5163	2013-10-04 14:00	935	252
5164	2013-10-04 15:00	902	1160
5165	2013-10-04 15:00	150	703
5166	2013-10-04 15:00	900	21249
5167	2013-10-04 15:00	904	2320
5168	2013-10-04 15:00	905	213
5169	2013-10-04 15:00	919	240
5170	2013-10-04 15:00	926	1312
5171	2013-10-04 15:00	922	875
5172	2013-10-04 15:00	916	4451
5173	2013-10-04 15:00	935	227
5174	2013-10-04 16:00	902	1233
5175	2013-10-04 16:00	150	1858
5176	2013-10-04 16:00	900	17272
5177	2013-10-04 16:00	904	1444
5178	2013-10-04 16:00	905	188
5179	2013-10-04 16:00	926	1428
5180	2013-10-04 16:00	917	216
5181	2013-10-04 16:00	916	3723
5182	2013-10-04 16:00	922	503
5183	2013-10-04 16:00	935	177
5184	2013-10-04 17:00	902	1127
5185	2013-10-04 17:00	150	486
5186	2013-10-04 17:00	900	16261
5187	2013-10-04 17:00	904	1261
5188	2013-10-04 17:00	905	200
5189	2013-10-04 17:00	110	135
5190	2013-10-04 17:00	917	292
5191	2013-10-04 17:00	916	3055
5192	2013-10-04 17:00	922	274
5193	2013-10-04 17:00	926	1611
5194	2013-10-04 18:00	902	1295
5195	2013-10-04 18:00	150	359
5196	2013-10-04 18:00	900	17533
5197	2013-10-04 18:00	904	1241
5198	2013-10-04 18:00	926	1164
5199	2013-10-04 18:00	914	113
5200	2013-10-04 18:00	917	226
5201	2013-10-04 18:00	916	3411
5202	2013-10-04 18:00	922	390
5203	2013-10-04 18:00	935	143
5204	2013-10-04 19:00	902	1487
5205	2013-10-04 19:00	150	154
5206	2013-10-04 19:00	900	18205
5207	2013-10-04 19:00	904	1279
5208	2013-10-04 19:00	926	1359
5209	2013-10-04 19:00	110	107
5210	2013-10-04 19:00	917	248
5211	2013-10-04 19:00	916	3816
5212	2013-10-04 19:00	922	381
5213	2013-10-04 19:00	935	202
5214	2013-10-04 20:00	902	1220
5215	2013-10-04 20:00	903	101
5216	2013-10-04 20:00	900	16005
5217	2013-10-04 20:00	904	1260
5218	2013-10-04 20:00	150	279
5219	2013-10-04 20:00	926	777
5220	2013-10-04 20:00	917	563
5221	2013-10-04 20:00	916	3016
5222	2013-10-04 20:00	922	393
5223	2013-10-04 20:00	935	275
5224	2013-10-04 21:00	902	794
5225	2013-10-04 21:00	150	235
5226	2013-10-04 21:00	900	12002
5227	2013-10-04 21:00	916	1801
5228	2013-10-04 21:00	904	767
5229	2013-10-04 21:00	926	601
5230	2013-10-04 21:00	917	663
5231	2013-10-04 21:00	930	57
5232	2013-10-04 21:00	922	293
5233	2013-10-04 21:00	935	134
5234	2013-10-04 22:00	902	438
5235	2013-10-04 22:00	150	49
5236	2013-10-04 22:00	900	6225
5237	2013-10-04 22:00	907	54
5238	2013-10-04 22:00	904	425
5239	2013-10-04 22:00	926	673
5240	2013-10-04 22:00	917	256
5241	2013-10-04 22:00	916	1004
5242	2013-10-04 22:00	922	195
5243	2013-10-04 22:00	935	55
5244	2013-10-04 23:00	902	182
5245	2013-10-04 23:00	903	23
5246	2013-10-04 23:00	900	2945
5247	2013-10-04 23:00	904	217
5248	2013-10-04 23:00	926	359
5249	2013-10-04 23:00	920	32
5250	2013-10-04 23:00	917	110
5251	2013-10-04 23:00	916	436
5252	2013-10-04 23:00	922	72
5253	2013-10-04 23:00	935	68
5254	2013-10-05 00:00	902	52
5255	2013-10-05 00:00	900	1324
5256	2013-10-05 00:00	904	141
5257	2013-10-05 00:00	3548	11
5258	2013-10-05 00:00	926	94
5259	2013-10-05 00:00	500	11
5260	2013-10-05 00:00	920	14
5261	2013-10-05 00:00	922	24
5262	2013-10-05 00:00	916	166
5263	2013-10-05 00:00	935	11
5264	2013-10-05 01:00	902	18
5265	2013-10-05 01:00	903	5
5266	2013-10-05 01:00	900	633
5267	2013-10-05 01:00	904	93
5268	2013-10-05 01:00	3548	14
5269	2013-10-05 01:00	926	91
5270	2013-10-05 01:00	500	10
5271	2013-10-05 01:00	922	8
5272	2013-10-05 01:00	916	74
5273	2013-10-05 01:00	935	13
5274	2013-10-05 02:00	902	9
5275	2013-10-05 02:00	150	11
5276	2013-10-05 02:00	900	310
5277	2013-10-05 02:00	904	49
5278	2013-10-05 02:00	3548	17
5279	2013-10-05 02:00	917	11
5280	2013-10-05 02:00	916	50
5281	2013-10-05 02:00	502	12
5282	2013-10-05 02:00	922	13
5283	2013-10-05 02:00	926	39
5284	2013-10-05 03:00	902	2
5285	2013-10-05 03:00	900	204
5286	2013-10-05 03:00	904	12
5287	2013-10-05 03:00	3548	7
5288	2013-10-05 03:00	926	6
5289	2013-10-05 03:00	500	8
5290	2013-10-05 03:00	922	8
5291	2013-10-05 03:00	916	13
5292	2013-10-05 03:00	935	5
5293	2013-10-05 03:00	912	2
5294	2013-10-05 04:00	902	15
5295	2013-10-05 04:00	900	254
5296	2013-10-05 04:00	901	4
5297	2013-10-05 04:00	904	12
5298	2013-10-05 04:00	3548	10
5299	2013-10-05 04:00	926	21
5300	2013-10-05 04:00	500	8
5301	2013-10-05 04:00	917	8
5302	2013-10-05 04:00	916	23
5303	2013-10-05 04:00	935	6
5304	2013-10-05 05:00	902	87
5305	2013-10-05 05:00	903	7
5306	2013-10-05 05:00	900	990
5307	2013-10-05 05:00	907	10
5308	2013-10-05 05:00	904	46
5309	2013-10-05 05:00	150	14
5310	2013-10-05 05:00	3548	9
5311	2013-10-05 05:00	922	48
5312	2013-10-05 05:00	916	117
5313	2013-10-05 05:00	500	8
5314	2013-10-05 06:00	902	394
5315	2013-10-05 06:00	150	26
5316	2013-10-05 06:00	900	4802
5317	2013-10-05 06:00	901	16
5318	2013-10-05 06:00	904	334
5319	2013-10-05 06:00	926	47
5320	2013-10-05 06:00	917	82
5321	2013-10-05 06:00	916	799
5322	2013-10-05 06:00	922	137
5323	2013-10-05 06:00	935	53
5324	2013-10-05 07:00	902	774
5325	2013-10-05 07:00	903	44
5326	2013-10-05 07:00	900	10595
5327	2013-10-05 07:00	904	784
5328	2013-10-05 07:00	150	31
5329	2013-10-05 07:00	926	99
5330	2013-10-05 07:00	920	49
5331	2013-10-05 07:00	922	146
5332	2013-10-05 07:00	916	1805
5333	2013-10-05 07:00	935	191
5334	2013-10-05 08:00	902	968
5335	2013-10-05 08:00	903	81
5336	2013-10-05 08:00	900	13515
5337	2013-10-05 08:00	904	947
5338	2013-10-05 08:00	150	1073
5339	2013-10-05 08:00	926	286
5340	2013-10-05 08:00	917	140
5341	2013-10-05 08:00	916	2455
5342	2013-10-05 08:00	922	256
5343	2013-10-05 08:00	935	204
5344	2013-10-05 09:00	902	1095
5345	2013-10-05 09:00	903	137
5346	2013-10-05 09:00	900	15931
5347	2013-10-05 09:00	904	1299
5348	2013-10-05 09:00	150	484
5349	2013-10-05 09:00	926	639
5350	2013-10-05 09:00	917	216
5351	2013-10-05 09:00	916	2570
5352	2013-10-05 09:00	922	264
5353	2013-10-05 09:00	935	205
5354	2013-10-05 10:00	902	1149
5355	2013-10-05 10:00	903	184
5356	2013-10-05 10:00	900	17774
5357	2013-10-05 10:00	904	1355
5358	2013-10-05 10:00	150	1343
5359	2013-10-05 10:00	926	1363
5360	2013-10-05 10:00	917	646
5361	2013-10-05 10:00	916	3316
5362	2013-10-05 10:00	922	259
5363	2013-10-05 10:00	935	146
5364	2013-10-05 11:00	902	1327
5365	2013-10-05 11:00	150	825
5366	2013-10-05 11:00	900	18766
5367	2013-10-05 11:00	904	1441
5368	2013-10-05 11:00	926	1453
5369	2013-10-05 11:00	110	170
5370	2013-10-05 11:00	917	485
5371	2013-10-05 11:00	916	3891
5372	2013-10-05 11:00	922	326
5373	2013-10-05 11:00	935	161
5374	2013-10-05 12:00	902	1560
5375	2013-10-05 12:00	150	980
5376	2013-10-05 12:00	900	20463
5377	2013-10-05 12:00	904	1552
5378	2013-10-05 12:00	110	204
5379	2013-10-05 12:00	914	281
5380	2013-10-05 12:00	917	290
5381	2013-10-05 12:00	916	3887
5382	2013-10-05 12:00	922	415
5383	2013-10-05 12:00	926	1605
5384	2013-10-05 13:00	902	1490
5385	2013-10-05 13:00	903	208
5386	2013-10-05 13:00	900	20074
5387	2013-10-05 13:00	904	1709
5388	2013-10-05 13:00	905	255
5389	2013-10-05 13:00	150	701
5390	2013-10-05 13:00	917	207
5391	2013-10-05 13:00	916	3800
5392	2013-10-05 13:00	922	613
5393	2013-10-05 13:00	926	1434
5394	2013-10-05 14:00	902	1365
5395	2013-10-05 14:00	150	407
5396	2013-10-05 14:00	900	18656
5397	2013-10-05 14:00	904	1722
5398	2013-10-05 14:00	905	275
5399	2013-10-05 14:00	926	1239
5400	2013-10-05 14:00	917	249
5401	2013-10-05 14:00	916	3749
5402	2013-10-05 14:00	922	430
5403	2013-10-05 14:00	935	230
5404	2013-10-05 15:00	902	1296
5405	2013-10-05 15:00	150	4718
5406	2013-10-05 15:00	900	19258
5407	2013-10-05 15:00	904	1817
5408	2013-10-05 15:00	110	327
5409	2013-10-05 15:00	914	365
5410	2013-10-05 15:00	917	240
5411	2013-10-05 15:00	916	3713
5412	2013-10-05 15:00	922	598
5413	2013-10-05 15:00	926	1598
5414	2013-10-05 16:00	902	1122
5415	2013-10-05 16:00	150	1403
5416	2013-10-05 16:00	900	16254
5417	2013-10-05 16:00	904	1290
5418	2013-10-05 16:00	905	155
5419	2013-10-05 16:00	926	1451
5420	2013-10-05 16:00	917	146
5421	2013-10-05 16:00	916	3092
5422	2013-10-05 16:00	922	308
5423	2013-10-05 16:00	935	164
5424	2013-10-05 17:00	902	1174
5425	2013-10-05 17:00	903	113
5426	2013-10-05 17:00	900	17968
5427	2013-10-05 17:00	904	1252
5428	2013-10-05 17:00	150	498
5429	2013-10-05 17:00	926	1128
5430	2013-10-05 17:00	917	114
5431	2013-10-05 17:00	916	2924
5432	2013-10-05 17:00	922	298
5433	2013-10-05 17:00	935	181
5434	2013-10-05 18:00	902	1323
5435	2013-10-05 18:00	903	101
5436	2013-10-05 18:00	900	17910
5437	2013-10-05 18:00	904	1418
5438	2013-10-05 18:00	150	164
5439	2013-10-05 18:00	926	778
5440	2013-10-05 18:00	917	136
5441	2013-10-05 18:00	916	3237
5442	2013-10-05 18:00	922	436
5443	2013-10-05 18:00	935	245
5444	2013-10-05 19:00	902	1412
5445	2013-10-05 19:00	150	163
5446	2013-10-05 19:00	900	17984
5447	2013-10-05 19:00	904	1293
5448	2013-10-05 19:00	905	87
5449	2013-10-05 19:00	926	477
5450	2013-10-05 19:00	917	208
5451	2013-10-05 19:00	916	3576
5452	2013-10-05 19:00	922	362
5453	2013-10-05 19:00	935	365
5454	2013-10-05 20:00	902	1101
5455	2013-10-05 20:00	903	82
5456	2013-10-05 20:00	900	15287
5457	2013-10-05 20:00	904	991
5458	2013-10-05 20:00	150	96
5459	2013-10-05 20:00	926	365
5460	2013-10-05 20:00	917	510
5461	2013-10-05 20:00	916	2917
5462	2013-10-05 20:00	922	338
5463	2013-10-05 20:00	935	299
5464	2013-10-05 21:00	902	669
5465	2013-10-05 21:00	150	113
5466	2013-10-05 21:00	900	10721
5467	2013-10-05 21:00	916	1749
5468	2013-10-05 21:00	904	727
5469	2013-10-05 21:00	926	265
5470	2013-10-05 21:00	917	305
5471	2013-10-05 21:00	930	48
5472	2013-10-05 21:00	922	202
5473	2013-10-05 21:00	935	143
5474	2013-10-05 22:00	902	334
5475	2013-10-05 22:00	903	34
5476	2013-10-05 22:00	900	6433
5477	2013-10-05 22:00	904	436
5478	2013-10-05 22:00	150	53
5479	2013-10-05 22:00	926	138
5480	2013-10-05 22:00	917	187
5481	2013-10-05 22:00	916	856
5482	2013-10-05 22:00	922	127
5483	2013-10-05 22:00	935	51
5484	2013-10-05 23:00	902	111
5485	2013-10-05 23:00	903	16
5486	2013-10-05 23:00	900	3121
5487	2013-10-05 23:00	904	213
5488	2013-10-05 23:00	703	28
5489	2013-10-05 23:00	926	86
5490	2013-10-05 23:00	917	21
5491	2013-10-05 23:00	916	390
5492	2013-10-05 23:00	922	77
5493	2013-10-05 23:00	935	30
5494	2013-10-06 00:00	902	49
5495	2013-10-06 00:00	900	1379
5496	2013-10-06 00:00	904	102
5497	2013-10-06 00:00	3548	10
5498	2013-10-06 00:00	926	86
5499	2013-10-06 00:00	500	10
5500	2013-10-06 00:00	920	8
5501	2013-10-06 00:00	922	24
5502	2013-10-06 00:00	916	162
5503	2013-10-06 00:00	935	7
5504	2013-10-06 01:00	902	23
5505	2013-10-06 01:00	150	5
5506	2013-10-06 01:00	900	601
5507	2013-10-06 01:00	904	67
5508	2013-10-06 01:00	926	86
5509	2013-10-06 01:00	500	8
5510	2013-10-06 01:00	920	4
5511	2013-10-06 01:00	922	37
5512	2013-10-06 01:00	916	68
5513	2013-10-06 01:00	935	7
5514	2013-10-06 02:00	902	5
5515	2013-10-06 02:00	903	9
5516	2013-10-06 02:00	900	308
5517	2013-10-06 02:00	904	48
5518	2013-10-06 02:00	3548	9
5519	2013-10-06 02:00	926	54
5520	2013-10-06 02:00	500	11
5521	2013-10-06 02:00	916	41
5522	2013-10-06 02:00	502	8
5523	2013-10-06 02:00	935	6
5524	2013-10-06 03:00	150	6
5525	2013-10-06 03:00	900	279
5526	2013-10-06 03:00	904	44
5527	2013-10-06 03:00	903	8
5528	2013-10-06 03:00	3548	16
5529	2013-10-06 03:00	926	30
5530	2013-10-06 03:00	500	8
5531	2013-10-06 03:00	916	46
5532	2013-10-06 03:00	502	11
5533	2013-10-06 03:00	935	4
5534	2013-10-06 04:00	902	12
5535	2013-10-06 04:00	900	565
5536	2013-10-06 04:00	904	29
5537	2013-10-06 04:00	926	20
5538	2013-10-06 04:00	919	3
5539	2013-10-06 04:00	500	8
5540	2013-10-06 04:00	917	4
5541	2013-10-06 04:00	916	50
5542	2013-10-06 04:00	922	8
5543	2013-10-06 04:00	935	9
5544	2013-10-06 05:00	902	54
5545	2013-10-06 05:00	150	22
5546	2013-10-06 05:00	900	2147
5547	2013-10-06 05:00	916	156
5548	2013-10-06 05:00	904	86
5549	2013-10-06 05:00	500	8
5550	2013-10-06 05:00	917	6
5551	2013-10-06 05:00	930	23
5552	2013-10-06 05:00	922	13
5553	2013-10-06 05:00	935	16
5554	2013-10-06 06:00	902	383
5555	2013-10-06 06:00	150	17
5556	2013-10-06 06:00	900	8021
5557	2013-10-06 06:00	901	18
5558	2013-10-06 06:00	904	345
5559	2013-10-06 06:00	905	18
5560	2013-10-06 06:00	926	21
5561	2013-10-06 06:00	922	116
5562	2013-10-06 06:00	916	807
5563	2013-10-06 06:00	935	59
5564	2013-10-06 07:00	902	794
5565	2013-10-06 07:00	903	46
5566	2013-10-06 07:00	900	9149
5567	2013-10-06 07:00	904	719
5568	2013-10-06 07:00	150	42
5569	2013-10-06 07:00	909	32
5570	2013-10-06 07:00	926	88
5571	2013-10-06 07:00	922	240
5572	2013-10-06 07:00	916	1940
5573	2013-10-06 07:00	935	140
5574	2013-10-06 08:00	902	1168
5575	2013-10-06 08:00	903	70
5576	2013-10-06 08:00	900	16223
5577	2013-10-06 08:00	904	1068
5578	2013-10-06 08:00	150	391
5579	2013-10-06 08:00	926	215
5580	2013-10-06 08:00	920	62
5581	2013-10-06 08:00	922	368
5582	2013-10-06 08:00	916	2720
5583	2013-10-06 08:00	935	320
5584	2013-10-06 09:00	902	1118
5585	2013-10-06 09:00	150	611
5586	2013-10-06 09:00	900	19086
5587	2013-10-06 09:00	904	1247
5588	2013-10-06 09:00	905	92
5589	2013-10-06 09:00	926	472
5590	2013-10-06 09:00	110	97
5591	2013-10-06 09:00	922	386
5592	2013-10-06 09:00	916	3253
5593	2013-10-06 09:00	935	316
5594	2013-10-06 10:00	902	1347
5595	2013-10-06 10:00	150	410
5596	2013-10-06 10:00	900	20349
5597	2013-10-06 10:00	904	1319
5598	2013-10-06 10:00	919	102
5599	2013-10-06 10:00	926	804
5600	2013-10-06 10:00	917	204
5601	2013-10-06 10:00	916	3208
5602	2013-10-06 10:00	922	445
5603	2013-10-06 10:00	935	261
5604	2013-10-06 11:00	902	1406
5605	2013-10-06 11:00	150	384
5606	2013-10-06 11:00	900	17781
5607	2013-10-06 11:00	904	1389
5608	2013-10-06 11:00	926	879
5609	2013-10-06 11:00	110	103
5610	2013-10-06 11:00	917	383
5611	2013-10-06 11:00	916	3279
5612	2013-10-06 11:00	922	388
5613	2013-10-06 11:00	935	301
5614	2013-10-06 12:00	902	1244
5615	2013-10-06 12:00	903	116
5616	2013-10-06 12:00	900	20425
5617	2013-10-06 12:00	904	1366
5618	2013-10-06 12:00	150	204
5619	2013-10-06 12:00	926	859
5620	2013-10-06 12:00	917	337
5621	2013-10-06 12:00	916	3451
5622	2013-10-06 12:00	922	386
5623	2013-10-06 12:00	935	232
5624	2013-10-06 13:00	902	1293
5625	2013-10-06 13:00	903	93
5626	2013-10-06 13:00	900	17840
5627	2013-10-06 13:00	904	1349
5628	2013-10-06 13:00	150	131
5629	2013-10-06 13:00	926	821
5630	2013-10-06 13:00	917	201
5631	2013-10-06 13:00	916	3101
5632	2013-10-06 13:00	922	427
5633	2013-10-06 13:00	935	232
5634	2013-10-06 14:00	902	1017
5635	2013-10-06 14:00	903	121
5636	2013-10-06 14:00	900	16963
5637	2013-10-06 14:00	904	1075
5638	2013-10-06 14:00	919	92
5639	2013-10-06 14:00	926	654
5640	2013-10-06 14:00	917	195
5641	2013-10-06 14:00	916	2696
5642	2013-10-06 14:00	922	418
5643	2013-10-06 14:00	935	209
5644	2013-10-06 15:00	902	965
5645	2013-10-06 15:00	150	219
5646	2013-10-06 15:00	900	15815
5647	2013-10-06 15:00	904	1135
5648	2013-10-06 15:00	909	121
5649	2013-10-06 15:00	926	559
5650	2013-10-06 15:00	917	127
5651	2013-10-06 15:00	916	2418
5652	2013-10-06 15:00	922	253
5653	2013-10-06 15:00	935	226
5654	2013-10-06 16:00	902	925
5655	2013-10-06 16:00	150	1196
5656	2013-10-06 16:00	900	15240
5657	2013-10-06 16:00	904	944
5658	2013-10-06 16:00	919	141
5659	2013-10-06 16:00	926	576
5660	2013-10-06 16:00	917	148
5661	2013-10-06 16:00	916	2225
5662	2013-10-06 16:00	922	280
5663	2013-10-06 16:00	935	250
5664	2013-10-06 17:00	902	1042
5665	2013-10-06 17:00	150	1371
5666	2013-10-06 17:00	900	16537
5667	2013-10-06 17:00	904	1032
5668	2013-10-06 17:00	919	71
5669	2013-10-06 17:00	926	491
5670	2013-10-06 17:00	917	126
5671	2013-10-06 17:00	916	2457
5672	2013-10-06 17:00	922	329
5673	2013-10-06 17:00	935	232
5674	2013-10-06 18:00	902	1175
5675	2013-10-06 18:00	150	181
5676	2013-10-06 18:00	900	15582
5677	2013-10-06 18:00	904	1249
5678	2013-10-06 18:00	926	429
5679	2013-10-06 18:00	914	118
5680	2013-10-06 18:00	917	207
5681	2013-10-06 18:00	916	2637
5682	2013-10-06 18:00	922	364
5683	2013-10-06 18:00	935	334
5684	2013-10-06 19:00	902	1267
5685	2013-10-06 19:00	903	106
5686	2013-10-06 19:00	900	18025
5687	2013-10-06 19:00	904	1207
5688	2013-10-06 19:00	926	268
5689	2013-10-06 19:00	914	299
5690	2013-10-06 19:00	917	268
5691	2013-10-06 19:00	916	3325
5692	2013-10-06 19:00	922	364
5693	2013-10-06 19:00	935	404
5694	2013-10-06 20:00	902	987
5695	2013-10-06 20:00	903	95
5696	2013-10-06 20:00	900	13880
5697	2013-10-06 20:00	904	986
5698	2013-10-06 20:00	926	197
5699	2013-10-06 20:00	914	273
5700	2013-10-06 20:00	917	281
5701	2013-10-06 20:00	916	2614
5702	2013-10-06 20:00	922	308
5703	2013-10-06 20:00	935	319
5704	2013-10-06 21:00	902	661
5705	2013-10-06 21:00	150	214
5706	2013-10-06 21:00	900	9380
5707	2013-10-06 21:00	916	1565
5708	2013-10-06 21:00	904	665
5709	2013-10-06 21:00	926	152
5710	2013-10-06 21:00	917	189
5711	2013-10-06 21:00	930	86
5712	2013-10-06 21:00	922	226
5713	2013-10-06 21:00	935	200
5714	2013-10-06 22:00	902	411
5715	2013-10-06 22:00	903	37
5716	2013-10-06 22:00	900	5224
5717	2013-10-06 22:00	904	398
5718	2013-10-06 22:00	150	141
5719	2013-10-06 22:00	926	124
5720	2013-10-06 22:00	917	53
5721	2013-10-06 22:00	916	752
5722	2013-10-06 22:00	922	111
5723	2013-10-06 22:00	935	63
5724	2013-10-06 23:00	902	151
5725	2013-10-06 23:00	900	2677
5726	2013-10-06 23:00	904	218
5727	2013-10-06 23:00	926	35
5728	2013-10-06 23:00	703	47
5729	2013-10-06 23:00	500	15
5730	2013-10-06 23:00	917	52
5731	2013-10-06 23:00	916	370
5732	2013-10-06 23:00	922	61
5733	2013-10-06 23:00	935	41
5734	2013-10-07 00:00	902	42
5735	2013-10-07 00:00	903	10
5736	2013-10-07 00:00	900	1166
5737	2013-10-07 00:00	904	110
5738	2013-10-07 00:00	926	22
5739	2013-10-07 00:00	500	11
5740	2013-10-07 00:00	917	25
5741	2013-10-07 00:00	916	194
5742	2013-10-07 00:00	922	32
5743	2013-10-07 00:00	935	20
5744	2013-10-07 01:00	902	11
5745	2013-10-07 01:00	903	15
5746	2013-10-07 01:00	900	480
5747	2013-10-07 01:00	904	59
5748	2013-10-07 01:00	150	8
5749	2013-10-07 01:00	926	12
5750	2013-10-07 01:00	500	8
5751	2013-10-07 01:00	922	15
5752	2013-10-07 01:00	916	63
5753	2013-10-07 01:00	935	8
5754	2013-10-07 02:00	902	9
5755	2013-10-07 02:00	903	9
5756	2013-10-07 02:00	900	262
5757	2013-10-07 02:00	904	46
5758	2013-10-07 02:00	3548	16
5759	2013-10-07 02:00	500	8
5760	2013-10-07 02:00	100	5
5761	2013-10-07 02:00	916	45
5762	2013-10-07 02:00	922	10
5763	2013-10-07 02:00	935	5
5764	2013-10-07 03:00	902	6
5765	2013-10-07 03:00	900	237
5766	2013-10-07 03:00	901	7
5767	2013-10-07 03:00	904	70
5768	2013-10-07 03:00	919	4
5769	2013-10-07 03:00	926	4
5770	2013-10-07 03:00	100	5
5771	2013-10-07 03:00	916	63
5772	2013-10-07 03:00	922	23
5773	2013-10-07 03:00	500	8
5774	2013-10-07 04:00	902	11
5775	2013-10-07 04:00	900	489
5776	2013-10-07 04:00	904	56
5777	2013-10-07 04:00	3548	9
5778	2013-10-07 04:00	914	4
5779	2013-10-07 04:00	100	5
5780	2013-10-07 04:00	916	47
5781	2013-10-07 04:00	502	9
5782	2013-10-07 04:00	922	8
5783	2013-10-07 04:00	500	6
5784	2013-10-07 05:00	902	55
5785	2013-10-07 05:00	903	12
5786	2013-10-07 05:00	900	1733
5787	2013-10-07 05:00	901	13
5788	2013-10-07 05:00	904	129
5789	2013-10-07 05:00	150	32
5790	2013-10-07 05:00	3548	23
5791	2013-10-07 05:00	922	21
5792	2013-10-07 05:00	916	165
5793	2013-10-07 05:00	502	10
5794	2013-10-07 06:00	902	390
5795	2013-10-07 06:00	903	21
5796	2013-10-07 06:00	900	6482
5797	2013-10-07 06:00	904	362
5798	2013-10-07 06:00	150	13
5799	2013-10-07 06:00	926	42
5800	2013-10-07 06:00	500	14
5801	2013-10-07 06:00	922	108
5802	2013-10-07 06:00	916	737
5803	2013-10-07 06:00	935	51
5804	2013-10-07 07:00	902	677
5805	2013-10-07 07:00	150	33
5806	2013-10-07 07:00	900	8123
5807	2013-10-07 07:00	904	639
5808	2013-10-07 07:00	919	56
5809	2013-10-07 07:00	926	131
5810	2013-10-07 07:00	920	31
5811	2013-10-07 07:00	922	156
5812	2013-10-07 07:00	916	1493
5813	2013-10-07 07:00	935	132
5814	2013-10-07 08:00	902	806
5815	2013-10-07 08:00	903	54
5816	2013-10-07 08:00	900	11384
5817	2013-10-07 08:00	904	796
5818	2013-10-07 08:00	150	199
5819	2013-10-07 08:00	926	217
5820	2013-10-07 08:00	917	54
5821	2013-10-07 08:00	916	1847
5822	2013-10-07 08:00	922	194
5823	2013-10-07 08:00	935	205
5824	2013-10-07 09:00	902	917
5825	2013-10-07 09:00	903	144
5826	2013-10-07 09:00	900	14902
5827	2013-10-07 09:00	904	1688
5828	2013-10-07 09:00	150	285
5829	2013-10-07 09:00	926	441
5830	2013-10-07 09:00	917	124
5831	2013-10-07 09:00	916	3123
5832	2013-10-07 09:00	922	846
5833	2013-10-07 09:00	935	296
5834	2013-10-07 10:00	902	1290
5835	2013-10-07 10:00	903	455
5836	2013-10-07 10:00	900	20944
5837	2013-10-07 10:00	904	3341
5838	2013-10-07 10:00	150	320
5839	2013-10-07 10:00	926	2563
5840	2013-10-07 10:00	917	497
5841	2013-10-07 10:00	916	5668
5842	2013-10-07 10:00	922	2167
5843	2013-10-07 10:00	935	456
5844	2013-10-07 11:00	902	1336
5845	2013-10-07 11:00	903	356
5846	2013-10-07 11:00	900	19011
5847	2013-10-07 11:00	904	2703
5848	2013-10-07 11:00	150	813
5849	2013-10-07 11:00	926	2017
5850	2013-10-07 11:00	917	573
5851	2013-10-07 11:00	916	4812
5852	2013-10-07 11:00	922	1357
5853	2013-10-07 11:00	935	327
5854	2013-10-07 12:00	902	1291
5855	2013-10-07 12:00	903	478
5856	2013-10-07 12:00	900	21741
5857	2013-10-07 12:00	904	3522
5858	2013-10-07 12:00	150	899
5859	2013-10-07 12:00	926	1820
5860	2013-10-07 12:00	110	361
5861	2013-10-07 12:00	922	2058
5862	2013-10-07 12:00	916	5914
5863	2013-10-07 12:00	935	461
5864	2013-10-07 13:00	902	1253
5865	2013-10-07 13:00	903	541
5866	2013-10-07 13:00	900	21370
5867	2013-10-07 13:00	904	3651
5868	2013-10-07 13:00	905	332
5869	2013-10-07 13:00	150	928
5870	2013-10-07 13:00	926	1594
5871	2013-10-07 13:00	922	2158
5872	2013-10-07 13:00	916	5872
5873	2013-10-07 13:00	935	477
5874	2013-10-07 14:00	902	1354
5875	2013-10-07 14:00	903	570
5876	2013-10-07 14:00	900	21512
5877	2013-10-07 14:00	904	3815
5878	2013-10-07 14:00	150	984
5879	2013-10-07 14:00	926	1681
5880	2013-10-07 14:00	917	274
5881	2013-10-07 14:00	916	6096
5882	2013-10-07 14:00	922	2465
5883	2013-10-07 14:00	935	536
5884	2013-10-07 15:00	902	1233
5885	2013-10-07 15:00	150	1428
5886	2013-10-07 15:00	900	17402
5887	2013-10-07 15:00	904	1577
5888	2013-10-07 15:00	905	182
5889	2013-10-07 15:00	926	1611
5890	2013-10-07 15:00	917	209
5891	2013-10-07 15:00	916	3230
5892	2013-10-07 15:00	922	742
5893	2013-10-07 15:00	935	261
5894	2013-10-07 16:00	902	1061
5895	2013-10-07 16:00	150	1162
5896	2013-10-07 16:00	900	15373
5897	2013-10-07 16:00	904	1584
5898	2013-10-07 16:00	905	210
5899	2013-10-07 16:00	926	1679
5900	2013-10-07 16:00	917	229
5901	2013-10-07 16:00	916	3332
5902	2013-10-07 16:00	922	706
5903	2013-10-07 16:00	935	260
5904	2013-10-07 17:00	902	1108
5905	2013-10-07 17:00	150	378
5906	2013-10-07 17:00	900	15303
5907	2013-10-07 17:00	904	1383
5908	2013-10-07 17:00	905	228
5909	2013-10-07 17:00	926	1919
5910	2013-10-07 17:00	917	171
5911	2013-10-07 17:00	916	3056
5912	2013-10-07 17:00	922	638
5913	2013-10-07 17:00	935	210
5914	2013-10-07 18:00	902	1408
5915	2013-10-07 18:00	903	136
5916	2013-10-07 18:00	900	20037
5917	2013-10-07 18:00	904	1466
5918	2013-10-07 18:00	150	143
5919	2013-10-07 18:00	926	1425
5920	2013-10-07 18:00	917	246
5921	2013-10-07 18:00	916	3471
5922	2013-10-07 18:00	922	517
5923	2013-10-07 18:00	935	250
5924	2013-10-07 19:00	902	1220
5925	2013-10-07 19:00	150	411
5926	2013-10-07 19:00	900	20272
5927	2013-10-07 19:00	904	1303
5928	2013-10-07 19:00	926	1860
5929	2013-10-07 19:00	920	366
5930	2013-10-07 19:00	917	276
5931	2013-10-07 19:00	916	3672
5932	2013-10-07 19:00	922	498
5933	2013-10-07 19:00	935	331
5934	2013-10-07 20:00	902	1212
5935	2013-10-07 20:00	903	102
5936	2013-10-07 20:00	900	15326
5937	2013-10-07 20:00	904	1081
5938	2013-10-07 20:00	150	107
5939	2013-10-07 20:00	926	1241
5940	2013-10-07 20:00	917	274
5941	2013-10-07 20:00	916	2815
5942	2013-10-07 20:00	922	435
5943	2013-10-07 20:00	935	383
5944	2013-10-07 21:00	902	799
5945	2013-10-07 21:00	903	74
5946	2013-10-07 21:00	900	11786
5947	2013-10-07 21:00	904	727
5948	2013-10-07 21:00	150	175
5949	2013-10-07 21:00	926	1012
5950	2013-10-07 21:00	917	248
5951	2013-10-07 21:00	916	1804
5952	2013-10-07 21:00	922	343
5953	2013-10-07 21:00	935	220
5954	2013-10-07 22:00	902	381
5955	2013-10-07 22:00	150	106
5956	2013-10-07 22:00	900	7184
5957	2013-10-07 22:00	904	518
5958	2013-10-07 22:00	926	845
5959	2013-10-07 22:00	920	62
5960	2013-10-07 22:00	917	79
5961	2013-10-07 22:00	916	992
5962	2013-10-07 22:00	922	194
5963	2013-10-07 22:00	935	83
5964	2013-10-07 23:00	902	132
5965	2013-10-07 23:00	903	22
5966	2013-10-07 23:00	900	3209
5967	2013-10-07 23:00	904	316
5968	2013-10-07 23:00	703	24
5969	2013-10-07 23:00	926	570
5970	2013-10-07 23:00	920	25
5971	2013-10-07 23:00	922	61
5972	2013-10-07 23:00	916	463
5973	2013-10-07 23:00	935	52
5974	2013-10-08 00:00	902	61
5975	2013-10-08 00:00	900	1228
5976	2013-10-08 00:00	904	127
5977	2013-10-08 00:00	3548	19
5978	2013-10-08 00:00	926	73
5979	2013-10-08 00:00	500	42
5980	2013-10-08 00:00	922	17
5981	2013-10-08 00:00	916	172
5982	2013-10-08 00:00	502	22
5983	2013-10-08 00:00	935	15
5984	2013-10-08 01:00	902	48
5985	2013-10-08 01:00	903	19
5986	2013-10-08 01:00	900	567
5987	2013-10-08 01:00	904	91
5988	2013-10-08 01:00	3548	13
5989	2013-10-08 01:00	919	15
5990	2013-10-08 01:00	926	60
5991	2013-10-08 01:00	922	19
5992	2013-10-08 01:00	916	80
5993	2013-10-08 01:00	935	14
5994	2013-10-08 02:00	902	11
5995	2013-10-08 02:00	900	363
5996	2013-10-08 02:00	904	54
5997	2013-10-08 02:00	3548	10
5998	2013-10-08 02:00	926	16
5999	2013-10-08 02:00	917	4
6000	2013-10-08 02:00	916	40
6001	2013-10-08 02:00	502	9
6002	2013-10-08 02:00	922	25
6003	2013-10-08 02:00	935	5
6004	2013-10-08 03:00	902	5
6005	2013-10-08 03:00	900	242
6006	2013-10-08 03:00	904	33
6007	2013-10-08 03:00	926	9
6008	2013-10-08 03:00	920	7
6009	2013-10-08 03:00	922	10
6010	2013-10-08 03:00	916	53
6011	2013-10-08 03:00	502	4
6012	2013-10-08 03:00	500	9
6013	2013-10-08 03:00	912	9
6014	2013-10-08 04:00	902	6
6015	2013-10-08 04:00	900	544
6016	2013-10-08 04:00	904	36
6017	2013-10-08 04:00	3548	15
6018	2013-10-08 04:00	926	9
6019	2013-10-08 04:00	500	6
6020	2013-10-08 04:00	922	14
6021	2013-10-08 04:00	916	33
6022	2013-10-08 04:00	502	8
6023	2013-10-08 04:00	935	5
6024	2013-10-08 05:00	902	64
6025	2013-10-08 05:00	150	56
6026	2013-10-08 05:00	900	2087
6027	2013-10-08 05:00	904	196
6028	2013-10-08 05:00	500	8
6029	2013-10-08 05:00	920	14
6030	2013-10-08 05:00	922	55
6031	2013-10-08 05:00	916	191
6032	2013-10-08 05:00	502	8
6033	2013-10-08 05:00	935	9
6034	2013-10-08 06:00	902	447
6035	2013-10-08 06:00	150	22
6036	2013-10-08 06:00	900	7751
6037	2013-10-08 06:00	904	438
6038	2013-10-08 06:00	919	19
6039	2013-10-08 06:00	926	29
6040	2013-10-08 06:00	917	126
6041	2013-10-08 06:00	916	954
6042	2013-10-08 06:00	922	78
6043	2013-10-08 06:00	935	56
6044	2013-10-08 07:00	902	760
6045	2013-10-08 07:00	903	73
6046	2013-10-08 07:00	900	8893
6047	2013-10-08 07:00	904	769
6048	2013-10-08 07:00	150	58
6049	2013-10-08 07:00	919	34
6050	2013-10-08 07:00	926	66
6051	2013-10-08 07:00	922	215
6052	2013-10-08 07:00	916	1697
6053	2013-10-08 07:00	935	161
6054	2013-10-08 08:00	902	761
6055	2013-10-08 08:00	903	67
6056	2013-10-08 08:00	900	13115
6057	2013-10-08 08:00	904	764
6058	2013-10-08 08:00	150	237
6059	2013-10-08 08:00	919	80
6060	2013-10-08 08:00	926	211
6061	2013-10-08 08:00	922	260
6062	2013-10-08 08:00	916	1839
6063	2013-10-08 08:00	935	242
6064	2013-10-08 09:00	902	846
6065	2013-10-08 09:00	903	234
6066	2013-10-08 09:00	900	16180
6067	2013-10-08 09:00	904	2286
6068	2013-10-08 09:00	150	632
6069	2013-10-08 09:00	926	628
6070	2013-10-08 09:00	917	162
6071	2013-10-08 09:00	916	3570
6072	2013-10-08 09:00	922	1161
6073	2013-10-08 09:00	935	409
6074	2013-10-08 10:00	902	1279
6075	2013-10-08 10:00	903	548
6076	2013-10-08 10:00	900	21075
6077	2013-10-08 10:00	904	3672
6078	2013-10-08 10:00	150	720
6079	2013-10-08 10:00	926	1829
6080	2013-10-08 10:00	917	389
6081	2013-10-08 10:00	916	5679
6082	2013-10-08 10:00	922	2118
6083	2013-10-08 10:00	935	440
6084	2013-10-08 11:00	902	1323
6085	2013-10-08 11:00	903	539
6086	2013-10-08 11:00	900	21223
6087	2013-10-08 11:00	904	3605
6088	2013-10-08 11:00	150	865
6089	2013-10-08 11:00	926	1749
6090	2013-10-08 11:00	917	247
6091	2013-10-08 11:00	916	5638
6092	2013-10-08 11:00	922	1903
6093	2013-10-08 11:00	935	477
6094	2013-10-08 12:00	902	1041
6095	2013-10-08 12:00	903	236
6096	2013-10-08 12:00	900	18663
6097	2013-10-08 12:00	904	2232
6098	2013-10-08 12:00	150	501
6099	2013-10-08 12:00	926	1927
6100	2013-10-08 12:00	917	309
6101	2013-10-08 12:00	916	4026
6102	2013-10-08 12:00	922	1122
6103	2013-10-08 12:00	935	279
6104	2013-10-08 13:00	902	1207
6105	2013-10-08 13:00	150	455
6106	2013-10-08 13:00	900	17801
6107	2013-10-08 13:00	904	1732
6108	2013-10-08 13:00	905	198
6109	2013-10-08 13:00	926	1622
6110	2013-10-08 13:00	917	500
6111	2013-10-08 13:00	916	3678
6112	2013-10-08 13:00	922	562
6113	2013-10-08 13:00	935	263
6114	2013-10-08 14:00	902	1167
6115	2013-10-08 14:00	150	289
6116	2013-10-08 14:00	900	16623
6117	2013-10-08 14:00	904	1517
6118	2013-10-08 14:00	905	151
6119	2013-10-08 14:00	926	1654
6120	2013-10-08 14:00	917	259
6121	2013-10-08 14:00	916	3159
6122	2013-10-08 14:00	922	492
6123	2013-10-08 14:00	935	168
6124	2013-10-08 15:00	902	1263
6125	2013-10-08 15:00	903	321
6126	2013-10-08 15:00	900	19162
6127	2013-10-08 15:00	904	2679
6128	2013-10-08 15:00	150	357
6129	2013-10-08 15:00	926	1910
6130	2013-10-08 15:00	917	282
6131	2013-10-08 15:00	916	4657
6132	2013-10-08 15:00	922	1422
6133	2013-10-08 15:00	935	355
6134	2013-10-08 16:00	902	1234
6135	2013-10-08 16:00	903	446
6136	2013-10-08 16:00	900	20567
6137	2013-10-08 16:00	904	3509
6138	2013-10-08 16:00	150	1689
6139	2013-10-08 16:00	926	1427
6140	2013-10-08 16:00	917	373
6141	2013-10-08 16:00	916	5963
6142	2013-10-08 16:00	922	2058
6143	2013-10-08 16:00	935	446
6144	2013-10-08 17:00	902	1202
6145	2013-10-08 17:00	903	441
6146	2013-10-08 17:00	900	20287
6147	2013-10-08 17:00	904	3317
6148	2013-10-08 17:00	150	340
6149	2013-10-08 17:00	926	1609
6150	2013-10-08 17:00	917	274
6151	2013-10-08 17:00	916	5550
6152	2013-10-08 17:00	922	1976
6153	2013-10-08 17:00	935	429
6154	2013-10-08 18:00	902	1140
6155	2013-10-08 18:00	150	192
6156	2013-10-08 18:00	900	18120
6157	2013-10-08 18:00	904	1618
6158	2013-10-08 18:00	919	176
6159	2013-10-08 18:00	926	1284
6160	2013-10-08 18:00	917	269
6161	2013-10-08 18:00	916	3851
6162	2013-10-08 18:00	922	732
6163	2013-10-08 18:00	935	275
6164	2013-10-08 19:00	902	1189
6165	2013-10-08 19:00	150	180
6166	2013-10-08 19:00	900	17382
6167	2013-10-08 19:00	904	1216
6168	2013-10-08 19:00	919	111
6169	2013-10-08 19:00	926	1241
6170	2013-10-08 19:00	917	467
6171	2013-10-08 19:00	916	3450
6172	2013-10-08 19:00	922	369
6173	2013-10-08 19:00	935	344
6174	2013-10-08 20:00	902	984
6175	2013-10-08 20:00	903	84
6176	2013-10-08 20:00	900	14427
6177	2013-10-08 20:00	904	962
6178	2013-10-08 20:00	926	1070
6179	2013-10-08 20:00	110	78
6180	2013-10-08 20:00	917	673
6181	2013-10-08 20:00	916	2688
6182	2013-10-08 20:00	922	253
6183	2013-10-08 20:00	935	307
6184	2013-10-08 21:00	902	749
6185	2013-10-08 21:00	903	77
6186	2013-10-08 21:00	900	11036
6187	2013-10-08 21:00	904	816
6188	2013-10-08 21:00	150	283
6189	2013-10-08 21:00	926	645
6190	2013-10-08 21:00	917	352
6191	2013-10-08 21:00	916	1948
6192	2013-10-08 21:00	922	346
6193	2013-10-08 21:00	935	272
6194	2013-10-08 22:00	902	394
6195	2013-10-08 22:00	150	79
6196	2013-10-08 22:00	900	6237
6197	2013-10-08 22:00	904	496
6198	2013-10-08 22:00	926	460
6199	2013-10-08 22:00	110	65
6200	2013-10-08 22:00	917	226
6201	2013-10-08 22:00	916	901
6202	2013-10-08 22:00	922	148
6203	2013-10-08 22:00	935	67
6204	2013-10-08 23:00	902	111
6205	2013-10-08 23:00	900	3151
6206	2013-10-08 23:00	904	283
6207	2013-10-08 23:00	926	415
6208	2013-10-08 23:00	110	51
6209	2013-10-08 23:00	920	38
6210	2013-10-08 23:00	917	164
6211	2013-10-08 23:00	916	447
6212	2013-10-08 23:00	922	76
6213	2013-10-08 23:00	935	60
6214	2013-10-09 00:00	902	47
6215	2013-10-09 00:00	900	1121
6216	2013-10-09 00:00	904	167
6217	2013-10-09 00:00	926	33
6218	2013-10-09 00:00	110	18
6219	2013-10-09 00:00	917	12
6220	2013-10-09 00:00	916	176
6221	2013-10-09 00:00	502	8
6222	2013-10-09 00:00	922	37
6223	2013-10-09 00:00	935	25
6224	2013-10-09 01:00	902	32
6225	2013-10-09 01:00	903	11
6226	2013-10-09 01:00	900	743
6227	2013-10-09 01:00	901	11
6228	2013-10-09 01:00	904	84
6229	2013-10-09 01:00	3548	13
6230	2013-10-09 01:00	926	27
6231	2013-10-09 01:00	922	30
6232	2013-10-09 01:00	916	77
6233	2013-10-09 01:00	935	11
6234	2013-10-09 02:00	902	8
6235	2013-10-09 02:00	903	8
6236	2013-10-09 02:00	900	338
6237	2013-10-09 02:00	916	43
6238	2013-10-09 02:00	904	62
6239	2013-10-09 02:00	3548	20
6240	2013-10-09 02:00	500	8
6241	2013-10-09 02:00	922	7
6242	2013-10-09 02:00	930	16
6243	2013-10-09 02:00	935	5
6244	2013-10-09 03:00	902	8
6245	2013-10-09 03:00	900	222
6246	2013-10-09 03:00	904	41
6247	2013-10-09 03:00	3548	29
6248	2013-10-09 03:00	926	7
6249	2013-10-09 03:00	500	6
6250	2013-10-09 03:00	922	16
6251	2013-10-09 03:00	916	41
6252	2013-10-09 03:00	502	10
6253	2013-10-09 03:00	935	5
6254	2013-10-09 04:00	902	6
6255	2013-10-09 04:00	900	680
6256	2013-10-09 04:00	907	4
6257	2013-10-09 04:00	904	39
6258	2013-10-09 04:00	3548	27
6259	2013-10-09 04:00	919	3
6260	2013-10-09 04:00	500	10
6261	2013-10-09 04:00	922	23
6262	2013-10-09 04:00	916	60
6263	2013-10-09 04:00	935	4
6264	2013-10-09 05:00	902	54
6265	2013-10-09 05:00	150	48
6266	2013-10-09 05:00	900	1986
6267	2013-10-09 05:00	904	111
6268	2013-10-09 05:00	3548	28
6269	2013-10-09 05:00	917	16
6270	2013-10-09 05:00	916	162
6271	2013-10-09 05:00	502	10
6272	2013-10-09 05:00	922	27
6273	2013-10-09 05:00	500	10
6274	2013-10-09 06:00	902	215
6275	2013-10-09 06:00	903	23
6276	2013-10-09 06:00	900	5699
6277	2013-10-09 06:00	904	274
6278	2013-10-09 06:00	905	12
6279	2013-10-09 06:00	150	35
6280	2013-10-09 06:00	917	19
6281	2013-10-09 06:00	916	714
6282	2013-10-09 06:00	922	104
6283	2013-10-09 06:00	935	29
6284	2013-10-09 07:00	902	572
6285	2013-10-09 07:00	903	81
6286	2013-10-09 07:00	900	12612
6287	2013-10-09 07:00	904	898
6288	2013-10-09 07:00	150	59
6289	2013-10-09 07:00	926	110
6290	2013-10-09 07:00	920	74
6291	2013-10-09 07:00	922	312
6292	2013-10-09 07:00	916	2057
6293	2013-10-09 07:00	935	81
6294	2013-10-09 08:00	902	584
6295	2013-10-09 08:00	903	78
6296	2013-10-09 08:00	900	11573
6297	2013-10-09 08:00	904	827
6298	2013-10-09 08:00	926	217
6299	2013-10-09 08:00	919	72
6300	2013-10-09 08:00	110	62
6301	2013-10-09 08:00	922	341
6302	2013-10-09 08:00	916	2101
6303	2013-10-09 08:00	935	53
6304	2013-10-09 09:00	902	654
6305	2013-10-09 09:00	903	109
6306	2013-10-09 09:00	900	13720
6307	2013-10-09 09:00	904	1122
6308	2013-10-09 09:00	150	425
6309	2013-10-09 09:00	919	232
6310	2013-10-09 09:00	917	279
6311	2013-10-09 09:00	916	2474
6312	2013-10-09 09:00	922	341
6313	2013-10-09 09:00	926	700
6314	2013-10-09 10:00	902	1044
6315	2013-10-09 10:00	150	478
6316	2013-10-09 10:00	900	14842
6317	2013-10-09 10:00	904	1137
6318	2013-10-09 10:00	919	292
6319	2013-10-09 10:00	110	163
6320	2013-10-09 10:00	917	692
6321	2013-10-09 10:00	916	2864
6322	2013-10-09 10:00	922	216
6323	2013-10-09 10:00	926	1932
6324	2013-10-09 11:00	902	1290
6325	2013-10-09 11:00	150	1071
6326	2013-10-09 11:00	900	16305
6327	2013-10-09 11:00	904	1370
6328	2013-10-09 11:00	905	201
6329	2013-10-09 11:00	919	243
6330	2013-10-09 11:00	917	570
6331	2013-10-09 11:00	916	3022
6332	2013-10-09 11:00	922	382
6333	2013-10-09 11:00	926	1653
6334	2013-10-09 12:00	902	1023
6335	2013-10-09 12:00	150	493
6336	2013-10-09 12:00	900	16958
6337	2013-10-09 12:00	904	1479
6338	2013-10-09 12:00	905	359
6339	2013-10-09 12:00	919	440
6340	2013-10-09 12:00	917	441
6341	2013-10-09 12:00	916	3307
6342	2013-10-09 12:00	922	411
6343	2013-10-09 12:00	926	2195
6344	2013-10-09 13:00	902	1098
6345	2013-10-09 13:00	150	481
6346	2013-10-09 13:00	900	18041
6347	2013-10-09 13:00	904	1945
6348	2013-10-09 13:00	905	259
6349	2013-10-09 13:00	919	406
6350	2013-10-09 13:00	917	481
6351	2013-10-09 13:00	916	3641
6352	2013-10-09 13:00	922	906
6353	2013-10-09 13:00	926	1670
6354	2013-10-09 14:00	902	1036
6355	2013-10-09 14:00	903	219
6356	2013-10-09 14:00	900	16541
6357	2013-10-09 14:00	904	1318
6358	2013-10-09 14:00	150	648
6359	2013-10-09 14:00	919	460
6360	2013-10-09 14:00	917	353
6361	2013-10-09 14:00	916	2904
6362	2013-10-09 14:00	922	331
6363	2013-10-09 14:00	926	1537
6364	2013-10-09 15:00	902	1001
6365	2013-10-09 15:00	150	436
6366	2013-10-09 15:00	900	15245
6367	2013-10-09 15:00	904	1389
6368	2013-10-09 15:00	905	224
6369	2013-10-09 15:00	919	439
6370	2013-10-09 15:00	917	312
6371	2013-10-09 15:00	916	3064
6372	2013-10-09 15:00	922	438
6373	2013-10-09 15:00	926	1464
6374	2013-10-09 16:00	902	1954
6375	2013-10-09 16:00	150	995
6376	2013-10-09 16:00	900	14559
6377	2013-10-09 16:00	904	1203
6378	2013-10-09 16:00	905	179
6379	2013-10-09 16:00	919	390
6380	2013-10-09 16:00	917	586
6381	2013-10-09 16:00	916	3321
6382	2013-10-09 16:00	922	302
6383	2013-10-09 16:00	926	1678
6384	2013-10-09 17:00	902	1106
6385	2013-10-09 17:00	150	392
6386	2013-10-09 17:00	900	14581
6387	2013-10-09 17:00	904	1311
6388	2013-10-09 17:00	905	126
6389	2013-10-09 17:00	919	321
6390	2013-10-09 17:00	917	322
6391	2013-10-09 17:00	916	2894
6392	2013-10-09 17:00	922	456
6393	2013-10-09 17:00	926	1626
6394	2013-10-09 18:00	902	895
6395	2013-10-09 18:00	903	137
6396	2013-10-09 18:00	900	15680
6397	2013-10-09 18:00	904	1126
6398	2013-10-09 18:00	150	204
6399	2013-10-09 18:00	919	244
6400	2013-10-09 18:00	917	203
6401	2013-10-09 18:00	916	3054
6402	2013-10-09 18:00	922	413
6403	2013-10-09 18:00	926	1251
6404	2013-10-09 19:00	902	1044
6405	2013-10-09 19:00	150	442
6406	2013-10-09 19:00	900	15900
6407	2013-10-09 19:00	904	1257
6408	2013-10-09 19:00	919	181
6409	2013-10-09 19:00	920	131
6410	2013-10-09 19:00	917	298
6411	2013-10-09 19:00	916	3083
6412	2013-10-09 19:00	922	420
6413	2013-10-09 19:00	926	865
6414	2013-10-09 20:00	902	771
6415	2013-10-09 20:00	150	167
6416	2013-10-09 20:00	900	13630
6417	2013-10-09 20:00	904	1133
6418	2013-10-09 20:00	919	138
6419	2013-10-09 20:00	110	85
6420	2013-10-09 20:00	917	257
6421	2013-10-09 20:00	916	2723
6422	2013-10-09 20:00	922	284
6423	2013-10-09 20:00	926	609
6424	2013-10-09 21:00	902	628
6425	2013-10-09 21:00	903	86
6426	2013-10-09 21:00	900	10549
6427	2013-10-09 21:00	916	1737
6428	2013-10-09 21:00	904	820
6429	2013-10-09 21:00	150	241
6430	2013-10-09 21:00	917	275
6431	2013-10-09 21:00	930	62
6432	2013-10-09 21:00	922	244
6433	2013-10-09 21:00	926	449
6434	2013-10-09 22:00	902	279
6435	2013-10-09 22:00	903	61
6436	2013-10-09 22:00	900	6310
6437	2013-10-09 22:00	916	945
6438	2013-10-09 22:00	904	495
6439	2013-10-09 22:00	150	95
6440	2013-10-09 22:00	917	142
6441	2013-10-09 22:00	930	70
6442	2013-10-09 22:00	922	129
6443	2013-10-09 22:00	926	428
6444	2013-10-09 23:00	902	116
6445	2013-10-09 23:00	150	29
6446	2013-10-09 23:00	900	3311
6447	2013-10-09 23:00	904	248
6448	2013-10-09 23:00	703	23
6449	2013-10-09 23:00	110	19
6450	2013-10-09 23:00	917	58
6451	2013-10-09 23:00	916	410
6452	2013-10-09 23:00	922	69
6453	2013-10-09 23:00	926	289
6454	2013-10-10 00:00	902	51
6455	2013-10-10 00:00	900	1455
6456	2013-10-10 00:00	904	141
6457	2013-10-10 00:00	926	48
6458	2013-10-10 00:00	919	9
6459	2013-10-10 00:00	500	10
6460	2013-10-10 00:00	917	7
6461	2013-10-10 00:00	916	140
6462	2013-10-10 00:00	922	58
6463	2013-10-10 00:00	935	8
6464	2013-10-10 01:00	902	11
6465	2013-10-10 01:00	903	5
6466	2013-10-10 01:00	900	654
6467	2013-10-10 01:00	904	76
6468	2013-10-10 01:00	3548	12
6469	2013-10-10 01:00	926	27
6470	2013-10-10 01:00	914	4
6471	2013-10-10 01:00	922	33
6472	2013-10-10 01:00	916	79
6473	2013-10-10 01:00	500	6
6474	2013-10-10 02:00	900	309
6475	2013-10-10 02:00	916	44
6476	2013-10-10 02:00	904	71
6477	2013-10-10 02:00	3548	4
6478	2013-10-10 02:00	901	5
6479	2013-10-10 02:00	919	4
6480	2013-10-10 02:00	926	19
6481	2013-10-10 02:00	922	11
6482	2013-10-10 02:00	930	16
6483	2013-10-10 02:00	500	8
6484	2013-10-10 03:00	903	8
6485	2013-10-10 03:00	900	256
6486	2013-10-10 03:00	901	20
6487	2013-10-10 03:00	904	61
6488	2013-10-10 03:00	3548	13
6489	2013-10-10 03:00	926	11
6490	2013-10-10 03:00	922	46
6491	2013-10-10 03:00	916	39
6492	2013-10-10 03:00	502	6
6493	2013-10-10 03:00	500	10
6494	2013-10-10 04:00	902	9
6495	2013-10-10 04:00	903	5
6496	2013-10-10 04:00	900	463
6497	2013-10-10 04:00	916	50
6498	2013-10-10 04:00	904	46
6499	2013-10-10 04:00	3548	10
6500	2013-10-10 04:00	926	23
6501	2013-10-10 04:00	922	10
6502	2013-10-10 04:00	930	9
6503	2013-10-10 04:00	500	8
6504	2013-10-10 05:00	902	60
6505	2013-10-10 05:00	903	14
6506	2013-10-10 05:00	900	1477
6507	2013-10-10 05:00	901	9
6508	2013-10-10 05:00	904	108
6509	2013-10-10 05:00	905	9
6510	2013-10-10 05:00	150	80
6511	2013-10-10 05:00	3548	14
6512	2013-10-10 05:00	922	42
6513	2013-10-10 05:00	916	158
6514	2013-10-10 06:00	902	268
6515	2013-10-10 06:00	903	29
6516	2013-10-10 06:00	900	5947
6517	2013-10-10 06:00	904	421
6518	2013-10-10 06:00	150	25
6519	2013-10-10 06:00	926	24
6520	2013-10-10 06:00	110	20
6521	2013-10-10 06:00	922	136
6522	2013-10-10 06:00	916	846
6523	2013-10-10 06:00	935	21
6524	2013-10-10 07:00	902	513
6525	2013-10-10 07:00	903	88
6526	2013-10-10 07:00	900	9060
6527	2013-10-10 07:00	904	766
6528	2013-10-10 07:00	150	44
6529	2013-10-10 07:00	919	265
6530	2013-10-10 07:00	920	55
6531	2013-10-10 07:00	922	350
6532	2013-10-10 07:00	916	1802
6533	2013-10-10 07:00	926	66
6534	2013-10-10 08:00	902	546
6535	2013-10-10 08:00	903	91
6536	2013-10-10 08:00	900	11845
6537	2013-10-10 08:00	904	830
6538	2013-10-10 08:00	150	340
6539	2013-10-10 08:00	919	110
6540	2013-10-10 08:00	917	77
6541	2013-10-10 08:00	916	2124
6542	2013-10-10 08:00	922	249
6543	2013-10-10 08:00	926	208
6544	2013-10-10 09:00	902	631
6545	2013-10-10 09:00	903	85
6546	2013-10-10 09:00	900	13336
6547	2013-10-10 09:00	904	918
6548	2013-10-10 09:00	150	377
6549	2013-10-10 09:00	919	322
6550	2013-10-10 09:00	917	150
6551	2013-10-10 09:00	916	2472
6552	2013-10-10 09:00	922	235
6553	2013-10-10 09:00	926	551
6554	2013-10-10 10:00	902	1101
6555	2013-10-10 10:00	150	362
6556	2013-10-10 10:00	900	14739
6557	2013-10-10 10:00	904	1277
6558	2013-10-10 10:00	919	468
6559	2013-10-10 10:00	110	157
6560	2013-10-10 10:00	917	473
6561	2013-10-10 10:00	916	2957
6562	2013-10-10 10:00	922	319
6563	2013-10-10 10:00	926	1455
6564	2013-10-10 11:00	902	1454
6565	2013-10-10 11:00	903	329
6566	2013-10-10 11:00	900	19410
6567	2013-10-10 11:00	904	2427
6568	2013-10-10 11:00	150	868
6569	2013-10-10 11:00	919	775
6570	2013-10-10 11:00	917	414
6571	2013-10-10 11:00	916	4594
6572	2013-10-10 11:00	922	1204
6573	2013-10-10 11:00	926	1597
6574	2013-10-10 12:00	902	1559
6575	2013-10-10 12:00	903	501
6576	2013-10-10 12:00	900	22336
6577	2013-10-10 12:00	904	3774
6578	2013-10-10 12:00	150	957
6579	2013-10-10 12:00	919	541
6580	2013-10-10 12:00	917	430
6581	2013-10-10 12:00	916	6196
6582	2013-10-10 12:00	922	2274
6583	2013-10-10 12:00	926	1847
6584	2013-10-10 13:00	902	1470
6585	2013-10-10 13:00	903	548
6586	2013-10-10 13:00	900	20923
6587	2013-10-10 13:00	904	3901
6588	2013-10-10 13:00	150	1065
6589	2013-10-10 13:00	919	448
6590	2013-10-10 13:00	914	582
6591	2013-10-10 13:00	922	2341
6592	2013-10-10 13:00	916	5491
6593	2013-10-10 13:00	926	1357
6594	2013-10-10 14:00	902	1235
6595	2013-10-10 14:00	903	330
6596	2013-10-10 14:00	900	17538
6597	2013-10-10 14:00	904	2145
6598	2013-10-10 14:00	150	999
6599	2013-10-10 14:00	919	412
6600	2013-10-10 14:00	914	344
6601	2013-10-10 14:00	922	1025
6602	2013-10-10 14:00	916	3842
6603	2013-10-10 14:00	926	1238
6604	2013-10-10 15:00	902	1005
6605	2013-10-10 15:00	150	827
6606	2013-10-10 15:00	900	15759
6607	2013-10-10 15:00	904	1351
6608	2013-10-10 15:00	905	225
6609	2013-10-10 15:00	919	419
6610	2013-10-10 15:00	917	208
6611	2013-10-10 15:00	916	2940
6612	2013-10-10 15:00	922	548
6613	2013-10-10 15:00	926	1545
6614	2013-10-10 16:00	902	807
6615	2013-10-10 16:00	150	1790
6616	2013-10-10 16:00	900	14342
6617	2013-10-10 16:00	904	1112
6618	2013-10-10 16:00	905	201
6619	2013-10-10 16:00	919	378
6620	2013-10-10 16:00	917	188
6621	2013-10-10 16:00	916	2510
6622	2013-10-10 16:00	922	148
6623	2013-10-10 16:00	926	1570
6624	2013-10-10 17:00	902	877
6625	2013-10-10 17:00	150	438
6626	2013-10-10 17:00	900	13975
6627	2013-10-10 17:00	904	1193
6628	2013-10-10 17:00	905	231
6629	2013-10-10 17:00	919	292
6630	2013-10-10 17:00	917	281
6631	2013-10-10 17:00	916	2852
6632	2013-10-10 17:00	922	409
6633	2013-10-10 17:00	926	1442
6634	2013-10-10 18:00	902	949
6635	2013-10-10 18:00	903	117
6636	2013-10-10 18:00	900	15278
6637	2013-10-10 18:00	904	1102
6638	2013-10-10 18:00	150	194
6639	2013-10-10 18:00	919	260
6640	2013-10-10 18:00	917	209
6641	2013-10-10 18:00	916	2914
6642	2013-10-10 18:00	922	330
6643	2013-10-10 18:00	926	1152
6644	2013-10-10 19:00	902	849
6645	2013-10-10 19:00	903	166
6646	2013-10-10 19:00	900	16088
6647	2013-10-10 19:00	904	1165
6648	2013-10-10 19:00	150	315
6649	2013-10-10 19:00	919	262
6650	2013-10-10 19:00	917	446
6651	2013-10-10 19:00	916	2961
6652	2013-10-10 19:00	922	341
6653	2013-10-10 19:00	926	813
6654	2013-10-10 20:00	902	752
6655	2013-10-10 20:00	903	132
6656	2013-10-10 20:00	900	13789
6657	2013-10-10 20:00	904	1030
6658	2013-10-10 20:00	150	269
6659	2013-10-10 20:00	919	140
6660	2013-10-10 20:00	917	1403
6661	2013-10-10 20:00	916	2600
6662	2013-10-10 20:00	922	293
6663	2013-10-10 20:00	926	570
6664	2013-10-10 21:00	902	504
6665	2013-10-10 21:00	903	118
6666	2013-10-10 21:00	900	10423
6667	2013-10-10 21:00	904	749
6668	2013-10-10 21:00	150	265
6669	2013-10-10 21:00	919	64
6670	2013-10-10 21:00	917	1034
6671	2013-10-10 21:00	916	1717
6672	2013-10-10 21:00	922	352
6673	2013-10-10 21:00	926	490
6674	2013-10-10 22:00	902	230
6675	2013-10-10 22:00	150	45
6676	2013-10-10 22:00	900	5977
6677	2013-10-10 22:00	916	888
6678	2013-10-10 22:00	904	418
6679	2013-10-10 22:00	110	34
6680	2013-10-10 22:00	917	131
6681	2013-10-10 22:00	930	51
6682	2013-10-10 22:00	922	147
6683	2013-10-10 22:00	926	382
6684	2013-10-10 23:00	902	127
6685	2013-10-10 23:00	150	31
6686	2013-10-10 23:00	900	3667
6687	2013-10-10 23:00	904	275
6688	2013-10-10 23:00	703	24
6689	2013-10-10 23:00	919	21
6690	2013-10-10 23:00	917	51
6691	2013-10-10 23:00	916	413
6692	2013-10-10 23:00	922	137
6693	2013-10-10 23:00	926	234
6694	2013-10-11 00:00	902	40
6695	2013-10-11 00:00	150	279
6696	2013-10-11 00:00	900	2400
6697	2013-10-11 00:00	907	37
6698	2013-10-11 00:00	904	142
6699	2013-10-11 00:00	926	76
6700	2013-10-11 00:00	917	18
6701	2013-10-11 00:00	916	151
6702	2013-10-11 00:00	922	50
6703	2013-10-11 00:00	500	13
6704	2013-10-11 01:00	902	21
6705	2013-10-11 01:00	900	622
6706	2013-10-11 01:00	907	26
6707	2013-10-11 01:00	904	75
6708	2013-10-11 01:00	919	4
6709	2013-10-11 01:00	926	26
6710	2013-10-11 01:00	917	6
6711	2013-10-11 01:00	916	87
6712	2013-10-11 01:00	922	12
6713	2013-10-11 01:00	500	8
6714	2013-10-11 02:00	902	14
6715	2013-10-11 02:00	903	10
6716	2013-10-11 02:00	900	329
6717	2013-10-11 02:00	916	45
6718	2013-10-11 02:00	904	97
6719	2013-10-11 02:00	3548	5
6720	2013-10-11 02:00	926	11
6721	2013-10-11 02:00	922	9
6722	2013-10-11 02:00	930	15
6723	2013-10-11 02:00	500	8
6724	2013-10-11 03:00	900	220
6725	2013-10-11 03:00	904	46
6726	2013-10-11 03:00	3548	11
6727	2013-10-11 03:00	926	4
6728	2013-10-11 03:00	914	8
6729	2013-10-11 03:00	917	3
6730	2013-10-11 03:00	916	32
6731	2013-10-11 03:00	502	6
6732	2013-10-11 03:00	922	11
6733	2013-10-11 03:00	500	8
6734	2013-10-11 04:00	902	21
6735	2013-10-11 04:00	150	3
6736	2013-10-11 04:00	900	337
6737	2013-10-11 04:00	904	41
6738	2013-10-11 04:00	926	33
6739	2013-10-11 04:00	500	8
6740	2013-10-11 04:00	110	7
6741	2013-10-11 04:00	922	4
6742	2013-10-11 04:00	916	62
6743	2013-10-11 04:00	935	6
6744	2013-10-11 05:00	902	39
6745	2013-10-11 05:00	150	41
6746	2013-10-11 05:00	900	929
6747	2013-10-11 05:00	907	23
6748	2013-10-11 05:00	904	139
6749	2013-10-11 05:00	500	8
6750	2013-10-11 05:00	922	127
6751	2013-10-11 05:00	916	165
6752	2013-10-11 05:00	502	5
6753	2013-10-11 05:00	935	7
6754	2013-10-11 06:00	902	562
6755	2013-10-11 06:00	150	37
6756	2013-10-11 06:00	900	5583
6757	2013-10-11 06:00	907	51
6758	2013-10-11 06:00	904	392
6759	2013-10-11 06:00	926	233
6760	2013-10-11 06:00	920	26
6761	2013-10-11 06:00	922	238
6762	2013-10-11 06:00	916	815
6763	2013-10-11 06:00	935	34
6764	2013-10-11 07:00	902	415
6765	2013-10-11 07:00	903	77
6766	2013-10-11 07:00	900	8855
6767	2013-10-11 07:00	904	640
6768	2013-10-11 07:00	150	52
6769	2013-10-11 07:00	914	45
6770	2013-10-11 07:00	917	52
6771	2013-10-11 07:00	916	1780
6772	2013-10-11 07:00	922	236
6773	2013-10-11 07:00	935	44
6774	2013-10-11 08:00	902	672
6775	2013-10-11 08:00	903	119
6776	2013-10-11 08:00	900	12845
6777	2013-10-11 08:00	904	870
6778	2013-10-11 08:00	150	515
6779	2013-10-11 08:00	926	168
6780	2013-10-11 08:00	917	84
6781	2013-10-11 08:00	916	2168
6782	2013-10-11 08:00	922	187
6783	2013-10-11 08:00	935	59
6784	2013-10-11 09:00	902	677
6785	2013-10-11 09:00	903	107
6786	2013-10-11 09:00	900	14283
6787	2013-10-11 09:00	904	1071
6788	2013-10-11 09:00	150	698
6789	2013-10-11 09:00	110	105
6790	2013-10-11 09:00	917	163
6791	2013-10-11 09:00	916	2501
6792	2013-10-11 09:00	922	241
6793	2013-10-11 09:00	926	431
6794	2013-10-11 10:00	902	1036
6795	2013-10-11 10:00	903	300
6796	2013-10-11 10:00	900	15369
6797	2013-10-11 10:00	904	1227
6798	2013-10-11 10:00	150	554
6799	2013-10-11 10:00	110	139
6800	2013-10-11 10:00	917	1559
6801	2013-10-11 10:00	916	2921
6802	2013-10-11 10:00	922	269
6803	2013-10-11 10:00	926	1449
6804	2013-10-11 11:00	902	1322
6805	2013-10-11 11:00	903	359
6806	2013-10-11 11:00	900	17023
6807	2013-10-11 11:00	904	1371
6808	2013-10-11 11:00	905	246
6809	2013-10-11 11:00	150	813
6810	2013-10-11 11:00	917	384
6811	2013-10-11 11:00	916	3116
6812	2013-10-11 11:00	922	824
6813	2013-10-11 11:00	926	1637
6814	2013-10-11 12:00	902	1190
6815	2013-10-11 12:00	150	842
6816	2013-10-11 12:00	900	20220
6817	2013-10-11 12:00	904	1703
6818	2013-10-11 12:00	110	274
6819	2013-10-11 12:00	914	325
6820	2013-10-11 12:00	917	376
6821	2013-10-11 12:00	916	3641
6822	2013-10-11 12:00	922	520
6823	2013-10-11 12:00	926	1932
6824	2013-10-11 13:00	902	1212
6825	2013-10-11 13:00	150	587
6826	2013-10-11 13:00	900	20036
6827	2013-10-11 13:00	904	1815
6828	2013-10-11 13:00	905	226
6829	2013-10-11 13:00	914	2759
6830	2013-10-11 13:00	917	402
6831	2013-10-11 13:00	916	3655
6832	2013-10-11 13:00	922	622
6833	2013-10-11 13:00	926	1444
6834	2013-10-11 14:00	902	992
6835	2013-10-11 14:00	150	423
6836	2013-10-11 14:00	900	20458
6837	2013-10-11 14:00	904	1713
6838	2013-10-11 14:00	905	250
6839	2013-10-11 14:00	914	508
6840	2013-10-11 14:00	917	280
6841	2013-10-11 14:00	916	3304
6842	2013-10-11 14:00	922	427
6843	2013-10-11 14:00	926	1389
6844	2013-10-11 15:00	902	985
6845	2013-10-11 15:00	903	201
6846	2013-10-11 15:00	900	18610
6847	2013-10-11 15:00	904	1888
6848	2013-10-11 15:00	150	463
6849	2013-10-11 15:00	919	248
6850	2013-10-11 15:00	917	393
6851	2013-10-11 15:00	916	3957
6852	2013-10-11 15:00	922	751
6853	2013-10-11 15:00	926	1375
6854	2013-10-11 16:00	902	1016
6855	2013-10-11 16:00	150	960
6856	2013-10-11 16:00	900	17483
6857	2013-10-11 16:00	904	2529
6858	2013-10-11 16:00	919	260
6859	2013-10-11 16:00	914	244
6860	2013-10-11 16:00	917	605
6861	2013-10-11 16:00	916	4615
6862	2013-10-11 16:00	922	1319
6863	2013-10-11 16:00	926	1360
6864	2013-10-11 17:00	902	865
6865	2013-10-11 17:00	903	182
6866	2013-10-11 17:00	900	15938
6867	2013-10-11 17:00	904	1382
6868	2013-10-11 17:00	905	183
6869	2013-10-11 17:00	150	249
6870	2013-10-11 17:00	917	305
6871	2013-10-11 17:00	916	3199
6872	2013-10-11 17:00	922	665
6873	2013-10-11 17:00	926	1313
6874	2013-10-11 18:00	902	885
6875	2013-10-11 18:00	903	189
6876	2013-10-11 18:00	900	16817
6877	2013-10-11 18:00	904	1335
6878	2013-10-11 18:00	150	375
6879	2013-10-11 18:00	110	189
6880	2013-10-11 18:00	917	382
6881	2013-10-11 18:00	916	3402
6882	2013-10-11 18:00	922	657
6883	2013-10-11 18:00	926	1000
6884	2013-10-11 19:00	902	794
6885	2013-10-11 19:00	903	187
6886	2013-10-11 19:00	900	16854
6887	2013-10-11 19:00	904	1162
6888	2013-10-11 19:00	150	193
6889	2013-10-11 19:00	926	658
6890	2013-10-11 19:00	917	860
6891	2013-10-11 19:00	916	3090
6892	2013-10-11 19:00	922	439
6893	2013-10-11 19:00	935	145
6894	2013-10-11 20:00	902	692
6895	2013-10-11 20:00	903	123
6896	2013-10-11 20:00	900	14016
6897	2013-10-11 20:00	904	851
6898	2013-10-11 20:00	150	77
6899	2013-10-11 20:00	926	593
6900	2013-10-11 20:00	917	767
6901	2013-10-11 20:00	916	2251
6902	2013-10-11 20:00	922	292
6903	2013-10-11 20:00	935	109
6904	2013-10-11 21:00	902	418
6905	2013-10-11 21:00	903	67
6906	2013-10-11 21:00	900	10051
6907	2013-10-11 21:00	904	622
6908	2013-10-11 21:00	150	173
6909	2013-10-11 21:00	926	376
6910	2013-10-11 21:00	917	814
6911	2013-10-11 21:00	916	1593
6912	2013-10-11 21:00	922	245
6913	2013-10-11 21:00	935	56
6914	2013-10-11 22:00	902	225
6915	2013-10-11 22:00	150	409
6916	2013-10-11 22:00	900	6140
6917	2013-10-11 22:00	916	820
6918	2013-10-11 22:00	904	374
6919	2013-10-11 22:00	919	317
6920	2013-10-11 22:00	917	218
6921	2013-10-11 22:00	930	95
6922	2013-10-11 22:00	922	123
6923	2013-10-11 22:00	926	232
6924	2013-10-11 23:00	902	88
6925	2013-10-11 23:00	903	30
6926	2013-10-11 23:00	900	2878
6927	2013-10-11 23:00	904	228
6928	2013-10-11 23:00	703	29
6929	2013-10-11 23:00	110	25
6930	2013-10-11 23:00	917	99
6931	2013-10-11 23:00	916	407
6932	2013-10-11 23:00	922	70
6933	2013-10-11 23:00	926	293
6934	2013-10-12 00:00	902	60
6935	2013-10-12 00:00	903	21
6936	2013-10-12 00:00	900	1548
6937	2013-10-12 00:00	904	311
6938	2013-10-12 00:00	3548	14
6939	2013-10-12 00:00	926	190
6940	2013-10-12 00:00	917	16
6941	2013-10-12 00:00	916	303
6942	2013-10-12 00:00	922	102
6943	2013-10-12 00:00	935	14
6944	2013-10-12 01:00	902	39
6945	2013-10-12 01:00	903	24
6946	2013-10-12 01:00	900	812
6947	2013-10-12 01:00	916	222
6948	2013-10-12 01:00	904	350
6949	2013-10-12 01:00	919	15
6950	2013-10-12 01:00	926	141
6951	2013-10-12 01:00	922	77
6952	2013-10-12 01:00	930	14
6953	2013-10-12 01:00	935	20
6954	2013-10-12 02:00	902	21
6955	2013-10-12 02:00	903	22
6956	2013-10-12 02:00	900	735
6957	2013-10-12 02:00	904	333
6958	2013-10-12 02:00	926	94
6959	2013-10-12 02:00	919	12
6960	2013-10-12 02:00	500	10
6961	2013-10-12 02:00	922	63
6962	2013-10-12 02:00	916	165
6963	2013-10-12 02:00	935	14
6964	2013-10-12 03:00	902	17
6965	2013-10-12 03:00	903	28
6966	2013-10-12 03:00	900	448
6967	2013-10-12 03:00	904	316
6968	2013-10-12 03:00	3548	8
6969	2013-10-12 03:00	926	52
6970	2013-10-12 03:00	500	9
6971	2013-10-12 03:00	922	66
6972	2013-10-12 03:00	916	151
6973	2013-10-12 03:00	935	14
6974	2013-10-12 04:00	902	12
6975	2013-10-12 04:00	903	18
6976	2013-10-12 04:00	900	612
6977	2013-10-12 04:00	916	136
6978	2013-10-12 04:00	904	226
6979	2013-10-12 04:00	3548	13
6980	2013-10-12 04:00	926	28
6981	2013-10-12 04:00	922	48
6982	2013-10-12 04:00	930	17
6983	2013-10-12 04:00	935	10
6984	2013-10-12 05:00	902	40
6985	2013-10-12 05:00	150	33
6986	2013-10-12 05:00	900	789
6987	2013-10-12 05:00	916	157
6988	2013-10-12 05:00	904	82
6989	2013-10-12 05:00	3548	6
6990	2013-10-12 05:00	926	5
6991	2013-10-12 05:00	922	4
6992	2013-10-12 05:00	930	22
6993	2013-10-12 05:00	500	9
6994	2013-10-12 06:00	902	487
6995	2013-10-12 06:00	903	19
6996	2013-10-12 06:00	900	4342
6997	2013-10-12 06:00	904	372
6998	2013-10-12 06:00	150	121
6999	2013-10-12 06:00	926	241
7000	2013-10-12 06:00	917	30
7001	2013-10-12 06:00	916	835
7002	2013-10-12 06:00	922	131
7003	2013-10-12 06:00	935	18
7004	2013-10-12 07:00	902	521
7005	2013-10-12 07:00	903	57
7006	2013-10-12 07:00	900	8583
7007	2013-10-12 07:00	904	685
7008	2013-10-12 07:00	926	51
7009	2013-10-12 07:00	914	30
7010	2013-10-12 07:00	917	78
7011	2013-10-12 07:00	916	1603
7012	2013-10-12 07:00	922	226
7013	2013-10-12 07:00	935	49
7014	2013-10-12 08:00	902	724
7015	2013-10-12 08:00	903	88
7016	2013-10-12 08:00	900	11892
7017	2013-10-12 08:00	904	988
7018	2013-10-12 08:00	150	342
7019	2013-10-12 08:00	110	59
7020	2013-10-12 08:00	917	77
7021	2013-10-12 08:00	916	2075
7022	2013-10-12 08:00	922	352
7023	2013-10-12 08:00	926	312
7024	2013-10-12 09:00	902	671
7025	2013-10-12 09:00	903	124
7026	2013-10-12 09:00	900	13765
7027	2013-10-12 09:00	904	1019
7028	2013-10-12 09:00	150	244
7029	2013-10-12 09:00	110	99
7030	2013-10-12 09:00	917	132
7031	2013-10-12 09:00	916	2497
7032	2013-10-12 09:00	922	351
7033	2013-10-12 09:00	926	497
7034	2013-10-12 10:00	902	1008
7035	2013-10-12 10:00	903	228
7036	2013-10-12 10:00	900	16392
7037	2013-10-12 10:00	904	1279
7038	2013-10-12 10:00	150	3047
7039	2013-10-12 10:00	914	148
7040	2013-10-12 10:00	917	537
7041	2013-10-12 10:00	916	2913
7042	2013-10-12 10:00	922	292
7043	2013-10-12 10:00	926	1262
7044	2013-10-12 11:00	902	1030
7045	2013-10-12 11:00	903	187
7046	2013-10-12 11:00	900	16904
7047	2013-10-12 11:00	904	1387
7048	2013-10-12 11:00	905	211
7049	2013-10-12 11:00	150	1011
7050	2013-10-12 11:00	917	384
7051	2013-10-12 11:00	916	2951
7052	2013-10-12 11:00	922	289
7053	2013-10-12 11:00	926	1461
7054	2013-10-12 12:00	902	1169
7055	2013-10-12 12:00	903	271
7056	2013-10-12 12:00	900	20222
7057	2013-10-12 12:00	904	1779
7058	2013-10-12 12:00	150	902
7059	2013-10-12 12:00	110	760
7060	2013-10-12 12:00	917	235
7061	2013-10-12 12:00	916	3757
7062	2013-10-12 12:00	922	615
7063	2013-10-12 12:00	926	1422
7064	2013-10-12 13:00	902	1087
7065	2013-10-12 13:00	903	208
7066	2013-10-12 13:00	900	17463
7067	2013-10-12 13:00	904	1645
7068	2013-10-12 13:00	905	187
7069	2013-10-12 13:00	150	500
7070	2013-10-12 13:00	917	184
7071	2013-10-12 13:00	916	3433
7072	2013-10-12 13:00	922	593
7073	2013-10-12 13:00	926	1284
7074	2013-10-12 14:00	902	779
7075	2013-10-12 14:00	903	149
7076	2013-10-12 14:00	900	15954
7077	2013-10-12 14:00	904	1364
7078	2013-10-12 14:00	905	159
7079	2013-10-12 14:00	150	392
7080	2013-10-12 14:00	917	166
7081	2013-10-12 14:00	916	3211
7082	2013-10-12 14:00	922	544
7083	2013-10-12 14:00	926	998
7084	2013-10-12 15:00	902	782
7085	2013-10-12 15:00	150	2358
7086	2013-10-12 15:00	900	14622
7087	2013-10-12 15:00	904	1569
7088	2013-10-12 15:00	905	144
7089	2013-10-12 15:00	914	189
7090	2013-10-12 15:00	917	168
7091	2013-10-12 15:00	916	3052
7092	2013-10-12 15:00	922	762
7093	2013-10-12 15:00	926	1557
7094	2013-10-12 16:00	902	668
7095	2013-10-12 16:00	150	1018
7096	2013-10-12 16:00	900	13424
7097	2013-10-12 16:00	904	1268
7098	2013-10-12 16:00	905	124
7099	2013-10-12 16:00	110	119
7100	2013-10-12 16:00	917	164
7101	2013-10-12 16:00	916	2931
7102	2013-10-12 16:00	922	601
7103	2013-10-12 16:00	926	1035
7104	2013-10-12 17:00	902	812
7105	2013-10-12 17:00	903	121
7106	2013-10-12 17:00	900	12726
7107	2013-10-12 17:00	904	1187
7108	2013-10-12 17:00	905	134
7109	2013-10-12 17:00	150	504
7110	2013-10-12 17:00	917	117
7111	2013-10-12 17:00	916	2764
7112	2013-10-12 17:00	922	499
7113	2013-10-12 17:00	926	820
7114	2013-10-12 18:00	902	755
7115	2013-10-12 18:00	903	120
7116	2013-10-12 18:00	900	13219
7117	2013-10-12 18:00	904	1076
7118	2013-10-12 18:00	150	192
7119	2013-10-12 18:00	110	122
7120	2013-10-12 18:00	917	279
7121	2013-10-12 18:00	916	2597
7122	2013-10-12 18:00	922	283
7123	2013-10-12 18:00	926	521
7124	2013-10-12 19:00	902	755
7125	2013-10-12 19:00	903	132
7126	2013-10-12 19:00	900	13989
7127	2013-10-12 19:00	904	995
7128	2013-10-12 19:00	150	177
7129	2013-10-12 19:00	110	105
7130	2013-10-12 19:00	917	526
7131	2013-10-12 19:00	916	2769
7132	2013-10-12 19:00	922	346
7133	2013-10-12 19:00	926	474
7134	2013-10-12 20:00	902	603
7135	2013-10-12 20:00	903	102
7136	2013-10-12 20:00	900	12097
7137	2013-10-12 20:00	904	769
7138	2013-10-12 20:00	150	75
7139	2013-10-12 20:00	110	73
7140	2013-10-12 20:00	917	743
7141	2013-10-12 20:00	916	2184
7142	2013-10-12 20:00	922	264
7143	2013-10-12 20:00	926	279
7144	2013-10-12 21:00	902	347
7145	2013-10-12 21:00	150	172
7146	2013-10-12 21:00	900	8191
7147	2013-10-12 21:00	916	1377
7148	2013-10-12 21:00	904	520
7149	2013-10-12 21:00	110	49
7150	2013-10-12 21:00	917	438
7151	2013-10-12 21:00	930	49
7152	2013-10-12 21:00	922	163
7153	2013-10-12 21:00	926	182
7154	2013-10-12 22:00	902	213
7155	2013-10-12 22:00	150	191
7156	2013-10-12 22:00	900	5047
7157	2013-10-12 22:00	916	786
7158	2013-10-12 22:00	904	358
7159	2013-10-12 22:00	110	43
7160	2013-10-12 22:00	917	143
7161	2013-10-12 22:00	930	53
7162	2013-10-12 22:00	922	72
7163	2013-10-12 22:00	926	137
7164	2013-10-12 23:00	902	86
7165	2013-10-12 23:00	903	26
7166	2013-10-12 23:00	900	2705
7167	2013-10-12 23:00	904	184
7168	2013-10-12 23:00	919	14
7169	2013-10-12 23:00	110	36
7170	2013-10-12 23:00	917	70
7171	2013-10-12 23:00	916	439
7172	2013-10-12 23:00	922	42
7173	2013-10-12 23:00	926	161
7174	2013-10-13 00:00	902	41
7175	2013-10-13 00:00	903	15
7176	2013-10-13 00:00	900	1584
7177	2013-10-13 00:00	916	171
7178	2013-10-13 00:00	904	102
7179	2013-10-13 00:00	926	90
7180	2013-10-13 00:00	917	34
7181	2013-10-13 00:00	930	8
7182	2013-10-13 00:00	922	55
7183	2013-10-13 00:00	500	8
7184	2013-10-13 01:00	902	17
7185	2013-10-13 01:00	150	8
7186	2013-10-13 01:00	900	900
7187	2013-10-13 01:00	904	84
7188	2013-10-13 01:00	3548	5
7189	2013-10-13 01:00	926	117
7190	2013-10-13 01:00	922	26
7191	2013-10-13 01:00	916	94
7192	2013-10-13 01:00	502	5
7193	2013-10-13 01:00	500	9
7194	2013-10-13 02:00	902	13
7195	2013-10-13 02:00	900	439
7196	2013-10-13 02:00	916	40
7197	2013-10-13 02:00	904	27
7198	2013-10-13 02:00	3548	5
7199	2013-10-13 02:00	926	89
7200	2013-10-13 02:00	922	5
7201	2013-10-13 02:00	930	15
7202	2013-10-13 02:00	502	5
7203	2013-10-13 02:00	500	6
7204	2013-10-13 03:00	902	21
7205	2013-10-13 03:00	150	3
7206	2013-10-13 03:00	900	253
7207	2013-10-13 03:00	916	41
7208	2013-10-13 03:00	904	38
7209	2013-10-13 03:00	926	65
7210	2013-10-13 03:00	917	4
7211	2013-10-13 03:00	930	27
7212	2013-10-13 03:00	922	9
7213	2013-10-13 03:00	500	8
7214	2013-10-13 04:00	902	20
7215	2013-10-13 04:00	900	439
7216	2013-10-13 04:00	916	53
7217	2013-10-13 04:00	904	32
7218	2013-10-13 04:00	926	60
7219	2013-10-13 04:00	110	3
7220	2013-10-13 04:00	917	4
7221	2013-10-13 04:00	930	20
7222	2013-10-13 04:00	922	10
7223	2013-10-13 04:00	500	8
7224	2013-10-13 05:00	902	51
7225	2013-10-13 05:00	150	69
7226	2013-10-13 05:00	900	649
7227	2013-10-13 05:00	916	106
7228	2013-10-13 05:00	904	115
7229	2013-10-13 05:00	920	8
7230	2013-10-13 05:00	914	4
7231	2013-10-13 05:00	922	8
7232	2013-10-13 05:00	930	11
7233	2013-10-13 05:00	500	8
7234	2013-10-13 06:00	902	342
7235	2013-10-13 06:00	903	24
7236	2013-10-13 06:00	900	3713
7237	2013-10-13 06:00	907	52
7238	2013-10-13 06:00	904	304
7239	2013-10-13 06:00	150	214
7240	2013-10-13 06:00	917	25
7241	2013-10-13 06:00	916	619
7242	2013-10-13 06:00	922	120
7243	2013-10-13 06:00	926	133
7244	2013-10-13 07:00	902	449
7245	2013-10-13 07:00	903	46
7246	2013-10-13 07:00	900	7942
7247	2013-10-13 07:00	904	630
7248	2013-10-13 07:00	150	69
7249	2013-10-13 07:00	926	65
7250	2013-10-13 07:00	914	58
7251	2013-10-13 07:00	922	173
7252	2013-10-13 07:00	916	1642
7253	2013-10-13 07:00	935	47
7254	2013-10-13 08:00	902	656
7255	2013-10-13 08:00	903	82
7256	2013-10-13 08:00	900	11370
7257	2013-10-13 08:00	904	889
7258	2013-10-13 08:00	150	55
7259	2013-10-13 08:00	914	75
7260	2013-10-13 08:00	917	96
7261	2013-10-13 08:00	916	1897
7262	2013-10-13 08:00	922	283
7263	2013-10-13 08:00	926	126
7264	2013-10-13 09:00	902	687
7265	2013-10-13 09:00	903	109
7266	2013-10-13 09:00	900	13250
7267	2013-10-13 09:00	904	1035
7268	2013-10-13 09:00	150	358
7269	2013-10-13 09:00	110	86
7270	2013-10-13 09:00	917	197
7271	2013-10-13 09:00	916	2237
7272	2013-10-13 09:00	922	246
7273	2013-10-13 09:00	926	403
7274	2013-10-13 10:00	902	677
7275	2013-10-13 10:00	903	122
7276	2013-10-13 10:00	900	14266
7277	2013-10-13 10:00	904	1230
7278	2013-10-13 10:00	150	3696
7279	2013-10-13 10:00	110	104
7280	2013-10-13 10:00	917	405
7281	2013-10-13 10:00	916	2530
7282	2013-10-13 10:00	922	356
7283	2013-10-13 10:00	926	542
7284	2013-10-13 11:00	902	753
7285	2013-10-13 11:00	903	145
7286	2013-10-13 11:00	900	16007
7287	2013-10-13 11:00	904	1174
7288	2013-10-13 11:00	150	1271
7289	2013-10-13 11:00	110	108
7290	2013-10-13 11:00	917	412
7291	2013-10-13 11:00	916	2476
7292	2013-10-13 11:00	922	284
7293	2013-10-13 11:00	926	621
7294	2013-10-13 12:00	902	722
7295	2013-10-13 12:00	903	139
7296	2013-10-13 12:00	900	14638
7297	2013-10-13 12:00	904	1229
7298	2013-10-13 12:00	150	894
7299	2013-10-13 12:00	110	86
7300	2013-10-13 12:00	917	246
7301	2013-10-13 12:00	916	2317
7302	2013-10-13 12:00	922	353
7303	2013-10-13 12:00	926	597
7304	2013-10-13 13:00	902	619
7305	2013-10-13 13:00	903	123
7306	2013-10-13 13:00	900	13142
7307	2013-10-13 13:00	904	973
7308	2013-10-13 13:00	150	767
7309	2013-10-13 13:00	110	92
7310	2013-10-13 13:00	917	213
7311	2013-10-13 13:00	916	2287
7312	2013-10-13 13:00	922	330
7313	2013-10-13 13:00	926	695
7314	2013-10-13 14:00	902	544
7315	2013-10-13 14:00	903	130
7316	2013-10-13 14:00	900	11815
7317	2013-10-13 14:00	904	1009
7318	2013-10-13 14:00	150	344
7319	2013-10-13 14:00	920	96
7320	2013-10-13 14:00	917	168
7321	2013-10-13 14:00	916	2069
7322	2013-10-13 14:00	922	246
7323	2013-10-13 14:00	926	498
7324	2013-10-13 15:00	902	248
7325	2013-10-13 15:00	903	70
7326	2013-10-13 15:00	900	8889
7327	2013-10-13 15:00	904	1232
7328	2013-10-13 15:00	150	337
7329	2013-10-13 15:00	919	186
7330	2013-10-13 15:00	917	382
7331	2013-10-13 15:00	916	2405
7332	2013-10-13 15:00	922	786
7333	2013-10-13 15:00	926	275
7334	2013-10-13 16:00	902	171
7335	2013-10-13 16:00	903	78
7336	2013-10-13 16:00	900	6638
7337	2013-10-13 16:00	904	393
7338	2013-10-13 16:00	150	1155
7339	2013-10-13 16:00	110	51
7340	2013-10-13 16:00	917	195
7341	2013-10-13 16:00	916	781
7342	2013-10-13 16:00	922	63
7343	2013-10-13 16:00	926	374
7344	2013-10-13 17:00	902	574
7345	2013-10-13 17:00	903	330
7346	2013-10-13 17:00	900	14051
7347	2013-10-13 17:00	904	2716
7348	2013-10-13 17:00	150	341
7349	2013-10-13 17:00	926	315
7350	2013-10-13 17:00	917	307
7351	2013-10-13 17:00	916	3086
7352	2013-10-13 17:00	922	847
7353	2013-10-13 17:00	935	153
7354	2013-10-13 18:00	902	907
7355	2013-10-13 18:00	903	488
7356	2013-10-13 18:00	900	16732
7357	2013-10-13 18:00	904	3730
7358	2013-10-13 18:00	150	322
7359	2013-10-13 18:00	926	258
7360	2013-10-13 18:00	917	436
7361	2013-10-13 18:00	916	4386
7362	2013-10-13 18:00	922	976
7363	2013-10-13 18:00	935	199
7364	2013-10-13 19:00	902	598
7365	2013-10-13 19:00	903	86
7366	2013-10-13 19:00	900	10741
7367	2013-10-13 19:00	904	843
7368	2013-10-13 19:00	150	139
7369	2013-10-13 19:00	914	101
7370	2013-10-13 19:00	917	304
7371	2013-10-13 19:00	916	1914
7372	2013-10-13 19:00	922	225
7373	2013-10-13 19:00	926	253
7374	2013-10-13 20:00	902	498
7375	2013-10-13 20:00	903	79
7376	2013-10-13 20:00	900	9246
7377	2013-10-13 20:00	916	1574
7378	2013-10-13 20:00	904	683
7379	2013-10-13 20:00	150	62
7380	2013-10-13 20:00	917	416
7381	2013-10-13 20:00	930	110
7382	2013-10-13 20:00	922	241
7383	2013-10-13 20:00	926	242
7384	2013-10-13 21:00	902	296
7385	2013-10-13 21:00	150	123
7386	2013-10-13 21:00	900	6439
7387	2013-10-13 21:00	916	1051
7388	2013-10-13 21:00	904	545
7389	2013-10-13 21:00	920	56
7390	2013-10-13 21:00	917	229
7391	2013-10-13 21:00	930	133
7392	2013-10-13 21:00	922	112
7393	2013-10-13 21:00	926	215
7394	2013-10-13 22:00	902	205
7395	2013-10-13 22:00	903	39
7396	2013-10-13 22:00	900	4255
7397	2013-10-13 22:00	916	724
7398	2013-10-13 22:00	904	347
7399	2013-10-13 22:00	150	52
7400	2013-10-13 22:00	917	120
7401	2013-10-13 22:00	930	39
7402	2013-10-13 22:00	922	57
7403	2013-10-13 22:00	926	125
7404	2013-10-13 23:00	902	58
7405	2013-10-13 23:00	150	17
7406	2013-10-13 23:00	900	2109
7407	2013-10-13 23:00	916	334
7408	2013-10-13 23:00	904	179
7409	2013-10-13 23:00	703	18
7410	2013-10-13 23:00	917	30
7411	2013-10-13 23:00	930	20
7412	2013-10-13 23:00	922	73
7413	2013-10-13 23:00	926	97
7414	2013-10-14 00:00	902	20
7415	2013-10-14 00:00	900	1285
7416	2013-10-14 00:00	907	16
7417	2013-10-14 00:00	904	104
7418	2013-10-14 00:00	926	67
7419	2013-10-14 00:00	110	10
7420	2013-10-14 00:00	917	11
7421	2013-10-14 00:00	916	139
7422	2013-10-14 00:00	922	43
7423	2013-10-14 00:00	500	10
7424	2013-10-14 01:00	902	12
7425	2013-10-14 01:00	903	18
7426	2013-10-14 01:00	900	481
7427	2013-10-14 01:00	904	58
7428	2013-10-14 01:00	3548	4
7429	2013-10-14 01:00	926	63
7430	2013-10-14 01:00	917	32
7431	2013-10-14 01:00	916	71
7432	2013-10-14 01:00	922	30
7433	2013-10-14 01:00	500	8
7434	2013-10-14 02:00	902	11
7435	2013-10-14 02:00	903	4
7436	2013-10-14 02:00	900	429
7437	2013-10-14 02:00	907	4
7438	2013-10-14 02:00	904	32
7439	2013-10-14 02:00	926	25
7440	2013-10-14 02:00	110	3
7441	2013-10-14 02:00	922	9
7442	2013-10-14 02:00	916	57
7443	2013-10-14 02:00	500	8
7444	2013-10-14 03:00	902	8
7445	2013-10-14 03:00	900	216
7446	2013-10-14 03:00	904	16
7447	2013-10-14 03:00	926	3
7448	2013-10-14 03:00	919	1
7449	2013-10-14 03:00	110	2
7450	2013-10-14 03:00	100	2
7451	2013-10-14 03:00	916	29
7452	2013-10-14 03:00	502	1
7453	2013-10-14 03:00	500	8
7454	2013-10-14 04:00	903	1
7455	2013-10-14 04:00	900	367
7456	2013-10-14 04:00	916	14
7457	2013-10-14 04:00	904	22
7458	2013-10-14 04:00	3548	1
7459	2013-10-14 04:00	919	1
7460	2013-10-14 04:00	926	6
7461	2013-10-14 04:00	917	3
7462	2013-10-14 04:00	930	1
7463	2013-10-14 04:00	500	9
7464	2013-10-14 05:00	902	24
7465	2013-10-14 05:00	903	8
7466	2013-10-14 05:00	900	535
7467	2013-10-14 05:00	904	67
7468	2013-10-14 05:00	150	50
7469	2013-10-14 05:00	926	2
7470	2013-10-14 05:00	500	8
7471	2013-10-14 05:00	922	14
7472	2013-10-14 05:00	916	84
7473	2013-10-14 05:00	935	3
7474	2013-10-14 06:00	902	274
7475	2013-10-14 06:00	903	34
7476	2013-10-14 06:00	900	3290
7477	2013-10-14 06:00	904	272
7478	2013-10-14 06:00	905	15
7479	2013-10-14 06:00	150	87
7480	2013-10-14 06:00	917	23
7481	2013-10-14 06:00	916	490
7482	2013-10-14 06:00	922	50
7483	2013-10-14 06:00	926	108
7484	2013-10-14 07:00	902	439
7485	2013-10-14 07:00	903	61
7486	2013-10-14 07:00	900	7210
7487	2013-10-14 07:00	904	604
7488	2013-10-14 07:00	150	45
7489	2013-10-14 07:00	926	61
7490	2013-10-14 07:00	920	27
7491	2013-10-14 07:00	922	208
7492	2013-10-14 07:00	916	1386
7493	2013-10-14 07:00	935	48
7494	2013-10-14 08:00	902	482
7495	2013-10-14 08:00	903	74
7496	2013-10-14 08:00	900	10011
7497	2013-10-14 08:00	904	775
7498	2013-10-14 08:00	150	71
7499	2013-10-14 08:00	926	119
7500	2013-10-14 08:00	917	64
7501	2013-10-14 08:00	916	1837
7502	2013-10-14 08:00	922	155
7503	2013-10-14 08:00	935	52
7504	2013-10-14 09:00	902	564
7505	2013-10-14 09:00	903	126
7506	2013-10-14 09:00	900	12637
7507	2013-10-14 09:00	904	837
7508	2013-10-14 09:00	150	322
7509	2013-10-14 09:00	110	124
7510	2013-10-14 09:00	917	168
7511	2013-10-14 09:00	916	2667
7512	2013-10-14 09:00	922	250
7513	2013-10-14 09:00	926	242
7514	2013-10-14 10:00	902	870
7515	2013-10-14 10:00	903	226
7516	2013-10-14 10:00	900	14292
7517	2013-10-14 10:00	904	1047
7518	2013-10-14 10:00	150	776
7519	2013-10-14 10:00	110	138
7520	2013-10-14 10:00	917	405
7521	2013-10-14 10:00	916	2779
7522	2013-10-14 10:00	922	203
7523	2013-10-14 10:00	926	939
7524	2013-10-14 11:00	902	888
7525	2013-10-14 11:00	903	202
7526	2013-10-14 11:00	900	14549
7527	2013-10-14 11:00	904	1132
7528	2013-10-14 11:00	905	207
7529	2013-10-14 11:00	150	1056
7530	2013-10-14 11:00	917	246
7531	2013-10-14 11:00	916	2809
7532	2013-10-14 11:00	922	279
7533	2013-10-14 11:00	926	1144
7534	2013-10-14 12:00	902	982
7535	2013-10-14 12:00	903	211
7536	2013-10-14 12:00	900	15684
7537	2013-10-14 12:00	904	1270
7538	2013-10-14 12:00	905	282
7539	2013-10-14 12:00	150	1022
7540	2013-10-14 12:00	917	357
7541	2013-10-14 12:00	916	3110
7542	2013-10-14 12:00	922	265
7543	2013-10-14 12:00	926	1434
7544	2013-10-14 13:00	902	946
7545	2013-10-14 13:00	903	200
7546	2013-10-14 13:00	900	14178
7547	2013-10-14 13:00	904	1290
7548	2013-10-14 13:00	905	187
7549	2013-10-14 13:00	150	834
7550	2013-10-14 13:00	917	290
7551	2013-10-14 13:00	916	2582
7552	2013-10-14 13:00	922	295
7553	2013-10-14 13:00	926	1080
7554	2013-10-14 14:00	902	938
7555	2013-10-14 14:00	903	209
7556	2013-10-14 14:00	900	14671
7557	2013-10-14 14:00	904	1502
7558	2013-10-14 14:00	150	781
7559	2013-10-14 14:00	110	142
7560	2013-10-14 14:00	917	247
7561	2013-10-14 14:00	916	2568
7562	2013-10-14 14:00	922	399
7563	2013-10-14 14:00	926	960
7564	2013-10-14 15:00	902	593
7565	2013-10-14 15:00	903	163
7566	2013-10-14 15:00	900	10051
7567	2013-10-14 15:00	904	1062
7568	2013-10-14 15:00	905	146
7569	2013-10-14 15:00	150	1371
7570	2013-10-14 15:00	917	240
7571	2013-10-14 15:00	916	1739
7572	2013-10-14 15:00	922	112
7573	2013-10-14 15:00	926	950
7574	2013-10-14 16:00	902	379
7575	2013-10-14 16:00	903	150
7576	2013-10-14 16:00	900	9421
7577	2013-10-14 16:00	904	770
7578	2013-10-14 16:00	905	131
7579	2013-10-14 16:00	150	1121
7580	2013-10-14 16:00	110	109
7581	2013-10-14 16:00	917	326
7582	2013-10-14 16:00	916	1325
7583	2013-10-14 16:00	926	1151
7584	2013-10-14 17:00	902	402
7585	2013-10-14 17:00	903	118
7586	2013-10-14 17:00	900	8068
7587	2013-10-14 17:00	904	508
7588	2013-10-14 17:00	905	111
7589	2013-10-14 17:00	150	726
7590	2013-10-14 17:00	926	987
7591	2013-10-14 17:00	917	231
7592	2013-10-14 17:00	916	1136
7593	2013-10-14 17:00	500	91
7594	2013-10-14 18:00	902	436
7595	2013-10-14 18:00	903	137
7596	2013-10-14 18:00	900	8530
7597	2013-10-14 18:00	916	998
7598	2013-10-14 18:00	904	418
7599	2013-10-14 18:00	150	403
7600	2013-10-14 18:00	110	72
7601	2013-10-14 18:00	917	285
7602	2013-10-14 18:00	930	93
7603	2013-10-14 18:00	926	697
7604	2013-10-14 19:00	902	339
7605	2013-10-14 19:00	903	77
7606	2013-10-14 19:00	900	8162
7607	2013-10-14 19:00	904	344
7608	2013-10-14 19:00	150	180
7609	2013-10-14 19:00	919	67
7610	2013-10-14 19:00	917	211
7611	2013-10-14 19:00	916	856
7612	2013-10-14 19:00	922	79
7613	2013-10-14 19:00	926	477
7614	2013-10-14 20:00	902	283
7615	2013-10-14 20:00	150	89
7616	2013-10-14 20:00	900	6680
7617	2013-10-14 20:00	916	706
7618	2013-10-14 20:00	904	313
7619	2013-10-14 20:00	905	54
7620	2013-10-14 20:00	917	450
7621	2013-10-14 20:00	930	81
7622	2013-10-14 20:00	922	68
7623	2013-10-14 20:00	926	518
7624	2013-10-14 21:00	902	68
7625	2013-10-14 21:00	150	306
7626	2013-10-14 21:00	900	4729
7627	2013-10-14 21:00	916	391
7628	2013-10-14 21:00	904	265
7629	2013-10-14 21:00	110	28
7630	2013-10-14 21:00	917	836
7631	2013-10-14 21:00	930	62
7632	2013-10-14 21:00	922	53
7633	2013-10-14 21:00	926	486
7634	2013-10-14 22:00	902	86
7635	2013-10-14 22:00	903	40
7636	2013-10-14 22:00	900	3528
7637	2013-10-14 22:00	904	281
7638	2013-10-14 22:00	150	413
7639	2013-10-14 22:00	110	31
7640	2013-10-14 22:00	917	161
7641	2013-10-14 22:00	916	306
7642	2013-10-14 22:00	922	40
7643	2013-10-14 22:00	926	297
7644	2013-10-14 23:00	902	100
7645	2013-10-14 23:00	903	16
7646	2013-10-14 23:00	900	2043
7647	2013-10-14 23:00	904	292
7648	2013-10-14 23:00	926	253
7649	2013-10-14 23:00	110	23
7650	2013-10-14 23:00	917	108
7651	2013-10-14 23:00	916	199
7652	2013-10-14 23:00	922	15
7653	2013-10-14 23:00	500	15
7654	2013-10-15 00:00	902	31
7655	2013-10-15 00:00	903	14
7656	2013-10-15 00:00	900	784
7657	2013-10-15 00:00	904	80
7658	2013-10-15 00:00	3548	11
7659	2013-10-15 00:00	110	10
7660	2013-10-15 00:00	917	16
7661	2013-10-15 00:00	916	90
7662	2013-10-15 00:00	922	33
7663	2013-10-15 00:00	926	37
7664	2013-10-15 01:00	902	7
7665	2013-10-15 01:00	903	6
7666	2013-10-15 01:00	900	375
7667	2013-10-15 01:00	904	50
7668	2013-10-15 01:00	3548	5
7669	2013-10-15 01:00	926	65
7670	2013-10-15 01:00	922	9
7671	2013-10-15 01:00	916	30
7672	2013-10-15 01:00	502	5
7673	2013-10-15 01:00	500	8
7674	2013-10-15 02:00	902	14
7675	2013-10-15 02:00	150	6
7676	2013-10-15 02:00	900	373
7677	2013-10-15 02:00	904	37
7678	2013-10-15 02:00	3548	7
7679	2013-10-15 02:00	926	14
7680	2013-10-15 02:00	917	14
7681	2013-10-15 02:00	916	29
7682	2013-10-15 02:00	502	7
7683	2013-10-15 02:00	500	12
7684	2013-10-15 03:00	902	9
7685	2013-10-15 03:00	900	198
7686	2013-10-15 03:00	916	19
7687	2013-10-15 03:00	904	20
7688	2013-10-15 03:00	919	1
7689	2013-10-15 03:00	110	2
7690	2013-10-15 03:00	914	4
7691	2013-10-15 03:00	100	1
7692	2013-10-15 03:00	549	2
7693	2013-10-15 03:00	500	8
7694	2013-10-15 04:00	902	4
7695	2013-10-15 04:00	900	246
7696	2013-10-15 04:00	916	18
7697	2013-10-15 04:00	904	18
7698	2013-10-15 04:00	3548	2
7699	2013-10-15 04:00	926	3
7700	2013-10-15 04:00	110	2
7701	2013-10-15 04:00	922	4
7702	2013-10-15 04:00	549	1
7703	2013-10-15 04:00	500	8
7704	2013-10-15 05:00	902	5
7705	2013-10-15 05:00	150	40
7706	2013-10-15 05:00	900	352
7707	2013-10-15 05:00	904	43
7708	2013-10-15 05:00	3548	6
7709	2013-10-15 05:00	110	7
7710	2013-10-15 05:00	920	7
7711	2013-10-15 05:00	916	26
7712	2013-10-15 05:00	502	6
7713	2013-10-15 05:00	500	9
7714	2013-10-15 06:00	902	70
7715	2013-10-15 06:00	150	91
7716	2013-10-15 06:00	900	2910
7717	2013-10-15 06:00	904	72
7718	2013-10-15 06:00	926	64
7719	2013-10-15 06:00	110	8
7720	2013-10-15 06:00	920	7
7721	2013-10-15 06:00	917	25
7722	2013-10-15 06:00	916	98
7723	2013-10-15 06:00	500	8
7724	2013-10-15 07:00	902	112
7725	2013-10-15 07:00	150	69
7726	2013-10-15 07:00	900	3240
7727	2013-10-15 07:00	907	35
7728	2013-10-15 07:00	904	139
7729	2013-10-15 07:00	110	16
7730	2013-10-15 07:00	917	13
7731	2013-10-15 07:00	916	160
7732	2013-10-15 07:00	922	65
7733	2013-10-15 07:00	926	38
7734	2013-10-15 08:00	902	65
7735	2013-10-15 08:00	903	38
7736	2013-10-15 08:00	900	5053
7737	2013-10-15 08:00	904	242
7738	2013-10-15 08:00	150	96
7739	2013-10-15 08:00	919	21
7740	2013-10-15 08:00	110	39
7741	2013-10-15 08:00	917	66
7742	2013-10-15 08:00	916	404
7743	2013-10-15 08:00	926	141
7744	2013-10-15 09:00	902	166
7745	2013-10-15 09:00	903	89
7746	2013-10-15 09:00	900	7059
7747	2013-10-15 09:00	904	389
7748	2013-10-15 09:00	150	441
7749	2013-10-15 09:00	110	51
7750	2013-10-15 09:00	917	160
7751	2013-10-15 09:00	916	857
7752	2013-10-15 09:00	922	85
7753	2013-10-15 09:00	926	309
7754	2013-10-15 10:00	902	628
7755	2013-10-15 10:00	903	128
7756	2013-10-15 10:00	900	9709
7757	2013-10-15 10:00	904	712
7758	2013-10-15 10:00	905	151
7759	2013-10-15 10:00	150	844
7760	2013-10-15 10:00	110	127
7761	2013-10-15 10:00	917	423
7762	2013-10-15 10:00	916	1416
7763	2013-10-15 10:00	926	1142
7764	2013-10-15 11:00	902	630
7765	2013-10-15 11:00	150	1368
7766	2013-10-15 11:00	900	12064
7767	2013-10-15 11:00	904	811
7768	2013-10-15 11:00	905	315
7769	2013-10-15 11:00	110	119
7770	2013-10-15 11:00	917	400
7771	2013-10-15 11:00	916	1775
7772	2013-10-15 11:00	922	179
7773	2013-10-15 11:00	926	1402
7774	2013-10-15 12:00	902	767
7775	2013-10-15 12:00	903	183
7776	2013-10-15 12:00	900	12606
7777	2013-10-15 12:00	904	1186
7778	2013-10-15 12:00	905	348
7779	2013-10-15 12:00	150	1100
7780	2013-10-15 12:00	917	417
7781	2013-10-15 12:00	916	2096
7782	2013-10-15 12:00	922	352
7783	2013-10-15 12:00	926	1417
7784	2013-10-15 13:00	902	647
7785	2013-10-15 13:00	903	229
7786	2013-10-15 13:00	900	12991
7787	2013-10-15 13:00	904	1238
7788	2013-10-15 13:00	905	175
7789	2013-10-15 13:00	150	1249
7790	2013-10-15 13:00	917	504
7791	2013-10-15 13:00	916	2010
7792	2013-10-15 13:00	922	431
7793	2013-10-15 13:00	926	1429
7794	2013-10-15 14:00	902	690
7795	2013-10-15 14:00	150	805
7796	2013-10-15 14:00	900	13530
7797	2013-10-15 14:00	904	2220
7798	2013-10-15 14:00	905	209
7799	2013-10-15 14:00	919	246
7800	2013-10-15 14:00	917	686
7801	2013-10-15 14:00	916	4048
7802	2013-10-15 14:00	922	1319
7803	2013-10-15 14:00	926	1275
7804	2013-10-15 15:00	902	606
7805	2013-10-15 15:00	150	1687
7806	2013-10-15 15:00	900	11610
7807	2013-10-15 15:00	904	1486
7808	2013-10-15 15:00	905	275
7809	2013-10-15 15:00	110	146
7810	2013-10-15 15:00	917	457
7811	2013-10-15 15:00	916	2624
7812	2013-10-15 15:00	922	612
7813	2013-10-15 15:00	926	1364
7814	2013-10-15 16:00	902	548
7815	2013-10-15 16:00	150	1429
7816	2013-10-15 16:00	900	11401
7817	2013-10-15 16:00	904	1177
7818	2013-10-15 16:00	905	207
7819	2013-10-15 16:00	110	174
7820	2013-10-15 16:00	917	339
7821	2013-10-15 16:00	916	1959
7822	2013-10-15 16:00	922	335
7823	2013-10-15 16:00	926	1134
7824	2013-10-15 17:00	902	469
7825	2013-10-15 17:00	903	221
7826	2013-10-15 17:00	900	10578
7827	2013-10-15 17:00	904	916
7828	2013-10-15 17:00	905	157
7829	2013-10-15 17:00	150	956
7830	2013-10-15 17:00	917	256
7831	2013-10-15 17:00	916	1355
7832	2013-10-15 17:00	922	373
7833	2013-10-15 17:00	926	906
7834	2013-10-15 18:00	902	354
7835	2013-10-15 18:00	903	247
7836	2013-10-15 18:00	900	11039
7837	2013-10-15 18:00	904	847
7838	2013-10-15 18:00	150	265
7839	2013-10-15 18:00	921	206
7840	2013-10-15 18:00	917	373
7841	2013-10-15 18:00	916	3150
7842	2013-10-15 18:00	922	257
7843	2013-10-15 18:00	926	713
7844	2013-10-15 19:00	902	345
7845	2013-10-15 19:00	903	215
7846	2013-10-15 19:00	900	9020
7847	2013-10-15 19:00	904	648
7848	2013-10-15 19:00	150	286
7849	2013-10-15 19:00	919	76
7850	2013-10-15 19:00	917	408
7851	2013-10-15 19:00	916	2075
7852	2013-10-15 19:00	922	437
7853	2013-10-15 19:00	926	704
7854	2013-10-15 21:00	902	108
7855	2013-10-15 21:00	150	361
7856	2013-10-15 21:00	900	5860
7857	2013-10-15 21:00	916	506
7858	2013-10-15 21:00	904	170
7859	2013-10-15 21:00	919	78
7860	2013-10-15 21:00	110	108
7861	2013-10-15 21:00	917	147
7862	2013-10-15 21:00	930	50
7863	2013-10-15 21:00	926	274
7864	2013-10-15 22:00	902	302
7865	2013-10-15 22:00	150	1019
7866	2013-10-15 22:00	900	4031
7867	2013-10-15 22:00	904	180
7868	2013-10-15 22:00	919	34
7869	2013-10-15 22:00	110	36
7870	2013-10-15 22:00	917	152
7871	2013-10-15 22:00	916	296
7872	2013-10-15 22:00	922	30
7873	2013-10-15 22:00	926	277
7874	2013-10-15 23:00	902	97
7875	2013-10-15 23:00	903	25
7876	2013-10-15 23:00	900	2048
7877	2013-10-15 23:00	904	154
7878	2013-10-15 23:00	150	26
7879	2013-10-15 23:00	926	268
7880	2013-10-15 23:00	110	19
7881	2013-10-15 23:00	917	108
7882	2013-10-15 23:00	916	164
7883	2013-10-15 23:00	500	13
7884	2013-10-16 00:00	902	21
7885	2013-10-16 00:00	150	14
7886	2013-10-16 00:00	900	941
7887	2013-10-16 00:00	904	46
7888	2013-10-16 00:00	3548	16
7889	2013-10-16 00:00	917	18
7890	2013-10-16 00:00	916	86
7891	2013-10-16 00:00	502	11
7892	2013-10-16 00:00	922	69
7893	2013-10-16 00:00	926	48
7894	2013-10-16 01:00	902	21
7895	2013-10-16 01:00	903	9
7896	2013-10-16 01:00	900	436
7897	2013-10-16 01:00	904	46
7898	2013-10-16 01:00	3548	7
7899	2013-10-16 01:00	917	20
7900	2013-10-16 01:00	916	39
7901	2013-10-16 01:00	502	7
7902	2013-10-16 01:00	922	23
7903	2013-10-16 01:00	926	59
7904	2013-10-16 02:00	902	11
7905	2013-10-16 02:00	900	230
7906	2013-10-16 02:00	904	21
7907	2013-10-16 02:00	3548	8
7908	2013-10-16 02:00	926	14
7909	2013-10-16 02:00	917	29
7910	2013-10-16 02:00	916	23
7911	2013-10-16 02:00	502	8
7912	2013-10-16 02:00	922	8
7913	2013-10-16 02:00	500	6
7914	2013-10-16 03:00	902	36
7915	2013-10-16 03:00	900	167
7916	2013-10-16 03:00	904	12
7917	2013-10-16 03:00	3548	3
7918	2013-10-16 03:00	926	16
7919	2013-10-16 03:00	917	3
7920	2013-10-16 03:00	916	12
7921	2013-10-16 03:00	502	3
7922	2013-10-16 03:00	500	8
7923	2013-10-16 03:00	912	2
7924	2013-10-16 04:00	902	10
7925	2013-10-16 04:00	900	162
7926	2013-10-16 04:00	904	9
7927	2013-10-16 04:00	3548	7
7928	2013-10-16 04:00	926	3
7929	2013-10-16 04:00	917	9
7930	2013-10-16 04:00	916	5
7931	2013-10-16 04:00	502	6
7932	2013-10-16 04:00	922	4
7933	2013-10-16 04:00	500	8
7934	2013-10-16 05:00	902	13
7935	2013-10-16 05:00	150	138
7936	2013-10-16 05:00	900	379
7937	2013-10-16 05:00	904	44
7938	2013-10-16 05:00	3548	9
7939	2013-10-16 05:00	926	9
7940	2013-10-16 05:00	922	9
7941	2013-10-16 05:00	916	24
7942	2013-10-16 05:00	502	9
7943	2013-10-16 05:00	500	6
7944	2013-10-16 06:00	902	100
7945	2013-10-16 06:00	150	190
7946	2013-10-16 06:00	900	3052
7947	2013-10-16 06:00	904	55
7948	2013-10-16 06:00	3548	8
7949	2013-10-16 06:00	926	18
7950	2013-10-16 06:00	110	8
7951	2013-10-16 06:00	916	100
7952	2013-10-16 06:00	502	8
7953	2013-10-16 06:00	500	8
7954	2013-10-16 07:00	902	18
7955	2013-10-16 07:00	150	116
7956	2013-10-16 07:00	900	3438
7957	2013-10-16 07:00	916	142
7958	2013-10-16 07:00	904	62
7959	2013-10-16 07:00	110	12
7960	2013-10-16 07:00	917	17
7961	2013-10-16 07:00	549	13
7962	2013-10-16 07:00	922	26
7963	2013-10-16 07:00	926	35
7964	2013-10-16 08:00	902	100
7965	2013-10-16 08:00	903	20
7966	2013-10-16 08:00	900	5358
7967	2013-10-16 08:00	904	176
7968	2013-10-16 08:00	150	41
7969	2013-10-16 08:00	919	25
7970	2013-10-16 08:00	110	26
7971	2013-10-16 08:00	917	65
7972	2013-10-16 08:00	916	299
7973	2013-10-16 08:00	926	120
7974	2013-10-16 09:00	902	184
7975	2013-10-16 09:00	903	53
7976	2013-10-16 09:00	900	7150
7977	2013-10-16 09:00	904	308
7978	2013-10-16 09:00	150	423
7979	2013-10-16 09:00	110	43
7980	2013-10-16 09:00	917	93
7981	2013-10-16 09:00	916	625
7982	2013-10-16 09:00	922	24
7983	2013-10-16 09:00	926	471
7984	2013-10-16 10:00	902	354
7985	2013-10-16 10:00	903	103
7986	2013-10-16 10:00	900	9622
7987	2013-10-16 10:00	904	677
7988	2013-10-16 10:00	905	63
7989	2013-10-16 10:00	150	527
7990	2013-10-16 10:00	110	86
7991	2013-10-16 10:00	917	444
7992	2013-10-16 10:00	916	1245
7993	2013-10-16 10:00	926	1056
7994	2013-10-16 11:00	902	453
7995	2013-10-16 11:00	150	438
7996	2013-10-16 11:00	900	11014
7997	2013-10-16 11:00	904	791
7998	2013-10-16 11:00	905	140
7999	2013-10-16 11:00	110	122
8000	2013-10-16 11:00	917	399
8001	2013-10-16 11:00	916	1571
8002	2013-10-16 11:00	922	166
8003	2013-10-16 11:00	926	1079
8004	2013-10-16 12:00	902	411
8005	2013-10-16 12:00	903	140
8006	2013-10-16 12:00	900	11778
8007	2013-10-16 12:00	904	695
8008	2013-10-16 12:00	905	178
8009	2013-10-16 12:00	150	456
8010	2013-10-16 12:00	917	301
8011	2013-10-16 12:00	916	1507
8012	2013-10-16 12:00	922	161
8013	2013-10-16 12:00	926	888
8014	2013-10-16 13:00	902	355
8015	2013-10-16 13:00	903	171
8016	2013-10-16 13:00	900	11224
8017	2013-10-16 13:00	904	682
8018	2013-10-16 13:00	905	163
8019	2013-10-16 13:00	150	677
8020	2013-10-16 13:00	917	257
8021	2013-10-16 13:00	916	1295
8022	2013-10-16 13:00	922	222
8023	2013-10-16 13:00	926	796
8024	2013-10-16 14:00	902	283
8025	2013-10-16 14:00	903	132
8026	2013-10-16 14:00	900	8952
8027	2013-10-16 14:00	904	632
8028	2013-10-16 14:00	150	451
8029	2013-10-16 14:00	926	719
8030	2013-10-16 14:00	110	87
8031	2013-10-16 14:00	917	177
8032	2013-10-16 14:00	916	1217
8033	2013-10-16 14:00	500	94
8034	2013-10-16 15:00	902	316
8035	2013-10-16 15:00	903	105
8036	2013-10-16 15:00	900	8868
8037	2013-10-16 15:00	904	858
8038	2013-10-16 15:00	905	182
8039	2013-10-16 15:00	150	319
8040	2013-10-16 15:00	917	210
8041	2013-10-16 15:00	916	1380
8042	2013-10-16 15:00	922	254
8043	2013-10-16 15:00	926	767
8044	2013-10-16 16:00	902	248
8045	2013-10-16 16:00	150	1174
8046	2013-10-16 16:00	900	8352
8047	2013-10-16 16:00	904	764
8048	2013-10-16 16:00	905	153
8049	2013-10-16 16:00	926	852
8050	2013-10-16 16:00	917	267
8051	2013-10-16 16:00	916	1287
8052	2013-10-16 16:00	922	161
8053	2013-10-16 16:00	500	78
8054	2013-10-16 17:00	902	248
8055	2013-10-16 17:00	150	1889
8056	2013-10-16 17:00	900	9560
8057	2013-10-16 17:00	904	617
8058	2013-10-16 17:00	926	1082
8059	2013-10-16 17:00	110	112
8060	2013-10-16 17:00	917	403
8061	2013-10-16 17:00	916	1389
8062	2013-10-16 17:00	922	131
8063	2013-10-16 17:00	500	74
8064	2013-10-16 18:00	902	216
8065	2013-10-16 18:00	150	360
8066	2013-10-16 18:00	900	8890
8067	2013-10-16 18:00	904	445
8068	2013-10-16 18:00	926	761
8069	2013-10-16 18:00	110	106
8070	2013-10-16 18:00	917	341
8071	2013-10-16 18:00	916	1103
8072	2013-10-16 18:00	922	93
8073	2013-10-16 18:00	500	70
8074	2013-10-16 19:00	902	198
8075	2013-10-16 19:00	150	178
8076	2013-10-16 19:00	900	9211
8077	2013-10-16 19:00	916	1193
8078	2013-10-16 19:00	904	256
8079	2013-10-16 19:00	926	580
8080	2013-10-16 19:00	110	114
8081	2013-10-16 19:00	917	370
8082	2013-10-16 19:00	930	56
8083	2013-10-16 19:00	500	29
8084	2013-10-16 20:00	902	112
8085	2013-10-16 20:00	150	190
8086	2013-10-16 20:00	900	6977
8087	2013-10-16 20:00	916	607
8088	2013-10-16 20:00	904	196
8089	2013-10-16 20:00	110	58
8090	2013-10-16 20:00	917	169
8091	2013-10-16 20:00	930	61
8092	2013-10-16 20:00	922	34
8093	2013-10-16 20:00	926	447
8094	2013-10-16 21:00	902	128
8095	2013-10-16 21:00	903	34
8096	2013-10-16 21:00	900	5401
8097	2013-10-16 21:00	916	427
8098	2013-10-16 21:00	904	215
8099	2013-10-16 21:00	150	172
8100	2013-10-16 21:00	110	36
8101	2013-10-16 21:00	917	209
8102	2013-10-16 21:00	930	57
8103	2013-10-16 21:00	926	350
8104	2013-10-16 22:00	902	133
8105	2013-10-16 22:00	150	67
8106	2013-10-16 22:00	900	3970
8107	2013-10-16 22:00	916	315
8108	2013-10-16 22:00	904	130
8109	2013-10-16 22:00	110	27
8110	2013-10-16 22:00	917	244
8111	2013-10-16 22:00	930	22
8112	2013-10-16 22:00	922	30
8113	2013-10-16 22:00	926	491
8114	2013-10-16 23:00	902	28
8115	2013-10-16 23:00	150	87
8116	2013-10-16 23:00	900	2260
8117	2013-10-16 23:00	904	178
8118	2013-10-16 23:00	926	183
8119	2013-10-16 23:00	110	29
8120	2013-10-16 23:00	917	85
8121	2013-10-16 23:00	916	250
8122	2013-10-16 23:00	922	29
8123	2013-10-16 23:00	500	9
8124	2013-10-17 00:00	902	10
8125	2013-10-17 00:00	900	946
8126	2013-10-17 00:00	904	91
8127	2013-10-17 00:00	926	20
8128	2013-10-17 00:00	919	8
8129	2013-10-17 00:00	110	13
8130	2013-10-17 00:00	917	30
8131	2013-10-17 00:00	916	101
8132	2013-10-17 00:00	922	33
8133	2013-10-17 00:00	500	16
8134	2013-10-17 02:00	902	4
8135	2013-10-17 02:00	903	5
8136	2013-10-17 02:00	900	145
8137	2013-10-17 02:00	904	72
8138	2013-10-17 02:00	703	182
8139	2013-10-17 02:00	917	6
8140	2013-10-17 02:00	916	62
8141	2013-10-17 02:00	922	49
8142	2013-10-17 02:00	935	3
8143	2013-10-17 02:00	912	2
8144	2013-10-17 03:00	902	4
8145	2013-10-17 03:00	900	187
8146	2013-10-17 03:00	904	30
8147	2013-10-17 03:00	3548	4
8148	2013-10-17 03:00	110	3
8149	2013-10-17 03:00	917	4
8150	2013-10-17 03:00	916	17
8151	2013-10-17 03:00	502	4
8152	2013-10-17 03:00	922	8
8153	2013-10-17 03:00	500	9
8154	2013-10-17 04:00	150	3
8155	2013-10-17 04:00	900	161
8156	2013-10-17 04:00	904	19
8157	2013-10-17 04:00	3548	4
8158	2013-10-17 04:00	926	3
8159	2013-10-17 04:00	110	4
8160	2013-10-17 04:00	917	4
8161	2013-10-17 04:00	916	14
8162	2013-10-17 04:00	502	4
8163	2013-10-17 04:00	500	8
8164	2013-10-17 05:00	902	11
8165	2013-10-17 05:00	150	78
8166	2013-10-17 05:00	900	527
8167	2013-10-17 05:00	904	40
8168	2013-10-17 05:00	926	5
8169	2013-10-17 05:00	1548	1
8170	2013-10-17 05:00	110	4
8171	2013-10-17 05:00	917	6
8172	2013-10-17 05:00	916	21
8173	2013-10-17 05:00	500	8
8174	2013-10-17 06:00	902	35
8175	2013-10-17 06:00	150	97
8176	2013-10-17 06:00	900	3164
8177	2013-10-17 06:00	904	50
8178	2013-10-17 06:00	926	35
8179	2013-10-17 06:00	110	10
8180	2013-10-17 06:00	917	47
8181	2013-10-17 06:00	916	95
8182	2013-10-17 06:00	922	8
8183	2013-10-17 06:00	500	13
8184	2013-10-17 07:00	902	35
8185	2013-10-17 07:00	150	51
8186	2013-10-17 07:00	900	3542
8187	2013-10-17 07:00	904	68
8188	2013-10-17 07:00	3548	10
8189	2013-10-17 07:00	926	77
8190	2013-10-17 07:00	110	19
8191	2013-10-17 07:00	917	49
8192	2013-10-17 07:00	916	152
8193	2013-10-17 07:00	500	10
8194	2013-10-17 08:00	902	66
8195	2013-10-17 08:00	150	73
8196	2013-10-17 08:00	900	5224
8197	2013-10-17 08:00	904	137
8198	2013-10-17 08:00	110	32
8199	2013-10-17 08:00	914	33
8200	2013-10-17 08:00	917	99
8201	2013-10-17 08:00	916	356
8202	2013-10-17 08:00	922	67
8203	2013-10-17 08:00	926	135
8204	2013-10-17 09:00	902	199
8205	2013-10-17 09:00	903	51
8206	2013-10-17 09:00	900	7018
8207	2013-10-17 09:00	904	335
8208	2013-10-17 09:00	150	447
8209	2013-10-17 09:00	110	50
8210	2013-10-17 09:00	917	161
8211	2013-10-17 09:00	916	722
8212	2013-10-17 09:00	922	61
8213	2013-10-17 09:00	926	482
8214	2013-10-17 10:00	902	480
8215	2013-10-17 10:00	903	127
8216	2013-10-17 10:00	900	10101
8217	2013-10-17 10:00	904	519
8218	2013-10-17 10:00	905	104
8219	2013-10-17 10:00	150	888
8220	2013-10-17 10:00	110	138
8221	2013-10-17 10:00	917	416
8222	2013-10-17 10:00	916	1477
8223	2013-10-17 10:00	926	1146
8224	2013-10-17 11:00	902	648
8225	2013-10-17 11:00	903	228
8226	2013-10-17 11:00	900	12609
8227	2013-10-17 11:00	904	903
8228	2013-10-17 11:00	905	193
8229	2013-10-17 11:00	150	1077
8230	2013-10-17 11:00	917	329
8231	2013-10-17 11:00	916	1797
8232	2013-10-17 11:00	922	237
8233	2013-10-17 11:00	926	1575
8234	2013-10-17 12:00	902	964
8235	2013-10-17 12:00	903	183
8236	2013-10-17 12:00	900	12282
8237	2013-10-17 12:00	904	706
8238	2013-10-17 12:00	905	218
8239	2013-10-17 12:00	150	2164
8240	2013-10-17 12:00	110	205
8241	2013-10-17 12:00	917	323
8242	2013-10-17 12:00	916	1773
8243	2013-10-17 12:00	926	1836
8244	2013-10-17 13:00	902	540
8245	2013-10-17 13:00	150	740
8246	2013-10-17 13:00	900	11827
8247	2013-10-17 13:00	904	828
8248	2013-10-17 13:00	905	169
8249	2013-10-17 13:00	110	141
8250	2013-10-17 13:00	917	804
8251	2013-10-17 13:00	916	1704
8252	2013-10-17 13:00	922	180
8253	2013-10-17 13:00	926	2150
8254	2013-10-17 14:00	902	506
8255	2013-10-17 14:00	903	161
8256	2013-10-17 14:00	900	11609
8257	2013-10-17 14:00	904	898
8258	2013-10-17 14:00	905	162
8259	2013-10-17 14:00	150	1587
8260	2013-10-17 14:00	917	444
8261	2013-10-17 14:00	916	1700
8262	2013-10-17 14:00	922	197
8263	2013-10-17 14:00	926	1666
8264	2013-10-17 15:00	902	532
8265	2013-10-17 15:00	150	667
8266	2013-10-17 15:00	900	11753
8267	2013-10-17 15:00	904	1025
8268	2013-10-17 15:00	905	203
8269	2013-10-17 15:00	110	144
8270	2013-10-17 15:00	917	428
8271	2013-10-17 15:00	916	1829
8272	2013-10-17 15:00	922	183
8273	2013-10-17 15:00	926	1660
8274	2013-10-17 16:00	902	454
8275	2013-10-17 16:00	150	1480
8276	2013-10-17 16:00	900	11934
8277	2013-10-17 16:00	904	1333
8278	2013-10-17 16:00	905	191
8279	2013-10-17 16:00	919	160
8280	2013-10-17 16:00	917	481
8281	2013-10-17 16:00	916	2465
8282	2013-10-17 16:00	922	625
8283	2013-10-17 16:00	926	1588
8284	2013-10-17 17:00	902	372
8285	2013-10-17 17:00	903	110
8286	2013-10-17 17:00	900	9825
8287	2013-10-17 17:00	904	1002
8288	2013-10-17 17:00	905	148
8289	2013-10-17 17:00	150	474
8290	2013-10-17 17:00	917	447
8291	2013-10-17 17:00	916	2028
8292	2013-10-17 17:00	922	501
8293	2013-10-17 17:00	926	1308
8294	2013-10-17 18:00	902	167
8295	2013-10-17 18:00	150	277
8296	2013-10-17 18:00	900	9392
8297	2013-10-17 18:00	904	369
8298	2013-10-17 18:00	919	54
8299	2013-10-17 18:00	110	107
8300	2013-10-17 18:00	917	384
8301	2013-10-17 18:00	916	1079
8302	2013-10-17 18:00	922	100
8303	2013-10-17 18:00	926	1101
8304	2013-10-17 19:00	902	255
8305	2013-10-17 19:00	150	298
8306	2013-10-17 19:00	900	9272
8307	2013-10-17 19:00	907	81
8308	2013-10-17 19:00	904	365
8309	2013-10-17 19:00	926	748
8310	2013-10-17 19:00	110	86
8311	2013-10-17 19:00	917	335
8312	2013-10-17 19:00	916	945
8313	2013-10-17 19:00	500	87
8314	2013-10-17 20:00	902	116
8315	2013-10-17 20:00	903	48
8316	2013-10-17 20:00	900	8085
8317	2013-10-17 20:00	904	272
8318	2013-10-17 20:00	150	143
8319	2013-10-17 20:00	919	111
8320	2013-10-17 20:00	110	61
8321	2013-10-17 20:00	917	467
8322	2013-10-17 20:00	916	584
8323	2013-10-17 20:00	926	556
8324	2013-10-17 21:00	902	106
8325	2013-10-17 21:00	150	220
8326	2013-10-17 21:00	900	5829
8327	2013-10-17 21:00	916	577
8328	2013-10-17 21:00	904	245
8329	2013-10-17 21:00	110	62
8330	2013-10-17 21:00	917	430
8331	2013-10-17 21:00	930	43
8332	2013-10-17 21:00	922	43
8333	2013-10-17 21:00	926	415
8334	2013-10-17 22:00	902	82
8335	2013-10-17 22:00	150	193
8336	2013-10-17 22:00	900	4231
8337	2013-10-17 22:00	916	428
8338	2013-10-17 22:00	904	217
8339	2013-10-17 22:00	110	46
8340	2013-10-17 22:00	917	348
8341	2013-10-17 22:00	930	30
8342	2013-10-17 22:00	922	37
8343	2013-10-17 22:00	926	499
8344	2013-10-17 23:00	902	65
8345	2013-10-17 23:00	903	28
8346	2013-10-17 23:00	900	2100
8347	2013-10-17 23:00	904	212
8348	2013-10-17 23:00	150	24
8349	2013-10-17 23:00	110	22
8350	2013-10-17 23:00	917	146
8351	2013-10-17 23:00	916	199
8352	2013-10-17 23:00	922	19
8353	2013-10-17 23:00	926	225
8354	2013-10-18 00:00	902	45
8355	2013-10-18 00:00	900	1110
8356	2013-10-18 00:00	904	83
8357	2013-10-18 00:00	926	58
8358	2013-10-18 00:00	922	19
8359	2013-10-18 00:00	110	8
8360	2013-10-18 00:00	917	33
8361	2013-10-18 00:00	916	105
8362	2013-10-18 00:00	936	13
8363	2013-10-18 00:00	500	14
8364	2013-10-18 01:00	902	33
8365	2013-10-18 01:00	900	631
8366	2013-10-18 01:00	904	85
8367	2013-10-18 01:00	3548	7
8368	2013-10-18 01:00	926	31
8369	2013-10-18 01:00	917	30
8370	2013-10-18 01:00	916	33
8371	2013-10-18 01:00	502	7
8372	2013-10-18 01:00	936	10
8373	2013-10-18 01:00	500	9
8374	2013-10-18 02:00	903	11
8375	2013-10-18 02:00	900	256
8376	2013-10-18 02:00	907	4
8377	2013-10-18 02:00	904	15
8378	2013-10-18 02:00	3548	2
8379	2013-10-18 02:00	926	6
8380	2013-10-18 02:00	922	2
8381	2013-10-18 02:00	916	28
8382	2013-10-18 02:00	502	2
8383	2013-10-18 02:00	500	9
8384	2013-10-18 03:00	902	5
8385	2013-10-18 03:00	900	208
8386	2013-10-18 03:00	907	36
8387	2013-10-18 03:00	904	22
8388	2013-10-18 03:00	3548	6
8389	2013-10-18 03:00	926	20
8390	2013-10-18 03:00	922	61
8391	2013-10-18 03:00	916	37
8392	2013-10-18 03:00	502	7
8393	2013-10-18 03:00	500	9
8394	2013-10-18 04:00	902	2
8395	2013-10-18 04:00	150	1
8396	2013-10-18 04:00	900	221
8397	2013-10-18 04:00	904	15
8398	2013-10-18 04:00	0	2
8399	2013-10-18 04:00	926	5
8400	2013-10-18 04:00	917	2
8401	2013-10-18 04:00	916	11
8402	2013-10-18 04:00	922	32
8403	2013-10-18 04:00	500	8
8404	2013-10-18 05:00	902	14
8405	2013-10-18 05:00	150	92
8406	2013-10-18 05:00	900	486
8407	2013-10-18 05:00	904	22
8408	2013-10-18 05:00	3548	3
8409	2013-10-18 05:00	926	10
8410	2013-10-18 05:00	110	1
8411	2013-10-18 05:00	916	26
8412	2013-10-18 05:00	502	3
8413	2013-10-18 05:00	500	8
8414	2013-10-18 06:00	902	35
8415	2013-10-18 06:00	150	148
8416	2013-10-18 06:00	900	2940
8417	2013-10-18 06:00	907	38
8418	2013-10-18 06:00	904	56
8419	2013-10-18 06:00	110	11
8420	2013-10-18 06:00	917	19
8421	2013-10-18 06:00	916	116
8422	2013-10-18 06:00	922	77
8423	2013-10-18 06:00	926	14
8424	2013-10-18 07:00	902	34
8425	2013-10-18 07:00	150	113
8426	2013-10-18 07:00	900	3877
8427	2013-10-18 07:00	904	55
8428	2013-10-18 07:00	3548	8
8429	2013-10-18 07:00	926	76
8430	2013-10-18 07:00	110	15
8431	2013-10-18 07:00	917	16
8432	2013-10-18 07:00	916	168
8433	2013-10-18 07:00	500	10
8434	2013-10-18 08:00	902	64
8435	2013-10-18 08:00	150	71
8436	2013-10-18 08:00	900	5135
8437	2013-10-18 08:00	904	186
8438	2013-10-18 08:00	909	41
8439	2013-10-18 08:00	110	29
8440	2013-10-18 08:00	917	51
8441	2013-10-18 08:00	916	319
8442	2013-10-18 08:00	922	21
8443	2013-10-18 08:00	926	164
8444	2013-10-18 09:00	902	201
8445	2013-10-18 09:00	903	54
8446	2013-10-18 09:00	900	7411
8447	2013-10-18 09:00	904	336
8448	2013-10-18 09:00	150	630
8449	2013-10-18 09:00	110	63
8450	2013-10-18 09:00	917	147
8451	2013-10-18 09:00	916	807
8452	2013-10-18 09:00	922	75
8453	2013-10-18 09:00	926	417
8454	2013-10-18 10:00	902	581
8455	2013-10-18 10:00	150	1306
8456	2013-10-18 10:00	900	9974
8457	2013-10-18 10:00	904	558
8458	2013-10-18 10:00	905	106
8459	2013-10-18 10:00	110	135
8460	2013-10-18 10:00	917	391
8461	2013-10-18 10:00	916	1311
8462	2013-10-18 10:00	922	69
8463	2013-10-18 10:00	926	1367
8464	2013-10-18 11:00	902	559
8465	2013-10-18 11:00	150	912
8466	2013-10-18 11:00	900	11555
8467	2013-10-18 11:00	904	639
8468	2013-10-18 11:00	905	236
8469	2013-10-18 11:00	926	1619
8470	2013-10-18 11:00	110	143
8471	2013-10-18 11:00	917	404
8472	2013-10-18 11:00	916	1688
8473	2013-10-18 11:00	500	123
8474	2013-10-18 12:00	902	993
8475	2013-10-18 12:00	903	308
8476	2013-10-18 12:00	900	13599
8477	2013-10-18 12:00	904	844
8478	2013-10-18 12:00	150	2343
8479	2013-10-18 12:00	110	204
8480	2013-10-18 12:00	917	674
8481	2013-10-18 12:00	916	1949
8482	2013-10-18 12:00	922	587
8483	2013-10-18 12:00	926	2402
8484	2013-10-18 13:00	902	530
8485	2013-10-18 13:00	150	609
8486	2013-10-18 13:00	900	12484
8487	2013-10-18 13:00	904	753
8488	2013-10-18 13:00	905	160
8489	2013-10-18 13:00	926	1502
8490	2013-10-18 13:00	110	131
8491	2013-10-18 13:00	917	447
8492	2013-10-18 13:00	916	1449
8493	2013-10-18 13:00	500	133
8494	2013-10-18 14:00	902	545
8495	2013-10-18 14:00	150	453
8496	2013-10-18 14:00	900	12548
8497	2013-10-18 14:00	904	833
8498	2013-10-18 14:00	905	175
8499	2013-10-18 14:00	110	145
8500	2013-10-18 14:00	917	337
8501	2013-10-18 14:00	916	1561
8502	2013-10-18 14:00	922	229
8503	2013-10-18 14:00	926	1415
8504	2013-10-18 15:00	902	463
8505	2013-10-18 15:00	150	407
8506	2013-10-18 15:00	900	11409
8507	2013-10-18 15:00	904	1014
8508	2013-10-18 15:00	905	157
8509	2013-10-18 15:00	919	239
8510	2013-10-18 15:00	917	340
8511	2013-10-18 15:00	916	1406
8512	2013-10-18 15:00	922	160
8513	2013-10-18 15:00	926	1244
8514	2013-11-08 05:00	902	90
8515	2013-11-08 05:00	150	21
8516	2013-11-08 05:00	900	322
8517	2013-11-08 05:00	907	1
8518	2013-11-08 05:00	904	56
8519	2013-11-08 05:00	110	1
8520	2013-11-08 05:00	916	10
8521	2013-11-08 05:00	912	2
\.


--
-- Data for Name: kconfig_machineinfo; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY kconfig_machineinfo (id, location_id, machine_ip, freeswitch, database, incalld, outcalld, preprocessd, postprocessd, krpycd, krpycd_incalld, monit, redis, rabbitmq, apache) FROM stdin;
2	gurgaon	10.0.0.11	t	f	f	f	t	f	t	f	f	t	f	t
3	gurgaon	10.0.0.12	t	f	f	f	t	f	t	f	f	f	f	f
4	gurgaon	10.0.0.13	t	f	f	f	t	f	t	f	f	f	f	f
5	gurgaon	10.0.0.14	t	f	f	f	t	f	t	f	f	f	f	f
6	delhi	10.0.0.11	f	f	f	f	t	t	t	f	f	t	f	f
7	delhi	10.0.0.13	t	f	f	f	t	f	t	f	f	f	t	f
8	delhi	10.0.0.13	f	f	f	f	t	f	t	f	f	f	f	f
9	mumbai	10.0.0.11	t	f	f	f	t	f	t	f	f	f	f	f
10	mumbai	10.0.0.13	f	f	f	f	t	f	t	f	f	f	t	f
11	mumbai	10.0.0.12	t	f	f	f	f	f	f	f	f	f	f	f
12	pune	10.0.1.11	t	f	f	f	t	f	t	f	f	f	f	f
13	pune	10.0.1.12	f	f	f	f	t	t	t	f	f	f	f	f
14	10.60.20.37	localhost	f	f	f	f	f	f	f	f	f	f	f	f
15	10.60.20.37	localhost	f	f	f	f	f	f	f	f	f	f	f	f
16	10.60.20.37	localhost	f	f	f	f	f	f	f	f	f	f	f	f
17	10.60.20.37	localhost	f	f	f	f	f	f	f	f	f	f	f	f
\.


--
-- Data for Name: kconfig_selftestresults; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY kconfig_selftestresults (id, selftest_type, number_associated, result, totalcalls, successcalls, failcalls, result_time) FROM stdin;
11571	INCOMING	30997600	t	2	2	0	2013-08-29 01:31:08.92734+05:30
11572	INCOMING	46208600	t	2	2	0	2013-08-29 01:31:08.949749+05:30
11573	INCOMING	66448400	t	2	4	0	2013-08-29 01:31:08.953474+05:30
11574	INCOMING	33608900	t	2	4	0	2013-08-29 01:31:08.957831+05:30
11575	INCOMING	30147000	t	2	4	0	2013-08-29 01:31:08.961458+05:30
11576	INCOMING	30571500	t	2	2	0	2013-08-29 01:31:08.965602+05:30
11577	INCOMING	49425400	t	2	4	0	2013-08-29 01:31:08.969791+05:30
11578	INCOMING	43139800	t	2	2	0	2013-08-29 01:31:08.973833+05:30
11579	INCOMING	66477700	t	2	2	0	2013-08-29 01:31:08.977774+05:30
11580	INCOMING	46204100	t	2	2	0	2013-08-29 01:31:08.981871+05:30
11581	INCOMING	39840700	t	2	2	0	2013-08-29 01:31:08.985473+05:30
11582	INCOMING	43790200	t	2	2	0	2013-08-29 01:31:08.995312+05:30
12303	INCOMING	30997600	t	2	2	0	2013-08-29 17:16:08.799945+05:30
12304	INCOMING	46208600	t	2	2	0	2013-08-29 17:16:08.825651+05:30
12305	INCOMING	66448400	t	2	3	0	2013-08-29 17:16:08.828792+05:30
12306	INCOMING	33608900	t	2	2	0	2013-08-29 17:16:08.831301+05:30
12307	INCOMING	30147000	t	2	2	0	2013-08-29 17:16:08.833644+05:30
12308	INCOMING	30571500	t	2	2	0	2013-08-29 17:16:08.836247+05:30
12309	INCOMING	49425400	t	2	4	0	2013-08-29 17:16:08.839937+05:30
12310	INCOMING	43139800	t	2	2	0	2013-08-29 17:16:08.845393+05:30
12311	INCOMING	66477700	t	2	2	0	2013-08-29 17:16:08.84935+05:30
12312	INCOMING	46204100	t	2	2	0	2013-08-29 17:16:08.853334+05:30
12313	INCOMING	39840700	t	2	2	0	2013-08-29 17:16:08.85733+05:30
12314	INCOMING	43790200	t	2	2	0	2013-08-29 17:16:08.86132+05:30
11583	INCOMING	30997600	t	2	2	0	2013-08-29 01:46:17.136134+05:30
11584	INCOMING	46208600	t	1	1	0	2013-08-29 01:46:17.162634+05:30
11585	INCOMING	66448400	t	2	2	0	2013-08-29 01:46:17.166619+05:30
11586	INCOMING	33608900	t	2	2	0	2013-08-29 01:46:17.17074+05:30
11587	INCOMING	30147000	t	2	2	0	2013-08-29 01:46:17.174701+05:30
11588	INCOMING	30571500	t	2	2	0	2013-08-29 01:46:17.178579+05:30
11589	INCOMING	49425400	t	2	2	0	2013-08-29 01:46:17.182442+05:30
11590	INCOMING	43139800	t	2	2	0	2013-08-29 01:46:17.186523+05:30
11591	INCOMING	66477700	t	2	2	0	2013-08-29 01:46:17.190661+05:30
11592	INCOMING	46204100	t	2	2	0	2013-08-29 01:46:17.1949+05:30
11593	INCOMING	39840700	t	2	2	0	2013-08-29 01:46:17.198479+05:30
11594	INCOMING	43790200	t	2	2	0	2013-08-29 01:46:17.202978+05:30
12315	INCOMING	30997600	t	2	2	0	2013-08-29 17:31:09.926329+05:30
12316	INCOMING	46208600	t	2	2	0	2013-08-29 17:31:09.951782+05:30
12317	INCOMING	66448400	t	2	2	0	2013-08-29 17:31:09.957913+05:30
12318	INCOMING	33608900	t	2	2	0	2013-08-29 17:31:09.96078+05:30
12319	INCOMING	30147000	t	2	2	0	2013-08-29 17:31:09.966132+05:30
12320	INCOMING	30571500	t	2	2	0	2013-08-29 17:31:09.969874+05:30
12321	INCOMING	49425400	t	2	2	0	2013-08-29 17:31:09.974317+05:30
12322	INCOMING	43139800	t	2	2	0	2013-08-29 17:31:09.978162+05:30
12323	INCOMING	66477700	t	2	2	0	2013-08-29 17:31:09.98186+05:30
12324	INCOMING	46204100	t	2	2	0	2013-08-29 17:31:09.98613+05:30
12325	INCOMING	39840700	t	2	2	0	2013-08-29 17:31:09.990241+05:30
12326	INCOMING	43790200	t	2	2	0	2013-08-29 17:31:09.993941+05:30
11595	INCOMING	30997600	t	2	2	0	2013-08-29 02:01:08.387707+05:30
11596	INCOMING	46208600	t	2	2	0	2013-08-29 02:01:08.417115+05:30
11597	INCOMING	66448400	t	2	2	0	2013-08-29 02:01:08.420676+05:30
11598	INCOMING	33608900	t	2	2	0	2013-08-29 02:01:08.42474+05:30
11599	INCOMING	30147000	t	2	2	0	2013-08-29 02:01:08.428704+05:30
11600	INCOMING	30571500	t	2	2	0	2013-08-29 02:01:08.433051+05:30
11601	INCOMING	49425400	t	2	4	0	2013-08-29 02:01:08.436696+05:30
11602	INCOMING	43139800	t	2	2	0	2013-08-29 02:01:08.439699+05:30
11603	INCOMING	66477700	t	2	2	0	2013-08-29 02:01:08.445021+05:30
11604	INCOMING	46204100	t	2	2	0	2013-08-29 02:01:08.448749+05:30
11605	INCOMING	39840700	t	2	2	0	2013-08-29 02:01:08.453139+05:30
11606	INCOMING	43790200	t	2	2	0	2013-08-29 02:01:08.456728+05:30
12327	INCOMING	30997600	t	2	2	0	2013-08-29 17:46:10.152529+05:30
12328	INCOMING	46208600	t	2	2	0	2013-08-29 17:46:10.172312+05:30
12329	INCOMING	66448400	t	2	2	0	2013-08-29 17:46:10.176122+05:30
12330	INCOMING	33608900	t	2	2	0	2013-08-29 17:46:10.179436+05:30
12331	INCOMING	30147000	t	2	2	0	2013-08-29 17:46:10.182155+05:30
12332	INCOMING	30571500	t	2	2	0	2013-08-29 17:46:10.186965+05:30
12333	INCOMING	49425400	t	2	2	0	2013-08-29 17:46:10.192095+05:30
12334	INCOMING	43139800	t	2	2	0	2013-08-29 17:46:10.197272+05:30
12335	INCOMING	66477700	t	2	2	0	2013-08-29 17:46:10.200084+05:30
12336	INCOMING	46204100	t	2	2	0	2013-08-29 17:46:10.202865+05:30
12337	INCOMING	39840700	t	2	2	0	2013-08-29 17:46:10.208204+05:30
12338	INCOMING	43790200	t	2	2	0	2013-08-29 17:46:10.212127+05:30
11607	INCOMING	30997600	t	2	2	0	2013-08-29 02:16:17.327902+05:30
11608	INCOMING	46208600	t	1	1	0	2013-08-29 02:16:17.353952+05:30
11609	INCOMING	66448400	t	2	2	0	2013-08-29 02:16:17.357627+05:30
11610	INCOMING	33608900	t	2	2	0	2013-08-29 02:16:17.361162+05:30
11611	INCOMING	30147000	t	2	2	0	2013-08-29 02:16:17.365654+05:30
11612	INCOMING	30571500	t	2	2	0	2013-08-29 02:16:17.369639+05:30
11613	INCOMING	49425400	t	2	2	0	2013-08-29 02:16:17.373831+05:30
11614	INCOMING	43139800	t	2	2	0	2013-08-29 02:16:17.377921+05:30
11615	INCOMING	66477700	t	2	2	0	2013-08-29 02:16:17.381999+05:30
11616	INCOMING	46204100	t	2	2	0	2013-08-29 02:16:17.385641+05:30
11617	INCOMING	39840700	t	2	2	0	2013-08-29 02:16:17.389787+05:30
11618	INCOMING	43790200	t	2	2	0	2013-08-29 02:16:17.393655+05:30
12339	INCOMING	30997600	t	2	2	0	2013-08-29 18:01:16.268252+05:30
12340	INCOMING	46208600	t	2	2	0	2013-08-29 18:01:16.291354+05:30
12341	INCOMING	66448400	t	2	2	0	2013-08-29 18:01:16.294+05:30
12342	INCOMING	33608900	t	2	2	0	2013-08-29 18:01:16.29671+05:30
12343	INCOMING	30147000	t	2	2	0	2013-08-29 18:01:16.299648+05:30
12344	INCOMING	30571500	t	2	2	0	2013-08-29 18:01:16.303065+05:30
12345	INCOMING	49425400	t	2	2	0	2013-08-29 18:01:16.305151+05:30
12346	INCOMING	43139800	t	2	2	0	2013-08-29 18:01:16.307416+05:30
12347	INCOMING	66477700	t	2	2	0	2013-08-29 18:01:16.310096+05:30
12348	INCOMING	46204100	t	2	2	0	2013-08-29 18:01:16.312646+05:30
12349	INCOMING	39840700	t	2	2	0	2013-08-29 18:01:16.315798+05:30
12350	INCOMING	43790200	t	2	2	0	2013-08-29 18:01:16.32167+05:30
11619	INCOMING	30997600	t	2	2	0	2013-08-29 02:32:20.087315+05:30
11620	INCOMING	46208600	t	1	1	0	2013-08-29 02:32:20.113881+05:30
11621	INCOMING	66448400	t	2	2	0	2013-08-29 02:32:20.117649+05:30
11622	INCOMING	33608900	t	2	2	0	2013-08-29 02:32:20.122037+05:30
11623	INCOMING	30147000	t	2	2	0	2013-08-29 02:32:20.125691+05:30
11624	INCOMING	30571500	t	2	2	0	2013-08-29 02:32:20.129672+05:30
11625	INCOMING	49425400	t	2	2	0	2013-08-29 02:32:20.133868+05:30
11626	INCOMING	43139800	t	2	2	0	2013-08-29 02:32:20.136584+05:30
11627	INCOMING	66477700	t	2	2	0	2013-08-29 02:32:20.14568+05:30
11628	INCOMING	46204100	t	2	2	0	2013-08-29 02:32:20.149672+05:30
11629	INCOMING	39840700	t	2	2	0	2013-08-29 02:32:20.153613+05:30
11630	INCOMING	43790200	t	2	2	0	2013-08-29 02:32:20.157612+05:30
12351	INCOMING	30997600	t	2	2	0	2013-08-29 18:16:12.339224+05:30
12352	INCOMING	46208600	t	2	2	0	2013-08-29 18:16:12.365668+05:30
12353	INCOMING	66448400	t	2	2	0	2013-08-29 18:16:12.36957+05:30
12354	INCOMING	33608900	t	2	2	0	2013-08-29 18:16:12.373526+05:30
12355	INCOMING	30147000	t	2	2	0	2013-08-29 18:16:12.378746+05:30
12356	INCOMING	30571500	t	2	2	0	2013-08-29 18:16:12.381693+05:30
12357	INCOMING	49425400	t	2	3	0	2013-08-29 18:16:12.38618+05:30
12358	INCOMING	43139800	t	2	2	0	2013-08-29 18:16:12.38956+05:30
12359	INCOMING	66477700	t	2	2	0	2013-08-29 18:16:12.392346+05:30
12360	INCOMING	46204100	t	2	2	0	2013-08-29 18:16:12.397773+05:30
12361	INCOMING	39840700	t	2	2	0	2013-08-29 18:16:12.401472+05:30
12362	INCOMING	43790200	t	2	2	0	2013-08-29 18:16:12.40516+05:30
11631	INCOMING	30997600	t	2	2	0	2013-08-29 02:46:18.236436+05:30
11632	INCOMING	46208600	t	1	1	0	2013-08-29 02:46:18.258446+05:30
11633	INCOMING	66448400	t	2	3	0	2013-08-29 02:46:18.262233+05:30
11634	INCOMING	33608900	t	2	2	0	2013-08-29 02:46:18.266437+05:30
11635	INCOMING	30147000	t	2	2	0	2013-08-29 02:46:18.270142+05:30
11636	INCOMING	30571500	t	2	2	0	2013-08-29 02:46:18.274271+05:30
11637	INCOMING	49425400	t	2	4	0	2013-08-29 02:46:18.278515+05:30
11638	INCOMING	43139800	t	2	2	0	2013-08-29 02:46:18.281526+05:30
11639	INCOMING	66477700	t	2	2	0	2013-08-29 02:46:18.28642+05:30
11640	INCOMING	46204100	t	2	2	0	2013-08-29 02:46:18.290231+05:30
11641	INCOMING	39840700	t	2	2	0	2013-08-29 02:46:18.294283+05:30
11642	INCOMING	43790200	t	2	2	0	2013-08-29 02:46:18.298532+05:30
12363	INCOMING	30997600	t	2	2	0	2013-08-29 18:31:07.895631+05:30
12364	INCOMING	46208600	t	2	2	0	2013-08-29 18:31:07.917658+05:30
12365	INCOMING	66448400	t	2	2	0	2013-08-29 18:31:07.922123+05:30
12366	INCOMING	33608900	t	2	2	0	2013-08-29 18:31:07.925584+05:30
12367	INCOMING	30147000	t	2	2	0	2013-08-29 18:31:07.929626+05:30
12368	INCOMING	30571500	t	2	2	0	2013-08-29 18:31:07.933572+05:30
12369	INCOMING	49425400	t	2	3	0	2013-08-29 18:31:07.937606+05:30
12370	INCOMING	43139800	t	2	2	0	2013-08-29 18:31:07.941591+05:30
12371	INCOMING	66477700	t	2	2	0	2013-08-29 18:31:07.945497+05:30
12372	INCOMING	46204100	t	2	2	0	2013-08-29 18:31:07.949679+05:30
12373	INCOMING	39840700	t	2	2	0	2013-08-29 18:31:07.953634+05:30
12374	INCOMING	43790200	t	2	2	0	2013-08-29 18:31:07.956135+05:30
11643	INCOMING	30997600	t	2	2	0	2013-08-29 03:01:07.674257+05:30
11644	INCOMING	46208600	t	2	2	0	2013-08-29 03:01:07.698796+05:30
11645	INCOMING	66448400	t	2	3	0	2013-08-29 03:01:07.702359+05:30
11646	INCOMING	33608900	t	2	2	0	2013-08-29 03:01:07.70634+05:30
11647	INCOMING	30147000	t	2	2	0	2013-08-29 03:01:07.710336+05:30
11648	INCOMING	30571500	t	2	2	0	2013-08-29 03:01:07.714384+05:30
11649	INCOMING	49425400	t	2	4	0	2013-08-29 03:01:07.718372+05:30
11650	INCOMING	43139800	t	2	2	0	2013-08-29 03:01:07.722392+05:30
11651	INCOMING	66477700	t	2	2	0	2013-08-29 03:01:07.724905+05:30
11652	INCOMING	46204100	t	2	2	0	2013-08-29 03:01:07.730562+05:30
11653	INCOMING	39840700	t	2	2	0	2013-08-29 03:01:07.734401+05:30
11654	INCOMING	43790200	t	2	2	0	2013-08-29 03:01:07.738342+05:30
12375	INCOMING	30997600	t	2	2	0	2013-08-29 18:46:12.977657+05:30
12376	INCOMING	46208600	t	2	2	0	2013-08-29 18:46:12.998835+05:30
12377	INCOMING	66448400	t	2	2	0	2013-08-29 18:46:13.001896+05:30
12378	INCOMING	33608900	t	2	2	0	2013-08-29 18:46:13.005468+05:30
12379	INCOMING	30147000	t	2	2	0	2013-08-29 18:46:13.007896+05:30
12380	INCOMING	30571500	t	2	2	0	2013-08-29 18:46:13.013655+05:30
12381	INCOMING	49425400	t	2	2	0	2013-08-29 18:46:13.017855+05:30
12382	INCOMING	43139800	t	2	2	0	2013-08-29 18:46:13.021843+05:30
12383	INCOMING	66477700	t	2	2	0	2013-08-29 18:46:13.025838+05:30
12384	INCOMING	46204100	t	2	2	0	2013-08-29 18:46:13.029781+05:30
12385	INCOMING	39840700	t	2	2	0	2013-08-29 18:46:13.03383+05:30
12386	INCOMING	43790200	t	2	2	0	2013-08-29 18:46:13.037966+05:30
11655	INCOMING	30997600	t	2	2	0	2013-08-29 03:16:18.460015+05:30
11656	INCOMING	46208600	t	1	1	0	2013-08-29 03:16:18.485492+05:30
11657	INCOMING	66448400	t	2	2	0	2013-08-29 03:16:18.489843+05:30
11658	INCOMING	33608900	t	2	2	0	2013-08-29 03:16:18.493365+05:30
11659	INCOMING	30147000	t	2	2	0	2013-08-29 03:16:18.497247+05:30
11660	INCOMING	30571500	t	2	2	0	2013-08-29 03:16:18.501228+05:30
11661	INCOMING	49425400	t	2	2	0	2013-08-29 03:16:18.505418+05:30
11662	INCOMING	43139800	t	2	2	0	2013-08-29 03:16:18.507982+05:30
11663	INCOMING	66477700	t	2	2	0	2013-08-29 03:16:18.513363+05:30
11664	INCOMING	46204100	t	2	2	0	2013-08-29 03:16:18.51731+05:30
11665	INCOMING	39840700	t	2	2	0	2013-08-29 03:16:18.5213+05:30
11666	INCOMING	43790200	t	2	2	0	2013-08-29 03:16:18.525294+05:30
11667	INCOMING	30997600	t	2	2	0	2013-08-29 03:31:18.99072+05:30
11668	INCOMING	46208600	t	1	1	0	2013-08-29 03:31:19.014822+05:30
11669	INCOMING	66448400	t	2	2	0	2013-08-29 03:31:19.025761+05:30
11670	INCOMING	33608900	t	2	2	0	2013-08-29 03:31:19.029791+05:30
11671	INCOMING	30147000	t	2	2	0	2013-08-29 03:31:19.034282+05:30
11672	INCOMING	30571500	t	2	2	0	2013-08-29 03:31:19.037876+05:30
11673	INCOMING	49425400	t	2	2	0	2013-08-29 03:31:19.041565+05:30
11674	INCOMING	43139800	t	2	2	0	2013-08-29 03:31:19.045567+05:30
11675	INCOMING	66477700	t	2	2	0	2013-08-29 03:31:19.049852+05:30
11676	INCOMING	46204100	t	2	2	0	2013-08-29 03:31:19.053525+05:30
11677	INCOMING	39840700	t	2	2	0	2013-08-29 03:31:19.057528+05:30
11678	INCOMING	43790200	t	2	2	0	2013-08-29 03:31:19.061562+05:30
10947	INCOMING	30997600	t	1	1	0	2013-08-28 12:31:28.463175+05:30
10948	INCOMING	46208600	t	2	2	0	2013-08-28 12:31:28.488837+05:30
10949	INCOMING	66448400	t	2	2	0	2013-08-28 12:31:28.492716+05:30
10950	INCOMING	33608900	t	2	2	0	2013-08-28 12:31:28.496057+05:30
10951	INCOMING	30147000	t	2	2	0	2013-08-28 12:31:28.499612+05:30
10952	INCOMING	30571500	t	2	2	0	2013-08-28 12:31:28.503716+05:30
10953	INCOMING	49425400	t	2	2	0	2013-08-28 12:31:28.505982+05:30
10954	INCOMING	43139800	t	2	2	0	2013-08-28 12:31:28.508745+05:30
10955	INCOMING	66477700	t	2	2	0	2013-08-28 12:31:28.512284+05:30
10956	INCOMING	46204100	t	1	1	0	2013-08-28 12:31:28.515902+05:30
10957	INCOMING	39840700	t	2	2	0	2013-08-28 12:31:28.518619+05:30
10958	INCOMING	43790200	t	2	2	0	2013-08-28 12:31:28.52145+05:30
11679	INCOMING	30997600	t	2	2	0	2013-08-29 04:01:18.431521+05:30
11680	INCOMING	46208600	t	1	1	0	2013-08-29 04:01:18.458582+05:30
11681	INCOMING	66448400	t	2	2	0	2013-08-29 04:01:18.462399+05:30
11682	INCOMING	33608900	t	2	2	0	2013-08-29 04:01:18.46633+05:30
11683	INCOMING	30147000	t	2	2	0	2013-08-29 04:01:18.470272+05:30
11684	INCOMING	30571500	t	2	2	0	2013-08-29 04:01:18.474118+05:30
11685	INCOMING	49425400	t	2	2	0	2013-08-29 04:01:18.477959+05:30
11686	INCOMING	43139800	t	2	2	0	2013-08-29 04:01:18.482106+05:30
11687	INCOMING	66477700	t	2	2	0	2013-08-29 04:01:18.486348+05:30
11688	INCOMING	46204100	t	2	2	0	2013-08-29 04:01:18.490341+05:30
11689	INCOMING	39840700	t	2	2	0	2013-08-29 04:01:18.493457+05:30
11690	INCOMING	43790200	t	2	2	0	2013-08-29 04:01:18.500162+05:30
10959	INCOMING	30997600	t	2	2	0	2013-08-28 12:46:28.273867+05:30
10960	INCOMING	46208600	t	2	2	0	2013-08-28 12:46:28.301124+05:30
10961	INCOMING	66448400	t	2	2	0	2013-08-28 12:46:28.305022+05:30
10962	INCOMING	33608900	t	2	2	0	2013-08-28 12:46:28.308823+05:30
10963	INCOMING	30147000	t	2	2	0	2013-08-28 12:46:28.312824+05:30
10964	INCOMING	30571500	t	2	2	0	2013-08-28 12:46:28.317125+05:30
10965	INCOMING	49425400	t	1	1	0	2013-08-28 12:46:28.320958+05:30
10966	INCOMING	43139800	t	1	1	0	2013-08-28 12:46:28.324881+05:30
10967	INCOMING	66477700	t	2	2	0	2013-08-28 12:46:28.329102+05:30
10968	INCOMING	46204100	t	2	2	0	2013-08-28 12:46:28.333107+05:30
10969	INCOMING	39840700	t	2	2	0	2013-08-28 12:46:28.336897+05:30
10970	INCOMING	43790200	t	2	2	0	2013-08-28 12:46:28.340834+05:30
11691	INCOMING	30997600	t	2	2	0	2013-08-29 04:16:17.393213+05:30
11692	INCOMING	46208600	t	1	1	0	2013-08-29 04:16:17.416936+05:30
11693	INCOMING	66448400	t	2	2	0	2013-08-29 04:16:17.423694+05:30
11694	INCOMING	33608900	t	2	2	0	2013-08-29 04:16:17.427609+05:30
11695	INCOMING	30147000	t	2	2	0	2013-08-29 04:16:17.431801+05:30
11696	INCOMING	30571500	t	2	2	0	2013-08-29 04:16:17.435966+05:30
11697	INCOMING	49425400	t	2	2	0	2013-08-29 04:16:17.439597+05:30
11698	INCOMING	43139800	t	2	2	0	2013-08-29 04:16:17.44546+05:30
11699	INCOMING	66477700	t	2	2	0	2013-08-29 04:16:17.451406+05:30
11700	INCOMING	46204100	t	2	2	0	2013-08-29 04:16:17.454604+05:30
11701	INCOMING	39840700	t	2	2	0	2013-08-29 04:16:17.457787+05:30
11702	INCOMING	43790200	t	2	2	0	2013-08-29 04:16:17.464524+05:30
10971	INCOMING	30997600	t	2	2	0	2013-08-28 13:01:16.041642+05:30
10972	INCOMING	46208600	t	2	2	0	2013-08-28 13:01:16.063807+05:30
10973	INCOMING	66448400	t	2	2	0	2013-08-28 13:01:16.067363+05:30
10974	INCOMING	33608900	t	2	2	0	2013-08-28 13:01:16.070697+05:30
10975	INCOMING	30147000	t	2	2	0	2013-08-28 13:01:16.075707+05:30
10976	INCOMING	30571500	t	2	2	0	2013-08-28 13:01:16.079796+05:30
10977	INCOMING	49425400	t	2	2	0	2013-08-28 13:01:16.083689+05:30
10978	INCOMING	43139800	t	2	2	0	2013-08-28 13:01:16.087453+05:30
10979	INCOMING	66477700	t	2	2	0	2013-08-28 13:01:16.090626+05:30
10980	INCOMING	46204100	t	2	2	0	2013-08-28 13:01:16.096085+05:30
10981	INCOMING	39840700	t	2	2	0	2013-08-28 13:01:16.099572+05:30
10982	INCOMING	43790200	t	2	2	0	2013-08-28 13:01:16.103707+05:30
11703	INCOMING	30997600	t	2	2	0	2013-08-29 04:31:11.745014+05:30
11704	INCOMING	46208600	t	2	2	0	2013-08-29 04:31:11.770449+05:30
11705	INCOMING	66448400	t	2	2	0	2013-08-29 04:31:11.773051+05:30
11706	INCOMING	33608900	t	2	2	0	2013-08-29 04:31:11.777881+05:30
11707	INCOMING	30147000	t	2	2	0	2013-08-29 04:31:11.781643+05:30
11708	INCOMING	30571500	t	2	2	0	2013-08-29 04:31:11.785577+05:30
11709	INCOMING	49425400	t	2	4	0	2013-08-29 04:31:11.789968+05:30
11710	INCOMING	43139800	t	2	2	0	2013-08-29 04:31:11.793854+05:30
11711	INCOMING	66477700	t	2	2	0	2013-08-29 04:31:11.797906+05:30
11712	INCOMING	46204100	t	2	2	0	2013-08-29 04:31:11.801748+05:30
11713	INCOMING	39840700	t	2	2	0	2013-08-29 04:31:11.805636+05:30
11714	INCOMING	43790200	t	2	2	0	2013-08-29 04:31:11.809736+05:30
10983	INCOMING	30997600	t	2	2	0	2013-08-28 13:16:28.654065+05:30
10984	INCOMING	46208600	t	2	2	0	2013-08-28 13:16:28.678231+05:30
10985	INCOMING	66448400	t	2	2	0	2013-08-28 13:16:28.682657+05:30
10986	INCOMING	33608900	t	2	2	0	2013-08-28 13:16:28.685994+05:30
10987	INCOMING	30147000	t	2	2	0	2013-08-28 13:16:28.690319+05:30
10988	INCOMING	30571500	t	2	2	0	2013-08-28 13:16:28.695292+05:30
10989	INCOMING	49425400	t	2	2	0	2013-08-28 13:16:28.697955+05:30
10990	INCOMING	43139800	t	2	2	0	2013-08-28 13:16:28.701953+05:30
10991	INCOMING	66477700	t	2	2	0	2013-08-28 13:16:28.70599+05:30
10992	INCOMING	46204100	t	2	2	0	2013-08-28 13:16:28.709992+05:30
10993	INCOMING	39840700	t	1	1	0	2013-08-28 13:16:28.713984+05:30
10994	INCOMING	43790200	t	2	2	0	2013-08-28 13:16:28.71807+05:30
11715	INCOMING	30997600	t	2	2	0	2013-08-29 04:46:16.591531+05:30
11716	INCOMING	46208600	t	1	1	0	2013-08-29 04:46:16.617187+05:30
11717	INCOMING	66448400	t	2	2	0	2013-08-29 04:46:16.621491+05:30
11718	INCOMING	33608900	t	2	2	0	2013-08-29 04:46:16.624874+05:30
11719	INCOMING	30147000	t	2	2	0	2013-08-29 04:46:16.628906+05:30
11720	INCOMING	30571500	t	2	2	0	2013-08-29 04:46:16.632864+05:30
11721	INCOMING	49425400	t	2	2	0	2013-08-29 04:46:16.636903+05:30
11722	INCOMING	43139800	t	2	2	0	2013-08-29 04:46:16.640901+05:30
11723	INCOMING	66477700	t	2	2	0	2013-08-29 04:46:16.644843+05:30
11724	INCOMING	46204100	t	2	2	0	2013-08-29 04:46:16.648887+05:30
11725	INCOMING	39840700	t	2	2	0	2013-08-29 04:46:16.652885+05:30
11726	INCOMING	43790200	t	2	2	0	2013-08-29 04:46:16.657124+05:30
10995	INCOMING	30997600	t	2	2	0	2013-08-28 13:31:36.845589+05:30
10996	INCOMING	46208600	t	2	2	0	2013-08-28 13:31:36.866784+05:30
10997	INCOMING	66448400	t	2	2	0	2013-08-28 13:31:36.87125+05:30
10998	INCOMING	33608900	t	2	2	0	2013-08-28 13:31:36.87428+05:30
10999	INCOMING	30147000	t	1	1	0	2013-08-28 13:31:36.87754+05:30
11000	INCOMING	30571500	t	2	2	0	2013-08-28 13:31:36.88082+05:30
11001	INCOMING	49425400	t	1	1	0	2013-08-28 13:31:36.88326+05:30
11002	INCOMING	43139800	t	2	2	0	2013-08-28 13:31:36.887254+05:30
11003	INCOMING	66477700	t	2	2	0	2013-08-28 13:31:36.889602+05:30
11004	INCOMING	46204100	t	2	2	0	2013-08-28 13:31:36.897263+05:30
11005	INCOMING	39840700	t	1	1	0	2013-08-28 13:31:36.900091+05:30
11006	INCOMING	43790200	t	2	2	0	2013-08-28 13:31:36.903238+05:30
11727	INCOMING	30997600	t	2	2	0	2013-08-29 05:01:07.635457+05:30
11728	INCOMING	46208600	t	2	2	0	2013-08-29 05:01:07.657908+05:30
11729	INCOMING	66448400	t	2	3	0	2013-08-29 05:01:07.661982+05:30
11730	INCOMING	33608900	t	2	2	0	2013-08-29 05:01:07.665771+05:30
11731	INCOMING	30147000	t	2	2	0	2013-08-29 05:01:07.670564+05:30
11732	INCOMING	30571500	t	2	2	0	2013-08-29 05:01:07.674217+05:30
11733	INCOMING	49425400	t	2	4	0	2013-08-29 05:01:07.67669+05:30
11734	INCOMING	43139800	t	2	2	0	2013-08-29 05:01:07.681707+05:30
11735	INCOMING	66477700	t	2	2	0	2013-08-29 05:01:07.686386+05:30
11736	INCOMING	46204100	t	2	2	0	2013-08-29 05:01:07.68969+05:30
11737	INCOMING	39840700	t	2	2	0	2013-08-29 05:01:07.693974+05:30
11738	INCOMING	43790200	t	2	2	0	2013-08-29 05:01:07.697969+05:30
11007	INCOMING	30997600	t	2	2	0	2013-08-28 13:46:17.235841+05:30
11008	INCOMING	46208600	t	2	2	0	2013-08-28 13:46:17.261272+05:30
11009	INCOMING	66448400	t	2	4	0	2013-08-28 13:46:17.264543+05:30
11010	INCOMING	33608900	t	2	2	0	2013-08-28 13:46:17.268265+05:30
11011	INCOMING	30147000	t	2	2	0	2013-08-28 13:46:17.272437+05:30
11012	INCOMING	30571500	t	2	2	0	2013-08-28 13:46:17.27723+05:30
11013	INCOMING	49425400	t	2	2	0	2013-08-28 13:46:17.279942+05:30
11014	INCOMING	43139800	t	2	2	0	2013-08-28 13:46:17.283976+05:30
11015	INCOMING	66477700	t	2	2	0	2013-08-28 13:46:17.288152+05:30
11016	INCOMING	46204100	t	2	2	0	2013-08-28 13:46:17.291492+05:30
11017	INCOMING	39840700	t	2	2	0	2013-08-28 13:46:17.295966+05:30
11018	INCOMING	43790200	t	2	2	0	2013-08-28 13:46:17.299135+05:30
11739	INCOMING	30997600	t	2	2	0	2013-08-29 05:16:08.831221+05:30
11740	INCOMING	46208600	t	2	2	0	2013-08-29 05:16:08.853894+05:30
11741	INCOMING	66448400	t	2	2	0	2013-08-29 05:16:08.856279+05:30
11742	INCOMING	33608900	t	2	2	0	2013-08-29 05:16:08.861712+05:30
11743	INCOMING	30147000	t	2	2	0	2013-08-29 05:16:08.865466+05:30
11744	INCOMING	30571500	t	2	2	0	2013-08-29 05:16:08.869462+05:30
11745	INCOMING	49425400	t	2	2	0	2013-08-29 05:16:08.873454+05:30
11746	INCOMING	43139800	t	2	2	0	2013-08-29 05:16:08.877442+05:30
11747	INCOMING	66477700	t	2	2	0	2013-08-29 05:16:08.881437+05:30
11748	INCOMING	46204100	t	2	2	0	2013-08-29 05:16:08.885533+05:30
11749	INCOMING	39840700	t	2	2	0	2013-08-29 05:16:08.889468+05:30
11750	INCOMING	43790200	t	2	2	0	2013-08-29 05:16:08.893421+05:30
11019	INCOMING	30997600	t	2	2	0	2013-08-28 14:01:40.962571+05:30
11020	INCOMING	46208600	t	2	1	1	2013-08-28 14:01:40.987737+05:30
11021	INCOMING	66448400	t	2	2	0	2013-08-28 14:01:40.994584+05:30
11022	INCOMING	33608900	t	2	2	0	2013-08-28 14:01:40.998636+05:30
11023	INCOMING	30147000	t	2	2	0	2013-08-28 14:01:41.002594+05:30
11024	INCOMING	30571500	t	2	2	0	2013-08-28 14:01:41.00632+05:30
11025	INCOMING	49425400	t	2	2	0	2013-08-28 14:01:41.010179+05:30
11026	INCOMING	43139800	t	2	2	0	2013-08-28 14:01:41.01411+05:30
11027	INCOMING	66477700	t	2	2	0	2013-08-28 14:01:41.018092+05:30
11028	INCOMING	46204100	t	2	2	0	2013-08-28 14:01:41.022111+05:30
11029	INCOMING	39840700	t	2	2	0	2013-08-28 14:01:41.026081+05:30
11030	INCOMING	43790200	t	2	2	0	2013-08-28 14:01:41.030704+05:30
11751	INCOMING	30997600	t	2	2	0	2013-08-29 05:31:17.473766+05:30
11752	INCOMING	46208600	t	1	1	0	2013-08-29 05:31:17.498285+05:30
11753	INCOMING	66448400	t	2	2	0	2013-08-29 05:31:17.501932+05:30
11754	INCOMING	33608900	t	2	2	0	2013-08-29 05:31:17.505969+05:30
11755	INCOMING	30147000	t	2	2	0	2013-08-29 05:31:17.510642+05:30
11756	INCOMING	30571500	t	2	2	0	2013-08-29 05:31:17.513979+05:30
11757	INCOMING	49425400	t	2	2	0	2013-08-29 05:31:17.517504+05:30
11758	INCOMING	43139800	t	2	2	0	2013-08-29 05:31:17.522128+05:30
11759	INCOMING	66477700	t	2	2	0	2013-08-29 05:31:17.526288+05:30
11760	INCOMING	46204100	t	2	2	0	2013-08-29 05:31:17.529253+05:30
11761	INCOMING	39840700	t	2	2	0	2013-08-29 05:31:17.534168+05:30
11762	INCOMING	43790200	t	2	2	0	2013-08-29 05:31:17.538012+05:30
11031	INCOMING	30997600	t	2	2	0	2013-08-28 14:16:22.669519+05:30
11032	INCOMING	46208600	t	2	2	0	2013-08-28 14:16:22.695488+05:30
11033	INCOMING	66448400	t	2	4	0	2013-08-28 14:16:22.6992+05:30
11034	INCOMING	33608900	t	2	3	0	2013-08-28 14:16:22.703186+05:30
11035	INCOMING	30147000	t	2	2	0	2013-08-28 14:16:22.707183+05:30
11036	INCOMING	30571500	t	1	1	0	2013-08-28 14:16:22.711171+05:30
11037	INCOMING	49425400	t	2	4	0	2013-08-28 14:16:22.715355+05:30
11038	INCOMING	43139800	t	2	2	0	2013-08-28 14:16:22.719244+05:30
11039	INCOMING	66477700	t	2	2	0	2013-08-28 14:16:22.722107+05:30
11040	INCOMING	46204100	t	2	2	0	2013-08-28 14:16:22.72485+05:30
11041	INCOMING	39840700	t	2	2	0	2013-08-28 14:16:22.727243+05:30
11042	INCOMING	43790200	t	2	2	0	2013-08-28 14:16:22.731194+05:30
11763	INCOMING	30997600	t	2	2	0	2013-08-29 05:46:15.254824+05:30
11764	INCOMING	46208600	t	2	2	0	2013-08-29 05:46:15.281915+05:30
11765	INCOMING	66448400	t	2	2	0	2013-08-29 05:46:15.285923+05:30
11766	INCOMING	33608900	t	2	2	0	2013-08-29 05:46:15.289684+05:30
11767	INCOMING	30147000	t	2	2	0	2013-08-29 05:46:15.292338+05:30
11768	INCOMING	30571500	t	2	2	0	2013-08-29 05:46:15.299889+05:30
11769	INCOMING	49425400	t	2	2	0	2013-08-29 05:46:15.305887+05:30
11770	INCOMING	43139800	t	2	2	0	2013-08-29 05:46:15.310189+05:30
11771	INCOMING	66477700	t	2	2	0	2013-08-29 05:46:15.313871+05:30
11772	INCOMING	46204100	t	2	2	0	2013-08-29 05:46:15.317659+05:30
11773	INCOMING	39840700	t	2	2	0	2013-08-29 05:46:15.32197+05:30
11774	INCOMING	43790200	t	2	2	0	2013-08-29 05:46:15.326979+05:30
11043	INCOMING	30997600	t	2	2	0	2013-08-28 14:31:33.131004+05:30
11044	INCOMING	46208600	t	2	2	0	2013-08-28 14:31:33.154402+05:30
11045	INCOMING	66448400	t	2	2	0	2013-08-28 14:31:33.157505+05:30
11046	INCOMING	33608900	t	1	1	0	2013-08-28 14:31:33.160168+05:30
11047	INCOMING	30147000	t	1	1	0	2013-08-28 14:31:33.163545+05:30
11048	INCOMING	30571500	t	1	1	0	2013-08-28 14:31:33.168501+05:30
11049	INCOMING	49425400	t	2	2	0	2013-08-28 14:31:33.172426+05:30
11050	INCOMING	43139800	t	2	2	0	2013-08-28 14:31:33.176246+05:30
11051	INCOMING	66477700	t	2	2	0	2013-08-28 14:31:33.178844+05:30
11052	INCOMING	46204100	t	2	2	0	2013-08-28 14:31:33.182466+05:30
11053	INCOMING	39840700	t	2	2	0	2013-08-28 14:31:33.186824+05:30
11054	INCOMING	43790200	t	2	2	0	2013-08-28 14:31:33.192364+05:30
11775	INCOMING	30997600	t	2	2	0	2013-08-29 06:01:18.807334+05:30
11776	INCOMING	46208600	t	1	1	0	2013-08-29 06:01:18.829244+05:30
11777	INCOMING	66448400	t	2	2	0	2013-08-29 06:01:18.83342+05:30
11778	INCOMING	33608900	t	2	2	0	2013-08-29 06:01:18.837664+05:30
11779	INCOMING	30147000	t	2	2	0	2013-08-29 06:01:18.841187+05:30
11780	INCOMING	30571500	t	2	2	0	2013-08-29 06:01:18.844903+05:30
11781	INCOMING	49425400	t	2	2	0	2013-08-29 06:01:18.848897+05:30
11782	INCOMING	43139800	t	2	2	0	2013-08-29 06:01:18.852892+05:30
11783	INCOMING	66477700	t	2	2	0	2013-08-29 06:01:18.856935+05:30
11784	INCOMING	46204100	t	2	2	0	2013-08-29 06:01:18.859478+05:30
11785	INCOMING	39840700	t	2	2	0	2013-08-29 06:01:18.864925+05:30
11786	INCOMING	43790200	t	2	2	0	2013-08-29 06:01:18.86892+05:30
11055	INCOMING	30997600	t	2	2	0	2013-08-28 14:46:29.460009+05:30
11056	INCOMING	46208600	t	1	1	0	2013-08-28 14:46:29.488798+05:30
11057	INCOMING	66448400	t	2	2	0	2013-08-28 14:46:29.492238+05:30
11058	INCOMING	33608900	t	2	2	0	2013-08-28 14:46:29.496171+05:30
11059	INCOMING	30147000	t	2	2	0	2013-08-28 14:46:29.500196+05:30
11060	INCOMING	30571500	t	2	2	0	2013-08-28 14:46:29.504202+05:30
11061	INCOMING	49425400	t	2	3	0	2013-08-28 14:46:29.508158+05:30
11062	INCOMING	43139800	t	2	2	0	2013-08-28 14:46:29.51213+05:30
11063	INCOMING	66477700	t	2	2	0	2013-08-28 14:46:29.516125+05:30
11064	INCOMING	46204100	t	2	2	0	2013-08-28 14:46:29.520105+05:30
11065	INCOMING	39840700	t	2	2	0	2013-08-28 14:46:29.524128+05:30
11066	INCOMING	43790200	t	2	2	0	2013-08-28 14:46:29.528107+05:30
11787	INCOMING	30997600	t	2	2	0	2013-08-29 06:16:07.257397+05:30
11788	INCOMING	46208600	t	2	2	0	2013-08-29 06:16:07.27661+05:30
11789	INCOMING	66448400	t	2	3	0	2013-08-29 06:16:07.280958+05:30
11790	INCOMING	33608900	t	2	2	0	2013-08-29 06:16:07.284841+05:30
11791	INCOMING	30147000	t	2	2	0	2013-08-29 06:16:07.288583+05:30
11792	INCOMING	30571500	t	2	2	0	2013-08-29 06:16:07.292876+05:30
11793	INCOMING	49425400	t	2	4	0	2013-08-29 06:16:07.296954+05:30
11794	INCOMING	43139800	t	2	2	0	2013-08-29 06:16:07.30091+05:30
11795	INCOMING	66477700	t	2	2	0	2013-08-29 06:16:07.304902+05:30
11796	INCOMING	46204100	t	2	2	0	2013-08-29 06:16:07.309162+05:30
11797	INCOMING	39840700	t	2	2	0	2013-08-29 06:16:07.312899+05:30
11798	INCOMING	43790200	t	2	2	0	2013-08-29 06:16:07.316927+05:30
11067	INCOMING	30997600	t	2	2	0	2013-08-28 15:01:25.906111+05:30
11068	INCOMING	46208600	t	2	2	0	2013-08-28 15:01:25.927138+05:30
11069	INCOMING	66448400	t	2	2	0	2013-08-28 15:01:25.929348+05:30
11070	INCOMING	33608900	t	2	2	0	2013-08-28 15:01:25.934651+05:30
11071	INCOMING	30147000	t	2	2	0	2013-08-28 15:01:25.938639+05:30
11072	INCOMING	30571500	t	2	2	0	2013-08-28 15:01:25.942363+05:30
11073	INCOMING	49425400	t	2	3	0	2013-08-28 15:01:25.945893+05:30
11074	INCOMING	43139800	t	2	2	0	2013-08-28 15:01:25.948085+05:30
11075	INCOMING	66477700	t	2	2	0	2013-08-28 15:01:25.950504+05:30
11076	INCOMING	46204100	t	2	2	0	2013-08-28 15:01:25.952816+05:30
11077	INCOMING	39840700	t	2	2	0	2013-08-28 15:01:25.955764+05:30
11078	INCOMING	43790200	t	2	2	0	2013-08-28 15:01:25.959024+05:30
11799	INCOMING	30997600	t	2	2	0	2013-08-29 06:31:11.267258+05:30
11800	INCOMING	46208600	t	2	2	0	2013-08-29 06:31:11.289879+05:30
11801	INCOMING	66448400	t	2	2	0	2013-08-29 06:31:11.293775+05:30
11802	INCOMING	33608900	t	2	2	0	2013-08-29 06:31:11.297615+05:30
11803	INCOMING	30147000	t	2	2	0	2013-08-29 06:31:11.301947+05:30
11804	INCOMING	30571500	t	2	2	0	2013-08-29 06:31:11.305917+05:30
11805	INCOMING	49425400	t	2	2	0	2013-08-29 06:31:11.309828+05:30
11806	INCOMING	43139800	t	2	2	0	2013-08-29 06:31:11.313578+05:30
11807	INCOMING	66477700	t	2	2	0	2013-08-29 06:31:11.317255+05:30
11808	INCOMING	46204100	t	2	2	0	2013-08-29 06:31:11.320937+05:30
11809	INCOMING	39840700	t	2	2	0	2013-08-29 06:31:11.325126+05:30
11810	INCOMING	43790200	t	2	2	0	2013-08-29 06:31:11.328724+05:30
11079	INCOMING	30997600	t	2	2	0	2013-08-28 15:16:15.800526+05:30
11080	INCOMING	46208600	t	2	2	0	2013-08-28 15:16:15.826036+05:30
11081	INCOMING	66448400	t	2	2	0	2013-08-28 15:16:15.82905+05:30
11082	INCOMING	33608900	t	2	2	0	2013-08-28 15:16:15.832992+05:30
11083	INCOMING	30147000	t	2	2	0	2013-08-28 15:16:15.836806+05:30
11084	INCOMING	30571500	t	1	1	0	2013-08-28 15:16:15.840767+05:30
11085	INCOMING	49425400	t	2	4	0	2013-08-28 15:16:15.845206+05:30
11086	INCOMING	43139800	t	2	2	0	2013-08-28 15:16:15.849237+05:30
11087	INCOMING	66477700	t	2	2	0	2013-08-28 15:16:15.851295+05:30
11088	INCOMING	46204100	t	2	2	0	2013-08-28 15:16:15.856985+05:30
11089	INCOMING	39840700	t	2	2	0	2013-08-28 15:16:15.860792+05:30
11090	INCOMING	43790200	t	2	2	0	2013-08-28 15:16:15.86483+05:30
11811	INCOMING	30997600	t	2	2	0	2013-08-29 06:46:14.511729+05:30
11812	INCOMING	46208600	t	2	2	0	2013-08-29 06:46:14.536248+05:30
11813	INCOMING	66448400	t	2	2	0	2013-08-29 06:46:14.541041+05:30
11814	INCOMING	33608900	t	2	2	0	2013-08-29 06:46:14.544921+05:30
11815	INCOMING	30147000	t	2	2	0	2013-08-29 06:46:14.548918+05:30
11816	INCOMING	30571500	t	2	2	0	2013-08-29 06:46:14.552908+05:30
11817	INCOMING	49425400	t	2	2	0	2013-08-29 06:46:14.556896+05:30
11818	INCOMING	43139800	t	2	2	0	2013-08-29 06:46:14.560901+05:30
11819	INCOMING	66477700	t	2	2	0	2013-08-29 06:46:14.564895+05:30
11820	INCOMING	46204100	t	2	2	0	2013-08-29 06:46:14.569029+05:30
11821	INCOMING	39840700	t	2	2	0	2013-08-29 06:46:14.573178+05:30
11822	INCOMING	43790200	t	2	2	0	2013-08-29 06:46:14.576172+05:30
11091	INCOMING	30997600	t	2	2	0	2013-08-28 15:31:24.938785+05:30
11092	INCOMING	46208600	t	1	1	0	2013-08-28 15:31:24.962497+05:30
11093	INCOMING	66448400	t	2	2	0	2013-08-28 15:31:24.96534+05:30
11094	INCOMING	33608900	t	2	2	0	2013-08-28 15:31:24.969703+05:30
11095	INCOMING	30147000	t	2	2	0	2013-08-28 15:31:24.97345+05:30
11096	INCOMING	30571500	t	2	2	0	2013-08-28 15:31:24.977422+05:30
11097	INCOMING	49425400	t	2	2	0	2013-08-28 15:31:24.981123+05:30
11098	INCOMING	43139800	t	2	2	0	2013-08-28 15:31:24.985405+05:30
11099	INCOMING	66477700	t	1	1	0	2013-08-28 15:31:24.989446+05:30
11100	INCOMING	46204100	t	2	2	0	2013-08-28 15:31:24.993149+05:30
11101	INCOMING	39840700	t	2	2	0	2013-08-28 15:31:24.997394+05:30
11102	INCOMING	43790200	t	2	2	0	2013-08-28 15:31:25.001613+05:30
11823	INCOMING	30997600	t	2	2	0	2013-08-29 07:01:12.9172+05:30
11824	INCOMING	46208600	t	2	2	0	2013-08-29 07:01:12.940094+05:30
11825	INCOMING	66448400	t	2	2	0	2013-08-29 07:01:12.943301+05:30
11826	INCOMING	33608900	t	2	2	0	2013-08-29 07:01:12.945398+05:30
11827	INCOMING	30147000	t	2	2	0	2013-08-29 07:01:12.948533+05:30
11828	INCOMING	30571500	t	2	2	0	2013-08-29 07:01:12.951955+05:30
11829	INCOMING	49425400	t	2	4	0	2013-08-29 07:01:12.956825+05:30
11830	INCOMING	43139800	t	2	2	0	2013-08-29 07:01:12.960914+05:30
11831	INCOMING	66477700	t	2	2	0	2013-08-29 07:01:12.964903+05:30
11832	INCOMING	46204100	t	2	2	0	2013-08-29 07:01:12.968167+05:30
11833	INCOMING	39840700	t	2	2	0	2013-08-29 07:01:12.972507+05:30
11834	INCOMING	43790200	t	2	2	0	2013-08-29 07:01:12.976884+05:30
11103	INCOMING	30997600	t	1	1	0	2013-08-28 15:46:46.995011+05:30
11104	INCOMING	46208600	t	1	1	0	2013-08-28 15:46:47.017311+05:30
11105	INCOMING	66448400	t	2	2	0	2013-08-28 15:46:47.021131+05:30
11106	INCOMING	33608900	t	1	1	0	2013-08-28 15:46:47.024917+05:30
11107	INCOMING	30147000	t	2	2	0	2013-08-28 15:46:47.027609+05:30
11108	INCOMING	30571500	t	2	2	0	2013-08-28 15:46:47.031512+05:30
11109	INCOMING	49425400	t	2	2	0	2013-08-28 15:46:47.036995+05:30
11110	INCOMING	43139800	t	2	2	0	2013-08-28 15:46:47.039352+05:30
11111	INCOMING	66477700	t	2	2	0	2013-08-28 15:46:47.04243+05:30
11112	INCOMING	46204100	t	2	2	0	2013-08-28 15:46:47.045301+05:30
11113	INCOMING	39840700	t	2	2	0	2013-08-28 15:46:47.049138+05:30
11114	INCOMING	43790200	t	2	2	0	2013-08-28 15:46:47.053186+05:30
11835	INCOMING	30997600	t	2	2	0	2013-08-29 07:31:08.203694+05:30
11836	INCOMING	46208600	t	2	2	0	2013-08-29 07:31:08.229161+05:30
11837	INCOMING	66448400	t	2	2	0	2013-08-29 07:31:08.237124+05:30
11838	INCOMING	33608900	t	2	2	0	2013-08-29 07:31:08.240903+05:30
11839	INCOMING	30147000	t	2	2	0	2013-08-29 07:31:08.24485+05:30
11840	INCOMING	30571500	t	2	2	0	2013-08-29 07:31:08.24694+05:30
11841	INCOMING	49425400	t	2	4	0	2013-08-29 07:31:08.253361+05:30
11842	INCOMING	43139800	t	2	2	0	2013-08-29 07:31:08.255904+05:30
11843	INCOMING	66477700	t	2	2	0	2013-08-29 07:31:08.258101+05:30
11844	INCOMING	46204100	t	2	2	0	2013-08-29 07:31:08.26089+05:30
11845	INCOMING	39840700	t	2	2	0	2013-08-29 07:31:08.264888+05:30
11846	INCOMING	43790200	t	2	2	0	2013-08-29 07:31:08.268877+05:30
11115	INCOMING	30997600	t	2	2	0	2013-08-28 16:01:47.181719+05:30
11116	INCOMING	46208600	t	1	1	0	2013-08-28 16:01:47.201898+05:30
11117	INCOMING	66448400	t	2	2	0	2013-08-28 16:01:47.205575+05:30
11118	INCOMING	33608900	t	1	1	0	2013-08-28 16:01:47.208566+05:30
11119	INCOMING	30147000	t	1	1	0	2013-08-28 16:01:47.21228+05:30
11120	INCOMING	30571500	t	2	2	0	2013-08-28 16:01:47.221521+05:30
11121	INCOMING	49425400	t	2	2	0	2013-08-28 16:01:47.22545+05:30
11122	INCOMING	43139800	t	1	1	0	2013-08-28 16:01:47.229497+05:30
11123	INCOMING	66477700	t	2	2	0	2013-08-28 16:01:47.233453+05:30
11124	INCOMING	46204100	t	2	2	0	2013-08-28 16:01:47.23836+05:30
11125	INCOMING	39840700	t	2	2	0	2013-08-28 16:01:47.240596+05:30
11126	INCOMING	43790200	t	1	1	0	2013-08-28 16:01:47.24548+05:30
11847	INCOMING	30997600	t	2	2	0	2013-08-29 07:46:09.060375+05:30
11848	INCOMING	46208600	t	2	2	0	2013-08-29 07:46:09.083149+05:30
11849	INCOMING	66448400	t	2	2	0	2013-08-29 07:46:09.086382+05:30
11850	INCOMING	33608900	t	2	2	0	2013-08-29 07:46:09.089069+05:30
11851	INCOMING	30147000	t	2	2	0	2013-08-29 07:46:09.093064+05:30
11852	INCOMING	30571500	t	2	2	0	2013-08-29 07:46:09.096242+05:30
11853	INCOMING	49425400	t	2	2	0	2013-08-29 07:46:09.100959+05:30
11854	INCOMING	43139800	t	2	2	0	2013-08-29 07:46:09.104892+05:30
11855	INCOMING	66477700	t	2	2	0	2013-08-29 07:46:09.108888+05:30
11856	INCOMING	46204100	t	2	2	0	2013-08-29 07:46:09.111572+05:30
11857	INCOMING	39840700	t	2	2	0	2013-08-29 07:46:09.117007+05:30
11858	INCOMING	43790200	t	2	2	0	2013-08-29 07:46:09.120778+05:30
11127	INCOMING	30997600	t	2	2	0	2013-08-28 16:16:44.225883+05:30
11128	INCOMING	46208600	t	2	2	0	2013-08-28 16:16:44.248574+05:30
11129	INCOMING	66448400	t	2	2	0	2013-08-28 16:16:44.252473+05:30
11130	INCOMING	33608900	t	2	2	0	2013-08-28 16:16:44.256212+05:30
11131	INCOMING	30147000	t	1	1	0	2013-08-28 16:16:44.260353+05:30
11132	INCOMING	30571500	t	2	2	0	2013-08-28 16:16:44.264246+05:30
11133	INCOMING	49425400	t	2	3	0	2013-08-28 16:16:44.26824+05:30
11134	INCOMING	43139800	t	1	1	0	2013-08-28 16:16:44.272282+05:30
11135	INCOMING	66477700	t	1	1	0	2013-08-28 16:16:44.275403+05:30
11136	INCOMING	46204100	t	1	1	0	2013-08-28 16:16:44.280279+05:30
11137	INCOMING	39840700	t	2	2	0	2013-08-28 16:16:44.282471+05:30
11138	INCOMING	43790200	t	1	1	0	2013-08-28 16:16:44.288218+05:30
11859	INCOMING	30997600	t	2	2	0	2013-08-29 08:01:18.888928+05:30
11860	INCOMING	46208600	t	1	1	0	2013-08-29 08:01:20.139004+05:30
11861	INCOMING	66448400	t	2	2	0	2013-08-29 08:01:20.145464+05:30
11862	INCOMING	33608900	t	2	2	0	2013-08-29 08:01:20.350746+05:30
11863	INCOMING	30147000	t	2	2	0	2013-08-29 08:01:20.360879+05:30
11864	INCOMING	30571500	t	2	2	0	2013-08-29 08:01:20.572884+05:30
11865	INCOMING	49425400	t	2	2	0	2013-08-29 08:01:20.577632+05:30
11866	INCOMING	43139800	t	2	2	0	2013-08-29 08:01:20.783335+05:30
11867	INCOMING	66477700	t	2	2	0	2013-08-29 08:01:20.790184+05:30
11868	INCOMING	46204100	t	2	2	0	2013-08-29 08:01:20.879741+05:30
11869	INCOMING	39840700	t	2	2	0	2013-08-29 08:01:20.987145+05:30
11870	INCOMING	43790200	t	2	2	0	2013-08-29 08:01:20.993486+05:30
11139	INCOMING	30997600	t	2	2	0	2013-08-28 16:31:22.436004+05:30
11140	INCOMING	46208600	t	2	2	0	2013-08-28 16:31:22.466419+05:30
11141	INCOMING	66448400	t	1	3	0	2013-08-28 16:31:22.473995+05:30
11142	INCOMING	33608900	t	2	4	0	2013-08-28 16:31:22.47825+05:30
11143	INCOMING	30147000	t	2	3	0	2013-08-28 16:31:22.480888+05:30
11144	INCOMING	30571500	t	2	2	0	2013-08-28 16:31:22.486439+05:30
11145	INCOMING	49425400	t	2	4	0	2013-08-28 16:31:22.48906+05:30
11146	INCOMING	43139800	t	2	2	0	2013-08-28 16:31:22.493509+05:30
11147	INCOMING	66477700	t	1	1	0	2013-08-28 16:31:22.49783+05:30
11148	INCOMING	46204100	t	2	2	0	2013-08-28 16:31:22.500974+05:30
11149	INCOMING	39840700	t	2	2	0	2013-08-28 16:31:22.504839+05:30
11150	INCOMING	43790200	t	2	2	0	2013-08-28 16:31:22.508332+05:30
11871	INCOMING	30997600	t	2	2	0	2013-08-29 08:16:15.193572+05:30
11872	INCOMING	46208600	t	2	2	0	2013-08-29 08:16:15.217618+05:30
11873	INCOMING	66448400	t	2	2	0	2013-08-29 08:16:15.221596+05:30
11874	INCOMING	33608900	t	2	2	0	2013-08-29 08:16:15.225379+05:30
11875	INCOMING	30147000	t	2	2	0	2013-08-29 08:16:15.227604+05:30
11876	INCOMING	30571500	t	2	2	0	2013-08-29 08:16:15.230771+05:30
11877	INCOMING	49425400	t	2	3	0	2013-08-29 08:16:15.233426+05:30
11878	INCOMING	43139800	t	2	2	0	2013-08-29 08:16:15.236942+05:30
11879	INCOMING	66477700	t	2	2	0	2013-08-29 08:16:15.241426+05:30
11880	INCOMING	46204100	t	2	2	0	2013-08-29 08:16:15.2454+05:30
11881	INCOMING	39840700	t	2	2	0	2013-08-29 08:16:15.249413+05:30
11882	INCOMING	43790200	t	2	2	0	2013-08-29 08:16:15.252886+05:30
11151	INCOMING	30997600	t	2	2	0	2013-08-28 16:46:18.60061+05:30
11152	INCOMING	46208600	t	2	2	0	2013-08-28 16:46:18.625365+05:30
11153	INCOMING	66448400	t	2	2	0	2013-08-28 16:46:18.627838+05:30
11154	INCOMING	33608900	t	2	2	0	2013-08-28 16:46:18.630991+05:30
11155	INCOMING	30147000	t	2	2	0	2013-08-28 16:46:18.633241+05:30
11156	INCOMING	30571500	t	2	2	0	2013-08-28 16:46:18.63714+05:30
11157	INCOMING	49425400	t	2	3	0	2013-08-28 16:46:18.641072+05:30
11158	INCOMING	43139800	t	2	2	0	2013-08-28 16:46:18.645164+05:30
11159	INCOMING	66477700	t	2	2	0	2013-08-28 16:46:18.648721+05:30
11160	INCOMING	46204100	t	2	2	0	2013-08-28 16:46:18.651758+05:30
11161	INCOMING	39840700	t	2	2	0	2013-08-28 16:46:18.655378+05:30
11162	INCOMING	43790200	t	2	2	0	2013-08-28 16:46:18.661088+05:30
11883	INCOMING	30997600	t	2	2	0	2013-08-29 08:31:08.729242+05:30
11884	INCOMING	46208600	t	2	2	0	2013-08-29 08:31:08.752038+05:30
11885	INCOMING	66448400	t	2	2	0	2013-08-29 08:31:08.757835+05:30
11886	INCOMING	33608900	t	2	2	0	2013-08-29 08:31:08.760738+05:30
11887	INCOMING	30147000	t	2	2	0	2013-08-29 08:31:08.765633+05:30
11888	INCOMING	30571500	t	2	2	0	2013-08-29 08:31:08.769478+05:30
11889	INCOMING	49425400	t	2	4	0	2013-08-29 08:31:08.773622+05:30
11890	INCOMING	43139800	t	2	2	0	2013-08-29 08:31:08.77602+05:30
11891	INCOMING	66477700	t	2	2	0	2013-08-29 08:31:08.778296+05:30
11892	INCOMING	46204100	t	2	2	0	2013-08-29 08:31:08.781608+05:30
11893	INCOMING	39840700	t	2	2	0	2013-08-29 08:31:08.785894+05:30
11894	INCOMING	43790200	t	2	2	0	2013-08-29 08:31:08.788046+05:30
11163	INCOMING	30997600	t	2	2	0	2013-08-28 17:01:22.657749+05:30
11164	INCOMING	46208600	t	1	1	0	2013-08-28 17:01:22.685138+05:30
11165	INCOMING	66448400	t	2	2	0	2013-08-28 17:01:22.689653+05:30
11166	INCOMING	33608900	t	2	2	0	2013-08-28 17:01:22.69369+05:30
11167	INCOMING	30147000	t	2	2	0	2013-08-28 17:01:22.697911+05:30
11168	INCOMING	30571500	t	2	2	0	2013-08-28 17:01:22.701611+05:30
11169	INCOMING	49425400	t	2	3	0	2013-08-28 17:01:22.70546+05:30
11170	INCOMING	43139800	t	2	2	0	2013-08-28 17:01:22.709551+05:30
11171	INCOMING	66477700	t	2	2	0	2013-08-28 17:01:22.71368+05:30
11172	INCOMING	46204100	t	2	2	0	2013-08-28 17:01:22.717409+05:30
11173	INCOMING	39840700	t	2	2	0	2013-08-28 17:01:22.719785+05:30
11174	INCOMING	43790200	t	2	2	0	2013-08-28 17:01:22.72246+05:30
11895	INCOMING	30997600	t	2	2	0	2013-08-29 08:46:19.115586+05:30
11896	INCOMING	46208600	t	1	1	0	2013-08-29 08:46:19.1407+05:30
11897	INCOMING	66448400	t	2	2	0	2013-08-29 08:46:19.146176+05:30
11898	INCOMING	33608900	t	2	2	0	2013-08-29 08:46:19.150222+05:30
11899	INCOMING	30147000	t	2	2	0	2013-08-29 08:46:19.153952+05:30
11900	INCOMING	30571500	t	2	2	0	2013-08-29 08:46:19.158477+05:30
11901	INCOMING	49425400	t	2	2	0	2013-08-29 08:46:19.161223+05:30
11902	INCOMING	43139800	t	2	2	0	2013-08-29 08:46:19.166345+05:30
11903	INCOMING	66477700	t	2	2	0	2013-08-29 08:46:19.170154+05:30
11904	INCOMING	46204100	t	2	2	0	2013-08-29 08:46:19.174217+05:30
11905	INCOMING	39840700	t	2	2	0	2013-08-29 08:46:19.176762+05:30
11906	INCOMING	43790200	t	2	2	0	2013-08-29 08:46:19.181346+05:30
11175	INCOMING	30997600	t	2	2	0	2013-08-28 17:16:43.236704+05:30
11176	INCOMING	46208600	t	1	1	0	2013-08-28 17:16:43.260023+05:30
11177	INCOMING	66448400	t	2	2	0	2013-08-28 17:16:43.265195+05:30
11178	INCOMING	33608900	t	1	1	0	2013-08-28 17:16:43.267782+05:30
11179	INCOMING	30147000	t	1	1	0	2013-08-28 17:16:43.273673+05:30
11180	INCOMING	30571500	t	1	1	0	2013-08-28 17:16:43.275769+05:30
11181	INCOMING	49425400	t	2	2	0	2013-08-28 17:16:43.279776+05:30
11182	INCOMING	43139800	t	2	2	0	2013-08-28 17:16:43.284659+05:30
11183	INCOMING	66477700	t	2	2	0	2013-08-28 17:16:43.287901+05:30
11184	INCOMING	46204100	t	2	2	0	2013-08-28 17:16:43.291842+05:30
11185	INCOMING	39840700	t	1	1	0	2013-08-28 17:16:43.298631+05:30
11186	INCOMING	43790200	t	2	2	0	2013-08-28 17:16:43.302949+05:30
11907	INCOMING	30997600	t	2	2	0	2013-08-29 09:01:08.07254+05:30
11908	INCOMING	46208600	t	2	2	0	2013-08-29 09:01:08.095594+05:30
11909	INCOMING	66448400	t	2	4	0	2013-08-29 09:01:08.098365+05:30
11910	INCOMING	33608900	t	2	2	0	2013-08-29 09:01:08.104227+05:30
11911	INCOMING	30147000	t	2	2	0	2013-08-29 09:01:08.106419+05:30
11912	INCOMING	30571500	t	2	2	0	2013-08-29 09:01:08.110372+05:30
11913	INCOMING	49425400	t	2	4	0	2013-08-29 09:01:08.112516+05:30
11914	INCOMING	43139800	t	2	2	0	2013-08-29 09:01:08.115849+05:30
11915	INCOMING	66477700	t	2	2	0	2013-08-29 09:01:08.118403+05:30
11916	INCOMING	46204100	t	2	2	0	2013-08-29 09:01:08.120496+05:30
11917	INCOMING	39840700	t	2	2	0	2013-08-29 09:01:08.124397+05:30
11918	INCOMING	43790200	t	2	2	0	2013-08-29 09:01:08.126907+05:30
11187	INCOMING	30997600	t	2	2	0	2013-08-28 17:31:59.669804+05:30
11188	INCOMING	46208600	t	2	2	0	2013-08-28 17:31:59.693127+05:30
11189	INCOMING	66448400	t	2	2	0	2013-08-28 17:31:59.696144+05:30
11190	INCOMING	33608900	t	2	2	0	2013-08-28 17:31:59.700734+05:30
11191	INCOMING	30147000	t	1	1	0	2013-08-28 17:31:59.704116+05:30
11192	INCOMING	30571500	t	2	2	0	2013-08-28 17:31:59.709533+05:30
11193	INCOMING	49425400	t	2	2	0	2013-08-28 17:31:59.71262+05:30
11194	INCOMING	43139800	t	2	2	0	2013-08-28 17:31:59.715913+05:30
11195	INCOMING	66477700	t	2	2	0	2013-08-28 17:31:59.719352+05:30
11196	INCOMING	46204100	t	2	2	0	2013-08-28 17:31:59.724344+05:30
11197	INCOMING	39840700	t	2	2	0	2013-08-28 17:31:59.728321+05:30
11198	INCOMING	43790200	t	2	2	0	2013-08-28 17:31:59.732504+05:30
11919	INCOMING	30997600	t	2	2	0	2013-08-29 09:16:08.937565+05:30
11920	INCOMING	46208600	t	2	2	0	2013-08-29 09:16:08.963103+05:30
11921	INCOMING	66448400	t	2	2	0	2013-08-29 09:16:08.966773+05:30
11922	INCOMING	33608900	t	2	2	0	2013-08-29 09:16:08.970788+05:30
11923	INCOMING	30147000	t	2	2	0	2013-08-29 09:16:08.974636+05:30
11924	INCOMING	30571500	t	2	2	0	2013-08-29 09:16:08.976622+05:30
11925	INCOMING	49425400	t	2	2	0	2013-08-29 09:16:08.978614+05:30
11926	INCOMING	43139800	t	2	2	0	2013-08-29 09:16:08.982951+05:30
11927	INCOMING	66477700	t	2	2	0	2013-08-29 09:16:08.987371+05:30
11928	INCOMING	46204100	t	2	2	0	2013-08-29 09:16:08.991105+05:30
11929	INCOMING	39840700	t	2	2	0	2013-08-29 09:16:08.993816+05:30
11930	INCOMING	43790200	t	2	2	0	2013-08-29 09:16:08.998912+05:30
11199	INCOMING	30997600	t	2	2	0	2013-08-28 17:46:26.934033+05:30
11200	INCOMING	46208600	t	2	3	0	2013-08-28 17:46:26.961126+05:30
11201	INCOMING	66448400	t	2	4	0	2013-08-28 17:46:26.964784+05:30
11202	INCOMING	33608900	t	1	3	0	2013-08-28 17:46:26.968108+05:30
11203	INCOMING	30147000	t	2	3	0	2013-08-28 17:46:26.97151+05:30
11204	INCOMING	30571500	t	2	2	0	2013-08-28 17:46:26.976812+05:30
11205	INCOMING	49425400	t	2	4	0	2013-08-28 17:46:26.980663+05:30
11206	INCOMING	43139800	t	2	2	0	2013-08-28 17:46:26.98371+05:30
11207	INCOMING	66477700	t	2	2	0	2013-08-28 17:46:26.986654+05:30
11208	INCOMING	46204100	t	2	2	0	2013-08-28 17:46:26.992684+05:30
11209	INCOMING	39840700	t	1	1	0	2013-08-28 17:46:26.996712+05:30
11210	INCOMING	43790200	t	2	2	0	2013-08-28 17:46:27.001331+05:30
11931	INCOMING	30997600	t	2	2	0	2013-08-29 09:31:42.198129+05:30
11932	INCOMING	46208600	t	2	2	0	2013-08-29 09:31:42.220301+05:30
11933	INCOMING	66448400	t	2	2	0	2013-08-29 09:31:42.222703+05:30
11934	INCOMING	33608900	t	2	2	0	2013-08-29 09:31:42.226755+05:30
11935	INCOMING	30147000	t	2	2	0	2013-08-29 09:31:42.230658+05:30
11936	INCOMING	30571500	t	2	2	0	2013-08-29 09:31:42.23497+05:30
11937	INCOMING	49425400	t	2	2	0	2013-08-29 09:31:42.238627+05:30
11938	INCOMING	43139800	t	2	2	0	2013-08-29 09:31:42.24276+05:30
11939	INCOMING	66477700	t	2	2	0	2013-08-29 09:31:42.246752+05:30
11940	INCOMING	46204100	t	2	2	0	2013-08-29 09:31:42.250951+05:30
11941	INCOMING	39840700	t	2	2	0	2013-08-29 09:31:42.254836+05:30
11942	INCOMING	43790200	t	2	2	0	2013-08-29 09:31:42.258914+05:30
11211	INCOMING	30997600	t	2	2	0	2013-08-28 18:01:51.167648+05:30
11212	INCOMING	46208600	t	1	1	0	2013-08-28 18:01:51.190521+05:30
11213	INCOMING	66448400	t	2	2	0	2013-08-28 18:01:51.19516+05:30
11214	INCOMING	33608900	t	2	2	0	2013-08-28 18:01:51.198246+05:30
11215	INCOMING	30147000	t	1	1	0	2013-08-28 18:01:51.200373+05:30
11216	INCOMING	30571500	t	2	2	0	2013-08-28 18:01:51.202972+05:30
11217	INCOMING	49425400	t	2	2	0	2013-08-28 18:01:51.206239+05:30
11218	INCOMING	43139800	t	2	2	0	2013-08-28 18:01:51.209419+05:30
11219	INCOMING	66477700	t	2	2	0	2013-08-28 18:01:51.213069+05:30
11220	INCOMING	46204100	t	2	2	0	2013-08-28 18:01:51.21897+05:30
11221	INCOMING	39840700	t	2	2	0	2013-08-28 18:01:51.222948+05:30
11222	INCOMING	43790200	t	1	1	0	2013-08-28 18:01:51.226991+05:30
11943	INCOMING	30997600	t	2	2	0	2013-08-29 09:46:12.347839+05:30
11944	INCOMING	46208600	t	2	2	0	2013-08-29 09:46:12.367586+05:30
11945	INCOMING	66448400	t	2	3	0	2013-08-29 09:46:12.370535+05:30
11946	INCOMING	33608900	t	2	2	0	2013-08-29 09:46:12.373822+05:30
11947	INCOMING	30147000	t	2	2	0	2013-08-29 09:46:12.378296+05:30
11948	INCOMING	30571500	t	2	2	0	2013-08-29 09:46:12.382299+05:30
11949	INCOMING	49425400	t	2	4	0	2013-08-29 09:46:12.386289+05:30
11950	INCOMING	43139800	t	2	2	0	2013-08-29 09:46:12.389129+05:30
11951	INCOMING	66477700	t	2	2	0	2013-08-29 09:46:12.394425+05:30
11952	INCOMING	46204100	t	2	2	0	2013-08-29 09:46:12.398479+05:30
11953	INCOMING	39840700	t	2	2	0	2013-08-29 09:46:12.402097+05:30
11954	INCOMING	43790200	t	2	2	0	2013-08-29 09:46:12.407028+05:30
11223	INCOMING	30997600	t	2	2	0	2013-08-28 18:16:11.849247+05:30
11224	INCOMING	46208600	t	2	2	0	2013-08-28 18:16:11.871142+05:30
11225	INCOMING	66448400	t	2	4	0	2013-08-28 18:16:11.874711+05:30
11226	INCOMING	33608900	t	2	4	0	2013-08-28 18:16:11.879464+05:30
11227	INCOMING	30147000	t	2	3	0	2013-08-28 18:16:11.883701+05:30
11228	INCOMING	30571500	t	2	2	0	2013-08-28 18:16:11.887216+05:30
11229	INCOMING	49425400	t	2	4	0	2013-08-28 18:16:11.891451+05:30
11230	INCOMING	43139800	t	2	2	0	2013-08-28 18:16:11.895388+05:30
11231	INCOMING	66477700	t	2	2	0	2013-08-28 18:16:11.899386+05:30
11232	INCOMING	46204100	t	2	2	0	2013-08-28 18:16:11.903588+05:30
11233	INCOMING	39840700	t	2	2	0	2013-08-28 18:16:11.907447+05:30
11234	INCOMING	43790200	t	2	2	0	2013-08-28 18:16:11.911369+05:30
11955	INCOMING	30997600	t	2	2	0	2013-08-29 10:01:20.02135+05:30
11956	INCOMING	46208600	t	2	2	0	2013-08-29 10:01:20.046792+05:30
11957	INCOMING	66448400	t	2	2	0	2013-08-29 10:01:20.050945+05:30
11958	INCOMING	33608900	t	2	2	0	2013-08-29 10:01:20.054878+05:30
11959	INCOMING	30147000	t	2	2	0	2013-08-29 10:01:20.058853+05:30
11960	INCOMING	30571500	t	2	2	0	2013-08-29 10:01:20.061953+05:30
11961	INCOMING	49425400	t	2	2	0	2013-08-29 10:01:20.064879+05:30
11962	INCOMING	43139800	t	2	2	0	2013-08-29 10:01:20.068406+05:30
11963	INCOMING	66477700	t	2	2	0	2013-08-29 10:01:20.074438+05:30
11964	INCOMING	46204100	t	2	2	0	2013-08-29 10:01:20.077525+05:30
11965	INCOMING	39840700	t	2	2	0	2013-08-29 10:01:20.087021+05:30
11966	INCOMING	43790200	t	2	2	0	2013-08-29 10:01:20.090927+05:30
11235	INCOMING	30997600	t	2	2	0	2013-08-28 18:31:10.888611+05:30
11236	INCOMING	46208600	t	2	2	0	2013-08-28 18:31:10.908497+05:30
11237	INCOMING	66448400	t	2	2	0	2013-08-28 18:31:10.911589+05:30
11238	INCOMING	33608900	t	2	2	0	2013-08-28 18:31:10.915578+05:30
11239	INCOMING	30147000	t	2	2	0	2013-08-28 18:31:10.91817+05:30
11240	INCOMING	30571500	t	2	2	0	2013-08-28 18:31:10.923743+05:30
11241	INCOMING	49425400	t	2	2	0	2013-08-28 18:31:10.927802+05:30
11242	INCOMING	43139800	t	2	2	0	2013-08-28 18:31:10.931003+05:30
11243	INCOMING	66477700	t	2	2	0	2013-08-28 18:31:10.934391+05:30
11244	INCOMING	46204100	t	2	2	0	2013-08-28 18:31:10.940985+05:30
11245	INCOMING	39840700	t	2	2	0	2013-08-28 18:31:10.943524+05:30
11246	INCOMING	43790200	t	2	2	0	2013-08-28 18:31:10.947568+05:30
11967	INCOMING	30997600	t	2	2	0	2013-08-29 10:16:07.927306+05:30
11968	INCOMING	46208600	t	2	2	0	2013-08-29 10:16:07.951362+05:30
11969	INCOMING	66448400	t	2	4	0	2013-08-29 10:16:07.954212+05:30
11970	INCOMING	33608900	t	2	2	0	2013-08-29 10:16:07.958898+05:30
11971	INCOMING	30147000	t	2	2	0	2013-08-29 10:16:07.962902+05:30
11972	INCOMING	30571500	t	2	2	0	2013-08-29 10:16:07.966658+05:30
11973	INCOMING	49425400	t	2	4	0	2013-08-29 10:16:07.970846+05:30
11974	INCOMING	43139800	t	2	2	0	2013-08-29 10:16:07.974841+05:30
11975	INCOMING	66477700	t	2	2	0	2013-08-29 10:16:07.979479+05:30
11976	INCOMING	46204100	t	2	2	0	2013-08-29 10:16:07.983104+05:30
11977	INCOMING	39840700	t	2	2	0	2013-08-29 10:16:07.987222+05:30
11978	INCOMING	43790200	t	2	2	0	2013-08-29 10:16:07.991054+05:30
11247	INCOMING	30997600	t	2	2	0	2013-08-28 18:46:22.829327+05:30
11248	INCOMING	46208600	t	2	2	0	2013-08-28 18:46:22.85639+05:30
11249	INCOMING	66448400	t	2	2	0	2013-08-28 18:46:22.859502+05:30
11250	INCOMING	33608900	t	2	2	0	2013-08-28 18:46:22.863323+05:30
11251	INCOMING	30147000	t	1	1	0	2013-08-28 18:46:22.867778+05:30
11252	INCOMING	30571500	t	2	2	0	2013-08-28 18:46:22.872102+05:30
11253	INCOMING	49425400	t	1	1	0	2013-08-28 18:46:22.876054+05:30
11254	INCOMING	43139800	t	2	2	0	2013-08-28 18:46:22.880094+05:30
11255	INCOMING	66477700	t	2	2	0	2013-08-28 18:46:22.884056+05:30
11256	INCOMING	46204100	t	2	2	0	2013-08-28 18:46:22.888233+05:30
11257	INCOMING	39840700	t	2	2	0	2013-08-28 18:46:22.892109+05:30
11258	INCOMING	43790200	t	2	2	0	2013-08-28 18:46:22.896041+05:30
11979	INCOMING	30997600	t	2	2	0	2013-08-29 10:31:12.859258+05:30
11980	INCOMING	46208600	t	2	2	0	2013-08-29 10:31:12.880672+05:30
11981	INCOMING	66448400	t	2	2	0	2013-08-29 10:31:12.883911+05:30
11982	INCOMING	33608900	t	2	2	0	2013-08-29 10:31:12.887801+05:30
11983	INCOMING	30147000	t	2	2	0	2013-08-29 10:31:12.891747+05:30
11984	INCOMING	30571500	t	2	2	0	2013-08-29 10:31:12.895937+05:30
11985	INCOMING	49425400	t	2	2	0	2013-08-29 10:31:12.899681+05:30
11986	INCOMING	43139800	t	2	2	0	2013-08-29 10:31:12.903575+05:30
11987	INCOMING	66477700	t	2	2	0	2013-08-29 10:31:12.906555+05:30
11988	INCOMING	46204100	t	2	2	0	2013-08-29 10:31:12.909981+05:30
11989	INCOMING	39840700	t	2	2	0	2013-08-29 10:31:12.915393+05:30
11990	INCOMING	43790200	t	2	2	0	2013-08-29 10:31:12.919964+05:30
11259	INCOMING	30997600	t	2	2	0	2013-08-28 19:01:15.959109+05:30
11260	INCOMING	46208600	t	2	2	0	2013-08-28 19:01:15.985315+05:30
11261	INCOMING	66448400	t	2	2	0	2013-08-28 19:01:15.989406+05:30
11262	INCOMING	33608900	t	2	2	0	2013-08-28 19:01:15.993514+05:30
11263	INCOMING	30147000	t	2	2	0	2013-08-28 19:01:15.997813+05:30
11264	INCOMING	30571500	t	2	2	0	2013-08-28 19:01:16.001621+05:30
11265	INCOMING	49425400	t	2	3	0	2013-08-28 19:01:16.00577+05:30
11266	INCOMING	43139800	t	2	2	0	2013-08-28 19:01:16.009546+05:30
11267	INCOMING	66477700	t	2	2	0	2013-08-28 19:01:16.013109+05:30
11268	INCOMING	46204100	t	2	2	0	2013-08-28 19:01:16.016018+05:30
11269	INCOMING	39840700	t	2	2	0	2013-08-28 19:01:16.019578+05:30
11270	INCOMING	43790200	t	2	2	0	2013-08-28 19:01:16.022969+05:30
11991	INCOMING	30997600	t	2	2	0	2013-08-29 10:46:09.714822+05:30
11992	INCOMING	46208600	t	2	2	0	2013-08-29 10:46:09.73957+05:30
11993	INCOMING	66448400	t	2	2	0	2013-08-29 10:46:09.743198+05:30
11994	INCOMING	33608900	t	2	2	0	2013-08-29 10:46:09.747358+05:30
11995	INCOMING	30147000	t	2	2	0	2013-08-29 10:46:09.751254+05:30
11996	INCOMING	30571500	t	2	2	0	2013-08-29 10:46:09.755174+05:30
11997	INCOMING	49425400	t	2	3	0	2013-08-29 10:46:09.759169+05:30
11998	INCOMING	43139800	t	2	2	0	2013-08-29 10:46:09.762066+05:30
11999	INCOMING	66477700	t	2	2	0	2013-08-29 10:46:09.767153+05:30
12000	INCOMING	46204100	t	2	2	0	2013-08-29 10:46:09.77149+05:30
12001	INCOMING	39840700	t	2	2	0	2013-08-29 10:46:09.775256+05:30
12002	INCOMING	43790200	t	2	2	0	2013-08-29 10:46:09.779302+05:30
11271	INCOMING	30997600	t	2	2	0	2013-08-28 19:16:12.7911+05:30
11272	INCOMING	46208600	t	2	2	0	2013-08-28 19:16:12.810914+05:30
11273	INCOMING	66448400	t	2	2	0	2013-08-28 19:16:12.813687+05:30
11274	INCOMING	33608900	t	2	2	0	2013-08-28 19:16:12.816536+05:30
11275	INCOMING	30147000	t	2	2	0	2013-08-28 19:16:12.823434+05:30
11276	INCOMING	30571500	t	2	2	0	2013-08-28 19:16:12.825765+05:30
11277	INCOMING	49425400	t	2	3	0	2013-08-28 19:16:12.829755+05:30
11278	INCOMING	43139800	t	2	2	0	2013-08-28 19:16:12.833992+05:30
11279	INCOMING	66477700	t	2	2	0	2013-08-28 19:16:12.837839+05:30
11280	INCOMING	46204100	t	2	2	0	2013-08-28 19:16:12.841631+05:30
11281	INCOMING	39840700	t	2	2	0	2013-08-28 19:16:12.844527+05:30
11282	INCOMING	43790200	t	2	2	0	2013-08-28 19:16:12.849722+05:30
12003	INCOMING	30997600	t	2	2	0	2013-08-29 11:01:09.525093+05:30
12004	INCOMING	46208600	t	2	2	0	2013-08-29 11:01:09.545754+05:30
12005	INCOMING	66448400	t	2	2	0	2013-08-29 11:01:09.5515+05:30
12006	INCOMING	33608900	t	2	2	0	2013-08-29 11:01:09.554172+05:30
12007	INCOMING	30147000	t	2	2	0	2013-08-29 11:01:09.559415+05:30
12008	INCOMING	30571500	t	2	2	0	2013-08-29 11:01:09.562448+05:30
12009	INCOMING	49425400	t	2	2	0	2013-08-29 11:01:09.565715+05:30
12010	INCOMING	43139800	t	2	2	0	2013-08-29 11:01:09.571127+05:30
12011	INCOMING	66477700	t	2	2	0	2013-08-29 11:01:09.575155+05:30
12012	INCOMING	46204100	t	2	2	0	2013-08-29 11:01:09.577792+05:30
12013	INCOMING	39840700	t	2	2	0	2013-08-29 11:01:09.580489+05:30
12014	INCOMING	43790200	t	2	2	0	2013-08-29 11:01:09.582841+05:30
11283	INCOMING	30997600	t	2	2	0	2013-08-28 19:31:17.299759+05:30
11284	INCOMING	46208600	t	2	2	0	2013-08-28 19:31:17.321491+05:30
11285	INCOMING	66448400	t	2	2	0	2013-08-28 19:31:17.324533+05:30
11286	INCOMING	33608900	t	2	2	0	2013-08-28 19:31:17.327778+05:30
11287	INCOMING	30147000	t	2	2	0	2013-08-28 19:31:17.329943+05:30
11288	INCOMING	30571500	t	2	2	0	2013-08-28 19:31:17.333886+05:30
11289	INCOMING	49425400	t	2	2	0	2013-08-28 19:31:17.335941+05:30
11290	INCOMING	43139800	t	2	2	0	2013-08-28 19:31:17.337924+05:30
11291	INCOMING	66477700	t	2	2	0	2013-08-28 19:31:17.341923+05:30
11292	INCOMING	46204100	t	2	2	0	2013-08-28 19:31:17.345977+05:30
11293	INCOMING	39840700	t	2	2	0	2013-08-28 19:31:17.348507+05:30
11294	INCOMING	43790200	t	2	2	0	2013-08-28 19:31:17.351401+05:30
12015	INCOMING	30997600	t	2	2	0	2013-08-29 11:16:15.459828+05:30
12016	INCOMING	46208600	t	2	2	0	2013-08-29 11:16:15.479868+05:30
12017	INCOMING	66448400	t	2	2	0	2013-08-29 11:16:15.482346+05:30
12018	INCOMING	33608900	t	2	2	0	2013-08-29 11:16:15.487686+05:30
12019	INCOMING	30147000	t	2	2	0	2013-08-29 11:16:15.491666+05:30
12020	INCOMING	30571500	t	2	2	0	2013-08-29 11:16:15.49566+05:30
12021	INCOMING	49425400	t	2	2	0	2013-08-29 11:16:15.499662+05:30
12022	INCOMING	43139800	t	2	2	0	2013-08-29 11:16:15.503706+05:30
12023	INCOMING	66477700	t	2	2	0	2013-08-29 11:16:15.507715+05:30
12024	INCOMING	46204100	t	2	2	0	2013-08-29 11:16:15.511226+05:30
12025	INCOMING	39840700	t	2	2	0	2013-08-29 11:16:15.514473+05:30
12026	INCOMING	43790200	t	2	2	0	2013-08-29 11:16:15.517582+05:30
11295	INCOMING	30997600	t	2	3	0	2013-08-28 19:46:11.13309+05:30
11296	INCOMING	46208600	t	2	2	0	2013-08-28 19:46:11.161782+05:30
11297	INCOMING	66448400	t	2	2	0	2013-08-28 19:46:11.165565+05:30
11298	INCOMING	33608900	t	2	2	0	2013-08-28 19:46:11.1687+05:30
11299	INCOMING	30147000	t	2	2	0	2013-08-28 19:46:11.171183+05:30
11300	INCOMING	30571500	t	2	2	0	2013-08-28 19:46:11.174391+05:30
11301	INCOMING	49425400	t	2	4	0	2013-08-28 19:46:11.178224+05:30
11302	INCOMING	43139800	t	2	2	0	2013-08-28 19:46:11.182587+05:30
11303	INCOMING	66477700	t	2	2	0	2013-08-28 19:46:11.186525+05:30
11304	INCOMING	46204100	t	2	2	0	2013-08-28 19:46:11.194412+05:30
11305	INCOMING	39840700	t	2	2	0	2013-08-28 19:46:11.198271+05:30
11306	INCOMING	43790200	t	2	2	0	2013-08-28 19:46:11.202494+05:30
12027	INCOMING	30997600	t	1	1	0	2013-08-29 11:31:18.933155+05:30
12028	INCOMING	46208600	t	2	2	0	2013-08-29 11:31:18.953697+05:30
12029	INCOMING	66448400	t	2	2	0	2013-08-29 11:31:18.96004+05:30
12030	INCOMING	33608900	t	2	2	0	2013-08-29 11:31:18.964682+05:30
12031	INCOMING	30147000	t	2	2	0	2013-08-29 11:31:18.968246+05:30
12032	INCOMING	30571500	t	2	2	0	2013-08-29 11:31:18.972338+05:30
12033	INCOMING	49425400	t	2	2	0	2013-08-29 11:31:18.97594+05:30
12034	INCOMING	43139800	t	2	2	0	2013-08-29 11:31:18.979435+05:30
12035	INCOMING	66477700	t	2	2	0	2013-08-29 11:31:18.984222+05:30
12036	INCOMING	46204100	t	2	2	0	2013-08-29 11:31:18.986671+05:30
12037	INCOMING	39840700	t	2	2	0	2013-08-29 11:31:18.989166+05:30
12038	INCOMING	43790200	t	2	2	0	2013-08-29 11:31:18.991759+05:30
11307	INCOMING	30997600	t	2	2	0	2013-08-28 20:01:19.290108+05:30
11308	INCOMING	46208600	t	1	1	0	2013-08-28 20:01:19.319195+05:30
11309	INCOMING	66448400	t	2	2	0	2013-08-28 20:01:19.321343+05:30
11310	INCOMING	33608900	t	2	2	0	2013-08-28 20:01:19.324188+05:30
11311	INCOMING	30147000	t	2	2	0	2013-08-28 20:01:19.328163+05:30
11312	INCOMING	30571500	t	2	2	0	2013-08-28 20:01:19.331738+05:30
11313	INCOMING	49425400	t	2	2	0	2013-08-28 20:01:19.336102+05:30
11314	INCOMING	43139800	t	2	2	0	2013-08-28 20:01:19.340148+05:30
11315	INCOMING	66477700	t	2	2	0	2013-08-28 20:01:19.344126+05:30
11316	INCOMING	46204100	t	2	2	0	2013-08-28 20:01:19.348931+05:30
11317	INCOMING	39840700	t	2	2	0	2013-08-28 20:01:19.351067+05:30
11318	INCOMING	43790200	t	2	2	0	2013-08-28 20:01:19.356117+05:30
12039	INCOMING	30997600	t	2	2	0	2013-08-29 11:46:21.480418+05:30
12040	INCOMING	46208600	t	2	2	0	2013-08-29 11:46:21.504164+05:30
12041	INCOMING	66448400	t	2	2	0	2013-08-29 11:46:21.508032+05:30
12042	INCOMING	33608900	t	2	2	0	2013-08-29 11:46:21.512002+05:30
12043	INCOMING	30147000	t	2	2	0	2013-08-29 11:46:21.515974+05:30
12044	INCOMING	30571500	t	2	2	0	2013-08-29 11:46:21.520059+05:30
12045	INCOMING	49425400	t	2	2	0	2013-08-29 11:46:21.523877+05:30
12046	INCOMING	43139800	t	1	1	0	2013-08-29 11:46:21.528211+05:30
12047	INCOMING	66477700	t	2	2	0	2013-08-29 11:46:21.531037+05:30
12048	INCOMING	46204100	t	2	2	0	2013-08-29 11:46:21.535555+05:30
12049	INCOMING	39840700	t	2	2	0	2013-08-29 11:46:21.539957+05:30
12050	INCOMING	43790200	t	2	2	0	2013-08-29 11:46:21.544004+05:30
11319	INCOMING	30997600	t	2	2	0	2013-08-28 20:16:09.545758+05:30
11320	INCOMING	46208600	t	2	2	0	2013-08-28 20:16:09.570597+05:30
11321	INCOMING	66448400	t	2	3	0	2013-08-28 20:16:09.577727+05:30
11322	INCOMING	33608900	t	2	2	0	2013-08-28 20:16:09.586854+05:30
11323	INCOMING	30147000	t	2	2	0	2013-08-28 20:16:09.598366+05:30
11324	INCOMING	30571500	t	2	2	0	2013-08-28 20:16:09.60764+05:30
11325	INCOMING	49425400	t	2	4	0	2013-08-28 20:16:09.613802+05:30
11326	INCOMING	43139800	t	2	2	0	2013-08-28 20:16:09.617847+05:30
11327	INCOMING	66477700	t	2	2	0	2013-08-28 20:16:09.623135+05:30
11328	INCOMING	46204100	t	2	2	0	2013-08-28 20:16:09.6274+05:30
11329	INCOMING	39840700	t	2	2	0	2013-08-28 20:16:09.633124+05:30
11330	INCOMING	43790200	t	2	2	0	2013-08-28 20:16:09.636494+05:30
12051	INCOMING	30997600	t	2	2	0	2013-08-29 12:01:14.392507+05:30
12052	INCOMING	46208600	t	2	2	0	2013-08-29 12:01:14.416633+05:30
12053	INCOMING	66448400	t	2	2	0	2013-08-29 12:01:14.420367+05:30
12054	INCOMING	33608900	t	2	2	0	2013-08-29 12:01:14.424257+05:30
12055	INCOMING	30147000	t	2	2	0	2013-08-29 12:01:14.428346+05:30
12056	INCOMING	30571500	t	2	2	0	2013-08-29 12:01:14.432342+05:30
12057	INCOMING	49425400	t	2	4	0	2013-08-29 12:01:14.43498+05:30
12058	INCOMING	43139800	t	2	2	0	2013-08-29 12:01:14.438204+05:30
12059	INCOMING	66477700	t	2	2	0	2013-08-29 12:01:14.441328+05:30
12060	INCOMING	46204100	t	2	2	0	2013-08-29 12:01:14.444218+05:30
12061	INCOMING	39840700	t	2	2	0	2013-08-29 12:01:14.446946+05:30
12062	INCOMING	43790200	t	2	2	0	2013-08-29 12:01:14.452482+05:30
11331	INCOMING	30997600	t	2	2	0	2013-08-28 20:31:20.281809+05:30
11332	INCOMING	46208600	t	2	2	0	2013-08-28 20:31:20.3029+05:30
11333	INCOMING	66448400	t	1	1	0	2013-08-28 20:31:20.305772+05:30
11334	INCOMING	33608900	t	2	2	0	2013-08-28 20:31:20.309993+05:30
11335	INCOMING	30147000	t	2	2	0	2013-08-28 20:31:20.313858+05:30
11336	INCOMING	30571500	t	1	1	0	2013-08-28 20:31:20.317512+05:30
11337	INCOMING	49425400	t	2	2	0	2013-08-28 20:31:20.321539+05:30
11338	INCOMING	43139800	t	2	2	0	2013-08-28 20:31:20.324951+05:30
11339	INCOMING	66477700	t	2	2	0	2013-08-28 20:31:20.328243+05:30
11340	INCOMING	46204100	t	2	2	0	2013-08-28 20:31:20.333796+05:30
11341	INCOMING	39840700	t	2	2	0	2013-08-28 20:31:20.337543+05:30
11342	INCOMING	43790200	t	2	2	0	2013-08-28 20:31:20.341965+05:30
12063	INCOMING	30997600	t	2	2	0	2013-08-29 12:16:25.129661+05:30
12064	INCOMING	46208600	t	1	1	0	2013-08-29 12:16:25.156478+05:30
12065	INCOMING	66448400	t	2	2	0	2013-08-29 12:16:25.160476+05:30
12066	INCOMING	33608900	t	2	2	0	2013-08-29 12:16:25.164695+05:30
12067	INCOMING	30147000	t	2	2	0	2013-08-29 12:16:25.168444+05:30
12068	INCOMING	30571500	t	2	2	0	2013-08-29 12:16:25.171076+05:30
12069	INCOMING	49425400	t	2	2	0	2013-08-29 12:16:25.175326+05:30
12070	INCOMING	43139800	t	2	2	0	2013-08-29 12:16:25.180529+05:30
12071	INCOMING	66477700	t	2	2	0	2013-08-29 12:16:25.18332+05:30
12072	INCOMING	46204100	t	2	2	0	2013-08-29 12:16:25.188671+05:30
12073	INCOMING	39840700	t	2	2	0	2013-08-29 12:16:25.192564+05:30
12074	INCOMING	43790200	t	2	2	0	2013-08-29 12:16:25.196672+05:30
11343	INCOMING	30997600	t	2	2	0	2013-08-28 20:46:15.758671+05:30
11344	INCOMING	46208600	t	2	2	0	2013-08-28 20:46:15.781453+05:30
11345	INCOMING	66448400	t	2	2	0	2013-08-28 20:46:15.78506+05:30
11346	INCOMING	33608900	t	2	2	0	2013-08-28 20:46:15.788936+05:30
11347	INCOMING	30147000	t	2	2	0	2013-08-28 20:46:15.792985+05:30
11348	INCOMING	30571500	t	2	2	0	2013-08-28 20:46:15.797072+05:30
11349	INCOMING	49425400	t	2	3	0	2013-08-28 20:46:15.800965+05:30
11350	INCOMING	43139800	t	2	2	0	2013-08-28 20:46:15.804021+05:30
11351	INCOMING	66477700	t	2	2	0	2013-08-28 20:46:15.806931+05:30
11352	INCOMING	46204100	t	2	2	0	2013-08-28 20:46:15.808963+05:30
11353	INCOMING	39840700	t	2	2	0	2013-08-28 20:46:15.812946+05:30
11354	INCOMING	43790200	t	2	2	0	2013-08-28 20:46:15.816701+05:30
12075	INCOMING	30997600	t	2	2	0	2013-08-29 12:31:41.28397+05:30
12076	INCOMING	46208600	t	1	1	0	2013-08-29 12:31:41.309315+05:30
12077	INCOMING	66448400	t	2	2	0	2013-08-29 12:31:41.312435+05:30
12078	INCOMING	33608900	t	2	2	0	2013-08-29 12:31:41.316458+05:30
12079	INCOMING	30147000	t	2	2	0	2013-08-29 12:31:41.320467+05:30
12080	INCOMING	30571500	t	2	2	0	2013-08-29 12:31:41.324595+05:30
12081	INCOMING	49425400	t	2	2	0	2013-08-29 12:31:41.328343+05:30
12082	INCOMING	43139800	t	2	2	0	2013-08-29 12:31:41.332256+05:30
12083	INCOMING	66477700	t	2	2	0	2013-08-29 12:31:41.336433+05:30
12084	INCOMING	46204100	t	2	2	0	2013-08-29 12:31:41.338927+05:30
12085	INCOMING	39840700	t	2	2	0	2013-08-29 12:31:41.342305+05:30
12086	INCOMING	43790200	t	2	2	0	2013-08-29 12:31:41.345243+05:30
11355	INCOMING	30997600	t	2	2	0	2013-08-28 21:01:20.562791+05:30
11356	INCOMING	46208600	t	1	1	0	2013-08-28 21:01:20.589+05:30
11357	INCOMING	66448400	t	2	2	0	2013-08-28 21:01:20.593274+05:30
11358	INCOMING	33608900	t	2	2	0	2013-08-28 21:01:20.597264+05:30
11359	INCOMING	30147000	t	2	2	0	2013-08-28 21:01:20.600613+05:30
11360	INCOMING	30571500	t	2	2	0	2013-08-28 21:01:20.605302+05:30
11361	INCOMING	49425400	t	2	2	0	2013-08-28 21:01:20.609345+05:30
11362	INCOMING	43139800	t	2	2	0	2013-08-28 21:01:20.613293+05:30
11363	INCOMING	66477700	t	2	2	0	2013-08-28 21:01:20.615877+05:30
11364	INCOMING	46204100	t	2	2	0	2013-08-28 21:01:20.618966+05:30
11365	INCOMING	39840700	t	2	2	0	2013-08-28 21:01:20.621274+05:30
11366	INCOMING	43790200	t	2	2	0	2013-08-28 21:01:20.624621+05:30
12087	INCOMING	30997600	t	2	2	0	2013-08-29 12:46:24.193029+05:30
12088	INCOMING	46208600	t	1	1	0	2013-08-29 12:46:24.214739+05:30
12089	INCOMING	66448400	t	2	4	0	2013-08-29 12:46:24.224649+05:30
12090	INCOMING	33608900	t	2	3	0	2013-08-29 12:46:24.228614+05:30
12091	INCOMING	30147000	t	2	2	0	2013-08-29 12:46:24.232162+05:30
12092	INCOMING	30571500	t	2	2	0	2013-08-29 12:46:24.236792+05:30
12093	INCOMING	49425400	t	2	4	0	2013-08-29 12:46:24.239372+05:30
12094	INCOMING	43139800	t	2	2	0	2013-08-29 12:46:24.244598+05:30
12095	INCOMING	66477700	t	2	2	0	2013-08-29 12:46:24.248435+05:30
12096	INCOMING	46204100	t	2	2	0	2013-08-29 12:46:24.252452+05:30
12097	INCOMING	39840700	t	2	2	0	2013-08-29 12:46:24.25646+05:30
12098	INCOMING	43790200	t	2	2	0	2013-08-29 12:46:24.260539+05:30
11367	INCOMING	30997600	t	2	2	0	2013-08-28 21:16:09.57622+05:30
11368	INCOMING	46208600	t	2	2	0	2013-08-28 21:16:09.600477+05:30
11369	INCOMING	66448400	t	2	3	0	2013-08-28 21:16:09.605772+05:30
11370	INCOMING	33608900	t	2	2	0	2013-08-28 21:16:09.610077+05:30
11371	INCOMING	30147000	t	2	2	0	2013-08-28 21:16:09.614099+05:30
11372	INCOMING	30571500	t	2	2	0	2013-08-28 21:16:09.617617+05:30
11373	INCOMING	49425400	t	2	4	0	2013-08-28 21:16:09.621611+05:30
11374	INCOMING	43139800	t	2	2	0	2013-08-28 21:16:09.625599+05:30
11375	INCOMING	66477700	t	2	2	0	2013-08-28 21:16:09.629594+05:30
11376	INCOMING	46204100	t	2	2	0	2013-08-28 21:16:09.63364+05:30
11377	INCOMING	39840700	t	2	2	0	2013-08-28 21:16:09.637577+05:30
11378	INCOMING	43790200	t	2	2	0	2013-08-28 21:16:09.640377+05:30
12099	INCOMING	30997600	t	2	2	0	2013-08-29 13:01:20.287008+05:30
12100	INCOMING	46208600	t	1	1	0	2013-08-29 13:01:20.318958+05:30
12101	INCOMING	66448400	t	2	2	0	2013-08-29 13:01:20.327201+05:30
12102	INCOMING	33608900	t	2	2	0	2013-08-29 13:01:20.330154+05:30
12103	INCOMING	30147000	t	2	2	0	2013-08-29 13:01:20.340728+05:30
12104	INCOMING	30571500	t	2	2	0	2013-08-29 13:01:20.343418+05:30
12105	INCOMING	49425400	t	2	3	0	2013-08-29 13:01:20.348209+05:30
12106	INCOMING	43139800	t	2	2	0	2013-08-29 13:01:20.353206+05:30
12107	INCOMING	66477700	t	2	2	0	2013-08-29 13:01:20.357311+05:30
12108	INCOMING	46204100	t	2	2	0	2013-08-29 13:01:20.362651+05:30
12109	INCOMING	39840700	t	2	2	0	2013-08-29 13:01:20.368949+05:30
12110	INCOMING	43790200	t	2	2	0	2013-08-29 13:01:20.373478+05:30
11379	INCOMING	30997600	t	2	2	0	2013-08-28 21:31:16.369016+05:30
11380	INCOMING	46208600	t	2	2	0	2013-08-28 21:31:16.391247+05:30
11381	INCOMING	66448400	t	2	2	0	2013-08-28 21:31:16.394088+05:30
11382	INCOMING	33608900	t	2	2	0	2013-08-28 21:31:16.39692+05:30
11383	INCOMING	30147000	t	2	2	0	2013-08-28 21:31:16.406153+05:30
11384	INCOMING	30571500	t	2	2	0	2013-08-28 21:31:16.410298+05:30
11385	INCOMING	49425400	t	2	2	0	2013-08-28 21:31:16.412828+05:30
11386	INCOMING	43139800	t	2	2	0	2013-08-28 21:31:16.415848+05:30
11387	INCOMING	66477700	t	2	2	0	2013-08-28 21:31:16.417955+05:30
11388	INCOMING	46204100	t	2	2	0	2013-08-28 21:31:16.420664+05:30
11389	INCOMING	39840700	t	2	2	0	2013-08-28 21:31:16.427877+05:30
11390	INCOMING	43790200	t	2	2	0	2013-08-28 21:31:16.430537+05:30
12111	INCOMING	30997600	t	2	2	0	2013-08-29 13:16:16.08542+05:30
12112	INCOMING	46208600	t	2	2	0	2013-08-29 13:16:16.106572+05:30
12113	INCOMING	66448400	t	2	2	0	2013-08-29 13:16:16.109155+05:30
12114	INCOMING	33608900	t	2	2	0	2013-08-29 13:16:16.113552+05:30
12115	INCOMING	30147000	t	2	2	0	2013-08-29 13:16:16.117291+05:30
12116	INCOMING	30571500	t	2	2	0	2013-08-29 13:16:16.121134+05:30
12117	INCOMING	49425400	t	2	3	0	2013-08-29 13:16:16.1253+05:30
12118	INCOMING	43139800	t	2	2	0	2013-08-29 13:16:16.12922+05:30
12119	INCOMING	66477700	t	2	2	0	2013-08-29 13:16:16.133213+05:30
12120	INCOMING	46204100	t	2	2	0	2013-08-29 13:16:16.137157+05:30
12121	INCOMING	39840700	t	2	2	0	2013-08-29 13:16:16.141104+05:30
12122	INCOMING	43790200	t	2	2	0	2013-08-29 13:16:16.144996+05:30
11391	INCOMING	30997600	t	2	2	0	2013-08-28 21:46:18.92978+05:30
11392	INCOMING	46208600	t	1	1	0	2013-08-28 21:46:18.952602+05:30
11393	INCOMING	66448400	t	2	2	0	2013-08-28 21:46:18.955943+05:30
11394	INCOMING	33608900	t	2	2	0	2013-08-28 21:46:18.960009+05:30
11395	INCOMING	30147000	t	2	2	0	2013-08-28 21:46:18.963484+05:30
11396	INCOMING	30571500	t	2	2	0	2013-08-28 21:46:18.967454+05:30
11397	INCOMING	49425400	t	2	2	0	2013-08-28 21:46:18.972075+05:30
11398	INCOMING	43139800	t	2	2	0	2013-08-28 21:46:18.975873+05:30
11399	INCOMING	66477700	t	2	2	0	2013-08-28 21:46:18.979847+05:30
11400	INCOMING	46204100	t	2	2	0	2013-08-28 21:46:18.983814+05:30
11401	INCOMING	39840700	t	2	2	0	2013-08-28 21:46:18.988021+05:30
11402	INCOMING	43790200	t	2	2	0	2013-08-28 21:46:18.991833+05:30
12123	INCOMING	30997600	t	2	2	0	2013-08-29 13:31:19.194169+05:30
12124	INCOMING	46208600	t	1	1	0	2013-08-29 13:31:19.216204+05:30
12125	INCOMING	66448400	t	2	2	0	2013-08-29 13:31:19.220213+05:30
12126	INCOMING	33608900	t	2	2	0	2013-08-29 13:31:19.226385+05:30
12127	INCOMING	30147000	t	2	2	0	2013-08-29 13:31:19.230262+05:30
12128	INCOMING	30571500	t	2	2	0	2013-08-29 13:31:19.234153+05:30
12129	INCOMING	49425400	t	2	2	0	2013-08-29 13:31:19.23822+05:30
12130	INCOMING	43139800	t	2	2	0	2013-08-29 13:31:19.242522+05:30
12131	INCOMING	66477700	t	2	2	0	2013-08-29 13:31:19.246048+05:30
12132	INCOMING	46204100	t	2	2	0	2013-08-29 13:31:19.249856+05:30
12133	INCOMING	39840700	t	2	2	0	2013-08-29 13:31:19.254101+05:30
12134	INCOMING	43790200	t	2	2	0	2013-08-29 13:31:19.258041+05:30
11403	INCOMING	30997600	t	2	2	0	2013-08-28 22:01:07.894191+05:30
11404	INCOMING	46208600	t	2	2	0	2013-08-28 22:01:07.917032+05:30
11405	INCOMING	66448400	t	2	4	0	2013-08-28 22:01:07.920197+05:30
11406	INCOMING	33608900	t	2	2	0	2013-08-28 22:01:07.924617+05:30
11407	INCOMING	30147000	t	2	2	0	2013-08-28 22:01:07.928272+05:30
11408	INCOMING	30571500	t	2	2	0	2013-08-28 22:01:07.932032+05:30
11409	INCOMING	49425400	t	2	4	0	2013-08-28 22:01:07.935958+05:30
11410	INCOMING	43139800	t	2	2	0	2013-08-28 22:01:07.939991+05:30
11411	INCOMING	66477700	t	2	2	0	2013-08-28 22:01:07.943949+05:30
11412	INCOMING	46204100	t	2	2	0	2013-08-28 22:01:07.946632+05:30
11413	INCOMING	39840700	t	2	2	0	2013-08-28 22:01:07.949527+05:30
11414	INCOMING	43790200	t	2	2	0	2013-08-28 22:01:07.95197+05:30
12135	INCOMING	30997600	t	2	2	0	2013-08-29 13:46:09.182162+05:30
12136	INCOMING	46208600	t	2	2	0	2013-08-29 13:46:09.210736+05:30
12137	INCOMING	66448400	t	2	3	0	2013-08-29 13:46:09.214301+05:30
12138	INCOMING	33608900	t	2	2	0	2013-08-29 13:46:09.218324+05:30
12139	INCOMING	30147000	t	2	2	0	2013-08-29 13:46:09.222327+05:30
12140	INCOMING	30571500	t	2	2	0	2013-08-29 13:46:09.226405+05:30
12141	INCOMING	49425400	t	2	4	0	2013-08-29 13:46:09.230432+05:30
12142	INCOMING	43139800	t	2	2	0	2013-08-29 13:46:09.23298+05:30
12143	INCOMING	66477700	t	2	2	0	2013-08-29 13:46:09.238448+05:30
12144	INCOMING	46204100	t	2	2	0	2013-08-29 13:46:09.240881+05:30
12145	INCOMING	39840700	t	2	2	0	2013-08-29 13:46:09.246334+05:30
12146	INCOMING	43790200	t	2	2	0	2013-08-29 13:46:09.250364+05:30
11415	INCOMING	30997600	t	2	2	0	2013-08-28 22:16:18.125569+05:30
11416	INCOMING	46208600	t	1	1	0	2013-08-28 22:16:18.146462+05:30
11417	INCOMING	66448400	t	2	2	0	2013-08-28 22:16:18.149209+05:30
11418	INCOMING	33608900	t	2	2	0	2013-08-28 22:16:18.151166+05:30
11419	INCOMING	30147000	t	2	2	0	2013-08-28 22:16:18.156354+05:30
11420	INCOMING	30571500	t	2	2	0	2013-08-28 22:16:18.160102+05:30
11421	INCOMING	49425400	t	2	2	0	2013-08-28 22:16:18.164538+05:30
11422	INCOMING	43139800	t	2	2	0	2013-08-28 22:16:18.168282+05:30
11423	INCOMING	66477700	t	2	2	0	2013-08-28 22:16:18.172133+05:30
11424	INCOMING	46204100	t	2	2	0	2013-08-28 22:16:18.176266+05:30
11425	INCOMING	39840700	t	2	2	0	2013-08-28 22:16:18.180267+05:30
11426	INCOMING	43790200	t	2	2	0	2013-08-28 22:16:18.183156+05:30
12147	INCOMING	30997600	t	2	2	0	2013-08-29 14:01:14.051058+05:30
12148	INCOMING	46208600	t	2	2	0	2013-08-29 14:01:14.075577+05:30
12149	INCOMING	66448400	t	2	2	0	2013-08-29 14:01:14.07927+05:30
12150	INCOMING	33608900	t	2	2	0	2013-08-29 14:01:14.082566+05:30
12151	INCOMING	30147000	t	2	2	0	2013-08-29 14:01:14.084765+05:30
12152	INCOMING	30571500	t	2	2	0	2013-08-29 14:01:14.089957+05:30
12153	INCOMING	49425400	t	2	2	0	2013-08-29 14:01:14.094704+05:30
12154	INCOMING	43139800	t	2	2	0	2013-08-29 14:01:14.098598+05:30
12155	INCOMING	66477700	t	2	2	0	2013-08-29 14:01:14.102591+05:30
12156	INCOMING	46204100	t	2	2	0	2013-08-29 14:01:14.106582+05:30
12157	INCOMING	39840700	t	2	2	0	2013-08-29 14:01:14.110013+05:30
12158	INCOMING	43790200	t	2	2	0	2013-08-29 14:01:14.114815+05:30
11427	INCOMING	30997600	t	2	2	0	2013-08-28 22:31:09.054187+05:30
11428	INCOMING	46208600	t	2	2	0	2013-08-28 22:31:09.07714+05:30
11429	INCOMING	66448400	t	2	3	0	2013-08-28 22:31:09.080059+05:30
11430	INCOMING	33608900	t	2	2	0	2013-08-28 22:31:09.084062+05:30
11431	INCOMING	30147000	t	2	2	0	2013-08-28 22:31:09.087122+05:30
11432	INCOMING	30571500	t	2	2	0	2013-08-28 22:31:09.090583+05:30
11433	INCOMING	49425400	t	2	4	0	2013-08-28 22:31:09.09478+05:30
11434	INCOMING	43139800	t	2	2	0	2013-08-28 22:31:09.097469+05:30
11435	INCOMING	66477700	t	2	2	0	2013-08-28 22:31:09.100252+05:30
11436	INCOMING	46204100	t	2	2	0	2013-08-28 22:31:09.104071+05:30
11437	INCOMING	39840700	t	2	2	0	2013-08-28 22:31:09.107827+05:30
11438	INCOMING	43790200	t	2	2	0	2013-08-28 22:31:09.110047+05:30
12159	INCOMING	30997600	t	2	2	0	2013-08-29 14:16:19.619502+05:30
12160	INCOMING	46208600	t	1	1	0	2013-08-29 14:16:19.651833+05:30
12161	INCOMING	66448400	t	2	2	0	2013-08-29 14:16:19.654999+05:30
12162	INCOMING	33608900	t	2	2	0	2013-08-29 14:16:19.658837+05:30
12163	INCOMING	30147000	t	2	2	0	2013-08-29 14:16:19.663228+05:30
12164	INCOMING	30571500	t	2	2	0	2013-08-29 14:16:19.666821+05:30
12165	INCOMING	49425400	t	2	2	0	2013-08-29 14:16:19.670318+05:30
12166	INCOMING	43139800	t	2	2	0	2013-08-29 14:16:19.672859+05:30
12167	INCOMING	66477700	t	2	2	0	2013-08-29 14:16:19.680407+05:30
12168	INCOMING	46204100	t	2	2	0	2013-08-29 14:16:19.682843+05:30
12169	INCOMING	39840700	t	2	2	0	2013-08-29 14:16:19.687439+05:30
12170	INCOMING	43790200	t	2	2	0	2013-08-29 14:16:19.690782+05:30
11439	INCOMING	30997600	t	2	2	0	2013-08-28 22:46:18.147078+05:30
11440	INCOMING	46208600	t	1	1	0	2013-08-28 22:46:18.176718+05:30
11441	INCOMING	66448400	t	2	2	0	2013-08-28 22:46:18.180115+05:30
11442	INCOMING	33608900	t	2	2	0	2013-08-28 22:46:18.184196+05:30
11443	INCOMING	30147000	t	2	2	0	2013-08-28 22:46:18.188144+05:30
11444	INCOMING	30571500	t	2	2	0	2013-08-28 22:46:18.192259+05:30
11445	INCOMING	49425400	t	2	2	0	2013-08-28 22:46:18.195188+05:30
11446	INCOMING	43139800	t	2	2	0	2013-08-28 22:46:18.200945+05:30
11447	INCOMING	66477700	t	2	2	0	2013-08-28 22:46:18.204175+05:30
11448	INCOMING	46204100	t	2	2	0	2013-08-28 22:46:18.207955+05:30
11449	INCOMING	39840700	t	2	2	0	2013-08-28 22:46:18.212063+05:30
11450	INCOMING	43790200	t	2	2	0	2013-08-28 22:46:18.216281+05:30
12171	INCOMING	30997600	t	2	2	0	2013-08-29 14:31:21.888764+05:30
12172	INCOMING	46208600	t	1	1	0	2013-08-29 14:31:21.910787+05:30
12173	INCOMING	66448400	t	2	2	0	2013-08-29 14:31:21.914589+05:30
12174	INCOMING	33608900	t	2	2	0	2013-08-29 14:31:21.918432+05:30
12175	INCOMING	30147000	t	2	2	0	2013-08-29 14:31:21.921787+05:30
12176	INCOMING	30571500	t	2	2	0	2013-08-29 14:31:21.927267+05:30
12177	INCOMING	49425400	t	2	2	0	2013-08-29 14:31:21.930607+05:30
12178	INCOMING	43139800	t	2	2	0	2013-08-29 14:31:21.935097+05:30
12179	INCOMING	66477700	t	2	2	0	2013-08-29 14:31:21.938954+05:30
12180	INCOMING	46204100	t	2	2	0	2013-08-29 14:31:21.941399+05:30
12181	INCOMING	39840700	t	2	2	0	2013-08-29 14:31:21.947029+05:30
12182	INCOMING	43790200	t	2	2	0	2013-08-29 14:31:21.950822+05:30
11451	INCOMING	30997600	t	2	2	0	2013-08-28 23:01:07.612138+05:30
11452	INCOMING	46208600	t	2	2	0	2013-08-28 23:01:07.63135+05:30
11453	INCOMING	66448400	t	2	3	0	2013-08-28 23:01:07.634926+05:30
11454	INCOMING	33608900	t	2	2	0	2013-08-28 23:01:07.637717+05:30
11455	INCOMING	30147000	t	2	2	0	2013-08-28 23:01:07.641773+05:30
11456	INCOMING	30571500	t	2	2	0	2013-08-28 23:01:07.645896+05:30
11457	INCOMING	49425400	t	2	4	0	2013-08-28 23:01:07.649977+05:30
11458	INCOMING	43139800	t	2	2	0	2013-08-28 23:01:07.653724+05:30
11459	INCOMING	66477700	t	2	2	0	2013-08-28 23:01:07.656163+05:30
11460	INCOMING	46204100	t	2	2	0	2013-08-28 23:01:07.659328+05:30
11461	INCOMING	39840700	t	2	2	0	2013-08-28 23:01:07.662329+05:30
11462	INCOMING	43790200	t	2	2	0	2013-08-28 23:01:07.665749+05:30
12183	INCOMING	30997600	t	2	2	0	2013-08-29 14:46:51.565381+05:30
12184	INCOMING	46208600	t	1	1	0	2013-08-29 14:46:51.588375+05:30
12185	INCOMING	66448400	t	2	2	0	2013-08-29 14:46:51.59253+05:30
12186	INCOMING	33608900	t	2	2	0	2013-08-29 14:46:51.596649+05:30
12187	INCOMING	30147000	t	2	2	0	2013-08-29 14:46:51.600015+05:30
12188	INCOMING	30571500	t	2	2	0	2013-08-29 14:46:51.603901+05:30
12189	INCOMING	49425400	t	2	2	0	2013-08-29 14:46:51.608083+05:30
12190	INCOMING	43139800	t	2	2	0	2013-08-29 14:46:51.612328+05:30
12191	INCOMING	66477700	t	2	2	0	2013-08-29 14:46:51.614581+05:30
12192	INCOMING	46204100	t	2	2	0	2013-08-29 14:46:51.618565+05:30
12193	INCOMING	39840700	t	2	2	0	2013-08-29 14:46:51.628244+05:30
12194	INCOMING	43790200	t	2	2	0	2013-08-29 14:46:51.632021+05:30
11463	INCOMING	30997600	t	2	2	0	2013-08-28 23:16:19.299535+05:30
11464	INCOMING	46208600	t	1	1	0	2013-08-28 23:16:19.324474+05:30
11465	INCOMING	66448400	t	2	2	0	2013-08-28 23:16:19.327821+05:30
11466	INCOMING	33608900	t	2	2	0	2013-08-28 23:16:19.331574+05:30
11467	INCOMING	30147000	t	2	2	0	2013-08-28 23:16:19.335775+05:30
11468	INCOMING	30571500	t	2	2	0	2013-08-28 23:16:19.340095+05:30
11469	INCOMING	49425400	t	2	2	0	2013-08-28 23:16:19.343724+05:30
11470	INCOMING	43139800	t	2	2	0	2013-08-28 23:16:19.347701+05:30
11471	INCOMING	66477700	t	2	2	0	2013-08-28 23:16:19.352334+05:30
11472	INCOMING	46204100	t	2	2	0	2013-08-28 23:16:19.354461+05:30
11473	INCOMING	39840700	t	2	2	0	2013-08-28 23:16:19.357124+05:30
11474	INCOMING	43790200	t	2	2	0	2013-08-28 23:16:19.359653+05:30
12195	INCOMING	30997600	t	2	2	0	2013-08-29 15:01:10.944834+05:30
12196	INCOMING	46208600	t	2	2	0	2013-08-29 15:01:10.965554+05:30
12197	INCOMING	66448400	t	2	4	0	2013-08-29 15:01:10.968583+05:30
12198	INCOMING	33608900	t	2	2	0	2013-08-29 15:01:10.972573+05:30
12199	INCOMING	30147000	t	2	2	0	2013-08-29 15:01:10.975774+05:30
12200	INCOMING	30571500	t	2	2	0	2013-08-29 15:01:10.981774+05:30
12201	INCOMING	49425400	t	2	4	0	2013-08-29 15:01:10.984932+05:30
12202	INCOMING	43139800	t	2	2	0	2013-08-29 15:01:10.988983+05:30
12203	INCOMING	66477700	t	2	2	0	2013-08-29 15:01:10.992737+05:30
12204	INCOMING	46204100	t	2	2	0	2013-08-29 15:01:10.996104+05:30
12205	INCOMING	39840700	t	2	2	0	2013-08-29 15:01:11.001199+05:30
12206	INCOMING	43790200	t	2	2	0	2013-08-29 15:01:11.004436+05:30
11475	INCOMING	30997600	t	2	2	0	2013-08-28 23:31:17.357564+05:30
11476	INCOMING	46208600	t	1	1	0	2013-08-28 23:31:17.382635+05:30
11477	INCOMING	66448400	t	2	2	0	2013-08-28 23:31:17.385917+05:30
11478	INCOMING	33608900	t	2	2	0	2013-08-28 23:31:17.388597+05:30
11479	INCOMING	30147000	t	2	2	0	2013-08-28 23:31:17.390838+05:30
11480	INCOMING	30571500	t	2	2	0	2013-08-28 23:31:17.394742+05:30
11481	INCOMING	49425400	t	2	2	0	2013-08-28 23:31:17.398115+05:30
11482	INCOMING	43139800	t	2	2	0	2013-08-28 23:31:17.400724+05:30
11483	INCOMING	66477700	t	2	2	0	2013-08-28 23:31:17.405485+05:30
11484	INCOMING	46204100	t	2	2	0	2013-08-28 23:31:17.4144+05:30
11485	INCOMING	39840700	t	2	2	0	2013-08-28 23:31:17.417987+05:30
11486	INCOMING	43790200	t	2	2	0	2013-08-28 23:31:17.422882+05:30
12207	INCOMING	30997600	t	2	2	0	2013-08-29 15:16:10.959549+05:30
12208	INCOMING	46208600	t	2	2	0	2013-08-29 15:16:10.985895+05:30
12209	INCOMING	66448400	t	2	2	0	2013-08-29 15:16:10.988928+05:30
12210	INCOMING	33608900	t	2	2	0	2013-08-29 15:16:10.993575+05:30
12211	INCOMING	30147000	t	2	2	0	2013-08-29 15:16:10.997575+05:30
12212	INCOMING	30571500	t	2	2	0	2013-08-29 15:16:11.001614+05:30
12213	INCOMING	49425400	t	2	2	0	2013-08-29 15:16:11.005722+05:30
12214	INCOMING	43139800	t	2	2	0	2013-08-29 15:16:11.009771+05:30
12215	INCOMING	66477700	t	2	2	0	2013-08-29 15:16:11.013666+05:30
12216	INCOMING	46204100	t	2	2	0	2013-08-29 15:16:11.017802+05:30
12217	INCOMING	39840700	t	2	2	0	2013-08-29 15:16:11.021666+05:30
12218	INCOMING	43790200	t	2	2	0	2013-08-29 15:16:11.024151+05:30
11487	INCOMING	30997600	t	2	2	0	2013-08-28 23:46:12.204862+05:30
11488	INCOMING	46208600	t	2	2	0	2013-08-28 23:46:12.228692+05:30
11489	INCOMING	66448400	t	2	2	0	2013-08-28 23:46:12.232275+05:30
11490	INCOMING	33608900	t	2	2	0	2013-08-28 23:46:12.236153+05:30
11491	INCOMING	30147000	t	2	2	0	2013-08-28 23:46:12.24061+05:30
11492	INCOMING	30571500	t	2	2	0	2013-08-28 23:46:12.244676+05:30
11493	INCOMING	49425400	t	2	3	0	2013-08-28 23:46:12.248536+05:30
11494	INCOMING	43139800	t	2	2	0	2013-08-28 23:46:12.252368+05:30
11495	INCOMING	66477700	t	2	2	0	2013-08-28 23:46:12.256517+05:30
11496	INCOMING	46204100	t	2	2	0	2013-08-28 23:46:12.260458+05:30
11497	INCOMING	39840700	t	2	2	0	2013-08-28 23:46:12.264402+05:30
11498	INCOMING	43790200	t	2	2	0	2013-08-28 23:46:12.26827+05:30
12219	INCOMING	30997600	t	2	2	0	2013-08-29 15:31:10.235245+05:30
12220	INCOMING	46208600	t	2	2	0	2013-08-29 15:31:10.256868+05:30
12221	INCOMING	66448400	t	2	2	0	2013-08-29 15:31:10.260172+05:30
12222	INCOMING	33608900	t	2	2	0	2013-08-29 15:31:10.262231+05:30
12223	INCOMING	30147000	t	2	2	0	2013-08-29 15:31:10.265412+05:30
12224	INCOMING	30571500	t	2	2	0	2013-08-29 15:31:10.269454+05:30
12225	INCOMING	49425400	t	2	2	0	2013-08-29 15:31:10.271924+05:30
12226	INCOMING	43139800	t	2	2	0	2013-08-29 15:31:10.281494+05:30
12227	INCOMING	66477700	t	2	2	0	2013-08-29 15:31:10.285472+05:30
12228	INCOMING	46204100	t	2	2	0	2013-08-29 15:31:10.289962+05:30
12229	INCOMING	39840700	t	2	2	0	2013-08-29 15:31:10.293649+05:30
12230	INCOMING	43790200	t	2	2	0	2013-08-29 15:31:10.296914+05:30
11499	INCOMING	30997600	t	2	2	0	2013-08-29 00:01:14.265056+05:30
11500	INCOMING	46208600	t	2	2	0	2013-08-29 00:01:14.287314+05:30
11501	INCOMING	66448400	t	2	2	0	2013-08-29 00:01:14.290601+05:30
11502	INCOMING	33608900	t	2	2	0	2013-08-29 00:01:14.293649+05:30
11503	INCOMING	30147000	t	2	2	0	2013-08-29 00:01:14.298889+05:30
11504	INCOMING	30571500	t	2	2	0	2013-08-29 00:01:14.302531+05:30
11505	INCOMING	49425400	t	2	2	0	2013-08-29 00:01:14.306625+05:30
11506	INCOMING	43139800	t	2	2	0	2013-08-29 00:01:14.310518+05:30
11507	INCOMING	66477700	t	2	2	0	2013-08-29 00:01:14.314567+05:30
11508	INCOMING	46204100	t	2	2	0	2013-08-29 00:01:14.317668+05:30
11509	INCOMING	39840700	t	2	2	0	2013-08-29 00:01:14.322671+05:30
11510	INCOMING	43790200	t	2	2	0	2013-08-29 00:01:14.326601+05:30
12231	INCOMING	30997600	t	2	2	0	2013-08-29 15:46:10.855206+05:30
12232	INCOMING	46208600	t	2	2	0	2013-08-29 15:46:10.882204+05:30
12233	INCOMING	66448400	t	2	2	0	2013-08-29 15:46:10.886192+05:30
12234	INCOMING	33608900	t	2	2	0	2013-08-29 15:46:10.890345+05:30
12235	INCOMING	30147000	t	2	2	0	2013-08-29 15:46:10.894035+05:30
12236	INCOMING	30571500	t	2	2	0	2013-08-29 15:46:10.898032+05:30
12237	INCOMING	49425400	t	2	2	0	2013-08-29 15:46:10.902082+05:30
12238	INCOMING	43139800	t	2	2	0	2013-08-29 15:46:10.906015+05:30
12239	INCOMING	66477700	t	2	2	0	2013-08-29 15:46:10.910003+05:30
12240	INCOMING	46204100	t	2	2	0	2013-08-29 15:46:10.914106+05:30
12241	INCOMING	39840700	t	2	2	0	2013-08-29 15:46:10.918051+05:30
12242	INCOMING	43790200	t	2	2	0	2013-08-29 15:46:10.922046+05:30
11511	INCOMING	30997600	t	2	2	0	2013-08-29 00:16:07.572867+05:30
11512	INCOMING	46208600	t	2	2	0	2013-08-29 00:16:07.598316+05:30
11513	INCOMING	66448400	t	2	2	0	2013-08-29 00:16:07.602781+05:30
11514	INCOMING	33608900	t	2	2	0	2013-08-29 00:16:07.610003+05:30
11515	INCOMING	30147000	t	2	2	0	2013-08-29 00:16:07.614938+05:30
11516	INCOMING	30571500	t	2	2	0	2013-08-29 00:16:07.61763+05:30
11517	INCOMING	49425400	t	2	4	0	2013-08-29 00:16:07.621061+05:30
11518	INCOMING	43139800	t	2	2	0	2013-08-29 00:16:07.629633+05:30
11519	INCOMING	66477700	t	2	2	0	2013-08-29 00:16:07.635158+05:30
11520	INCOMING	46204100	t	2	2	0	2013-08-29 00:16:07.639251+05:30
11521	INCOMING	39840700	t	2	2	0	2013-08-29 00:16:07.643399+05:30
11522	INCOMING	43790200	t	2	2	0	2013-08-29 00:16:07.647292+05:30
12243	INCOMING	30997600	t	2	2	0	2013-08-29 16:01:09.613163+05:30
12244	INCOMING	46208600	t	2	2	0	2013-08-29 16:01:09.636365+05:30
12245	INCOMING	66448400	t	2	2	0	2013-08-29 16:01:09.640039+05:30
12246	INCOMING	33608900	t	2	2	0	2013-08-29 16:01:09.645786+05:30
12247	INCOMING	30147000	t	2	2	0	2013-08-29 16:01:09.64895+05:30
12248	INCOMING	30571500	t	2	2	0	2013-08-29 16:01:09.653909+05:30
12249	INCOMING	49425400	t	2	2	0	2013-08-29 16:01:09.657721+05:30
12250	INCOMING	43139800	t	2	2	0	2013-08-29 16:01:09.661722+05:30
12251	INCOMING	66477700	t	2	2	0	2013-08-29 16:01:09.666155+05:30
12252	INCOMING	46204100	t	2	2	0	2013-08-29 16:01:09.67024+05:30
12253	INCOMING	39840700	t	2	2	0	2013-08-29 16:01:09.674018+05:30
12254	INCOMING	43790200	t	2	2	0	2013-08-29 16:01:09.678062+05:30
11523	INCOMING	30997600	t	2	2	0	2013-08-29 00:31:07.739247+05:30
11524	INCOMING	46208600	t	2	2	0	2013-08-29 00:31:07.769819+05:30
11525	INCOMING	66448400	t	2	2	0	2013-08-29 00:31:07.773449+05:30
11526	INCOMING	33608900	t	2	2	0	2013-08-29 00:31:07.776028+05:30
11527	INCOMING	30147000	t	2	2	0	2013-08-29 00:31:07.783594+05:30
11528	INCOMING	30571500	t	2	2	0	2013-08-29 00:31:07.789193+05:30
11529	INCOMING	49425400	t	2	2	0	2013-08-29 00:31:07.793669+05:30
11530	INCOMING	43139800	t	2	2	0	2013-08-29 00:31:07.797218+05:30
11531	INCOMING	66477700	t	2	2	0	2013-08-29 00:31:07.801119+05:30
11532	INCOMING	46204100	t	2	2	0	2013-08-29 00:31:07.807994+05:30
11533	INCOMING	39840700	t	2	2	0	2013-08-29 00:31:07.811483+05:30
11534	INCOMING	43790200	t	2	2	0	2013-08-29 00:31:07.815776+05:30
12255	INCOMING	30997600	t	2	2	0	2013-08-29 16:16:12.366984+05:30
12256	INCOMING	46208600	t	2	2	0	2013-08-29 16:16:12.388097+05:30
12257	INCOMING	66448400	t	2	2	0	2013-08-29 16:16:12.39132+05:30
12258	INCOMING	33608900	t	2	2	0	2013-08-29 16:16:12.395542+05:30
12259	INCOMING	30147000	t	2	2	0	2013-08-29 16:16:12.398788+05:30
12260	INCOMING	30571500	t	2	2	0	2013-08-29 16:16:12.403068+05:30
12261	INCOMING	49425400	t	2	2	0	2013-08-29 16:16:12.406966+05:30
12262	INCOMING	43139800	t	2	2	0	2013-08-29 16:16:12.411011+05:30
12263	INCOMING	66477700	t	2	2	0	2013-08-29 16:16:12.415138+05:30
12264	INCOMING	46204100	t	2	2	0	2013-08-29 16:16:12.419145+05:30
12265	INCOMING	39840700	t	2	2	0	2013-08-29 16:16:12.423438+05:30
12266	INCOMING	43790200	t	2	2	0	2013-08-29 16:16:12.427321+05:30
11535	INCOMING	30997600	t	2	2	0	2013-08-29 00:46:10.659292+05:30
11536	INCOMING	46208600	t	2	2	0	2013-08-29 00:46:10.683243+05:30
11537	INCOMING	66448400	t	2	2	0	2013-08-29 00:46:10.686445+05:30
11538	INCOMING	33608900	t	2	2	0	2013-08-29 00:46:10.692034+05:30
11539	INCOMING	30147000	t	2	2	0	2013-08-29 00:46:10.695722+05:30
11540	INCOMING	30571500	t	2	2	0	2013-08-29 00:46:10.69868+05:30
11541	INCOMING	49425400	t	2	2	0	2013-08-29 00:46:10.703482+05:30
11542	INCOMING	43139800	t	2	2	0	2013-08-29 00:46:10.708452+05:30
11543	INCOMING	66477700	t	2	2	0	2013-08-29 00:46:10.712754+05:30
11544	INCOMING	46204100	t	2	2	0	2013-08-29 00:46:10.71618+05:30
11545	INCOMING	39840700	t	2	2	0	2013-08-29 00:46:10.720088+05:30
11546	INCOMING	43790200	t	2	2	0	2013-08-29 00:46:10.727467+05:30
12267	INCOMING	30997600	t	2	2	0	2013-08-29 16:31:13.562196+05:30
12268	INCOMING	46208600	t	2	2	0	2013-08-29 16:31:13.582291+05:30
12269	INCOMING	66448400	t	2	2	0	2013-08-29 16:31:13.584977+05:30
12270	INCOMING	33608900	t	2	2	0	2013-08-29 16:31:13.589398+05:30
12271	INCOMING	30147000	t	2	2	0	2013-08-29 16:31:13.592851+05:30
12272	INCOMING	30571500	t	2	2	0	2013-08-29 16:31:13.597385+05:30
12273	INCOMING	49425400	t	2	2	0	2013-08-29 16:31:13.600978+05:30
12274	INCOMING	43139800	t	2	2	0	2013-08-29 16:31:13.60483+05:30
12275	INCOMING	66477700	t	2	2	0	2013-08-29 16:31:13.609275+05:30
12276	INCOMING	46204100	t	2	2	0	2013-08-29 16:31:13.612968+05:30
12277	INCOMING	39840700	t	2	2	0	2013-08-29 16:31:13.617402+05:30
12278	INCOMING	43790200	t	2	2	0	2013-08-29 16:31:13.621202+05:30
11547	INCOMING	30997600	t	2	2	0	2013-08-29 01:01:12.321799+05:30
11548	INCOMING	46208600	t	2	2	0	2013-08-29 01:01:12.343253+05:30
11549	INCOMING	66448400	t	2	2	0	2013-08-29 01:01:12.345919+05:30
11550	INCOMING	33608900	t	2	2	0	2013-08-29 01:01:12.349908+05:30
11551	INCOMING	30147000	t	2	2	0	2013-08-29 01:01:12.353903+05:30
11552	INCOMING	30571500	t	2	2	0	2013-08-29 01:01:12.357897+05:30
11553	INCOMING	49425400	t	2	2	0	2013-08-29 01:01:12.361887+05:30
11554	INCOMING	43139800	t	2	2	0	2013-08-29 01:01:12.365929+05:30
11555	INCOMING	66477700	t	2	2	0	2013-08-29 01:01:12.369878+05:30
11556	INCOMING	46204100	t	2	2	0	2013-08-29 01:01:12.37387+05:30
11557	INCOMING	39840700	t	2	2	0	2013-08-29 01:01:12.377912+05:30
11558	INCOMING	43790200	t	2	2	0	2013-08-29 01:01:12.381865+05:30
12279	INCOMING	30997600	t	2	2	0	2013-08-29 16:46:12.548022+05:30
12280	INCOMING	46208600	t	2	2	0	2013-08-29 16:46:12.567095+05:30
12281	INCOMING	66448400	t	2	2	0	2013-08-29 16:46:12.570831+05:30
12282	INCOMING	33608900	t	2	2	0	2013-08-29 16:46:12.578169+05:30
12283	INCOMING	30147000	t	2	2	0	2013-08-29 16:46:12.582237+05:30
12284	INCOMING	30571500	t	2	2	0	2013-08-29 16:46:12.585309+05:30
12285	INCOMING	49425400	t	2	2	0	2013-08-29 16:46:12.588682+05:30
12286	INCOMING	43139800	t	2	2	0	2013-08-29 16:46:12.59827+05:30
12287	INCOMING	66477700	t	2	2	0	2013-08-29 16:46:12.602486+05:30
12288	INCOMING	46204100	t	2	2	0	2013-08-29 16:46:12.606578+05:30
12289	INCOMING	39840700	t	2	2	0	2013-08-29 16:46:12.610568+05:30
12290	INCOMING	43790200	t	2	2	0	2013-08-29 16:46:12.614559+05:30
11559	INCOMING	30997600	t	2	2	0	2013-08-29 01:16:46.337731+05:30
11560	INCOMING	46208600	t	1	1	0	2013-08-29 01:16:46.358852+05:30
11561	INCOMING	66448400	t	2	2	0	2013-08-29 01:16:46.361247+05:30
11562	INCOMING	33608900	t	2	2	0	2013-08-29 01:16:46.365513+05:30
11563	INCOMING	30147000	t	2	2	0	2013-08-29 01:16:46.368183+05:30
11564	INCOMING	30571500	t	2	2	0	2013-08-29 01:16:46.370978+05:30
11565	INCOMING	49425400	t	2	2	0	2013-08-29 01:16:46.373523+05:30
11566	INCOMING	43139800	t	2	2	0	2013-08-29 01:16:46.377531+05:30
11567	INCOMING	66477700	t	2	2	0	2013-08-29 01:16:46.381617+05:30
11568	INCOMING	46204100	t	2	2	0	2013-08-29 01:16:46.383804+05:30
11569	INCOMING	39840700	t	2	2	0	2013-08-29 01:16:46.389551+05:30
11570	INCOMING	43790200	t	2	2	0	2013-08-29 01:16:46.393738+05:30
12291	INCOMING	30997600	t	2	2	0	2013-08-29 17:01:42.248572+05:30
12292	INCOMING	46208600	t	2	2	0	2013-08-29 17:01:42.271113+05:30
12293	INCOMING	66448400	t	2	2	0	2013-08-29 17:01:42.273644+05:30
12294	INCOMING	33608900	t	2	2	0	2013-08-29 17:01:42.277633+05:30
12295	INCOMING	30147000	t	2	2	0	2013-08-29 17:01:42.281669+05:30
12296	INCOMING	30571500	t	2	2	0	2013-08-29 17:01:42.283996+05:30
12297	INCOMING	49425400	t	2	2	0	2013-08-29 17:01:42.288368+05:30
12298	INCOMING	43139800	t	2	2	0	2013-08-29 17:01:42.29384+05:30
12299	INCOMING	66477700	t	2	2	0	2013-08-29 17:01:42.297639+05:30
12300	INCOMING	46204100	t	2	2	0	2013-08-29 17:01:42.299778+05:30
12301	INCOMING	39840700	t	2	2	0	2013-08-29 17:01:42.302423+05:30
12302	INCOMING	43790200	t	2	2	0	2013-08-29 17:01:42.305677+05:30
\.


--
-- Data for Name: kconfig_systeminfo; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY kconfig_systeminfo (location, cluster_ip, db_ip, rabbit_ip, redis_ip, release_version) FROM stdin;
pune	10.0.0.11	10.0.1.12	10.0.0.13	10.0.0.14	1.0.7c_e60084ae4f
10.60.20.37	10.60.20.37	10.60.20.37	10.60.20.36	10.60.20.43	1.0.7c_e60084ae4f
gurgaon	10.60.20.11	10.60.20.12	10.60.20.13	10.60.20.14	1.0.7c_e60084ae4f
delhi	10.60.20.111	10.60.20.12	10.60.20.13	10.60.20.14	1.0.7c_e60084ae4f
mumbai	182.71.101.21	10.60.20.12	10.60.20.13	10.60.20.14	1.0.7c_e60084ae4f
					1.0.7c_e60084ae4f
\.


--
-- Data for Name: kconfig_totalselftest; Type: TABLE DATA; Schema: public; Owner: kconfig
--

COPY kconfig_totalselftest (id, selftest_type, totalcalls, successcalls, failcalls) FROM stdin;
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_message_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: kconfig_hangupcauseresults_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY kconfig_hangupcauseresults
    ADD CONSTRAINT kconfig_hangupcauseresults_pkey PRIMARY KEY (id);


--
-- Name: kconfig_machineinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY kconfig_machineinfo
    ADD CONSTRAINT kconfig_machineinfo_pkey PRIMARY KEY (id);


--
-- Name: kconfig_selftestresults_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY kconfig_selftestresults
    ADD CONSTRAINT kconfig_selftestresults_pkey PRIMARY KEY (id);


--
-- Name: kconfig_systeminfo_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY kconfig_systeminfo
    ADD CONSTRAINT kconfig_systeminfo_pkey PRIMARY KEY (location);


--
-- Name: kconfig_totalselftest_pkey; Type: CONSTRAINT; Schema: public; Owner: kconfig; Tablespace: 
--

ALTER TABLE ONLY kconfig_totalselftest
    ADD CONSTRAINT kconfig_totalselftest_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_message_user_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_message_user_id ON auth_message USING btree (user_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: kconfig_machineinfo_location_id; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX kconfig_machineinfo_location_id ON kconfig_machineinfo USING btree (location_id);


--
-- Name: kconfig_machineinfo_location_id_like; Type: INDEX; Schema: public; Owner: kconfig; Tablespace: 
--

CREATE INDEX kconfig_machineinfo_location_id_like ON kconfig_machineinfo USING btree (location_id varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_message_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: kconfig_machineinfo_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY kconfig_machineinfo
    ADD CONSTRAINT kconfig_machineinfo_location_id_fkey FOREIGN KEY (location_id) REFERENCES kconfig_systeminfo(location) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: kconfig
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

