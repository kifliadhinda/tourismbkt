PGDMP     9    .            
    x            tgsiisi    12.4    12.4 1              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    18977    tgsiisi    DATABASE     �   CREATE DATABASE tgsiisi WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE tgsiisi;
                postgres    false                       0    0    tgsiisi    DATABASE PROPERTIES     I   ALTER DATABASE tgsiisi SET search_path TO '$user', 'public', 'topology';
                     postgres    false            	            2615    18978    mapinfo    SCHEMA        CREATE SCHEMA mapinfo;
    DROP SCHEMA mapinfo;
                postgres    false                       0    0    SCHEMA mapinfo    ACL     '   GRANT ALL ON SCHEMA mapinfo TO PUBLIC;
                   postgres    false    9                        2615    18979    tiger    SCHEMA        CREATE SCHEMA tiger;
    DROP SCHEMA tiger;
                postgres    false                        2615    18980 
   tiger_data    SCHEMA        CREATE SCHEMA tiger_data;
    DROP SCHEMA tiger_data;
                postgres    false                        2615    18981    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false                       0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    12                        3079    18982    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false                       0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                        false    3                        3079    19984    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    12    3                       0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    2            �            1259    20127    mapinfo_mapcatalog    TABLE     �  CREATE TABLE mapinfo.mapinfo_mapcatalog (
    spatialtype double precision,
    tablename character varying(32),
    ownername character varying(32),
    spatialcolumn character varying(32),
    db_x_ll double precision,
    db_y_ll double precision,
    db_x_ur double precision,
    db_y_ur double precision,
    view_x_ll double precision,
    view_y_ll double precision,
    view_x_ur double precision,
    view_y_ur double precision,
    coordinatesystem character varying(254),
    symbol character varying(254),
    xcolumnname character varying(32),
    ycolumnname character varying(32),
    renditiontype integer,
    renditioncolumn character varying(32),
    renditiontable character varying(32),
    number_rows integer
);
 '   DROP TABLE mapinfo.mapinfo_mapcatalog;
       mapinfo         heap    postgres    false    9                       0    0    TABLE mapinfo_mapcatalog    ACL     Q   GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE mapinfo.mapinfo_mapcatalog TO PUBLIC;
          mapinfo          postgres    false    219            �            1259    20133    admin    TABLE     a  CREATE TABLE public.admin (
    stewardship_period character varying(9),
    name character varying(30),
    address character varying(50),
    hp character varying(12),
    role character(1),
    username character varying(15) NOT NULL,
    password character varying(32),
    last_login timestamp without time zone,
    email character varying(30)
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    20136    admin_restaurant    TABLE     z   CREATE TABLE public.admin_restaurant (
    username character varying(15) NOT NULL,
    password character varying(35)
);
 $   DROP TABLE public.admin_restaurant;
       public         heap    postgres    false            �            1259    20139    admin_th    TABLE     $  CREATE TABLE public.admin_th (
    stewardship_period character(9),
    id integer NOT NULL,
    name character varying(30),
    address character(50),
    hp character(12),
    username character varying(15),
    password character varying(32),
    last_login timestamp without time zone
);
    DROP TABLE public.admin_th;
       public         heap    postgres    false            �            1259    20142    administrators    TABLE     }  CREATE TABLE public.administrators (
    stewardship_period character varying(9) NOT NULL,
    id_worship_place character(5) NOT NULL,
    name character varying(30),
    address character varying(50),
    hp character varying(12),
    role character varying(1),
    username character varying(15),
    password character varying(32),
    last_login timestamp without time zone
);
 "   DROP TABLE public.administrators;
       public         heap    postgres    false            �            1259    20145    angkot    TABLE     !  CREATE TABLE public.angkot (
    id character varying(5) NOT NULL,
    destination character varying(20) NOT NULL,
    track character varying(50) NOT NULL,
    geom public.geometry,
    id_color integer,
    cost integer,
    number character(5),
    route_color character varying(10)
);
    DROP TABLE public.angkot;
       public         heap    postgres    false    3    3    3    3    3    3    3    3            �            1259    20151    angkot_color    TABLE     W   CREATE TABLE public.angkot_color (
    id integer NOT NULL,
    color character(20)
);
     DROP TABLE public.angkot_color;
       public         heap    postgres    false            �            1259    20154    angkot_gallery    TABLE     �   CREATE TABLE public.angkot_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_angkot character varying(10) NOT NULL
);
 "   DROP TABLE public.angkot_gallery;
       public         heap    postgres    false            �            1259    20157    category_worship_place    TABLE     h   CREATE TABLE public.category_worship_place (
    id integer NOT NULL,
    name character varying(10)
);
 *   DROP TABLE public.category_worship_place;
       public         heap    postgres    false            �            1259    20160    culinary    TABLE     R   CREATE TABLE public.culinary (
    id integer NOT NULL,
    name character(20)
);
    DROP TABLE public.culinary;
       public         heap    postgres    false            �            1259    20163    culinary_gallery    TABLE     �   CREATE TABLE public.culinary_gallery (
    serial_number integer NOT NULL,
    id character(5) NOT NULL,
    gallery_culinary character varying(10)
);
 $   DROP TABLE public.culinary_gallery;
       public         heap    postgres    false            �            1259    20166    culinary_place    TABLE     h  CREATE TABLE public.culinary_place (
    gid integer NOT NULL,
    name character(30),
    address character(50),
    cp character(12),
    capacity integer,
    geom public.geometry(MultiPolygon),
    open time without time zone,
    close time without time zone,
    employee integer,
    id character varying NOT NULL,
    username character varying(15)
);
 "   DROP TABLE public.culinary_place;
       public         heap    postgres    false    3    3    3    3    3    3    3    3            �            1259    20172    detail_culinary    TABLE     �   CREATE TABLE public.detail_culinary (
    id_culinary_place character(5) NOT NULL,
    id_culinary integer NOT NULL,
    price integer
);
 #   DROP TABLE public.detail_culinary;
       public         heap    postgres    false            �            1259    20175    detail_culinary_place    TABLE     �   CREATE TABLE public.detail_culinary_place (
    id_culinary_place character(5) NOT NULL,
    id_angkot character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
 )   DROP TABLE public.detail_culinary_place;
       public         heap    postgres    false            �            1259    20178    detail_event    TABLE     �   CREATE TABLE public.detail_event (
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    id_ustad integer NOT NULL,
    id_event integer,
    id_worship_place character varying(5) NOT NULL,
    description text
);
     DROP TABLE public.detail_event;
       public         heap    postgres    false            �            1259    20184    detail_facility    TABLE     �   CREATE TABLE public.detail_facility (
    id_facility integer NOT NULL,
    id_worship_place character varying(5) NOT NULL,
    id_facility_condition integer
);
 #   DROP TABLE public.detail_facility;
       public         heap    postgres    false            �            1259    20187    detail_facility_culinary    TABLE     �   CREATE TABLE public.detail_facility_culinary (
    id_culinary_place character(5) NOT NULL,
    id_facility character(1) NOT NULL
);
 ,   DROP TABLE public.detail_facility_culinary;
       public         heap    postgres    false            �            1259    20190    detail_facility_hotel    TABLE     t   CREATE TABLE public.detail_facility_hotel (
    id_hotel character(5) NOT NULL,
    id_facility integer NOT NULL
);
 )   DROP TABLE public.detail_facility_hotel;
       public         heap    postgres    false            �            1259    20193    detail_facility_restaurant    TABLE     ~   CREATE TABLE public.detail_facility_restaurant (
    id_facility integer NOT NULL,
    id_restaurant character(5) NOT NULL
);
 .   DROP TABLE public.detail_facility_restaurant;
       public         heap    postgres    false            �            1259    20196    detail_facility_tourism    TABLE     }   CREATE TABLE public.detail_facility_tourism (
    id_tourism character(5) NOT NULL,
    id_facility character(1) NOT NULL
);
 +   DROP TABLE public.detail_facility_tourism;
       public         heap    postgres    false            �            1259    20199    detail_hotel    TABLE     �   CREATE TABLE public.detail_hotel (
    id_angkot character(5) NOT NULL,
    id_hotel character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
     DROP TABLE public.detail_hotel;
       public         heap    postgres    false            �            1259    20202    detail_menu    TABLE     �   CREATE TABLE public.detail_menu (
    id_restaurant character(5) NOT NULL,
    id_special_menu integer NOT NULL,
    price integer
);
    DROP TABLE public.detail_menu;
       public         heap    postgres    false            �            1259    20205    detail_product_small_industry    TABLE     �   CREATE TABLE public.detail_product_small_industry (
    id_product integer NOT NULL,
    id_small_industry character(5) NOT NULL,
    price integer
);
 1   DROP TABLE public.detail_product_small_industry;
       public         heap    postgres    false            �            1259    20208    detail_product_souvenir    TABLE     �   CREATE TABLE public.detail_product_souvenir (
    id_product integer NOT NULL,
    id_souvenir character(5) NOT NULL,
    price integer
);
 +   DROP TABLE public.detail_product_souvenir;
       public         heap    postgres    false            �            1259    20211    detail_restaurant    TABLE     �   CREATE TABLE public.detail_restaurant (
    id_angkot character varying(5) NOT NULL,
    id_restaurant character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 %   DROP TABLE public.detail_restaurant;
       public         heap    postgres    false            �            1259    20214    detail_room    TABLE     f   CREATE TABLE public.detail_room (
    id_room integer NOT NULL,
    id_hotel character(5) NOT NULL
);
    DROP TABLE public.detail_room;
       public         heap    postgres    false            �            1259    20217    detail_small_industry    TABLE     �   CREATE TABLE public.detail_small_industry (
    id_small_industry character(5) NOT NULL,
    id_angkot character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
 )   DROP TABLE public.detail_small_industry;
       public         heap    postgres    false            �            1259    20220    detail_souvenir    TABLE     �   CREATE TABLE public.detail_souvenir (
    id_souvenir character(5) NOT NULL,
    id_angkot character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
 #   DROP TABLE public.detail_souvenir;
       public         heap    postgres    false            �            1259    20223    detail_tourism    TABLE     �   CREATE TABLE public.detail_tourism (
    id_angkot character(5) NOT NULL,
    id_tourism character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
 "   DROP TABLE public.detail_tourism;
       public         heap    postgres    false            �            1259    20226    detail_worship_place    TABLE     �   CREATE TABLE public.detail_worship_place (
    id_angkot character(5) NOT NULL,
    id_worship_place character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 (   DROP TABLE public.detail_worship_place;
       public         heap    postgres    false            �            1259    20229    district    TABLE     �   CREATE TABLE public.district (
    geom public.geometry(MultiPolygonZM),
    id character varying(4) NOT NULL,
    name character varying(25)
);
    DROP TABLE public.district;
       public         heap    postgres    false    3    3    3    3    3    3    3    3            �            1259    20235    event    TABLE     �   CREATE TABLE public.event (
    id integer NOT NULL,
    name character varying(30),
    description text,
    id_type_event integer
);
    DROP TABLE public.event;
       public         heap    postgres    false            �            1259    20241    facility    TABLE     Z   CREATE TABLE public.facility (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.facility;
       public         heap    postgres    false            �            1259    20244    facility_condition    TABLE     h   CREATE TABLE public.facility_condition (
    id integer NOT NULL,
    condition character varying(8)
);
 &   DROP TABLE public.facility_condition;
       public         heap    postgres    false            �            1259    20247    facility_culinary    TABLE     d   CREATE TABLE public.facility_culinary (
    facility character(20),
    id character(1) NOT NULL
);
 %   DROP TABLE public.facility_culinary;
       public         heap    postgres    false            �            1259    20250    facility_hotel    TABLE     X   CREATE TABLE public.facility_hotel (
    id integer NOT NULL,
    name character(20)
);
 "   DROP TABLE public.facility_hotel;
       public         heap    postgres    false            �            1259    20253    facility_restaurant    TABLE     e   CREATE TABLE public.facility_restaurant (
    id integer NOT NULL,
    name character varying(20)
);
 '   DROP TABLE public.facility_restaurant;
       public         heap    postgres    false                        1259    20256    facility_tourism    TABLE     h   CREATE TABLE public.facility_tourism (
    name character(30) NOT NULL,
    id character(1) NOT NULL
);
 $   DROP TABLE public.facility_tourism;
       public         heap    postgres    false                       1259    20259    hotel    TABLE     I  CREATE TABLE public.hotel (
    id character varying NOT NULL,
    name character(25),
    address character(50),
    cp character(12),
    geom public.geometry(MultiPolygon),
    ktp integer,
    marriage_book integer,
    mushalla integer,
    star character(2),
    id_type character(1),
    username character varying(15)
);
    DROP TABLE public.hotel;
       public         heap    postgres    false    3    3    3    3    3    3    3    3                       1259    20265    hotel_gallery    TABLE     �   CREATE TABLE public.hotel_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_hotel character varying(10)
);
 !   DROP TABLE public.hotel_gallery;
       public         heap    postgres    false                       1259    20268 
   hotel_type    TABLE     f   CREATE TABLE public.hotel_type (
    name character varying NOT NULL,
    id character(1) NOT NULL
);
    DROP TABLE public.hotel_type;
       public         heap    postgres    false                       1259    20274    industry_gallery    TABLE     �   CREATE TABLE public.industry_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_industry character varying(10)
);
 $   DROP TABLE public.industry_gallery;
       public         heap    postgres    false                       1259    20277    industry_type    TABLE     l   CREATE TABLE public.industry_type (
    name character varying(20),
    id character varying(1) NOT NULL
);
 !   DROP TABLE public.industry_type;
       public         heap    postgres    false                       1259    20280    information_admin    TABLE     j  CREATE TABLE public.information_admin (
    username character varying(15),
    id_kuliner character varying(5),
    id_hotel character varying(5),
    id_souvenir character varying(5),
    id_ik character varying(5),
    id_ow character varying(5),
    informasi text,
    tanggal date,
    id_informasi integer NOT NULL,
    id_worship character varying(5)
);
 %   DROP TABLE public.information_admin;
       public         heap    postgres    false                       1259    20286    kuliner_region_gid_seq    SEQUENCE        CREATE SEQUENCE public.kuliner_region_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.kuliner_region_gid_seq;
       public          postgres    false    230                       0    0    kuliner_region_gid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.kuliner_region_gid_seq OWNED BY public.culinary_place.gid;
          public          postgres    false    263                       1259    20288    login    TABLE     _   CREATE TABLE public.login (
    username character(20) NOT NULL,
    password character(35)
);
    DROP TABLE public.login;
       public         heap    postgres    false            	           1259    20291    product_small_industry    TABLE     k   CREATE TABLE public.product_small_industry (
    id integer NOT NULL,
    product character varying(20)
);
 *   DROP TABLE public.product_small_industry;
       public         heap    postgres    false            
           1259    20294    product_souvenir    TABLE     e   CREATE TABLE public.product_souvenir (
    id integer NOT NULL,
    product character varying(20)
);
 $   DROP TABLE public.product_souvenir;
       public         heap    postgres    false                       1259    20297 
   restaurant    TABLE     �  CREATE TABLE public.restaurant (
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    name character varying(25),
    address character varying(50),
    cp character varying(12),
    open time without time zone,
    close time without time zone,
    capacity integer,
    employee integer,
    mushalla integer,
    park_area integer,
    bathroom integer,
    id_category integer
);
    DROP TABLE public.restaurant;
       public         heap    postgres    false    3    3    3    3    3    3    3    3                       1259    20303    restaurant_category    TABLE     e   CREATE TABLE public.restaurant_category (
    id integer NOT NULL,
    name character varying(20)
);
 '   DROP TABLE public.restaurant_category;
       public         heap    postgres    false                       1259    20306    restaurant_gallery    TABLE     �   CREATE TABLE public.restaurant_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_restaurant character varying(15)
);
 &   DROP TABLE public.restaurant_gallery;
       public         heap    postgres    false                       1259    20309    review    TABLE     R  CREATE TABLE public.review (
    name character varying,
    id_kuliner character varying(5),
    id_hotel character varying(5),
    id_souvenir character varying(5),
    id_ow character varying(5),
    id_ik character varying(5),
    comment text,
    tanggal date,
    id_review integer NOT NULL,
    id_worship character varying(5)
);
    DROP TABLE public.review;
       public         heap    postgres    false                       1259    20315    room    TABLE     a   CREATE TABLE public.room (
    id integer NOT NULL,
    name character(20),
    price integer
);
    DROP TABLE public.room;
       public         heap    postgres    false                       1259    20318    small_industry    TABLE     �  CREATE TABLE public.small_industry (
    name character varying(30),
    owner character varying(20),
    cp character varying(12),
    address character varying(50),
    employee integer,
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    id_industry_type character varying(1),
    id_status character varying(1),
    username character varying(15)
);
 "   DROP TABLE public.small_industry;
       public         heap    postgres    false    3    3    3    3    3    3    3    3                       1259    20324    souvenir    TABLE     z  CREATE TABLE public.souvenir (
    name character varying(30),
    owner character varying(20),
    cp character varying(12),
    address character varying(50),
    employee integer,
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    id_souvenir_type character varying(1),
    id_status character varying(1),
    username character varying(15)
);
    DROP TABLE public.souvenir;
       public         heap    postgres    false    3    3    3    3    3    3    3    3                       1259    20330    souvenir_gallery    TABLE     �   CREATE TABLE public.souvenir_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_souvenir character varying(10)
);
 $   DROP TABLE public.souvenir_gallery;
       public         heap    postgres    false                       1259    20333    souvenir_type    TABLE     l   CREATE TABLE public.souvenir_type (
    name character varying(25),
    id character varying(1) NOT NULL
);
 !   DROP TABLE public.souvenir_type;
       public         heap    postgres    false                       1259    20336    special_menu    TABLE     ^   CREATE TABLE public.special_menu (
    id integer NOT NULL,
    name character varying(20)
);
     DROP TABLE public.special_menu;
       public         heap    postgres    false                       1259    20339    statistika2    TABLE     �   CREATE TABLE public.statistika2 (
    ip character varying(20) NOT NULL,
    tanggal date NOT NULL,
    hits integer NOT NULL,
    online character varying(255) NOT NULL
);
    DROP TABLE public.statistika2;
       public         heap    postgres    false                       1259    20342    status    TABLE     g   CREATE TABLE public.status (
    status character varying(25),
    id character varying(1) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false                       1259    20345    status_user    TABLE     d   CREATE TABLE public.status_user (
    id character(1) NOT NULL,
    status character varying(15)
);
    DROP TABLE public.status_user;
       public         heap    postgres    false                       1259    20348    tourism    TABLE     %  CREATE TABLE public.tourism (
    id character varying NOT NULL,
    name character(40),
    address character(50),
    open time without time zone,
    close time without time zone,
    geom public.geometry,
    ticket integer,
    id_type character(1),
    username character varying(15)
);
    DROP TABLE public.tourism;
       public         heap    postgres    false    3    3    3    3    3    3    3    3                       1259    20354    tourism_gallery    TABLE     �   CREATE TABLE public.tourism_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_tourism character varying(10)
);
 #   DROP TABLE public.tourism_gallery;
       public         heap    postgres    false                       1259    20357    tourism_type    TABLE     d   CREATE TABLE public.tourism_type (
    name character(10) NOT NULL,
    id character(1) NOT NULL
);
     DROP TABLE public.tourism_type;
       public         heap    postgres    false                       1259    20360 
   type_event    TABLE     \   CREATE TABLE public.type_event (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.type_event;
       public         heap    postgres    false                       1259    20363    ustad    TABLE     �   CREATE TABLE public.ustad (
    id integer NOT NULL,
    name character varying(30),
    address character varying(50),
    cp character varying(12)
);
    DROP TABLE public.ustad;
       public         heap    postgres    false                       1259    20366    worship_place    TABLE     �  CREATE TABLE public.worship_place (
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    name character varying(35),
    address character varying(80),
    land_size integer,
    park_area_size integer,
    building_size integer,
    capacity integer,
    est integer,
    last_renovation integer,
    jamaah integer,
    imam integer,
    teenager integer,
    id_category integer,
    image character varying(50),
    username character varying(15)
);
 !   DROP TABLE public.worship_place;
       public         heap    postgres    false    3    3    3    3    3    3    3    3                       1259    20372    worship_place_gallery    TABLE     �   CREATE TABLE public.worship_place_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_worship_place character varying(50)
);
 )   DROP TABLE public.worship_place_gallery;
       public         heap    postgres    false            i           2604    20930    culinary_place gid    DEFAULT     x   ALTER TABLE ONLY public.culinary_place ALTER COLUMN gid SET DEFAULT nextval('public.kuliner_region_gid_seq'::regclass);
 A   ALTER TABLE public.culinary_place ALTER COLUMN gid DROP DEFAULT;
       public          postgres    false    263    230            �          0    20127    mapinfo_mapcatalog 
   TABLE DATA              COPY mapinfo.mapinfo_mapcatalog (spatialtype, tablename, ownername, spatialcolumn, db_x_ll, db_y_ll, db_x_ur, db_y_ur, view_x_ll, view_y_ll, view_x_ur, view_y_ur, coordinatesystem, symbol, xcolumnname, ycolumnname, renditiontype, renditioncolumn, renditiontable, number_rows) FROM stdin;
    mapinfo          postgres    false    219   ��      �          0    20133    admin 
   TABLE DATA           s   COPY public.admin (stewardship_period, name, address, hp, role, username, password, last_login, email) FROM stdin;
    public          postgres    false    220   ��      �          0    20136    admin_restaurant 
   TABLE DATA           >   COPY public.admin_restaurant (username, password) FROM stdin;
    public          postgres    false    221   I�      �          0    20139    admin_th 
   TABLE DATA           m   COPY public.admin_th (stewardship_period, id, name, address, hp, username, password, last_login) FROM stdin;
    public          postgres    false    222   ��      �          0    20142    administrators 
   TABLE DATA           �   COPY public.administrators (stewardship_period, id_worship_place, name, address, hp, role, username, password, last_login) FROM stdin;
    public          postgres    false    223   �      �          0    20145    angkot 
   TABLE DATA           c   COPY public.angkot (id, destination, track, geom, id_color, cost, number, route_color) FROM stdin;
    public          postgres    false    224   &�      �          0    20151    angkot_color 
   TABLE DATA           1   COPY public.angkot_color (id, color) FROM stdin;
    public          postgres    false    225   �      �          0    20154    angkot_gallery 
   TABLE DATA           K   COPY public.angkot_gallery (serial_number, id, gallery_angkot) FROM stdin;
    public          postgres    false    226   P�      �          0    20157    category_worship_place 
   TABLE DATA           :   COPY public.category_worship_place (id, name) FROM stdin;
    public          postgres    false    227   ˅      �          0    20160    culinary 
   TABLE DATA           ,   COPY public.culinary (id, name) FROM stdin;
    public          postgres    false    228   ��      �          0    20163    culinary_gallery 
   TABLE DATA           O   COPY public.culinary_gallery (serial_number, id, gallery_culinary) FROM stdin;
    public          postgres    false    229   �      �          0    20166    culinary_place 
   TABLE DATA           u   COPY public.culinary_place (gid, name, address, cp, capacity, geom, open, close, employee, id, username) FROM stdin;
    public          postgres    false    230   �      �          0    20172    detail_culinary 
   TABLE DATA           P   COPY public.detail_culinary (id_culinary_place, id_culinary, price) FROM stdin;
    public          postgres    false    231   �      �          0    20175    detail_culinary_place 
   TABLE DATA           d   COPY public.detail_culinary_place (id_culinary_place, id_angkot, lat, lng, description) FROM stdin;
    public          postgres    false    232   .�      �          0    20178    detail_event 
   TABLE DATA           g   COPY public.detail_event (date, "time", id_ustad, id_event, id_worship_place, description) FROM stdin;
    public          postgres    false    233   ��      �          0    20184    detail_facility 
   TABLE DATA           _   COPY public.detail_facility (id_facility, id_worship_place, id_facility_condition) FROM stdin;
    public          postgres    false    234   �      �          0    20187    detail_facility_culinary 
   TABLE DATA           R   COPY public.detail_facility_culinary (id_culinary_place, id_facility) FROM stdin;
    public          postgres    false    235   ݧ      �          0    20190    detail_facility_hotel 
   TABLE DATA           F   COPY public.detail_facility_hotel (id_hotel, id_facility) FROM stdin;
    public          postgres    false    236   l�      �          0    20193    detail_facility_restaurant 
   TABLE DATA           P   COPY public.detail_facility_restaurant (id_facility, id_restaurant) FROM stdin;
    public          postgres    false    237   <�      �          0    20196    detail_facility_tourism 
   TABLE DATA           J   COPY public.detail_facility_tourism (id_tourism, id_facility) FROM stdin;
    public          postgres    false    238   Y�      �          0    20199    detail_hotel 
   TABLE DATA           R   COPY public.detail_hotel (id_angkot, id_hotel, lat, lng, description) FROM stdin;
    public          postgres    false    239   ج      �          0    20202    detail_menu 
   TABLE DATA           L   COPY public.detail_menu (id_restaurant, id_special_menu, price) FROM stdin;
    public          postgres    false    240   :�      �          0    20205    detail_product_small_industry 
   TABLE DATA           ]   COPY public.detail_product_small_industry (id_product, id_small_industry, price) FROM stdin;
    public          postgres    false    241   W�      �          0    20208    detail_product_souvenir 
   TABLE DATA           Q   COPY public.detail_product_souvenir (id_product, id_souvenir, price) FROM stdin;
    public          postgres    false    242   8�      �          0    20211    detail_restaurant 
   TABLE DATA           \   COPY public.detail_restaurant (id_angkot, id_restaurant, lat, lng, description) FROM stdin;
    public          postgres    false    243   d�      �          0    20214    detail_room 
   TABLE DATA           8   COPY public.detail_room (id_room, id_hotel) FROM stdin;
    public          postgres    false    244   ��      �          0    20217    detail_small_industry 
   TABLE DATA           d   COPY public.detail_small_industry (id_small_industry, id_angkot, lat, lng, description) FROM stdin;
    public          postgres    false    245   ��      �          0    20220    detail_souvenir 
   TABLE DATA           X   COPY public.detail_souvenir (id_souvenir, id_angkot, lat, lng, description) FROM stdin;
    public          postgres    false    246   �      �          0    20223    detail_tourism 
   TABLE DATA           V   COPY public.detail_tourism (id_angkot, id_tourism, lat, lng, description) FROM stdin;
    public          postgres    false    247   ��      �          0    20226    detail_worship_place 
   TABLE DATA           b   COPY public.detail_worship_place (id_angkot, id_worship_place, lat, lng, description) FROM stdin;
    public          postgres    false    248   ��      �          0    20229    district 
   TABLE DATA           2   COPY public.district (geom, id, name) FROM stdin;
    public          postgres    false    249   ��      �          0    20235    event 
   TABLE DATA           E   COPY public.event (id, name, description, id_type_event) FROM stdin;
    public          postgres    false    250   �      �          0    20241    facility 
   TABLE DATA           ,   COPY public.facility (id, name) FROM stdin;
    public          postgres    false    251   �      �          0    20244    facility_condition 
   TABLE DATA           ;   COPY public.facility_condition (id, condition) FROM stdin;
    public          postgres    false    252   �      �          0    20247    facility_culinary 
   TABLE DATA           9   COPY public.facility_culinary (facility, id) FROM stdin;
    public          postgres    false    253   �      �          0    20250    facility_hotel 
   TABLE DATA           2   COPY public.facility_hotel (id, name) FROM stdin;
    public          postgres    false    254   f      �          0    20253    facility_restaurant 
   TABLE DATA           7   COPY public.facility_restaurant (id, name) FROM stdin;
    public          postgres    false    255   �       �          0    20256    facility_tourism 
   TABLE DATA           4   COPY public.facility_tourism (name, id) FROM stdin;
    public          postgres    false    256   �       �          0    20259    hotel 
   TABLE DATA           s   COPY public.hotel (id, name, address, cp, geom, ktp, marriage_book, mushalla, star, id_type, username) FROM stdin;
    public          postgres    false    257   �!      �          0    20265    hotel_gallery 
   TABLE DATA           I   COPY public.hotel_gallery (serial_number, id, gallery_hotel) FROM stdin;
    public          postgres    false    258   9F      �          0    20268 
   hotel_type 
   TABLE DATA           .   COPY public.hotel_type (name, id) FROM stdin;
    public          postgres    false    259   H      �          0    20274    industry_gallery 
   TABLE DATA           O   COPY public.industry_gallery (serial_number, id, gallery_industry) FROM stdin;
    public          postgres    false    260   _H      �          0    20277    industry_type 
   TABLE DATA           1   COPY public.industry_type (name, id) FROM stdin;
    public          postgres    false    261   �I      �          0    20280    information_admin 
   TABLE DATA           �   COPY public.information_admin (username, id_kuliner, id_hotel, id_souvenir, id_ik, id_ow, informasi, tanggal, id_informasi, id_worship) FROM stdin;
    public          postgres    false    262   �I      �          0    20288    login 
   TABLE DATA           3   COPY public.login (username, password) FROM stdin;
    public          postgres    false    264   2M      �          0    20291    product_small_industry 
   TABLE DATA           =   COPY public.product_small_industry (id, product) FROM stdin;
    public          postgres    false    265   zM      �          0    20294    product_souvenir 
   TABLE DATA           7   COPY public.product_souvenir (id, product) FROM stdin;
    public          postgres    false    266   6N      �          0    20297 
   restaurant 
   TABLE DATA           �   COPY public.restaurant (geom, id, name, address, cp, open, close, capacity, employee, mushalla, park_area, bathroom, id_category) FROM stdin;
    public          postgres    false    267   $O      �          0    20303    restaurant_category 
   TABLE DATA           7   COPY public.restaurant_category (id, name) FROM stdin;
    public          postgres    false    268   i      �          0    20306    restaurant_gallery 
   TABLE DATA           S   COPY public.restaurant_gallery (serial_number, id, gallery_restaurant) FROM stdin;
    public          postgres    false    269   �i      �          0    20309    review 
   TABLE DATA           �   COPY public.review (name, id_kuliner, id_hotel, id_souvenir, id_ow, id_ik, comment, tanggal, id_review, id_worship) FROM stdin;
    public          postgres    false    270   �i                 0    20315    room 
   TABLE DATA           /   COPY public.room (id, name, price) FROM stdin;
    public          postgres    false    271   ]m                0    20318    small_industry 
   TABLE DATA           }   COPY public.small_industry (name, owner, cp, address, employee, geom, id, id_industry_type, id_status, username) FROM stdin;
    public          postgres    false    272   0p                0    20324    souvenir 
   TABLE DATA           w   COPY public.souvenir (name, owner, cp, address, employee, geom, id, id_souvenir_type, id_status, username) FROM stdin;
    public          postgres    false    273   ��                0    20330    souvenir_gallery 
   TABLE DATA           O   COPY public.souvenir_gallery (serial_number, id, gallery_souvenir) FROM stdin;
    public          postgres    false    274   ��                0    20333    souvenir_type 
   TABLE DATA           1   COPY public.souvenir_type (name, id) FROM stdin;
    public          postgres    false    275   ��      d          0    19287    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    209   �                0    20336    special_menu 
   TABLE DATA           0   COPY public.special_menu (id, name) FROM stdin;
    public          postgres    false    276   :�                0    20339    statistika2 
   TABLE DATA           @   COPY public.statistika2 (ip, tanggal, hits, online) FROM stdin;
    public          postgres    false    277   +�                0    20342    status 
   TABLE DATA           ,   COPY public.status (status, id) FROM stdin;
    public          postgres    false    278   ��                0    20345    status_user 
   TABLE DATA           1   COPY public.status_user (id, status) FROM stdin;
    public          postgres    false    279   ��      	          0    20348    tourism 
   TABLE DATA           b   COPY public.tourism (id, name, address, open, close, geom, ticket, id_type, username) FROM stdin;
    public          postgres    false    280   8�      
          0    20354    tourism_gallery 
   TABLE DATA           M   COPY public.tourism_gallery (serial_number, id, gallery_tourism) FROM stdin;
    public          postgres    false    281   ��                0    20357    tourism_type 
   TABLE DATA           0   COPY public.tourism_type (name, id) FROM stdin;
    public          postgres    false    282   d�                0    20360 
   type_event 
   TABLE DATA           .   COPY public.type_event (id, name) FROM stdin;
    public          postgres    false    283   ��                0    20363    ustad 
   TABLE DATA           6   COPY public.ustad (id, name, address, cp) FROM stdin;
    public          postgres    false    284   Ҥ                0    20366    worship_place 
   TABLE DATA           �   COPY public.worship_place (geom, id, name, address, land_size, park_area_size, building_size, capacity, est, last_renovation, jamaah, imam, teenager, id_category, image, username) FROM stdin;
    public          postgres    false    285   ��                0    20372    worship_place_gallery 
   TABLE DATA           Y   COPY public.worship_place_gallery (serial_number, id, gallery_worship_place) FROM stdin;
    public          postgres    false    286   z�      b          0    19987    topology 
   TABLE DATA           G   COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
    topology          postgres    false    214   ��      c          0    20000    layer 
   TABLE DATA           �   COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
    topology          postgres    false    215   ��                 0    0    kuliner_region_gid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kuliner_region_gid_seq', 132, true);
          public          postgres    false    263            v           2606    20392    admin AdminPK 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "AdminPK" PRIMARY KEY (username);
 9   ALTER TABLE ONLY public.admin DROP CONSTRAINT "AdminPK";
       public            postgres    false    220            z           2606    20394    admin_th PK AdminTh 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin_th
    ADD CONSTRAINT "PK AdminTh" PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.admin_th DROP CONSTRAINT "PK AdminTh";
       public            postgres    false    222            �           2606    20396 2   detail_facility_tourism PK Detail Facility Tourism 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_tourism
    ADD CONSTRAINT "PK Detail Facility Tourism" PRIMARY KEY (id_tourism, id_facility);
 ^   ALTER TABLE ONLY public.detail_facility_tourism DROP CONSTRAINT "PK Detail Facility Tourism";
       public            postgres    false    238    238            �           2606    20398 $   facility_tourism PK Facility Tourism 
   CONSTRAINT     d   ALTER TABLE ONLY public.facility_tourism
    ADD CONSTRAINT "PK Facility Tourism" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.facility_tourism DROP CONSTRAINT "PK Facility Tourism";
       public            postgres    false    256            �           2606    20400     angkot_gallery PK Gallery Angkot 
   CONSTRAINT     o   ALTER TABLE ONLY public.angkot_gallery
    ADD CONSTRAINT "PK Gallery Angkot" PRIMARY KEY (serial_number, id);
 L   ALTER TABLE ONLY public.angkot_gallery DROP CONSTRAINT "PK Gallery Angkot";
       public            postgres    false    226    226            �           2606    20402    hotel_type PK TIPE HOTEL 
   CONSTRAINT     X   ALTER TABLE ONLY public.hotel_type
    ADD CONSTRAINT "PK TIPE HOTEL" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hotel_type DROP CONSTRAINT "PK TIPE HOTEL";
       public            postgres    false    259            �           2606    20404    tourism_type PK Tourism Tipe 
   CONSTRAINT     \   ALTER TABLE ONLY public.tourism_type
    ADD CONSTRAINT "PK Tourism Tipe" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tourism_type DROP CONSTRAINT "PK Tourism Tipe";
       public            postgres    false    282            �           2606    20406    detail_hotel PK ah 
   CONSTRAINT     c   ALTER TABLE ONLY public.detail_hotel
    ADD CONSTRAINT "PK ah" PRIMARY KEY (id_angkot, id_hotel);
 >   ALTER TABLE ONLY public.detail_hotel DROP CONSTRAINT "PK ah";
       public            postgres    false    239    239            �           2606    20408    detail_tourism PK atw 
   CONSTRAINT     h   ALTER TABLE ONLY public.detail_tourism
    ADD CONSTRAINT "PK atw" PRIMARY KEY (id_angkot, id_tourism);
 A   ALTER TABLE ONLY public.detail_tourism DROP CONSTRAINT "PK atw";
       public            postgres    false    247    247            x           2606    20410 &   admin_restaurant admin_restaurant_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.admin_restaurant
    ADD CONSTRAINT admin_restaurant_pkey PRIMARY KEY (username);
 P   ALTER TABLE ONLY public.admin_restaurant DROP CONSTRAINT admin_restaurant_pkey;
       public            postgres    false    221            �           2606    20412    angkot_color angkot_color_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.angkot_color
    ADD CONSTRAINT angkot_color_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.angkot_color DROP CONSTRAINT angkot_color_pkey;
       public            postgres    false    225            ~           2606    20414    angkot angkot_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.angkot
    ADD CONSTRAINT angkot_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.angkot DROP CONSTRAINT angkot_pk;
       public            postgres    false    224            �           2606    20416 0   detail_facility_hotel detail_facility_hotel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_hotel
    ADD CONSTRAINT detail_facility_hotel_pkey PRIMARY KEY (id_hotel, id_facility);
 Z   ALTER TABLE ONLY public.detail_facility_hotel DROP CONSTRAINT detail_facility_hotel_pkey;
       public            postgres    false    236    236            �           2606    20418 $   detail_facility detail_facility_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT detail_facility_pkey PRIMARY KEY (id_facility, id_worship_place);
 N   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT detail_facility_pkey;
       public            postgres    false    234    234            �           2606    20420 :   detail_facility_restaurant detail_facility_restaurant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_restaurant
    ADD CONSTRAINT detail_facility_restaurant_pkey PRIMARY KEY (id_facility, id_restaurant);
 d   ALTER TABLE ONLY public.detail_facility_restaurant DROP CONSTRAINT detail_facility_restaurant_pkey;
       public            postgres    false    237    237            �           2606    20422 "   facility_hotel facility_hotel_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.facility_hotel
    ADD CONSTRAINT facility_hotel_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.facility_hotel DROP CONSTRAINT facility_hotel_pkey;
       public            postgres    false    254            �           2606    20424 ,   facility_restaurant facility_restaurant_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.facility_restaurant
    ADD CONSTRAINT facility_restaurant_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.facility_restaurant DROP CONSTRAINT facility_restaurant_pkey;
       public            postgres    false    255            �           2606    20426     hotel_gallery hotel_gallery_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.hotel_gallery
    ADD CONSTRAINT hotel_gallery_pkey PRIMARY KEY (serial_number, id);
 J   ALTER TABLE ONLY public.hotel_gallery DROP CONSTRAINT hotel_gallery_pkey;
       public            postgres    false    258    258            �           2606    20428    worship_place id 
   CONSTRAINT     N   ALTER TABLE ONLY public.worship_place
    ADD CONSTRAINT id PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.worship_place DROP CONSTRAINT id;
       public            postgres    false    285            |           2606    20430     administrators id_administrators 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT id_administrators PRIMARY KEY (stewardship_period, id_worship_place);
 J   ALTER TABLE ONLY public.administrators DROP CONSTRAINT id_administrators;
       public            postgres    false    223    223            �           2606    20432 "   category_worship_place id_category 
   CONSTRAINT     `   ALTER TABLE ONLY public.category_worship_place
    ADD CONSTRAINT id_category PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.category_worship_place DROP CONSTRAINT id_category;
       public            postgres    false    227            �           2606    20434 $   culinary_gallery id_culinary_gallery 
   CONSTRAINT     q   ALTER TABLE ONLY public.culinary_gallery
    ADD CONSTRAINT id_culinary_gallery PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.culinary_gallery DROP CONSTRAINT id_culinary_gallery;
       public            postgres    false    229    229            �           2606    20436     culinary_place id_culinary_place 
   CONSTRAINT     ^   ALTER TABLE ONLY public.culinary_place
    ADD CONSTRAINT id_culinary_place PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.culinary_place DROP CONSTRAINT id_culinary_place;
       public            postgres    false    230            �           2606    20438 "   detail_culinary id_detail_culinary 
   CONSTRAINT     |   ALTER TABLE ONLY public.detail_culinary
    ADD CONSTRAINT id_detail_culinary PRIMARY KEY (id_culinary_place, id_culinary);
 L   ALTER TABLE ONLY public.detail_culinary DROP CONSTRAINT id_detail_culinary;
       public            postgres    false    231    231            �           2606    20440 .   detail_culinary_place id_detail_culinary_place 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary_place
    ADD CONSTRAINT id_detail_culinary_place PRIMARY KEY (id_culinary_place, id_angkot);
 X   ALTER TABLE ONLY public.detail_culinary_place DROP CONSTRAINT id_detail_culinary_place;
       public            postgres    false    232    232            �           2606    20442    detail_event id_detail_event 
   CONSTRAINT     v   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_detail_event PRIMARY KEY (date, "time", id_worship_place);
 F   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_detail_event;
       public            postgres    false    233    233    233            �           2606    20444 +   detail_facility_culinary id_detail_facility 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_culinary
    ADD CONSTRAINT id_detail_facility PRIMARY KEY (id_culinary_place, id_facility);
 U   ALTER TABLE ONLY public.detail_facility_culinary DROP CONSTRAINT id_detail_facility;
       public            postgres    false    235    235            �           2606    20446    detail_menu id_detail_menu 
   CONSTRAINT     t   ALTER TABLE ONLY public.detail_menu
    ADD CONSTRAINT id_detail_menu PRIMARY KEY (id_restaurant, id_special_menu);
 D   ALTER TABLE ONLY public.detail_menu DROP CONSTRAINT id_detail_menu;
       public            postgres    false    240    240            �           2606    20448 8   detail_product_small_industry id_detail_product_industry 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_small_industry
    ADD CONSTRAINT id_detail_product_industry PRIMARY KEY (id_product, id_small_industry);
 b   ALTER TABLE ONLY public.detail_product_small_industry DROP CONSTRAINT id_detail_product_industry;
       public            postgres    false    241    241            �           2606    20450 2   detail_product_souvenir id_detail_product_souvenir 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_souvenir
    ADD CONSTRAINT id_detail_product_souvenir PRIMARY KEY (id_product, id_souvenir);
 \   ALTER TABLE ONLY public.detail_product_souvenir DROP CONSTRAINT id_detail_product_souvenir;
       public            postgres    false    242    242            �           2606    20452 &   detail_restaurant id_detail_restaurant 
   CONSTRAINT     z   ALTER TABLE ONLY public.detail_restaurant
    ADD CONSTRAINT id_detail_restaurant PRIMARY KEY (id_angkot, id_restaurant);
 P   ALTER TABLE ONLY public.detail_restaurant DROP CONSTRAINT id_detail_restaurant;
       public            postgres    false    243    243            �           2606    20454 .   detail_small_industry id_detail_small_industry 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_small_industry
    ADD CONSTRAINT id_detail_small_industry PRIMARY KEY (id_angkot, id_small_industry);
 X   ALTER TABLE ONLY public.detail_small_industry DROP CONSTRAINT id_detail_small_industry;
       public            postgres    false    245    245            �           2606    20456 "   detail_souvenir id_detail_souvenir 
   CONSTRAINT     t   ALTER TABLE ONLY public.detail_souvenir
    ADD CONSTRAINT id_detail_souvenir PRIMARY KEY (id_souvenir, id_angkot);
 L   ALTER TABLE ONLY public.detail_souvenir DROP CONSTRAINT id_detail_souvenir;
       public            postgres    false    246    246            �           2606    20458 ,   detail_worship_place id_detail_worship_place 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_detail_worship_place PRIMARY KEY (id_angkot, id_worship_place);
 V   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_detail_worship_place;
       public            postgres    false    248    248            �           2606    20460    district id_district 
   CONSTRAINT     R   ALTER TABLE ONLY public.district
    ADD CONSTRAINT id_district PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.district DROP CONSTRAINT id_district;
       public            postgres    false    249            �           2606    20462    event id_event 
   CONSTRAINT     L   ALTER TABLE ONLY public.event
    ADD CONSTRAINT id_event PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.event DROP CONSTRAINT id_event;
       public            postgres    false    250            �           2606    20464    facility_culinary id_facility 
   CONSTRAINT     [   ALTER TABLE ONLY public.facility_culinary
    ADD CONSTRAINT id_facility PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.facility_culinary DROP CONSTRAINT id_facility;
       public            postgres    false    253            �           2606    20466 (   facility_condition id_facility_condition 
   CONSTRAINT     f   ALTER TABLE ONLY public.facility_condition
    ADD CONSTRAINT id_facility_condition PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.facility_condition DROP CONSTRAINT id_facility_condition;
       public            postgres    false    252            �           2606    20468 "   facility id_facility_worship_place 
   CONSTRAINT     `   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT id_facility_worship_place PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.facility DROP CONSTRAINT id_facility_worship_place;
       public            postgres    false    251            �           2606    20470 $   industry_gallery id_industry_gallery 
   CONSTRAINT     q   ALTER TABLE ONLY public.industry_gallery
    ADD CONSTRAINT id_industry_gallery PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.industry_gallery DROP CONSTRAINT id_industry_gallery;
       public            postgres    false    260    260            �           2606    20472    industry_type id_jenis_industry 
   CONSTRAINT     ]   ALTER TABLE ONLY public.industry_type
    ADD CONSTRAINT id_jenis_industry PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.industry_type DROP CONSTRAINT id_jenis_industry;
       public            postgres    false    261            �           2606    20474    souvenir_type id_jenis_oleh 
   CONSTRAINT     Y   ALTER TABLE ONLY public.souvenir_type
    ADD CONSTRAINT id_jenis_oleh PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.souvenir_type DROP CONSTRAINT id_jenis_oleh;
       public            postgres    false    275            �           2606    20476    culinary id_kuliner 
   CONSTRAINT     Q   ALTER TABLE ONLY public.culinary
    ADD CONSTRAINT id_kuliner PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.culinary DROP CONSTRAINT id_kuliner;
       public            postgres    false    228            �           2606    20478 0   product_small_industry id_product_small_industry 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_small_industry
    ADD CONSTRAINT id_product_small_industry PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_small_industry DROP CONSTRAINT id_product_small_industry;
       public            postgres    false    265            �           2606    20480 *   restaurant_category id_restaurant_category 
   CONSTRAINT     h   ALTER TABLE ONLY public.restaurant_category
    ADD CONSTRAINT id_restaurant_category PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.restaurant_category DROP CONSTRAINT id_restaurant_category;
       public            postgres    false    268            �           2606    20482 (   restaurant_gallery id_restaurant_gallery 
   CONSTRAINT     u   ALTER TABLE ONLY public.restaurant_gallery
    ADD CONSTRAINT id_restaurant_gallery PRIMARY KEY (serial_number, id);
 R   ALTER TABLE ONLY public.restaurant_gallery DROP CONSTRAINT id_restaurant_gallery;
       public            postgres    false    269    269            �           2606    20484     small_industry id_small_industry 
   CONSTRAINT     ^   ALTER TABLE ONLY public.small_industry
    ADD CONSTRAINT id_small_industry PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.small_industry DROP CONSTRAINT id_small_industry;
       public            postgres    false    272            �           2606    20486    souvenir id_souvenir 
   CONSTRAINT     R   ALTER TABLE ONLY public.souvenir
    ADD CONSTRAINT id_souvenir PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.souvenir DROP CONSTRAINT id_souvenir;
       public            postgres    false    273            �           2606    20488 $   souvenir_gallery id_souvenir_gallery 
   CONSTRAINT     q   ALTER TABLE ONLY public.souvenir_gallery
    ADD CONSTRAINT id_souvenir_gallery PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.souvenir_gallery DROP CONSTRAINT id_souvenir_gallery;
       public            postgres    false    274    274            �           2606    20490 $   product_souvenir id_souvenir_product 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_souvenir
    ADD CONSTRAINT id_souvenir_product PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_souvenir DROP CONSTRAINT id_souvenir_product;
       public            postgres    false    266            �           2606    20492    special_menu id_special_menu 
   CONSTRAINT     Z   ALTER TABLE ONLY public.special_menu
    ADD CONSTRAINT id_special_menu PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.special_menu DROP CONSTRAINT id_special_menu;
       public            postgres    false    276            �           2606    20494    status id_status 
   CONSTRAINT     N   ALTER TABLE ONLY public.status
    ADD CONSTRAINT id_status PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.status DROP CONSTRAINT id_status;
       public            postgres    false    278            �           2606    20496    type_event id_type_event 
   CONSTRAINT     V   ALTER TABLE ONLY public.type_event
    ADD CONSTRAINT id_type_event PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.type_event DROP CONSTRAINT id_type_event;
       public            postgres    false    283            �           2606    20498    ustad id_ustad 
   CONSTRAINT     L   ALTER TABLE ONLY public.ustad
    ADD CONSTRAINT id_ustad PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ustad DROP CONSTRAINT id_ustad;
       public            postgres    false    284            �           2606    20500 .   worship_place_gallery id_worship_place_gallery 
   CONSTRAINT     {   ALTER TABLE ONLY public.worship_place_gallery
    ADD CONSTRAINT id_worship_place_gallery PRIMARY KEY (serial_number, id);
 X   ALTER TABLE ONLY public.worship_place_gallery DROP CONSTRAINT id_worship_place_gallery;
       public            postgres    false    286    286            �           2606    20502 !   information_admin info_admin_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT info_admin_pkey PRIMARY KEY (id_informasi);
 K   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT info_admin_pkey;
       public            postgres    false    262            �           2606    20504    room pk 
   CONSTRAINT     E   ALTER TABLE ONLY public.room
    ADD CONSTRAINT pk PRIMARY KEY (id);
 1   ALTER TABLE ONLY public.room DROP CONSTRAINT pk;
       public            postgres    false    271            �           2606    20506    detail_room pk detail room 
   CONSTRAINT     i   ALTER TABLE ONLY public.detail_room
    ADD CONSTRAINT "pk detail room" PRIMARY KEY (id_room, id_hotel);
 F   ALTER TABLE ONLY public.detail_room DROP CONSTRAINT "pk detail room";
       public            postgres    false    244    244            �           2606    20508    hotel pk hotel 
   CONSTRAINT     N   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT "pk hotel" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT "pk hotel";
       public            postgres    false    257            �           2606    20510    tourism pk tourism 
   CONSTRAINT     R   ALTER TABLE ONLY public.tourism
    ADD CONSTRAINT "pk tourism" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tourism DROP CONSTRAINT "pk tourism";
       public            postgres    false    280            �           2606    20512    restaurant pk_restaurant 
   CONSTRAINT     V   ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT pk_restaurant PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.restaurant DROP CONSTRAINT pk_restaurant;
       public            postgres    false    267            �           2606    20514    review review_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (id_review);
 <   ALTER TABLE ONLY public.review DROP CONSTRAINT review_pkey;
       public            postgres    false    270            �           2606    20516    status_user status_user_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.status_user
    ADD CONSTRAINT status_user_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.status_user DROP CONSTRAINT status_user_pkey;
       public            postgres    false    279            �           2606    20518 $   tourism_gallery tourism_gallery_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.tourism_gallery
    ADD CONSTRAINT tourism_gallery_pkey PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.tourism_gallery DROP CONSTRAINT tourism_gallery_pkey;
       public            postgres    false    281    281            �           2606    20520    login username 
   CONSTRAINT     R   ALTER TABLE ONLY public.login
    ADD CONSTRAINT username PRIMARY KEY (username);
 8   ALTER TABLE ONLY public.login DROP CONSTRAINT username;
       public            postgres    false    264            t           1259    20521    mapcatalog_idx    INDEX     e   CREATE UNIQUE INDEX mapcatalog_idx ON mapinfo.mapinfo_mapcatalog USING btree (tablename, ownername);
 #   DROP INDEX mapinfo.mapcatalog_idx;
       mapinfo            postgres    false    219    219            �           1259    20522    agen1_region_region_geom_gist    INDEX     S   CREATE INDEX agen1_region_region_geom_gist ON public.restaurant USING gist (geom);
 1   DROP INDEX public.agen1_region_region_geom_gist;
       public            postgres    false    267    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3            �           1259    20523    hotel_region_geom_idx    INDEX     F   CREATE INDEX hotel_region_geom_idx ON public.hotel USING gist (geom);
 )   DROP INDEX public.hotel_region_geom_idx;
       public            postgres    false    257    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3            �           1259    20524    industri_kecil_region_geom_idx    INDEX     X   CREATE INDEX industri_kecil_region_geom_idx ON public.small_industry USING gist (geom);
 2   DROP INDEX public.industri_kecil_region_geom_idx;
       public            postgres    false    272    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3            �           1259    20525    kecamatan_region_geom_gist    INDEX     N   CREATE INDEX kecamatan_region_geom_gist ON public.district USING gist (geom);
 .   DROP INDEX public.kecamatan_region_geom_gist;
       public            postgres    false    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    249            �           1259    20526    kuliner_region_geom_idx    INDEX     Q   CREATE INDEX kuliner_region_geom_idx ON public.culinary_place USING gist (geom);
 +   DROP INDEX public.kuliner_region_geom_idx;
       public            postgres    false    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    230            �           1259    20527    mesjid_region_geom_idx    INDEX     O   CREATE INDEX mesjid_region_geom_idx ON public.worship_place USING gist (geom);
 *   DROP INDEX public.mesjid_region_geom_idx;
       public            postgres    false    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    285                       2606    20528 #   culinary_place AdminToCulinaryPlace    FK CONSTRAINT     �   ALTER TABLE ONLY public.culinary_place
    ADD CONSTRAINT "AdminToCulinaryPlace" FOREIGN KEY (username) REFERENCES public.admin(username);
 O   ALTER TABLE ONLY public.culinary_place DROP CONSTRAINT "AdminToCulinaryPlace";
       public          postgres    false    220    230    3958            *           2606    20533    hotel AdminToHotel    FK CONSTRAINT     z   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT "AdminToHotel" FOREIGN KEY (username) REFERENCES public.admin(username);
 >   ALTER TABLE ONLY public.hotel DROP CONSTRAINT "AdminToHotel";
       public          postgres    false    220    3958    257            <           2606    20538 #   small_industry AdminToSmallIndustry    FK CONSTRAINT     �   ALTER TABLE ONLY public.small_industry
    ADD CONSTRAINT "AdminToSmallIndustry" FOREIGN KEY (username) REFERENCES public.admin(username);
 O   ALTER TABLE ONLY public.small_industry DROP CONSTRAINT "AdminToSmallIndustry";
       public          postgres    false    3958    220    272            ?           2606    20543    souvenir AdminToSouvenir    FK CONSTRAINT     �   ALTER TABLE ONLY public.souvenir
    ADD CONSTRAINT "AdminToSouvenir" FOREIGN KEY (username) REFERENCES public.admin(username);
 D   ALTER TABLE ONLY public.souvenir DROP CONSTRAINT "AdminToSouvenir";
       public          postgres    false    220    273    3958            C           2606    20548    tourism AdminToTourism    FK CONSTRAINT     ~   ALTER TABLE ONLY public.tourism
    ADD CONSTRAINT "AdminToTourism" FOREIGN KEY (username) REFERENCES public.admin(username);
 B   ALTER TABLE ONLY public.tourism DROP CONSTRAINT "AdminToTourism";
       public          postgres    false    280    3958    220            F           2606    20553 !   worship_place AdminToWorshipPlace    FK CONSTRAINT     �   ALTER TABLE ONLY public.worship_place
    ADD CONSTRAINT "AdminToWorshipPlace" FOREIGN KEY (username) REFERENCES public.admin(username);
 M   ALTER TABLE ONLY public.worship_place DROP CONSTRAINT "AdminToWorshipPlace";
       public          postgres    false    285    220    3958            .           2606    20558    information_admin FK Hotel    FK CONSTRAINT     |   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK Hotel" FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 F   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK Hotel";
       public          postgres    false    262    257    4035            6           2606    20563    review FK Hotel    FK CONSTRAINT     q   ALTER TABLE ONLY public.review
    ADD CONSTRAINT "FK Hotel" FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 ;   ALTER TABLE ONLY public.review DROP CONSTRAINT "FK Hotel";
       public          postgres    false    270    4035    257            /           2606    20569    information_admin FK IK    FK CONSTRAINT        ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK IK" FOREIGN KEY (id_ik) REFERENCES public.small_industry(id);
 C   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK IK";
       public          postgres    false    262    4064    272            7           2606    20574    review FK IK    FK CONSTRAINT     t   ALTER TABLE ONLY public.review
    ADD CONSTRAINT "FK IK" FOREIGN KEY (id_ik) REFERENCES public.small_industry(id);
 8   ALTER TABLE ONLY public.review DROP CONSTRAINT "FK IK";
       public          postgres    false    270    4064    272            0           2606    20579    information_admin FK Kuliner    FK CONSTRAINT     �   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK Kuliner" FOREIGN KEY (id_kuliner) REFERENCES public.culinary_place(id);
 H   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK Kuliner";
       public          postgres    false    3978    262    230            1           2606    20584    information_admin FK OW    FK CONSTRAINT     x   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK OW" FOREIGN KEY (id_ow) REFERENCES public.tourism(id);
 C   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK OW";
       public          postgres    false    262    280    4079            8           2606    20589    review FK Ow    FK CONSTRAINT     m   ALTER TABLE ONLY public.review
    ADD CONSTRAINT "FK Ow" FOREIGN KEY (id_ow) REFERENCES public.tourism(id);
 8   ALTER TABLE ONLY public.review DROP CONSTRAINT "FK Ow";
       public          postgres    false    270    280    4079            2           2606    20594    information_admin FK Souvenir    FK CONSTRAINT     �   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK Souvenir" FOREIGN KEY (id_souvenir) REFERENCES public.souvenir(id);
 I   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK Souvenir";
       public          postgres    false    262    273    4067            9           2606    20599    review FK Souvenir    FK CONSTRAINT     z   ALTER TABLE ONLY public.review
    ADD CONSTRAINT "FK Souvenir" FOREIGN KEY (id_souvenir) REFERENCES public.souvenir(id);
 >   ALTER TABLE ONLY public.review DROP CONSTRAINT "FK Souvenir";
       public          postgres    false    270    273    4067            D           2606    20604    tourism FK Tipe Tourism    FK CONSTRAINT        ALTER TABLE ONLY public.tourism
    ADD CONSTRAINT "FK Tipe Tourism" FOREIGN KEY (id_type) REFERENCES public.tourism_type(id);
 C   ALTER TABLE ONLY public.tourism DROP CONSTRAINT "FK Tipe Tourism";
       public          postgres    false    4083    282    280            3           2606    20609    information_admin FK Username    FK CONSTRAINT     �   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK Username" FOREIGN KEY (username) REFERENCES public.admin(username);
 I   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK Username";
       public          postgres    false    220    262    3958            4           2606    20614    information_admin FK Worship    FK CONSTRAINT     �   ALTER TABLE ONLY public.information_admin
    ADD CONSTRAINT "FK Worship" FOREIGN KEY (id_worship) REFERENCES public.worship_place(id);
 H   ALTER TABLE ONLY public.information_admin DROP CONSTRAINT "FK Worship";
       public          postgres    false    4089    285    262            :           2606    20619    review FK Worship    FK CONSTRAINT     }   ALTER TABLE ONLY public.review
    ADD CONSTRAINT "FK Worship" FOREIGN KEY (id_worship) REFERENCES public.worship_place(id);
 =   ALTER TABLE ONLY public.review DROP CONSTRAINT "FK Worship";
       public          postgres    false    4089    285    270                       2606    20624    detail_hotel FK angkot    FK CONSTRAINT     z   ALTER TABLE ONLY public.detail_hotel
    ADD CONSTRAINT "FK angkot" FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 B   ALTER TABLE ONLY public.detail_hotel DROP CONSTRAINT "FK angkot";
       public          postgres    false    224    239    3966            %           2606    20629    detail_tourism FK angkot    FK CONSTRAINT     |   ALTER TABLE ONLY public.detail_tourism
    ADD CONSTRAINT "FK angkot" FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 D   ALTER TABLE ONLY public.detail_tourism DROP CONSTRAINT "FK angkot";
       public          postgres    false    247    3966    224                       2606    20634 #   detail_facility_tourism FK facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_tourism
    ADD CONSTRAINT "FK facility" FOREIGN KEY (id_facility) REFERENCES public.facility_tourism(id);
 O   ALTER TABLE ONLY public.detail_facility_tourism DROP CONSTRAINT "FK facility";
       public          postgres    false    238    4032    256                       2606    20639    detail_hotel FK hotel    FK CONSTRAINT     w   ALTER TABLE ONLY public.detail_hotel
    ADD CONSTRAINT "FK hotel" FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 A   ALTER TABLE ONLY public.detail_hotel DROP CONSTRAINT "FK hotel";
       public          postgres    false    257    239    4035                        2606    20644    angkot_gallery FK id Gallery    FK CONSTRAINT     y   ALTER TABLE ONLY public.angkot_gallery
    ADD CONSTRAINT "FK id Gallery" FOREIGN KEY (id) REFERENCES public.angkot(id);
 H   ALTER TABLE ONLY public.angkot_gallery DROP CONSTRAINT "FK id Gallery";
       public          postgres    false    226    3966    224                       2606    20649 %   detail_facility_tourism FK id tourism    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_tourism
    ADD CONSTRAINT "FK id tourism" FOREIGN KEY (id_tourism) REFERENCES public.tourism(id);
 Q   ALTER TABLE ONLY public.detail_facility_tourism DROP CONSTRAINT "FK id tourism";
       public          postgres    false    280    4079    238            ;           2606    20654    review FK kuliner    FK CONSTRAINT     ~   ALTER TABLE ONLY public.review
    ADD CONSTRAINT "FK kuliner" FOREIGN KEY (id_kuliner) REFERENCES public.culinary_place(id);
 =   ALTER TABLE ONLY public.review DROP CONSTRAINT "FK kuliner";
       public          postgres    false    270    230    3978            &           2606    20659    detail_tourism FK tw    FK CONSTRAINT     z   ALTER TABLE ONLY public.detail_tourism
    ADD CONSTRAINT "FK tw" FOREIGN KEY (id_tourism) REFERENCES public.tourism(id);
 @   ALTER TABLE ONLY public.detail_tourism DROP CONSTRAINT "FK tw";
       public          postgres    false    247    4079    280            +           2606    20664    hotel FK type hotel    FK CONSTRAINT     y   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT "FK type hotel" FOREIGN KEY (id_type) REFERENCES public.hotel_type(id);
 ?   ALTER TABLE ONLY public.hotel DROP CONSTRAINT "FK type hotel";
       public          postgres    false    257    259    4039            �           2606    20669    admin FKRole    FK CONSTRAINT     p   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "FKRole" FOREIGN KEY (role) REFERENCES public.status_user(id);
 8   ALTER TABLE ONLY public.admin DROP CONSTRAINT "FKRole";
       public          postgres    false    4077    279    220            �           2606    20674    angkot angkot_color    FK CONSTRAINT     z   ALTER TABLE ONLY public.angkot
    ADD CONSTRAINT angkot_color FOREIGN KEY (id_color) REFERENCES public.angkot_color(id);
 =   ALTER TABLE ONLY public.angkot DROP CONSTRAINT angkot_color;
       public          postgres    false    224    225    3968                       2606    20679 F   detail_facility_restaurant detail_facility_restaurant_id_facility_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_restaurant
    ADD CONSTRAINT detail_facility_restaurant_id_facility_fkey FOREIGN KEY (id_facility) REFERENCES public.facility_restaurant(id);
 p   ALTER TABLE ONLY public.detail_facility_restaurant DROP CONSTRAINT detail_facility_restaurant_id_facility_fkey;
       public          postgres    false    4030    237    255                       2606    20684    detail_room fk id_hotel    FK CONSTRAINT     y   ALTER TABLE ONLY public.detail_room
    ADD CONSTRAINT "fk id_hotel" FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 C   ALTER TABLE ONLY public.detail_room DROP CONSTRAINT "fk id_hotel";
       public          postgres    false    244    257    4035                        2606    20689    detail_room fk id_room    FK CONSTRAINT     v   ALTER TABLE ONLY public.detail_room
    ADD CONSTRAINT "fk id_room" FOREIGN KEY (id_room) REFERENCES public.room(id);
 B   ALTER TABLE ONLY public.detail_room DROP CONSTRAINT "fk id_room";
       public          postgres    false    271    4062    244            
           2606    20694    detail_facility fk_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT fk_facility FOREIGN KEY (id_facility) REFERENCES public.facility(id);
 E   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT fk_facility;
       public          postgres    false    251    4022    234                       2606    20699 !   detail_restaurant fk_restaurantye    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_restaurant
    ADD CONSTRAINT fk_restaurantye FOREIGN KEY (id_restaurant) REFERENCES public.restaurant(id);
 K   ALTER TABLE ONLY public.detail_restaurant DROP CONSTRAINT fk_restaurantye;
       public          postgres    false    243    267    4054            ,           2606    20704 #   hotel_gallery hotel_gallery_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.hotel_gallery
    ADD CONSTRAINT hotel_gallery_id_fkey FOREIGN KEY (id) REFERENCES public.hotel(id);
 M   ALTER TABLE ONLY public.hotel_gallery DROP CONSTRAINT hotel_gallery_id_fkey;
       public          postgres    false    4035    258    257            �           2606    20709    administrators id    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT id FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 ;   ALTER TABLE ONLY public.administrators DROP CONSTRAINT id;
       public          postgres    false    285    223    4089            H           2606    20714    worship_place_gallery id    FK CONSTRAINT     z   ALTER TABLE ONLY public.worship_place_gallery
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.worship_place(id);
 B   ALTER TABLE ONLY public.worship_place_gallery DROP CONSTRAINT id;
       public          postgres    false    286    4089    285                       2606    20719    culinary_gallery id    FK CONSTRAINT     v   ALTER TABLE ONLY public.culinary_gallery
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.culinary_place(id);
 =   ALTER TABLE ONLY public.culinary_gallery DROP CONSTRAINT id;
       public          postgres    false    229    3978    230            '           2606    20724    detail_worship_place id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 H   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_angkot;
       public          postgres    false    248    3966    224                       2606    20729    detail_restaurant id_angkot    FK CONSTRAINT     }   ALTER TABLE ONLY public.detail_restaurant
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 E   ALTER TABLE ONLY public.detail_restaurant DROP CONSTRAINT id_angkot;
       public          postgres    false    243    3966    224                       2606    20734    detail_culinary_place id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary_place
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 I   ALTER TABLE ONLY public.detail_culinary_place DROP CONSTRAINT id_angkot;
       public          postgres    false    3966    232    224            !           2606    20739    detail_small_industry id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_small_industry
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 I   ALTER TABLE ONLY public.detail_small_industry DROP CONSTRAINT id_angkot;
       public          postgres    false    224    3966    245            #           2606    20744    detail_souvenir id_angkot    FK CONSTRAINT     {   ALTER TABLE ONLY public.detail_souvenir
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 C   ALTER TABLE ONLY public.detail_souvenir DROP CONSTRAINT id_angkot;
       public          postgres    false    224    3966    246            G           2606    20749    worship_place id_category    FK CONSTRAINT     �   ALTER TABLE ONLY public.worship_place
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES public.category_worship_place(id);
 C   ALTER TABLE ONLY public.worship_place DROP CONSTRAINT id_category;
       public          postgres    false    285    227    3972                       2606    20754    detail_culinary id_culinary    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary
    ADD CONSTRAINT id_culinary FOREIGN KEY (id_culinary) REFERENCES public.culinary(id);
 E   ALTER TABLE ONLY public.detail_culinary DROP CONSTRAINT id_culinary;
       public          postgres    false    228    231    3974                       2606    20759 !   detail_culinary id_culinary_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary
    ADD CONSTRAINT id_culinary_place FOREIGN KEY (id_culinary_place) REFERENCES public.culinary_place(id);
 K   ALTER TABLE ONLY public.detail_culinary DROP CONSTRAINT id_culinary_place;
       public          postgres    false    3978    230    231                       2606    20764 '   detail_culinary_place id_culinary_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary_place
    ADD CONSTRAINT id_culinary_place FOREIGN KEY (id_culinary_place) REFERENCES public.culinary_place(id);
 Q   ALTER TABLE ONLY public.detail_culinary_place DROP CONSTRAINT id_culinary_place;
       public          postgres    false    230    232    3978                       2606    20769 *   detail_facility_culinary id_culinary_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_culinary
    ADD CONSTRAINT id_culinary_place FOREIGN KEY (id_culinary_place) REFERENCES public.culinary_place(id);
 T   ALTER TABLE ONLY public.detail_facility_culinary DROP CONSTRAINT id_culinary_place;
       public          postgres    false    230    3978    235                       2606    20774    detail_event id_event    FK CONSTRAINT     u   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_event FOREIGN KEY (id_event) REFERENCES public.event(id);
 ?   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_event;
       public          postgres    false    233    250    4020                       2606    20779 !   detail_facility_hotel id_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_hotel
    ADD CONSTRAINT id_facility FOREIGN KEY (id_facility) REFERENCES public.facility_hotel(id);
 K   ALTER TABLE ONLY public.detail_facility_hotel DROP CONSTRAINT id_facility;
       public          postgres    false    236    254    4028                       2606    20784 $   detail_facility_culinary id_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_culinary
    ADD CONSTRAINT id_facility FOREIGN KEY (id_facility) REFERENCES public.facility_culinary(id);
 N   ALTER TABLE ONLY public.detail_facility_culinary DROP CONSTRAINT id_facility;
       public          postgres    false    235    253    4026                       2606    20789 %   detail_facility id_facility_condition    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT id_facility_condition FOREIGN KEY (id_facility_condition) REFERENCES public.facility_condition(id);
 O   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT id_facility_condition;
       public          postgres    false    234    252    4024                       2606    20796    detail_facility_hotel id_hotel    FK CONSTRAINT     ~   ALTER TABLE ONLY public.detail_facility_hotel
    ADD CONSTRAINT id_hotel FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 H   ALTER TABLE ONLY public.detail_facility_hotel DROP CONSTRAINT id_hotel;
       public          postgres    false    257    236    4035            =           2606    20801    small_industry id_industry_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.small_industry
    ADD CONSTRAINT id_industry_type FOREIGN KEY (id_industry_type) REFERENCES public.industry_type(id);
 I   ALTER TABLE ONLY public.small_industry DROP CONSTRAINT id_industry_type;
       public          postgres    false    4043    261    272                       2606    20806 (   detail_product_small_industry id_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_small_industry
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product_small_industry(id);
 R   ALTER TABLE ONLY public.detail_product_small_industry DROP CONSTRAINT id_product;
       public          postgres    false    4049    265    241                       2606    20811 "   detail_product_souvenir id_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_souvenir
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product_souvenir(id);
 L   ALTER TABLE ONLY public.detail_product_souvenir DROP CONSTRAINT id_product;
       public          postgres    false    242    266    4051                       2606    20816    detail_menu id_restaurant_    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_menu
    ADD CONSTRAINT id_restaurant_ FOREIGN KEY (id_restaurant) REFERENCES public.restaurant(id);
 D   ALTER TABLE ONLY public.detail_menu DROP CONSTRAINT id_restaurant_;
       public          postgres    false    240    4054    267                       2606    20821 )   detail_facility_restaurant id_restaurant_    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_restaurant
    ADD CONSTRAINT id_restaurant_ FOREIGN KEY (id_restaurant) REFERENCES public.restaurant(id);
 S   ALTER TABLE ONLY public.detail_facility_restaurant DROP CONSTRAINT id_restaurant_;
       public          postgres    false    237    4054    267            5           2606    20826 !   restaurant_gallery id_restaurant_    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurant_gallery
    ADD CONSTRAINT id_restaurant_ FOREIGN KEY (id) REFERENCES public.restaurant(id);
 K   ALTER TABLE ONLY public.restaurant_gallery DROP CONSTRAINT id_restaurant_;
       public          postgres    false    4054    267    269                       2606    20831 /   detail_product_small_industry id_small_industry    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_small_industry
    ADD CONSTRAINT id_small_industry FOREIGN KEY (id_small_industry) REFERENCES public.small_industry(id);
 Y   ALTER TABLE ONLY public.detail_product_small_industry DROP CONSTRAINT id_small_industry;
       public          postgres    false    272    4064    241            "           2606    20836 '   detail_small_industry id_small_industry    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_small_industry
    ADD CONSTRAINT id_small_industry FOREIGN KEY (id_small_industry) REFERENCES public.small_industry(id);
 Q   ALTER TABLE ONLY public.detail_small_industry DROP CONSTRAINT id_small_industry;
       public          postgres    false    245    272    4064            -           2606    20841 "   industry_gallery id_small_industry    FK CONSTRAINT     �   ALTER TABLE ONLY public.industry_gallery
    ADD CONSTRAINT id_small_industry FOREIGN KEY (id) REFERENCES public.small_industry(id);
 L   ALTER TABLE ONLY public.industry_gallery DROP CONSTRAINT id_small_industry;
       public          postgres    false    260    272    4064                       2606    20846 #   detail_product_souvenir id_souvenir    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_souvenir
    ADD CONSTRAINT id_souvenir FOREIGN KEY (id_souvenir) REFERENCES public.souvenir(id);
 M   ALTER TABLE ONLY public.detail_product_souvenir DROP CONSTRAINT id_souvenir;
       public          postgres    false    242    273    4067            $           2606    20851    detail_souvenir id_souvenir    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_souvenir
    ADD CONSTRAINT id_souvenir FOREIGN KEY (id_souvenir) REFERENCES public.souvenir(id);
 E   ALTER TABLE ONLY public.detail_souvenir DROP CONSTRAINT id_souvenir;
       public          postgres    false    273    4067    246            B           2606    20856    souvenir_gallery id_souvenir    FK CONSTRAINT     y   ALTER TABLE ONLY public.souvenir_gallery
    ADD CONSTRAINT id_souvenir FOREIGN KEY (id) REFERENCES public.souvenir(id);
 F   ALTER TABLE ONLY public.souvenir_gallery DROP CONSTRAINT id_souvenir;
       public          postgres    false    274    4067    273            @           2606    20861    souvenir id_souvenir_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.souvenir
    ADD CONSTRAINT id_souvenir_type FOREIGN KEY (id_souvenir_type) REFERENCES public.souvenir_type(id);
 C   ALTER TABLE ONLY public.souvenir DROP CONSTRAINT id_souvenir_type;
       public          postgres    false    275    4071    273                       2606    20866    detail_menu id_special_menu_    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_menu
    ADD CONSTRAINT id_special_menu_ FOREIGN KEY (id_special_menu) REFERENCES public.special_menu(id);
 F   ALTER TABLE ONLY public.detail_menu DROP CONSTRAINT id_special_menu_;
       public          postgres    false    276    4073    240            A           2606    20871    souvenir id_status    FK CONSTRAINT     t   ALTER TABLE ONLY public.souvenir
    ADD CONSTRAINT id_status FOREIGN KEY (id_status) REFERENCES public.status(id);
 <   ALTER TABLE ONLY public.souvenir DROP CONSTRAINT id_status;
       public          postgres    false    4075    278    273            >           2606    20876    small_industry id_status_ik    FK CONSTRAINT     }   ALTER TABLE ONLY public.small_industry
    ADD CONSTRAINT id_status_ik FOREIGN KEY (id_status) REFERENCES public.status(id);
 E   ALTER TABLE ONLY public.small_industry DROP CONSTRAINT id_status_ik;
       public          postgres    false    278    272    4075            )           2606    20881    event id_type_event    FK CONSTRAINT     }   ALTER TABLE ONLY public.event
    ADD CONSTRAINT id_type_event FOREIGN KEY (id_type_event) REFERENCES public.type_event(id);
 =   ALTER TABLE ONLY public.event DROP CONSTRAINT id_type_event;
       public          postgres    false    250    283    4085                       2606    20886    detail_event id_ustad    FK CONSTRAINT     u   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_ustad FOREIGN KEY (id_ustad) REFERENCES public.ustad(id);
 ?   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_ustad;
       public          postgres    false    233    284    4087            	           2606    20891    detail_event id_worship    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_worship FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 A   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_worship;
       public          postgres    false    233    4089    285                       2606    20896     detail_facility id_worship_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT id_worship_place FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 J   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT id_worship_place;
       public          postgres    false    234    285    4089            (           2606    20901 %   detail_worship_place id_worship_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_worship_place FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 O   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_worship_place;
       public          postgres    false    4089    285    248            E           2606    20906 '   tourism_gallery tourism_gallery_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tourism_gallery
    ADD CONSTRAINT tourism_gallery_id_fkey FOREIGN KEY (id) REFERENCES public.tourism(id);
 Q   ALTER TABLE ONLY public.tourism_gallery DROP CONSTRAINT tourism_gallery_id_fkey;
       public          postgres    false    4079    280    281            �   8  x���]O�0���_�KH�ҷ���;��Rf��֒���{�H�D1m��s��O�!��F�fQ9ZZ_! $a,��M���$�M�
ޙ4��O~�	�
ς�y]x�!�@8z�V_�1���1�Y�GӘ�~nC�Y��A*�(��c4�fwӇ��ɑ:
�̺p�>k��Ԧ�˽��u/E�6��"�;�Z }�3�ʚ0�m� ����l7�G���,�	�l]�ܞS���2�L�	 S=d-%�?e<Ply��f��s���!|���4�����3>$o'�]r�S6ԃ
qup%�<kA�]ӂyE�7�L�h      �   e  x��U]o7|��~@}�].��=5�c�4@(�¯���D�k���˓d�iPTg������̙�s5RM�;EB��96̓V�|J�|�B��%��ѕT���-�[��a$��͗�7KUE��Ӷ���R�A"FP����4��i�ѧXl��Aj	4��S>!܂]!�G�C�V�;Po�{Zmv�o��ʇ��s"@'>4��r�>:�a�V���I;8�-Ɋh�8ZH��}yo�����s��0���
,�X!4oM��^�V�i���J��,\j��p�¹��ʈn t$t�㄃�׻M���ۼ����~�ɲ�s�O5�Dr6M���}�������*a���61��pg��~~|Hۚ��є�2�'���I��3�	KcQ������"��1@�|��2<����r/̷��?~���O{=�Pj�;�l�P����V�8I?s_k��Y~\�����Y�Q�g�V��i3����b�|����\���)A�b�
�h�a����z�~�#�|��yk�>~M��O���FHU$
z*f]��X�u��"Y�90��.�ZΨt�;�Q�l��];��װ�̇�-��.[���Z���'!Ė ����B0�R{�`�A�k������A��l*�ˠ��fV����s<�sG5M�ڄ❴ 8-�5}P���4�젦C^�|�=�������wː��6�VN>j����w�2Q�'�8.`�zV�d����D�i�Y�x)E����7���� �;��{�]*�6��a�8H��+��Y�����pܷv4������-���"i��A�UM�	
�j�Xjp7����J����˼[k���G�߼I�e���l94�`��[�V��Z���^YS{���"��� !�g�)�O�.�#���j�D���Td�X�R��!��T��$������_LqY�\?z��������k'jg��r�_�a>�����y>����l�+�ˑZ1�� �TXӮi,�Uw�7u�K*:8���C��-	t�&�O�-�Z��;M�d�[���b%��*�z��5���q�V��`�������Zj�	� ���}U{K���1��A���2���v������.      �   4   x�KL����L66�0I1H�4130KI5LK1JL347JLJ44MJ3����� !g�      �   q   x���;�0��)���~�2]��,$*���M5�<F���>�r�����{��u�ЈniO��LEK��b��D�N���*ܯ�Q=[Ga�4땃��o du!~      �     x��YَG�|.}E}�����7���	�Z���&���Lv]����dK�d{pՆ ���g��-7��vxϘ0��8��0��mh?��;L�ݼ�J�����W:�洰\)-�~�}�����Z��TJI���0�*�k�_?r��v��丗ܿWg��?���帡�����y;���y�������;0�cN$5WQ����u�)�5W�~��J�Ih�zx�u��)�紹���r���tl�F*����>� �,���$�)��29Rv,�`���C�w��e����bx� ���崔�Ͳ�����3��0�y�����	!�����s,�����<��C��zr�w�
W>�i|S�}XRB9��@(�?j����� \ ����1�-If�=EWw�Y#�'�o��䤕A�������;���q��
d�xi�%��V�K�s�����/�0f��Y�h}."��QpQ$��B���PEnDW{9�;�#��{��M��)�5Z(�9��K�Y�9��������)��#��H��&�Ӷ+�~[v3�]�������B[L����[8z'xl�����0��`Ѫvy)���o��c�4�]�p�He�}������h�Cl��r�������!��� |��,t����ي�J�6C����#���J��0㬼>S��i|�I��|��x�����"������e�w.�c���;&�Vi��7|nF�1�������� �t\v.�O	|���ɔ5�j�l!Rj�R�&��sh�VҮ����#�O��/.�/�x�z��Z��uH1p��KRn}�E���E�#w+�VLN���=����@�4�R����2���9�3A�d���m�
��X�JY�;\�+�<�S��O���r����zH2P�9�D^ԥ4Q"&UEס*�l��zޡ*1�G�T����oР��P��dU�c̄Ցq�"�Y�o�#���b��Ĥ�
�,��o���f=~�����k_ׯ�G�F­�����N�a��D6;Ţ�\����B�/��n��7�m�k�+��l� �V��#4�dXC��aykV
��g���f�$z�0�S�� k��(0g�D��*5T(�e�]㱵Qu�oS���$����k͇���q��`�ln
����*f�Ը�+fc̞ɒ�NXq%Xp��Y�s��پ��tV�n�1;|��q�鼾��w��~��5bp�[�����BI��E鯋��(dY������6��S��X&w�p3�	[�e�A����pC2BN���A^��D|�Rj� �s�U=�n'��м݌w�H�ǟ�7����hOLvj������hP�k�8/��6	\ˋ���8'5�=���n��ׇ��>m�N����4i�-y��05X�J�ly��J�����v���Կ�����Ԏ�4���=�L��RU�1�v��%hFEI1��GL/D�u��W+K���'�D����Zyd}�ϣ�����!ɣ3F(lЬ��Ay�4��>	�v�L�X?��4�H���M����<�t��,�(�t�Ɔh�����h>y��o����fF�q�_�N���뼽� �����NI��9�6K^�#OhO)&D���X1�_�oP�N�=6��9�#=��5��f��-rP2��Jޅ�љ�@ʆ`���t��B��J�Ǉ�ífh�v������3G�i��,���F�t쓭m�t�9�i��좔�!?k��M?�O�||���������RK>���xt? ��N8_A-�M����A����~|;r����3\��0ゟ���3�S����Uᤁ
�nBQ�>ԬiB������WEn�����o�G/��M�
�8d�����鮵���-�dQ$�C��cLײ��n����,���A�TdK�V-J�!V	f��������3HBW�V�ƛ�nC��'�O��U}���ZC(!5�C���jELd��&��o`��������07#t�_E3��%�h�mM𤬕�`�rf�2X�QŊ�*L_eɇ踛O�O���
��v�9��,�&�fF���!��Ҁ�}�cd=����nɆ�h�96��Z�o�M4��Z�P,#堒�*� �0��F��U�
��`Ik�K�:�e���G���B&��_k��gK�ث`=��������M^�r���@�x_-��7KAM_&����7�c4O��P�QM��K�s�5�㋕�Nt���됖ݎ6�':�.��Z����������L��L�"l䁔�5Q7�X\
�޵ӊR_��_T�s{��}X��||bR��x��9��<l��2�ˬ�z��D�����߸���Ӄ4��6@�|�×%��'��&��o�8�r�d#V<!4&T;�:D�2�gqu�!���W����8���7��I85쌠���� ��-RBKí9o���l����wFS_���jc�6�5 b�L.�����I�qX���R�'�u�;Ť��g�˟�n���y�^~�X���j�����a�a�@eN���E�f�է/e&p>�םBw��ي6���%�ڜa�M׉4�J�F���>ï!3%'e�5x����C�����| �T��w�mG��� ܳh}
C80������N� �,z.�� �j'ܣ�=e8�D�	J氜�g�3~�����*��WSp�sl�
���1a��Hq��F��՟B��|��]���3-���F~��?�_�ĉ�ƹ��S	"idBG#���j�pl\�Y}��w�7�w�PR�O~���N�#��@��T�y��A����M}u��5���w��x�x�n�Kg�t���yA`�Z�t\��õ������zȓ��4�9��޽�^��}!᲎����D�MR�GC�,\
������	��u��5k?l��x����[�����7NPZ�@�󥏥$�Xd�;=����	���MU�w��de��>�a��x�0������0��~=#�FS���!`B,���1��A����h��_��-BMB��]�V_�7ǹw�M�*' ��-z�a��1(���h���{R��iH�P�i�(BW`��f����內�z��(��𹍸�H	��!9b��E��1�V"���ׂ�v��Wq�XW#��u��ߔۭd����O.�B1�\���L�C*C!Q.��5W�'J���J��UKE��u'��
����OA�Y��C ��
3�}!�j�e2ޥ����+�~�*a.j��ԾA����>���L��F����F�-���i�RRE
S!�+X�B1�m_��vČ���tC:N���|�ȱǯ�C�c�g}j܀o�<��w�a#Fѡ�cpד�~
	���d�^g���9=��!\AH��l�j��%�e�N���Z�Kt��[,@��̿7�S������yWA����>|Mg�}��@��X ��^%���Ke��1����:���� ��?Ӛ���S��?�9�@*e�����
�E�����t�3����տ�W�^��b��      �      x����%�q$������d�#��h���(jT�dS�!�ؿ_�p�̪�"5Z찫�2Od\�����+��O_��ۿ�������������~������������/?��_~������|����.w�K��=���?J���WW�cWR���s�\Sة�0�R�g��6]m������X�-�Ye�Wb���x�}��=���Zr�C3���j�Jam���%�g������s�s:�s�xhm�؇��0
���W>��-����]��v��W�8�g��e�y��&���}��N.�Y��1���ru��2�tk�(����W��8Vs����2^��]j�s��ZG�{�2���\e�5r��R���X2>��n�]K���]�a����a��n^����W�+zLB�o��������#�I��q��iֳ~�~��}{N�s�R����Z�
=?��|��w�*�����{��D��Ηog��wco�]����Ķ�6����8���
e�R���OO��q��u�}�0sH���}�.�{��3�G!`C�8�.��W�I�ga�׊�ϳ>1�;W�
��;��y�>�St=���>|��T���>��gI�_����>���?l�=�����p*W��]�\�t���q�m���˸�������k>T?����a�Z���a��{L1��+�u�}Wv���ͯ���ث�p�]��ӗ�5�@�x��W�nȸs	�����ϛ�e�e|c7v�m�<9�|Y{c�c��Gy>ԌI����wH��Ҽ���k�R��4�x�V��������6������������~k�2�>_��=`;C�g~%����}�}��>�<�]H��d|@:����Y��n�1���~ڱ�_:�s�ݜ���>�P�]���x������.�Q����U�繏-p�nP��d�	�G�wk�����yӭ��pE�c\�3�p�&��K�Nnu���mM�eX�`w6nH�|�3���߇4X�~�g:���w\��u�{���n�y�Î�K<�g%�qA^��>kA� m��w@s�{������|��E�~�$��_֙?�%�j���fJ�����=��,�����I��%�ƜF�}���}��'�฻q�Ć��冴
#���w\3�����V>�ܯ�u�������֝{;�z��r���C>������`�@z=����Ȏpy��{��U���|5h�{������2���?� ��y�.\�V9���(\���ـȈ#����5l6R�c-�������z�V�����P���?���}�|V�#����Z���[��HP���K�c�?�e���9�.L3'�����V�K�'�ZJ�u���]�b��>�e#����n�� R@���0��?�9�xM�_@u�֡?�~����7eUH1p�S����5�ϰ��kc���CPU����un��Z����P+������y���8l����h,���x�K��eW��� �|�]��/���q� Π�����X�w04q��ѯ��O	�@�� �'n}�/:�G���1��z�	De�c���'�}�1���o��S������ X�����nU�>�Ý�ʮK��>���xA�5H�z��(�p�~__����_Պ�=qm���8�	;t�`�]܂�or ��Þ���!dt}�q�ܝ�Y�o�0]�������  uG��M>C`P-����j��d|]@�z�d�@u���Ӡx<.w���?8��w9:�f��^��y?�ndЙ?vx�����򠗮��;*Kh����� ^���@�CD�����(��� �7@�?��h	?҃/x	(ն�?�E�?�y����?f�_�� �I�.Ր���� �����U��Ѕ�����d��:4��?P��ö�C�a�+�#�q� /÷�6�.���M�x�M~�r�(� ���w5��ס�'�����'Нh�W��^/;ނ�>����Q�WA駃ߧ��_i�|J@��	9��?��� ms�p2���O��?������������˿}���������C�m|�~��?�����_�hpcҺ#�@�3E��S΀[��iW
+7��Q�k0�L� ݛq�����V�8-�oD�|1���,�S�=&��Yn|t�+���9fZ���yg�w `N���T	�!Pa�	r��Cރ��`��ʍ�!����AV��dy-��;d���*;��P���Nn;���r#0���q��f�U��D�p<�彌CT�@�a�����8�)Ng�Xd�(P���y�+����!�zƖ	�l�&�IL��V��@{�a6�j������ǝ�� J`�P���)�2�� �0F�S�D�x�KX-[�(���}�7vuO��@�T��u�/�+N۶��{}GI�84���Mǁ+���+����u!_���0xF��}��2]�\6�; Ng ������%��n��oM'���%�}��'@_�g~}XCx ��*��C	�_���7$��?�? 1Wk���h<�^k#�����Q����~wC�����>^����6�P�@bz>n�l�|�אS�*�����4P`P��t} ؀�� ���~;-܆�X��#�{��� Ul�q=C 1e�fKPs+����L��r�?8P2,�!V@����g1� 3�i����q�@7h�j�|M(�U ��@��}�|����O���W({�X�l|
���"d�C�'Mu`�j�|7b�f�bY�y�����������ǳ� ��͡��LtCeM�B�{���u}Z��8�y������x".[��@�������CA@�W��o2�U꺿 ���@����Y� =�v�~�����6���	2g�3h�T!�!��ƭ�]�<_���l�S`(�L�����/\�ٮ�$|}Xd\r���!=�vw�`P/�7�W�5�9!.�Y߆O��1�� �!% <��q�ph�=?w���2���)���x���]@��?���}�qlskW�]<�W�"�7�SAࠁ��y�2��c��rT�g}�V��K����s~��[��2>
�	��x�ew���7|T;�� �Ү��7���뼿�%(Q�g�Ȁ�m:��]K�Ea��j@��H������TCl�3��۶$�7FsW �E��{�2u���c_�W<��r|B���м�*��ڳ�ѐ��џ�f�^���������*/@m8e�;x��x�qp�����6h$�Iy�5p\I����)�@�܏��^����nO��] !(dM���#����J��*�p�2�q,_��Ѷ�x`��`u�㠑Ư��%Pq�+аs I����ci�Q@�r?+���~C��dA�㒞q\�]n�;H�	�����/@�A^�����Pʣ����VP$�+g���� �g�/\�P��/���Ī&�ߜZ�ɿQ�q8tبs?�r�Fd�3;7r��?�wP$�����ʔ��T�6���4w��� ɣ�ޞ
xY����\9�
��8�>�	�����g�����m<��
�&z�ϋ�U��*V�#?�l+���V,[�����|<>8������I���x�p���H��||�Hqc���$���=�����f�eg�?X	?.zv�~8(s��T�Y�=n���#����4�?;��?;HX* �ٿb>D}?��qkJ=�\+8N�}��A����һc����t�#�ʏۦ?:�� ��E������T�wⲹ +d�V����7����[QG~�U!�ʃ��א�Շ"����m��6���F?���n�j�7 �������@+@���[����؏�~(v����~-���<���5p"ʃ���o�[��}X�5<0����ݦ#'���R���$(�kp�g� r�g�_@�@l��p	��ol0��o �����G�/p:g�i?!���_���?�hbպ�3`;\����u�gr���HoU|��q��>��ɱ˰q�:;P_N,J7� �~�4t 6Q,6�~%�    ^eBl&�B�;���#oc�>�Х�'��w:���A=�8+u�֚�gu�X屘)�+�w��bh�&�
x
��<6I�
}Pg}N��d�(�r��>Q;����!�����]���,97(?�Ţ�q�m��|�����f��������E��7 2yn�h8����7���9�K��_�w~bq��c1�����?��?�ƅ���o������}��w�o���3�O;S��(��L���;�*V
�����^�a�;�q�;霬����d��ǃ�l�M;P�OX��v���\��ά�E=K �`�?��0CoCȘ�F�$�p��2��X����f�. �����P���<��,$�o��7��s���J��Y��se�X��%G5��WԳ�x*�C�йU�i�`�����S�\]f����D<b�����T)!p�q`���_�缔�vz� 8᧚��>0� "�C�/@@s�Zr~���E=�8�����z0�X|���i����٘��7������ܣ�&������<u:��Ѓ�wธ�H�li�硍6�����?s����?آ�`��64D�����F("�8}���2�߆�߹���~w��պv>|����X���Ď��W�-��?8�@��?P>�ex6�a��
�""�dj�2�!�`M�����x60X#Ԁy����4��i5��/c 	t6x~���Ο��)@�Y��>���ϋ1%�UkKdN� "���~��9_P�1N�W��
�!-}��)]��:��K�X��_����� |�����O������ 6���x��6���<T���F{�� /��&^� �9��~��_-�'�d��e�� vM��ǣ��<8
]�Y��"�hI"{�g!
?a���_����6А�g��Eq$�8 �]�9�7ThV����h~L<��X��[4�g���j�)� 0?r��^4��L�>VB��U ɰ�"cV�%�߬����%2D���e���n 7�~0�H1���B�D�]"?n�-2�I�J���9�
Rׯ&����N��Fũz�(�p�������.y�+�#��Z�~B��	����X*�X�q�!u����d�"�*@�DG��"a/)�|�e�x�|G��~2�D��	��I�����p���F�a��=h��'l%����:�6 |-�'2&f�9�x� ��W� Z}\������qo�Q��PzgH"��p弝�����r� ��q��1�	n���E����=�Z�Gv ��b�/���LQ�צ��Ds��c�¢4ٟ��g�1=�-T@H��-��:�QM��{�V�<���ǋCl�z�@+MF��q�{@�~�@�i�v���r�����}��e@4��e�Y�	� ��d'S�?�>G���u��Q���y�`��vp�^�1��M�X�_y��I��6�Q�Ћg~5オ���_2cj㝌g�D��y�oA�a���1 ��u�VΤ�#���)v��a�Id�f��q�Cn;9�8j�@*��a4#m��Rdx�D�BAD`�n��O| �
�mk�?K S��|�i(�ô�/`Tۙ��9��nv���:.�w���i����X~�az��b�C�Ո8O��Gd����]��Y�PC[�}��H#k�-���!�c|����\����2;Q������� �,r)b�< ୑À�9y��Y��Ù_Y"�?�Gb�p����z�0ﶟȨ�<}=���5�=����Qaq�2܆x�#)�VR��LM�wa� ��8`CT`h����zO+o���)�& x8�>�l��1_�`��Y�@'vw3���՞���(�&n�/�B4�ȳ� ��������L��*��J+/$���ܧ��?+ڈ�O��>�<�wA���;�=�h�1�� �kS�7�b� h��ol�XN��� /�<8xg�����}�J�����	�ol|r��H� ���z[�3�'(��Y�7A�q�X�@�#Ç��2�z��f���X�=�qZ,\e� W��( �읳X\���Q�x)0��{�E7TŖ�@)��9�t���� �3ەY~\�y��D�D|b����]+��~������yո'(��� �K�P$Vߑ b�t�.`d��Pw����+�(�gs��m�87de_X<3��J�@�@76"MF��"�r@��x�:p|��'��e�7��?��_���?~�q|��/f�o��^��֌��Q� �LƂ�!���@�^ǭ����Q�*�h�T��maأ%�?��h����4�܂��+����i��B�� ��0� �.�2�E@��K�(0F��د�ş���������cg���,�h���yL۴��܎�XfRc�=B��a���X�R��o��s[DوLq�Yɷ�7�*z�-��q�}�p���@	�Ye�/��o�H� 5;�
ǿ��ݜ��12%��R���X2,c�����g��s	�<c��د�;�/�@/h�JH��o\4{�^��8����_�� &����N�,���<�-�:b��w�0��2�g�ϭw\�`���Wʵɸ�H�!�8=��>�mH�߇�zB#��E��y?��x(:�w`ǋ�{�W\! �la@p��)ޢ���p��Df0�L��)����*)c���7�Jm�<�(Xq�s�uGȰ�l~��%�q�ȼ�x��Ϥ$�d��?i8�����4��]

;������"�ב�@0�P8=�8��A�ǀ�gx���-�J�M����Y�4�/��}�����Đ�i��024��,"s��W0~�G�P�8����-
�#�,��1�������3`E��_`H$a�2�H��#�T����hl�^��(���eJ���4������)2�& ��q����!���ʻp0
#�%�	����"n��Cj�q���EdA��W�%�!��>�!�����w�έ�3�Zz:TZ�?���ى�o�V�� +�`5�lHZH���,wnPΟD[<u�+.8T�N����MZ@�/���ͫ�ȿ��G����>�@�Ǖ�M�������]z=����!st�@|�U���Ӈ��,�%�T���Z������M���~a�����'�'�J�C"DL��� �pe�H��Y*�G��?��uIuݟLŜ*p���ys�	�q���wF�Ĳ�Z�~�7����	����~]��H;��; ��:l~�z��^H	��|�W1�$0�[�w� ֵ��K�TT�?��+��/�����%~f�J�I��s��$�����OM�W���)$�	`}z��~@{B�Ul��_/ϟ����m	�5�c��G���l�еؚ%>j�DG{�_���e�u��m��Я��3I|bdX�^:�D� ��%>C#����;h$����D���J��`{�a/�Y�/W���� ��d\:�� \�+μ���-xť�4y�$�G����t�O4E�A���z�@�qz��q$>&U�n����lB��Z��}�_��W��������s>@�p��d��:ӝ���'F_���Cg�|��*K2����{*��f������ �K�O�$ yk��t�'BX�`�O��'�D�?$��zd<㑑L	�Vơ������:�{^���Ȑ��C7���~�BJD�~?4�~�����|J��;�=;���X�p!e�)�k�8pt��q�e00���h�1u{ҴH��k�z��	#q���?�,�� �/��ՠ-�jmeg3�D�1�����Y��24>��U�b�u~ 3d�{?�s9^׽���<�����(���/賑'Ĉ��;9�v��ԗ{��`s��34h�U���N�ed��͙>�l`A�8Տ�:��>�-��2��Y]z?qSN��z��IT���o���>��P8@'�|����j���    zbbT����e�tӟ����o�&�_��rA�Dn�D8�����i�>�="b>�w��)�Q�S\/b>���n����-1dyeЀ#ߡ&�4��_��h�=߿�UL�г� K��;y��u}�o>�������T��!̀Vt�rL48�E���������+���,X�����fE��ipD/���.w�7�b	���,�,"�3�W�'5<�`��u舆_J��Ǎ�[��+�Q��={�q&^��/�Oq�Q���}/�q\6Wp�n�`�5�{���@�"����n��>о!�s�3j���?q���5��}�u~���)8����7�}b����m�o��L��U��]�͑�ի��\�����~?��_�u�O�)����?B,����߭�3���:�q]=snt}J�K3AaJ���OAa@��/v��f��Q���jgV�t�{������ ;%~4�O��}~&�������i�������3��gX���{�1���n'\�s��[�3����qT�n}?�Zc\�_���ǒ9o~��\YbK���0*�ڧ@d*.t�-񗠦 �8N���f,����Z��������c��jw��g�m� ��`͋+=E�,"W~_\ot]&��Wl`� U�o��Q�<���sXsӉ`�7:�1���P���`��xj���X�>�V/C�`րڟz���t�8`*����΀��2ž����j�� �������>�+��x%n��?!�}�r��Y���2-
L�?Ȫx�z�($�B�Q]��;������ޤ��	��ƴ�c_���<`���]kU�x�}ƕ1���}���ь�c@��l��3��s��:Hz2ޗ_�|s�g�WA����}�%~?�3�(t�O�K6o��������sߛ�8i8�K�c������"půp �\.��1�;�8ԟ�Ͼ������`�O���Y��S��m��ߟ�w$ #���6�/���ZqG�-	�P��u�y��$�m���I	�'�cHթ���ာ��_2 18�TD,mn���2�}���2�M�ΡHE����{~l,z.=�g�[,����p�<u����f_��RQ����-��`����_5��oւ( E��&�FŦ����\S*"��A�@k� ��W��(�\��a[�VV��_wTL����z�s�|/#�2�{��d�p�9��� �����	�O�������۷�ňk(��Ӡ3�k�k�?�`��*�M�=�.�������P���M}��%����0���ٜѳ�`��8�t���B��׸C��}�am����!�i�i���l�	i2d~��96�x@��ܾ��!���?��Bn�xdo�)��A�A�`��zaoJCD��;F��H%��ʷ?��֯���" ?����vrMs�N*4@{p�ǋZq"�N�x�w3L���_��;	��E��{YҌo���E�ߪ�������jX#��]���Ʊ��j����������#����Mg�=�{� x $����`\y�|���kN"?^�������<�?�?�C�:~}������~�M�������~����?���?��/?������Sm�_~��|��w?�?�?��M��hY=��i��!z�n�WYG�ք;�5h��A���i�E���N��3^p�]�-� ��⤝j&"�Yj�d�b'8���h�)wdU�h{F�g�,�6�����oUe`��4�E�
c��KA��i�D��j����Z��H��IPHň�[4ڬ'ͅ�eG�bu�/�Uu a`8W`}��}�_��� <�C��)uB"V�������:# g���f0ix��r�߇��.�V�
��V��J�������\�4�����o ������$=�װ�����v�KR��a-��J2�~"�-����_��o��������Tٹb�-��Q�u`���O�(���ʫqP'X�Us�hډ/F�bn"U,ܾ�[��˹�?6�p�9?�g��* ��p�q�5�pܢ]Z�_*Wj�M�R&��hY?�1<���:���e��Ѓɐ��o�Z��vL�"�~r�z�p'��NV������9��*Y"	d��/^Bx�W�4s�[l���-�o�}�H��Q�!$�\�H͈	���[�>��X�)�"l��-��2�!lfg��Ce'3c����<@-z��gEM�*�"���)@�3��rY������-t����>�-�t{�?�av��Т-�<.ڼm*��JG�>�72�p���0�e�y�~(=F�_�D�ЅR�����
R��{x���f��)�'�������"BX }�Nc��8�M���KJe���SCr3
F�7��6hԌT�ݦ�� u�4�#���a��)���~�����~eh��%uZY)(�W��'Ub����C��Nǫ�F�hH����o���.���\�� ��T+@������1��A�5a����nA�����D ��|bǮAMW�>1y}|�c�O�`�SƁi�gD���'U��b�
+�b\��EsOĪ�<Y�H~߻n�4��
p�g4����`B��֖Ԍu����EGM����jT��`�	N��ؼJ��K�O���d�]@TC���G�M�/xMj�qNJ���,���E�7�K��M�s�� *G�����b��Te	��cM��W�bQRG�uƟ���K��-���_����_�+K�<��Ug�o}��0\OYͳ�o�kUV�xN�|�k��Z?�܋Oə?�9�����u՚s~�� ۲	K/-���9��i��~�S�X9�׬�e3@z�	R����,�V�r�� u�S��i�'4�e_Z�Yc���W0u�l�ҙ?�ډ����=�R�*.\�vy�� ���h�Jm�ߣԨd����������y\5ʚ�� �t~ }����Q�� ����to��=��A�øP��sR�-����"�m�߀�����Y�-F����	'�2�?�e|uWb�Q�����Ώ+�*cW'�,R�+X���䆄f��F�����:?�Qb�����jS�l�gg��[��%H.4JڒmS����F �ԯ}K�[���U��~@��<�Ī@�Pnŷ�w,3G��)�$y��7^�x�����/�~ �rZ@0'��i�3�˙�q���n<,[e]�X��5��=�2���=�ԡ��F"��V_yuY����0���FY�^[�q�	*鑏��(a��z-\�����}���o�Y ��y�����<u~+����4g�~�:��'�}�6�F��Z���l��X4o9�k̗�3u�qӜ�����fӱ���)�����
�{>?����R'4A����z�(�s?&�N��:��Z,q�,_9�����~i�LPf��N��'�SחWH+V��?�9��,1h�>����AA=$듴�T�lP����d��pm�w�V�6��q�|������y�Й¯�#���N�/�� �l,���l\ϕ�UD��|<&�-F��1N��M���\�8�_�~�U$����c���ݟ�Jߐ��i�챟���*�ۼ�j�榚��6�:C���t�_u7�`���b�sֵ�:�8�{ҹ��O`��1�E~�v����Sf4�*^�[2�m��}�����1 v�̏������D,�(�4�#����W��Kt�:g�v�i3�U�Is��S�&B�n���Qhka3q�,w������>�h�E�>�{���?�>;�3�T?wh����Kj��
~;E�G�q��0��Gbb~�=�h<{"����8�s?�*����h���_;�e�GRs�R�˺'p������ܹ^��� n�z!H��(�\��|�s��
6R���Y����,ux���ʟ"35����X����8�?.�^��lK����tq⽻�yz������/iS��� ����	��cQ��� ;�� I0���(�e���|�U2ۜ~_ꯅ���U���    Zqm.�Ot� _��	,.F���S[���V�B�a���UL0���N��lX�����+?������#a���Nk��7���B8�e��*���ϊUz~_�ثT+��b���Y��c�H`,�_Ol���/[��8��.��8	�y���*�+�����[�����ǹx�/������5�@���'>�P��j��;����,^�jws���Y�~ҡ�ظ��/�rp�$�ɰ�ĕ|�;�Βib�r�� ����.O��6b9��o]v�SY*s��ܤ��dr����7̾ ^bɨ��X��yo�o�q�����}�)�*�����]dz�;4a��ռ$]��5���r����p�X�L��?nÑOԇ�����H�C�H��"$aR��?���h�S�`*��(~��b:�_�-q.�??��zR9>���A�1|죘��R�֧"'V���a���<g��}6܈�B�G~�����w�ŢEb�?�w0�o�n�:b��	_�۞l&)��4����ty�˪�@���2��c�A�pߟz��*U�{0��U�o4`��-�Ov�(,�e� �B��M�*?�̾/�X c�|��H�f}X �g����9�}6�u�I&�b�����qp�hV�Y�����m����ce[:�a߬��nX� 	�}k�����߇}S�2-��?�j{��4̬jX`����*"?�m9\�ߘ�/B��M�xY�l�81z�~�o��a���(P�GV��w��/�J��V�#U�C�H�֪��WZ9��q����J��֭l��^ۅ��r�M�~��,�m�Czۭ>�Y_ ������>D�_�}��喪�����o�×?��W��/�����/��_6�;��������G�w�m��d�#��D&�ȑ��`=|K���P�,���)!��sC�o��v�I4s�1�V��4�@����%�K��Ǒ_S�D��H����l���&kk��B�,9	��V��9V���]���*R��s��@B�@��ųt��TY���-�-I��B�������brc��o���;\��I�z�w�O"����ET��@Eg�)V������S����'��z(�k	%Ư�4Kg'������*��)��d�9?5P1������KK�P�o� O-pT1)�IO��)�"�i\��%:��d���V�De����I
��Y5���%V�L^L�<d�@3���YbJ��	���-$��F:��$�6�)��U�j �PV-�o.�bH���Rީ?f@n0L�<)0K�#;`���c���D�f��L�����J����m+p33TBd֚�g�;o��6 �� C
���t~��3�J��������O�H���8;�'���(�㔩I�)�*32�+�p��s���p|�Y�w2���5����b�����8Y ���dG���<��q�E��8�e���u!�s�$��
(A�lֹ�o]�&E7-���IV��ؕ�Mo������W)�Լ��$��P�󼚏�@T˚��e|^W�¬V`�,�a�Z �/%9���p���������cR|��q�j�UɬX.:�%��C�r%���Q�w�*��tȦ"�ghx�����NV&�
p� ����踺#5���G�1�_�q��CV����)��%R@*`��T�
���wR��	� �w��y�$����|���4�iv
JL��Y�6~�+AV9�,��"�7��;�i�w~?$`4z-��&�@�@��>�+[X��Z9�u�� \`/�IK��O��H�+����M��*��SX2�$��7�J��	���(��f\k�x�u6V ��r3s�<�p�$��l�
Ő�t��!�f�p�;o�B�<�I�����~���pؒ����O�k�j�I�j�rY�	�T>z���Q�։w���Y�7A�t�M��-�h�#_J	�^�L��\��%�;f`����������ۅ��r��{�>����<?�<��{��"���Oع��s,"ߘ�v����)+t�'({�c���Ӓbڢ�pC������fU����XyL� 8�o��;�|�!�t~O���_v�R�F�Z/I��>�U��^���)q	���ĂX����5
����B{4s�}eO>@�iF�m[�g'�6��|S	#��V���Ƌ~���O��mitR�lݒTe�/�t����M#�������b ����b���+_==IC����a���E���� ��dg��},&�{���sI�d|�`��L█/���/6��[1S;�tD�ҵu�`H1T��q��� '� ����Ͽ�F��{
���}��ف�ゔ'�"��i��4���V�T�?$8���(��"����T�o��2T
�iyL+�����V`uh� ��ژWǟ��/ݰ�x�?�h;���OiIf�%�Ό
m��5��V��}�8v��[�vk�P`u�I��2�y�߰4�f&���G���&�I�=��] p�ß�D�q��K�)��;��pD��-.T|����UB�p�0�e�K�i�4M���?��#A�TG��|C\�����q3m���p	.��yr�0�e����g��wZ����.�&��,�,�  ���p�	�%О��kR��d.�X=�I�!��!A��Gg�V����1NXLnЗ>��yy��I�a,2�R�&q:�1���M�ScB�%Z��`���)@S��UBf�9��+o&&G~��d�o��}�D���4�ɟ���K��	��`�|I�v	�������Y� S	]���:�B��2�y+�ą-=���rN��8Ok �v�@7iL��́���/���T���c��A��W	x1|�����`�D���zy�3� ���$Mj����V@eykT�,�2�$	)�(t��[j���P�[�R�����eZ���Ok�j�6�՝A���++�]�i�  �����緹�9�o�M��4G�y>�v�6���)�#���� >ڠ�.���l$��Y\&Х���%�:� #L���RA�OwL��K�#%��m�z����g��4Yv�Q�8�Ŀmc?���O۞��S�,k$B��VgS�mn`k��z}��,�IO���H�/�v��x��}���|.����j[����V�D������]��aS�֪}���be���b�%IzD.�>��@��ŷ������Ж5"�:��#e���n>y����Mk4�䂓2�R���F�Bw~Xbb~AB�mD׮��F�����.+�7+���"9.�}��6�����,?w�Y��[kl`�k��q��b��&�0vk� !��:�V��8��	��CƱq��=�v��f�r0�U~
�V�ۋ~�&��Rl�
�1��M͊ڃ�-��]6N�%sR���p�S�n�h�4ͬ,�?������h<q������Q�+�kV斋����
�Y�����>)?�� �����#�!����>�r��~�����P��L������4��8#v�M�����Id�Ɉs@^�K�3����Fh���H{�y2o��O�C[9�׃�%:��l��4���)�����w��MÓ���[	b��ߖ�]�Q�ғ�r��0�ښ:3e�����Ë����.�?���$Y_����f-��}u�o�m���i$��H	u�����]�F�o�#u)j�'�C?�x��s�<'��L�Uk���d|"k������J�����`D��7�oS�Z9�'�DBN@34�L�}��L�/3@f���M�?�m�$b����$���%�<�N�����.��ะ��8Ε%������,�@��Ϣw�ș�a�,+�I����\0�N�q��!��08�������'��)���{���o�%9?��8Q��?��!RNXl�����K��X^C��2:���I|\m����0A,q�����kVyf���ٕ�|K��{��@�<��r ����Q�,0�c��S2}�jd�Xzn�b�7I����6J]k���;K/Wܲ.�۩E��*��Y�Y�� ]S    �P?W��L/��-�9��)p���������O��ɻ����?��˗?|��ҿ~�v�_~���#X�s�h�܌�賷 ��X���cy*3o=�N�9��@�f^c�����=�CZ�2�ghP@�߄%g�����_��fDu�����Li��q�'bʏ	�Z�*D�B`5a��E�,�^�8�QjΟ�n�ΐ9�_�������<�߸"�(�:�,��H�~AO �u�����ڕQ�Wb��ɋah������|�W�;�������x��h���W��.�lkɰWsQ�M�[�#����f>x;��EyB��� u��R-|FH[�]�t����e\il3�歋b�I_��:1�=h��B����8B���P @�|<�@��/�b,��هFPBx�˜@NN����-�W\����x�<�B��n�ҿ�&6����������o޺G*>��SQ~z�קZ;h���P��l�?VBUĀq������g��V*A�y^���A�4�L�c�v$��Rz@��z���Z$�C`=�q$�������?L��ү��Σ���s�Y�+��a���ҳ~����ч�>ְ�όgQ�O]2��B�|>ePT�
�=��v�g����BK���O]�;W�7��1ņ��7��g9(YF/�S8�Q��|Bu -�Vg��Q�W��n��:+�nt���lL�uO����n�x���;��X�몚��S��������r;r��S�E���y���(g��m(k]�D��RK���W��g�-�n�i���uKE��:�ޒ��kb>�i����Ahx��o_���_��/�g �;���?�� ���Ԭ��!��%�QV(�Z�6.�I|v�n�\.�ԉI_u;���G��E��L��L �c��L�^`Z�Y(�rg�ԓ�R�+}hЖ����hy�:����a<L�EX�C��Qz�W%�EV/�b�,���o�ίJU�=�^x�8���3�qv�`
�i��N�u�᚞���c���l�|�x��y;� �,�|���U����>�c��dT���Li�y��2:�Ĕ����-�X����G���]&�H�5\��Gn�C<�udvpX�Dܛ�����L�,���zN����4���������=u|�e7��R�#��R�c�������jF#;�wO�M��̶��۟7A�Cx��,�~J�[�S�E�3ˠ>`�[����˕�(f��ѭ���w��Xj����f��a�ux B*�{��,o�~�s`ILB3�T��O��}������.���ō�K�g<��ۼ��cN{+�Vǈ	8�7���K��]�<���~�	eisu�d�n�E��n�cq_�������?-YM@W6�6�l�0�v]!�5�~�Q����d�{�N߆���H&9��&o$v����9�������,��n]@$��5g*>�6ə��k0|xj>c��Do�9����f*�	R2��a�'�P%����m��:N{|R2ס�0��O��4:+��f��~�Ph!�H�$ܶ�J���>A�g����2�;�e�����������Ӹl�3�����?�ʓ�����&�$�;�4��4l6�̒�J&�_����3=q���2���ǆ-߿ G����P�i�?0R,V���`�#d��y]���]_�6��ӧ'�K-�Y4| 褕e�4Ӎt����@�ǍM�%�D�Ƿ}�]1v���%�f9�}����?Ohl�&��p�@� ���7>�%@��y�̓�P�1�bħ�C�{ ߩ��iJ%4�g8��*��}�e�ǘ��\�|��/�sf�n.��g��9�W����:�>�V�V��.�����;��-�~���������s�	iMjz��'�A귥���l��FKg�\��m6^]5&�\�������[�]��Wo�y~��.P-�Ïo��������H��9�j\���HcǊ���������f��u��6��ɇ vfYZ&�λ���?e_y�������^�)�����]'��_�i��]<�T-8��/������O2Np7�`���<Cm[�^�u�5|E`,5�dܜ}v~��	��3�T%���O8��G���@��D��w8���˧0$�H���V���Rqz��Km0��U�<p��$�o8H'�p*���g���j��ڽv�O���a�h��}ٍK������G�/":�C���_f�z��|z�	�_'p�k�O��";-�c(~y�]ޒ��t�x�'�������a�c�E��9��A�[�GО��\�"|�wO������A�1���Xp�F'�!vYo�w��'����PR��?�N��p�u*R��z~V��i�/Jv�oJ��� �Ͷ%����=|�P���lv���%�)"���$�Y��tG�q� `��o��ʇ����, 
		��A["�!�SNE�&������U�����~���?�ӗ?��/?����c������3����9o*\��F����u��||67���Œ?\�O��
7M���,ZN�dJ�o��Y
TLU�8��O�r��=I9��.���R�f�G��0H�`�?TA�N��4'g��o��Ȋ�gQ�Co�V����{��B~LU��71��4�'�uU匝��=�(Z&{s��&�gB~��W��x�d�.�y'��ق���K��DÊpk�D�����s�R���N�3�����Y:[�i��a�u	��Z���?�兓��9�����qK�/;�����Y��gL*w�x&��>�q�-O��DK^Ӥ,��	YO��C`�N_���A����M(:������%��g�8ّ1~b��4��{�pZh�y�,�H���h+��1qR����EAJ�ܷ	Bg�W�i�U�������y�EV[nY�_���<+�������#�&�rH{�Go�_���Ҷ|��h-ax�*"�͸6��4���[��K���Yݽ�mγ'2�Dq�a#c�ޞg��-� 
	�9W���t8)7�*+x�Ԉ����;5)�t,,�fΝzw$v�:�g��1���'֩�x��:���rrP�88�g�$��u}*��YK{��a���C���	/ʵ���c����n��/ʱc�O;w�ֵ������%�Z8| ��(�L{�}R���ǹ�ɀ>�Ci����d�գ�bM.����6�2C[����A0K���N>�Su�?ࠔԯ7�r��;Kk��x|c	��_�T�thZ���Z.�]O�_lk������V��4��Z����妞� z�	[�N�ܮ�A��|b����`��0�z�����x�����Z�''X����$�R�Y���-Ο����@���{�R!��Ota��$���,1l����U��[�R�ALu�UX���ҿf��}@�֒�.���Sm������K�|0r��%<�qYX�o�6A�]�WV�^#Y!�$�&�~�1���R�}H��łρ�f:������[%���_]b��_����	�:*f-�u)u��6]�ɫ�f�3�;B;��61��	_	�ٙ�/k�I��K�52?܊-%�̸m��e!���oH׿3ڦ28�kY�oEԡ��zGq�c:>�G�Y�g���N�P<�P�8ۀ��h�9�$N��_gd�+x6����t+[9�0
0��_��i�X5w��&��,����XV���l�gk�+ƭ�)�1�C�I���8��3����MPօ��5�O2vLˍ��KI;����D�3Th�*��!��!��g"Z�͹ɞ��1�h�?�>r��=�;)I�e痕O@���57T',��y�h41.��i/v�4�1��W�/+~�V�Y��a�6W|���Y�Qr'��wj-f��̚���3�]Y_��K��?�s����5If�"+�,�&�ȓ>�O=Q�R�H��C��̷)�4Q����fMTV�H@�:Nq��|N�����6O�막�����+��(��8_��.q~�=ڪ����w�6��������=B�����"�c�R����:Π{,d\X��*� �C��ߐ�4    ��^R���U�̨
���hbj�2�&��f�x5n3�#=M"�D��lAu��h���㏑��éw#���i��y�j��A��b+[�GOl�L��Ii�v{��@W���d�y�^�o��k���-ߢ��4���%p��H��)$�����E��R.���/�i�_Ǘ00�����d�_�ϴkH}��?c�큳��~:?�k��M�䭢?�t�|�[E�a%k"x��J��>b3��t��b+�p�.ۺ��&?���?>�w'�,�xd�V�b��|�s��$�4��?���o���~��~?����(8���O����|�=SLӠ���A�O��w�:�
���_���m��*nFD\O�g_`��eGFk)���y�%(�Nv�����Ѝ���>->�*g�ۀ���l���J^��� �u�~�[*W�jD\�h�
 ���o�w�����4�,��o�ʣ���V�LM��MTAi5�Q��z�@A���v���ti>��R01V���@��{֗�! u'��#�B�e�8�~��b/�n���T�Ł�i���=9؄�ַIQ>qT�G=�(��B5,��1��W���8I��fXR&�M�0(a�Q��xi�`��k�����#y��>��M&UU��wf8$-��&lOfqT ���"P����r&*#$��hS�ӟO���4�p�i�T�O��U�Z+	�b��6��z?���S*0d��bgREl��ka�7@�C���ғD$q�PYQb��с(6��tȹ��)2�m��"U�̋Ǎ�8�'��S�ڻ���[��`���mn�#֞�u�����K0?mx8���Q�hA�O/�ډ�}���������d�<�1U���1?/�$�+��1����?U�����>[Ly6�9����&������37k���7��+s�������U�����K����[�!:f��'P{�t�?=�
p�{4?�Ԝƿ�q��r{�NM~���h�?��Т�M�k1d4�B-j]��|L�3��L�ڤ�f G�)N���}�)g 6�0�}�����I-1?�߬q���a~2��+����u�VS�|;���c�{jE+C��j�pC���J�:^�?���&���$�N�p�BO���n���X���� ����8�VY���1��u���o�(<�'�=������~�8y��`KL�����me�p�ڕ��T��"f���:��%N_h��ٌ��b����n�S,O ��hJg<y��k+�ڙ2��X���#�?�h.1%������K���� T���Y���)��m�P���KR�F�?0fhMYߥ����W����+K��|��Ss��t�N"��P!��B��-�x֗���k�+2�^���t��H2��K�H�3�ѯ/���Q2V��A�t�������;d/�@v�pn-�'o�L1��RL~�����<P��{�l͵���O�����L��K��������������#���R=�ko�'M�	C�rYM]D�$b�s	��^�]b������Դulª�,���h2�Y���^��Ӕ� �|�<2�؋�3\[��10Xzj�vb�8G}�З~U]?�Y:���Jb�)��T&}�m��X�?v>f�3�f�S#[�0��LI���虮l�2����IB\��E�؜�4S�g5=_���OG��tfꫩ��`����c�*,�.i�`"ԴfJ|�c&�= S^���$��e�v�-R��*~Z�*��Ns���̍oe-���4%2 �&�.bJ|;���IUyvs8�Ӝ	[��Yw*����en����h}
O������c*d��.���c�qh��E�l�je�6p?����b�:tE�8Y'�*�L�P���P巒�>��9qf_Xs�\O�ġ~��L��d�X75vc&{��X��0�z�����Rz�: �F����=�S�7�b'+�H�N�@�n�P���3ƭi���.AL��[[�>�nŔeEH�T�ij�.X�)sj�WL���Y,����q���E>1!��f�-hK��b
l=�T��%����|2���
_ӻ���ߦa���#���H��"�9㘙����ܑ����J�NL�ϐ�Y��x;��3S!x���HA�͑f���ɀ5ٲ?�e���AB,*������j����bd�
M�������-��=}��}�cu" �A]�����Ǻ�e�p�S�+��3��m[���W>;�[��.�f�o�Ĳ6����R�xL����U�&i�`�����2�H%�_��ۅ.���cgߵ�'O���=RQS߃�u~O{1�1CX�1���bQ��(���pV�BҨ�3
7��W�92UU�����A��YLیs�j���
�2�٨��4�_�3��"� ]_|��2�K')�?��O�q���߳�������.����3����J�>P'`���o�K�@` �z��r���ת��an�O���A,;;�K5ꯪ���C짍��ڠr��ff��!���}z�7�������Y=	I<b��P��T[a!C�����O*ŚfFY�Z_O`�8�{�e�Ϡٙ��\hp:��47��ABbb���A�`���㛋e��1r���`��)FC�}�G|BP3VTj�1bƀ���p����ǐy������{�-]�M/� ��PM�!�z��b����ٳ�������P���<�U�/(ծ�~���3Q����s��A�*��ץx�b0
:���	�Ѯ�������֫�(h�� /�&؁'�3	����[�����<*̌�
��#��d	�"�,�O�?��|dU�s~{
8����[)�	�(f�	�&v����i��_qb'
G�(�Vi��Z&�~��.�O���A P�Ѿo2�a7�h����i�'��*��i�*�mhvȎ#Y[�����ocVLuI�}~�hQWB�yN&3C�;&Q
"�h�����.���q1��@�3@P��<����`Nh�.,-0��b���������[5��Fk�AB�j>�\���S$j�z>���us��Pp\s5�������jLL4�)�>v��t�������h4�mH��?�ט�0��ǲ�w9՜N�����[�
s �i �zK=y�/���;���U�,�XF��^����1���CsY��a@n���}�ɟ�N.��V���gT�dsc��"�[UN����;{�>0 �4��;���!�l�x��q���פxg����VM�	g�m8��5���}�jYg.�{f ��d�������?�� ���g���no8�'u������sO��>��mD��z�Y��:R��A�3�,>Ք QYl��S�.�BORG=8��l�cz�,�?��E�����|����b��=��eiP���4z>��q>Y01J�<�>�f�Zaۉ;����h����PN5����O{�O���)����a����>1�<C�wI%��ڙ����'�\�WA���g�<� ���2�pw,bp�3�6�U�2�~�����������X/��������Yߧ������9���>��� �4^���
ڦ?��Yw2�V�������v??�ϲ�R�Y�!��>ֹ�l��C`��r��><v��~8!���%�] �L��'/9[ʵ�P��]���<;	���Sa1�f���ٿ��$/+a�n 2Ҡ���Y�
��o���#���F��ŮB��֥Z�Mx�b�
~����RxYq
�ǐ�qa��[>^��2�ofc��fF<+� �Z#�ͪ�/b캙Y��-y���+X9,�<a�j&���ɏG��`w�6`����SZ-m���HL,��#4RX��x�z|n���X��n��1 &�}|��G53:���.����=Y����.�/�A�Z���V*�q/�������gZ�hv`��!k戙�N������9EƝ�9�r�oXv�,k�t��0
��Ḝ"=g+��'�&�ГŸd߆]2~Y��4p�\_(6Ӂ�nT�O��"D~.JD�Y���|�v�e���u�����@�%��D��~�N`���MS.����!T>���؋��?�u�{�%    Y�
	S����c�4���?��W~�����>���?�	������?���/?��e���Zٍ�� J�{t�8iB'�솆�}�|������m-^���S�E�T�;�q4',t���.b��3m�gs�z��a�n���؃��+��j�1�Cn��V'�f03s��HY�uY�+j>H�o:�9}�A�� ݍ� �ֲ��-�j�C��v���oú�=�c�:y#8����޵�r~b�D�������� ͥ����{�̇�j���]�Ӳ���n�U��~�醵g�}���p�*t}�b��5�=�� zb����`��A.}2]��+m���w�-˖�Frk�W�4��K �4���R�2�F��b�(Qc�{�#"�瞺��5\LOU�9'	Dx�ܷܯr���0��l_4����8�w�5B��.7�#�<'\/�
�����ZX34yX����s�ϧ�S�E��m^Љ���<��-�)\�XX7���OQ����`i��ޢ\іN�-c���u{�lZ���<h!>J�m��v*_�:*0�����m�o�yPCk��-�k򛖢�6[N�A����[L\�[�Y�\���a}A�� &�z��P:6�D?�be��pՋ�lM��ÕbN�O?bI@�'�~+'�*1���E�F��%z��¬�����VpU��q�yb3���P�s�KV�Z6�h���k��y6-�SE�E@��_9;��ꫵi��E��澎��q�I��79��lxC�k}��#ևɇ"<r"���)^�e\�@��y"��3��H%_�����ᲶX^�0�S�_�ɣe'�L �G�԰\��	@>ݚT^��+z���L6k�Ȟ��|��Ŧ5�N���k��|�*T��A:�%��Ώ�m���{Q�^%!��Z�<�&����ȁ��Y�I��:|%z�L�ɷ; �	zg�(�K:ﶩx�-�Cf���?���$z��EH�Ϳ�8�Il���i�^����l���nо��ۊ��Xf^��\ѧ�օ������D8s&��A�,3��?�.8MKh?�/�r��`����Bw���-��݈8��i��\6@��j��pL>۰9EInʯ4��Hh<9��4�͵>�d�xn�z�/�dfZKx��8y]�F���L���{G�����]�qa�|$�r"�9:�ʴ�R&â��'�����ƈ�/\�O�T��������\��G����D�.���%W�!��j�^��hH$��3��u�AfB��I�XV��6ёWV>��1��<�9r�1w�}*,��v�f�	�e��"�<�Nw�$����}���d{@ ��p�/UN����^����~���>�j��䶦��:Ĺ SV�v�x���J�I���'��'M� '�E�C�#�Z�7��T��<�<U��`�5�i���zk'����ӥ1Z�XkUGZ�I� o�l^��!/��6^Q�?y&�)?)��f��~5$��Z�pՕ�M������D &ϟS�-[�nD X�!��%;��'��Ev��&Q�p<���?�:�ôNlַ�_ߛ��C_��?�z
֤����}?���3G��qRM��)J>�l;�L��u%�������x�}����N��q4��Z!���
| ��ք� �"5/��������M`��$�����F6V�c��5�e��~�@�� ��Z�6Yѫ'���c@�a�����!v��5�ldB�A���^��_���o��jՅ|�tl-��.� �\ ���Om&�,I�-KK���/5���Z��K��ʪ?-G�w@�u��J#�/i�^*����m��,��d4���:Y�;"S�qwz�����f{i2x�u~�ܣUωǒ^I�����Xv�!�N�E�L=L�{>>N�?���	���G녲����a�F�����=@�~_�~2���K+ ���|?41��i�g3>�M.-�/eBѪs"m�f���w�&�M������~��I��^)����Ĭ���X��Rdr}?�o��m�dw���ټeO��L�.��-^)��+e�P����P?M�ÿ�t"H�bN6� U[v�s���2e�%�1��f�����c!*"��&R�NJ'�,�o�~�ׇUמj�\G��ׄ���1y�4���[��bM���I	�p���=#Ā���]�?�j�nW����dǩ���,�,�F:����M���1�y�*ಟ�1���	�"�[�����U�˚d��1�$�@�#�~�+Y�'��aw#<_ק��w�H�o�-29<)�4{x[֐�]�,�o6�t`���1�>�2pe|
 :Qm��i�%��H�S.��-|�f��MV(φ'�\TB.��X�*��{�o�CvvM�.Kf�D�jLc������E�{�w2'[ugD�t�6��k
�������O��H6��z�6�����/���l^��lٿ�9`u#�0�d	�?Suf߰(S2Qɒ�jՑ�������-��c�_]�wq>������(8�_�j�~���jK��e��~�R$��
�M��r�P��_߳별	��.���|Z|3e��-�l�~�p��{������m=���t���9) _��i�6��d���
����^+ �^�&^����Fp�͍+{��l���a=+�+��������	��<{�aD�!|�\=s��5�(Iw�8"6��M��8��$���ca�|�G����/��:�Y��~����鬿����������!�����?|�۟����~���%��^2�b]ݛ����Y�+�r=���L&�O6H_�4AN}�v��R`�J0�~%D`�]�*�R�@�̂��`�7y�k���JW��3Ƨ#�� ��(%*E�{A�#���qcfH�L2��	��6�a���̥�ϥ���K�x��6�T<�r���H)Y�4�MNf��ϯ?r��>W��<�6�5lY3�q�ɘ4��󏸏�|J�k}��U솕5�
ܔ�6ų�~S��ܗh���aci ���o>��h7"�X��\j7	���`3�v�Ni��+ �aG6����n�����	��S���>7�&|#<��K'�������B�pw�ӵ�p�������JA� k#Fk��O���������uR�h��3.@Ҿ����@).�,-��4�ds�����~���_������e �5�X���2�I=1l`T/����$���D���ѐu>n����~O��$�ߩ��d��IӘI\/.��i��OI�ؓ��S&��)�^�/F�a���&Pm��Ľ��o�Z�m�e�ӹ+W�+y��"+��Gq��؊��B���a� ���1���Bb�����7v�S�{�K{J4�29ַ�ʣ#�E��#�)�rl9H}>	��7U>�Q+����a^T�x�t�0����uK� ���.��8�by��B�-��a�������瀈�H��1*�;o���ícWIC�{_>w���
�;�b�u�3m(�������O@�O�a'�%F�:���z��"#�;?]�y6+
��`C�H/��eJ>]�K���O�Vᥐ��4p���)^a���q!("g��?�Oq��I�+����a��8�@��'��^��3YH���L���
?����x'�i�Ҳ�� ˳Ii�tƭ�7��/���&�<%����}qG�?�W���&c��$���_t�m�~`U19�n�e~A'���I�M;�T)8 �Eًe�	`k���5�9�ԩ~�� ���xp��5|����������6�#����U����-x��s�Y�B��²o3F6�GZ�|"��{[bW��yj����������5�u��odg*�@g���m!��(G�9�/~���s��{lp7�oES���X-����d<N
�ɴ뉴�9�Be!�MFiEO�	z��~�CM�[������W��*�jEQ��k�r�I�jQ���	�EHHc�W�16S 쀦nNJ����0T�~���n1l�d}>��X����qU-z��^NB"{��É�Eג��}`��z��6���l���. a����N�Z�$9��<�s<N:2-�	%    2"�"��[�TZ$BI����I���o�9Ea>0^cfxI2��k�0�E����r}3�����x�EC��v*<5VT#@ni�z������4 Im�w+z��:�X���&��=b~��!�i9EdE�'b�E�c˝BF8�N�)��
G��3A>�U���\�Ê"���2���m���o;�g�y8;Q�#�J�V��
Xԩ��e8/��=
-�!6;QR�Ch�PR�`�����y��A�1
_4MU��U���?X����r`�f�=�����m�4e-f�w�	��ezp5��9[�<T��N�� ����˝�C�=�;���B�E�im�7���W�|�y�*����IvY������S��9}���B����JA4_�fB�y��p�[dk�#ۗ��1+�G�q��H,��o����,�x!�[\D0���b~(#3��p�c���
�������������[��q��E}��r�@��Mk��8�u���+�h����6����})��'��M�ϟ�$m�z�������������J^=����\?����ae� �Ήiv	���2�M��l+��Ð��S=��8\9Lբ�'#��vS�����3�i�8P���3��qZM�)�G�K�w��E�|G:D��+��Ӝ�Y�_�@2Ց����?�B��?��w}��¿j���Yp����1���J�S�R(��2y��:����Yu����f�\��m/��ې� ��̘�f)Y6������&�,"A��8�R�*L�I�?�����<�ȟ��ߩg&�݂DC)@I����\]]��I�_���f��Q�D�j��~|V�JI�D:a�N��ix�F��=�Nv�iRVHV6O��i�i��7��p����<�x��:�d-�,ף� �\|]_��}�F����~��ȁ�߿Fz9�&H��6���cK����Mix
	_T]�F�+{��}���Jݏqi�/9{�N
'��w(s�6ڲ�f�|)t�˹�1m&}ݬD*�3]= |�����\�[13cϏ���aC|�
����w�jR��6Zwј9��m� �ߌKA0Uc���b��? �}E�+Vg�E��,�^�����r�aI;>/Y�X)��&ױ_W�N���I}���r��z�PW�	.˺RyJ����V<�h���.�<`_� �.�����
�O��P7A�)3['�]��F}�]�ፀpǕ7��o�u�0V7����a�pDu�v��QK��4�Փ�yy8iieئ�Y����b�2����������`���u��<,3+�n��ܗ�?�p9ß�&lzl�Lk:i��tҤ�N<$E{��վ�r��%1��j�k)����F�&D�>�3���T65�����Wbn�� �58�n����|9nac��U%ON﯌掌H=	�|��̾p�*w���E_�^���!�f��ܤ޿?~�VO���}(����/6��Dۃx~��B1+Q��2����=��L1�d�z��(`E�<��E0[�]<�����$ x�r��[F�EX[EK�3��C�y�F�R��^� 9�̹Eȃ��p.�]�hN�0WS�O�fKE��],��u�Ů��|YΦ���9y��O�w�e����[�Ff�Ul9�+������Q��gS[��Ȋ���9���A�R(3W=ׄ��ǎ� @�\ 3��Y���&/���U��:�gtg�������p�¬�S�L"���CE�[�XT��3˙¢��d��~9��	#\����g,ب�`��G�!zA�����,����`�j�q�d*�EU�"l�-��>���W�����M�7�J禣�9�!9�p���QQ�O�^f3��?M&6甜F������N�4������6ZSp������T٠s�׭T;į�x�o��촂6;�ѹ�n#&W	Jx-��GXA�U�������:�͊�4�͔�w�Ϛ��9���T��F�^�V���ݪ�8h�{�	���*�0�eb_ڈDմ��ٮ��:m�W�处��zǧ��X�Rh��t.��KTC߉�a-k+ޕ!U��4'�s�l�D�}0�|�ط�;�@8����n\`m��h�R5ڃ��e|��-���Afk�jp.�!��ʆ�Y��]��&�K�(����iR>�p���HL�f��p\t��w<vz�.����S��U������:�k��!5�΃�|�R���u}���-�qk��!�h��#]��?��֨t��ܻ'_k6���Ka��=�K�J��ki���9��	k t������F�P,g�F�v2<���76��8cykU����M�1�U��RS�F�������'�lxWE�4U#4*�V�F��ᝤ]�{}���c_���J|�_ 7p���~���u׎���T)>��$6ь�Ց���������(���۪�+s!�[��/�g2z�͆�lu>g��W�	;?�w�X���9]9�=6��i���F��p�؛��	�1�C���[l�N�ߒ����ߗAO��'^YD�Q���'L7����_���ذ[�%��T �Vx��p���ڋ蠿M����&̙��u�T�!D�S`r�����ñ�I�r<��1�տ����*����:nk�$��V�����el����i����A��e��u|V��V����.�x�2j��|�������O���*�l��d�~g���k��ZL�3��0!-ۿRo�\�h�m�v}�����|�J}��Z�h��-�N�~ԴivO��]`��h��ȏ�ŤW��_U���ٶZ�{6���{�߸��G��O(p���wS�Nm��[��j�C+h���*x�9����p��q<i��ݶ���ʂ�\'��ڠ�-�^p�E��X����ބC)������_8��I5U��5�~�u� !(#�ʏ�P���jS�S�S���  �!:Q�ƽx&�m��� ����h�x��/�`���D-�����Mko�����/W��s�"��~������9�����[8�ƹ������)��P��x�������ָ�Z ^����\��Ԥ�j5C��(uc�ƌa5QP�r�y�������PÆI�����}�	��+��\ż��Z��e9���3g�ȼ��a�x�����Hl�`�T>�D��*���HFn����b���q���}PWF\���ćk���� ���G;4���Y�7��Mj�0ױ�_ؽ�%��v�&��`~w��R0m?�����g���JW�Auǎ9�Ug#��0Q�7��@#��.-��6��� 
d9Q�o|���^�Ÿ�8�bD��9�&\��	wMZ���3T�i������p,?�S9K$�g����@�?���oG���U8��!a��<�����I���ٽ:F��r���s����5"��?���Q���ZA���`j��P����"�,\�o8��5?ڕB�#=B�h��'�-���w��<d��>Djk��7�Ț%�����~��E����\�O��[�8R�J2��3%K�� ��p�mǰa���������4=5>>�D�E�_/�|D�<���bOS&۷\Gd�C�T�o���<��9��:����~��|!���D��?��5����!{��Q�B��ؽ,?�mW�7�X���?	e'�8����1t�P
��!�ء���x�V��s�������o���?_�f�#6�V�!��u��盃����;D��˿�T������jv2���M�a�=_)?R|�?nu�9,�:8v�?��	�����3g��JK�q^���-�C�s��� gĭ��-D+�=��9�8�����6&���3�qh���>\`��²5E�P|V?}$��J�1R��u�vXR?����������Iz��kUaWة���#�9��������X������?���s��f�������o�1�lZ�U"f�o/�N��V�?��� C�B��u̚Jc}�'�=�Y
B�8���k�Xk�O3�-�DB�dv!��6�SX_l8���T�9�s�`@��=G���W����    ���_d�"�Q�0�Rd�]b�%d����R�>ln�u���Gp ����!"�����t��|p��{�>� �y�>�4N�3)�h���yI�:����~�͟v׮#@�8b=Nil~&�5D�����0���[Rɬ>�y7��57�ݟ�2��%�B��X�Q ��[���E0W��?�����n�))��C�oH{p�#����uD�fL{��ٍC�0���A�!.Ֆ6^��}�g��B���f��C@���	�i��g�$ƴY�sg!����Ir�=���]�J�CR�	��w6؅x$]${Q�s8x���_eJ'������b�^U=_�W[g��1�B����uv^�tlAHD8G��sA��F��W���Beo���G@�E���}N������v^3�I��	.��B�S\�;�ea/�5���x�-�w=����d'2��U7oă�X�.��AC`f��U�X~8��zoA9�0��@�)�]K�p�eF)AO�ذ�ZKd�(��l���w�X��/�����-�� h��6@�q�%8`�ۥ65�o^U����`�  �bp ds}��:K�uK��s�BT�ă�����Vۋ�H]V£�M0O�@h�� GC�=�����Y����ےa'��Q��1'B��*M|+�ĭdM������\�j5����F��X��5tk۽��V�
��� ���DfcD3���O������6ؾ>Oj��(�4Ey#v���C#wٍa%d8N˙�����k����00��@����3�'%l�8Ǽ�~��ˈ��:�~@2�;GjR'-'�:�S����������]���e���C>?.D�@s��>p���~q�ø2���,�'@v�'�=�k�&b����k
�%\��wb�A�� ��#���౥�9�$m�r~�U�6�<�s�Y�U�,�N�R/a�����Ū}C�DU�������8
њ$����;���?r�^�㊸.��0�M+э
k�đBFK��h�{��I� k��T�:���rP�]R�žĊ�~nT�$� sa�6���I�.��/>�P]w.�qՐ(Hx�����8��g񗥾��w�����`��E������g�����i�oN����/�s#�q��@�����J?��w/���}(�1a�u)��x!��%�\����s�Uނd�'�ol���t��"��'֔���o,Ý��:�~��h��>���ƕ�:|ˉ-ۥEt������V�fD��jL�l%R7e"��H7㞕@#'�������"$:T|�vW�|5��%���qy�������uꅒ�ʞ���s��K@T[�"\�$��%��@|y����_"��!)�7�p��X����狓�B�zN#�D�s��P�+��Ǽ~Ei�S!.�
��4>{����m�"�|��`����}��r�gGeJ�ޏ%�a	�v����Z�WT.O㞖��~1H�r�,Z���R�w1"��b�϶��%U�N-��w��`� iE�:n�t�����$�v��i�|z>޸��O���ο�TT)cr���t� U�u���B��߿�	�z��l���-��:3<���?CT�y����alq��ȍ�뉹X�`��[aR��)O�����������^��k.�3�I��J��2K,8��٩�Ҷғ��r�g��|�~g�gr���zF�y&A�K��G�C������Dvn������H�	�,��{Rx�y����$\c�p��"@� D	.���|�L�t�C��a�J�5J��.�n�!��d[��եʨ�@��R�"����!b1�Dv��/\a��`Ӎ/�e�{**W��!ISݟ[�L����ы��
;�F�&��3�u�/�>"��\���7�|�g��K
�l��oJ/%
��@�p�vxr]]�������=yW�E֌f-O��p������_K���3�Z�� ������ B�
�[p�J�S8��љ<�����u��v���O���f��E��K.:f���/U*�E��~ R ���̜t�f�-���)�t��&���d�L��磁8�q����9��u�c �f�vf�z�b���c���0M���`/��G�$�Y|\��ˠ{c�V�ߵu���of�fS�r��$1�"��-�I=�6Y.՝�����s�ىU��X���놵X��_|�_�ﱔ�o����緿q��������߾��6D£�������M=?�]K��I7�O�"�]iqx�{tw���H�D�'���/*�ʨ�1e�����BGb�>�cڻ�Gv=�E �Ԡ���=Ӎ�r���h_f��R��H~���g$ ku�$��1S�6}>N�Q*� ���}���[U6%��,��Z|���f1F��=?lL�֢��Ꙗ�%�FMyf<m����0�)a��qL�Q0O�/0��Əɢsi!zo >��$-4������>	�a��	��+g�5?S��>�!�'OIE�{� _�$#VQڑ�k��"�x}B��8k��|���tl�f��@$5�|
�څ(<W�5��[��k~Rڝ��L%G���~�W�����N�u6�뽚?""P�����.�E��V�b�`����֑��j�N����e)C��F_�y�Aˣ�sF`+|���wב���}~I�b��� "����}���T�b��Cl'g`�T�ZT�6l�ќ���4Ò�h��IKỻ��8�~Xcjz��>p��QZ$���ʹ*�y�����sI.�����
�`�6��RA����wa "��ni}�o?%}�O��%ef��Њ�*�bw�bW؂�G�jk�Z�5�\����:"�	t�ߋ�	���S��=d:�^�\O�3g:6��Qq���P��a��*.$���93�%������e��ᴹ
[���^/�!�ғ��pt�8�b:6&�!ɲ�p�x; �>_c&o�s�/6DD�5ia���ȵ��ܵ~�`�D�3�?ؓ�����O0���#J�P�z����ҼMV=�?������W��iC���o��N�>ˏ��:���J�ss���ɯ �����B�g|V�7p�@K�0�ؙ�8�8�� �����	��^��޳{>g�ab}Ǽ����u_T��oO��3�F�R��κ���VN6|Q�������N>���]�a 9@��|l�6R<^�����l(
�����ϓRzV_%լRc��o����d���|K3��5��ӏ#�)����Y�?m'�-~�stU��? �<�?��n�^�2�SQ�����_�lT��O�������[Ӣ�0$L�e��I��@p(b�׏͚&�
�C�'צ��O�ʸ�.����8i*!1a&9�y�z�(�@�q�T*�b�z��d��d�n�4Q�)�<8�ݝ�,5u����dA���.B�^g�����~��ˠ��X�Q�G�kw1�(@�@%�؃��g2�l���i�^�:${(�RD�IN��d��Qy���^�x�<ŧ�X��{�iL�D�~`Mp"�G��;{<�əZ��(޴�d\{H�qȓr�[;�6������w���#Ǆ�ET��6 �{*���'������0�>��@�x=3n��+RHZb�u��9��㳫O��X<k���!+]�{�ð�/�Vh����[D��b��������;!l���)*%˘܃ �����!��tL�����.��!FA���G�8ΪjwC��D�;*��c�`��ڊ����۵j͇�ƚ��� "���A�hTv[|��(
O�VҴ��{:#��T� �r�j�Պ��/�JG���~�5��p =.)P9ٰA�&<u�����뾵c�����Qk��Jѱ-V��a���P�����������ﳯ�X:#�P�8�F����8��sW߱�2	m�<Q�$j�i�'~bKy��Y[���O��O�g��D�8��UK��,a�i-��-�lk��4m�����/��u��w�=�w�ޤO��q����WF��;o*�'���Wk��3|���[K�A��V&���k�>��    tg A\���6��;��L�o|�B���N�J��"����W��왥�͏x�ҷ��z�(2���o����+�U��j�7S�d��M9� |@��!�>%:����S,!?p���w��+J��]s�?�����U��/�c���u�&M.�~�u�R%��_�L/�1RҊq�ڜ��V�.c�ʤL�FTF��x���L:&2%��h��23���|���������l�E1U�������^{�+e0�h$;-��_��W��t��������6�~�G�h^uz���'q7���WH<%0J�Q�'�-�<��LS7�z���o��K�݌��
�U����8�XxP�q��+��D��=�u�L;�Jf{�d�������.:���t-�u	p�Q��2��y��O�E�f&L[�wˊ�v��f؊���l�G����aK���g���x�3��G�q(��d_��^_���'��_�s2S���]�I�V�j���| �s�Y��*24w��Ζ
A�o���*QE([c4J��[������{���7X�d���M�D�Ă���N(��lqUx!���B��e$*�+��L�F)�����G�U'�~~ԧ�_��������]��VraMn�!�rlQ)��;�Q����;��"�֑W�PI�v��$T����@}���H������r�!���+��e�n6<�Uw��&����a�i#u�0�J[4i��[�r�QZţxlzė�AT3���ϯ;��z6m��`��E~DN����G2L���X��9��hԴ�e��:1/;��m;�%rg�k�Լg�"ڱH8k�+���R*O�u������Q|�#�a$t�i]i˲#��3��;,�U�:$�t{��v�(%��|��e��/�k�;o9]R#�7�*$M�ho`8=18G&9k�I}�r6$i�?�����a;_ļl�!S �S�lH��	Ă�j�hﰀ$�5�u�,��);�1�P�|����P컵�� tS�
�F�c��1{vJ�vml���,�g�`��;�{���7v�sX��g4�Q��Qo�fG؉L�,cҨ6���e��<]0j��q66"�)sc	�S�N�#�p���N��K`�M-uC#�������!�U��m��L�R�������{t����ȟ��t��J#HDH9x������M��o�J���W9�y�߷Qv�{������]
�]���c�N�>f�d:�wF�0r̔����Q����@�WB���&��:�2��!��'�3gQ��#ժ���1g�y���(���g�	 y�=�����&C����S�Xf�l\��$g�R$�%O�P���̘bO�}c����Xw�OǦ'e�ǳY��Ko�;z,�֎�]�?�7���i�n�贉Հ���xE��%c�w�,{�T���D���Ɠ�k`�I����(
��� ��:��<���A�,���v�Vp[�x�Y����8�wf�za�����i��OkX�,�Է��:7[�Qd��\�z�$�.V�r�ⰳ:�ݴ��d�B�\r0�\�Pf�X2���E莘8kdfh2��Й��۽�I��=.������-��'Xk�t|��9:(��򜗐�JOl1�5� �8�ǔ�pk��5n��a��
n@ǟY�&��U�/�C����9Mx�N��8�$��{��j'6o��>�S�qZ��'-��Op�������X�e�A��ר�w���B�u"+����Wz�4�M0��������ȑ����Y����^�<$e;t)���ωWaA
��&�t`�&��l���n���ќ0'JZ��xcC��V����4��a�-zGdK8c/��8
�gŪ�VʊamDWֻ���J����dG�7��`I!oaY��"���lM�Ş��qډ�Ɋ���6/�o�u���w�N,��P����r���!��hl�1����S(������u�uR:,=��c ���W5Bً�1�Q����ȁm'����^?=�����qV��(G�6�0�X� ����i��b�C��Z���,_��
D�� ^]�L��RW���k��9R,�<J�^N9���v+��Lo�ɣܩ����Z<�D
/R�#��a�k�zJ8m>}G�~��B����H�����������ǟ.��K������}��;o������_����߿�K
Ñ����d�K;)� H�l��)t�B'm���Q�e3���z	#�k� ��� r������q��q.0�h�Lg�s��M�y�vP���n���$mǳA-�8�w2{	��cJ������Iu�z)���C��E�	��H��]�ԣ��Bi���T��}��[��Ζ{4���V���z���_�1����8]��I?+  6d9����HegM�'��v9i�tV"	����
k�"s"[��i�-p_岂��	 �='�:O�f+\�2s}�\82�T����s
�]�)V�������?X��z��]0�q�J��T�f�>�M����{`�.U�/�F5f�D'yq�����Ji���"i��I�{fG1u5����p�j]7�s3V�� �8ָn"8�$��sz���k�����#��Z�8<�58vҙ��}�m]_�X+8S��ѓ�v�+t�X�f��˗R+B�c�E�G<L%L��ki2� Oǧ�qyG(�/ �~&+����m������'���{{�[i�X�w�^��?���&Qe���3�����k�Y�a:	MZ�qz�1썌���z���gW�"��*����1��h��iJ$A��Ǖ�����g�#�p���~QH5+F|��I�a���Zp�[��s��L������^�]�݌/�x8�Qн����M���������#�K�2n�i�F\�> �c���-�6�����HJ�\�q˳��0F���
��z?�!Y��u`�ӱ��R�������mR/�_�Z��� �:~;�����N�Fݕ5��ŉ�j��.�Ͽ3�
���r�?rэq��e �)����Z��I+����9������[��جXR}?�T|X����-����r��'������h�:��̢����=�k�*ߖ�>0�q%��nt @6�����|���]��כq��11�_��e\]
>,d ����s@
h`����G"ύ�l�{(��P)� �j[@�G1k�\��t̸��[O��x�)��8#j�����.��WX2�j���i�[�K��������grKyt�>�16L��%K�"�����XC��������:����z%�L�K�/�W�g�"�*�S��Kc�+��@r�0���8�-#cZƊS�uQ�`���� ,I#��󑉣��F���.�)˸��Fk�Ն_p4�NI���|g��0�G2]����~��������X��亵χ���:n�4W��%(Y���;1#�=C�Z��|�N����e����%����p�.��]F�������  �jɸ-|1�Cf�ç�ǆ��Xp�O�!ZוZ�&�V!]������t�k�O��I�#��I%�\��s�4�Z�i ���/
�.��p˗�w���w����,�VuM�o[�K��L51����z�ޗ,�&\'�w4�)s��s�e�#_���}��Ȳu�q�u�D6�� ���<{k�?Vz����d���(Hj�v�3׆�?�7��_���-�q[��pZ?_aZpg�y^�V�&2F����`K��ɸ�Q�ouX1i3��8m���!��������\���?��8K�����/:�ߙ=��BX%f�=V�S�H���_L:9��y�}:.��~�������Ok�#7�|]�����#�67��s��k�aM���/A����Y��Xĵ����g3��q �����{����0ga����FDg���}��S�=��L�����\��)�_�i^p'�v�<��}���s>m�@ǽ�����Ӡ�%��p��c�u�^'+]����	4���܅�=8}���2�	���ߒ	�wk\
c�����~D���_5E� �  .�m�=�z�-��8�c����Ԃ����X���u+��E%|����w.�Q�~?�LG�@|E�O�a���Of}��R�~�G�ag�}��ld��)�Αc�<���Ա[������CJ�|O�G�x�Õ ����BgS��G�q��a�V����Kw���d�{��]����2N�y��9;Ҏ`�G�l��	����nQ���Q���q���O���E��Gߵ'�- �  ��
�D�<[���<�)��%>5�]���<4{v���4��VSi��<d)�>!7n�/_U��R� T�]�q� H�7�pl-<*�@px�X�^���#�5�H���ڄ�m��ʦm��Y�̣���m���EpW���1�*׳�Q=�o��EJ9�8B��_P�	�?`]J�����2F�_�;AA���&�%g�+mpQ�������7G����g60n:4�X��Q�w���s��,�`�q���V��=QXu���˚�_l2���&|}H�6MZ�m�ۥ�!���S87#?'��EQ���J��j�l����+!X+��1�����j��4u��;�,|���>�1{�<]���F��x8[�Jǟ�C(����f�a��<W��i U��o�)�W~�f,}�ڬ�4�)��_��;)�O,��L��^��V`6|������rxD�?��-��1^��+#=�'Y�O�A)Wb��Xm#O9B�����]'�=>n0��;M:�W�5q���o��(�H��s��a�`���t��V����jB�:�� � )��1|����Bo����������H����Phtc� �᧏��gt��7�>G2�:�<����?hj�n�]��������J��Y��0�����[<[}�'�$�>�����T>�N����O���~���z4s�      �   0   x�3�,JMQ@\F���99��h�ƜI9���M8ӋRS�Ѕc���� lH      �   k   x�M�K
�0D��],I[Kq!�� ���I�C��
�t0�I��\T~MA#I�ƽ��ک�嬉%�_Y4�@�VM8��M�nׄ�_h8���flNf;���6o&�E5�      �   !   x�3��M,��L�2��--�H��I����� ^r�      �   �   x�U�Mn�0��3��	�:���� ��Xv3%��:�#��}��q�Y>ϼ��y7j��O˦��J��lG5�&�K8v�;{� ���N5��� -*Ŏ��$��{�J��r*%��s� }��̅��D]b0�k�ۚ$;� 2�!w�԰´��\\&�ؿG}����Q#����&�tnyg��O�uF����8�2��|	W�n�{#Mc=����7�7��!V��6�Ozz-��p��6'���"�qxB      �   �  x�U�An�0E���")J�	
Pt���:Fc�"$|�r������?g�y����k�8Y����og�����B�yrǏt~�(S��%!��5�2ըkda�Ya:y�邜�^�r�`����@'�(W�^~}P���{���od�R�=�3�����-}����(w^��#������7xY�N.�6!7[�=�ͯ�G݆�~���k��}��B�:��+u���y[�D����[ׯ��.���L?'������%���]�3atYh��[�ʖZ��>��Q��e��R+�y��@��6&����
4�� ����ӌ�Al���m�q� e!����R x��T�ԅ d�r��ڀ��D��(*!��ڀ�B�iq�����h���C�N��G���}�����e��{ˉ��(V�<�����#cm`#闑���r��;t�:��|��X������=t逊u�����2���AN'���*�F�W����/�޷��p�o�      �      x��[�n[I�]�_qW�r�~�.�U].���zs=f۴,Ҡ�n����K$eRk1��
e�'#N��L�Ż7ӛ��j��S\�g5-~��~5��}Zmo���������'��P�8�B+�dA(Q�}ч���od��LqE35�
�m�����&Q�̼Q��H�;a�`�j׆X�tvi9��FB4-v��!��1Y)j��k�K�/��+!��`�� !!b��?^P��v�����~3��?���O��w7����������ɔ�Ri6-�ux��5�DJuy�3w�w2��}.o��Q4{��8%3c1���Y��K�?v@ص�E���c~/��G�)�K�/�}��)xR�����.�~ Ro�_7?�S�|���kyw��Nqss��N�η7s�V��Y<�ӂ_�'e�1G�l���q'Ey��5Y2b��I���^�b���'�����*�t��R�0�w�s�XfIʊ���d㇂'��?�������~�����/g�|�Y����8���g�x�%�Z1S>��������ʾ���@c��U�d:32�\E���N�<�9�C�'�c�p���l��{P�4XA��j�<�a�3[���;߯n��07��O���O�ͷ ����)4�F��:4U�RK�nіҘd�.�;��JD`�[���&gkj�Z!������e4R���`W�;�4�x`�~i�%���^�U���x���˛��y?߭v-�'S�OCI� ���8�)g)z#�Gd�!T@��$=�6F�R�6��T�ϛ=) a���R$Q��M^h$-#C�tpa�Q���Ij�K[�������c�<���@���{9��}�W�[�7�[m��	�Ԅ)wC6��AT�`+{8�)���H�mu@�X ��8�Q�d��b���d*{z�&	o$�؁��1 �	ţ,Z����m�H@������~��' m���\:�L�s��:�b
H]㠶}3��٘�G�C���Ѡ��B�L��wtZ+��W�U@MH�#����S��:Z�����Z�cL������h���1(�s�7�uj�h��/Xv<]U�GF0r��u�%Ҟ����4��|NG�t�C�������Æ6������-��-�2��o��ϛ������v�1���M����G��~���"��_L���N=�9iK]�'�2�v}���ֆ�-�,��^I�O�W
���r���&�qm}����c}L�Ajx<���Q�Sy�`�2Ib�B��O�ߩ������t�v���7l��|J2?��f;��W�k-&��u��%-�A�!C [&�s���9�a�Z����҅aG�x)G|yyGIt~�s�"�v��c�w(��ubص��ɰ�n?���8<�u;x������ #����WU�9ڎW=�Ln��^�֫G�ѣ���i���\sN�Ƕt���{d.�N5<��s��w{����hJ�4A��#3+d"d�fW�� .��:���O�s]�4M���/�u�����\�3�<��眽ґ1D�:�/ϻ{7y���-����'�|Ļ�}:ݠ�ɲ�"��a�'����r�_��~��c~a)6� ���1��ϩղR�������Ӎ+oGeM�����=���~�b��|S+Л���]=��j�Ǽ^�<���z����s��I� uF娖�W6G�Lk:o��cPh�$T�m�&0�l���}��j�P����'S�KN]鉴���R��fWb)����h_ZO@��lU���Y)D����-���]ɦoQW��4�����h�y{�y	0��w'3��s+8��N;9���M�u�2�M�^�	�Q���mut�8Ⱥ�Q�n*�U���tV^;!IB8%I;�<iIa�v��J���R��o���i���^�RSl��Si�*���hX�\�a�RK�����@�j�����Z�ݬ?mn�������-6n�h;���a}�c��]m_N�-FujG�@�Cm��4�F�����Rѹ(Բ<��(��k�z��a�(d��!�V ���9�1��*E&��RA�aD�F��J40(�j���	i�*����k/�H��fy��(\c�>K.�0��<n4 &�N!����^9c��'#�2�	uD���#\��I%QK�\�"��2J��-㢗j.i����� $*J�P༰�	e�z	��STe�v�]x�ۇ�y������x��Ĩ;����ֆ&P��N��𛜈��<�W|l+M�(͓a��Vqj��}E�LB讼�������5���u8�#j�6���OH�V������<߮����r}�L[z$�����~�җY;]��n�!
3�W
o\�W���3��E ���io�`���,�𠘈{i�Z��'�e� s0�S�$�c��RϘC�jfw��(����������˅r�2����i����p�."2�:��L��H^�7;TCf�5{$B;�i�k��	"<�F�q"Q���߭FJ��*�K��9h�W��^(-��n��ϴ�O���7�&~��*f�"�=���|c���g:�8�z�~�Ǯ|�NC4#t�"C�����>��A6:jl��H��1_�����;��$��B���gu7���l���ӳ��/�������=�V��t�$B���4hӴ������Q�9h<�+;§R�L�^C{eh(����X !&6�CġJ�6������F�=�V�Y��s�P�g�'}�{v�k�6yNz![�}C]pZ���A~R(ҳ��b$e�,v�R'ŰCH������Чl�S%W���Ef�=;�j�f�>�=��ny�>e��C{ VBo�a7�ġHDJ�.�T$H=�/�[��xmi�����=����{V��趴��s�ۏ*P�����3�qtBI9��P���j����'���-v�<6���Qw���@��z�?f?���O ��m�B�[O�Q+�Rw�����\�/���R��օR`�P�Vօ�k��<82�i0��~R[Z��N���hB�9��8L}<�4<oL�������Oӛ��� ���N��F�b��ӓ݋v��8Q�Õ����h�M�c�48C��K��`;C�N�e��?���nK-a�����xTy}~̚$�����_P������ZA�W-۵�x�?_u#�����J��7�G`
l���9�p����x)s�Sԇ�Q89�r���_j]D|���%��ҡ�����C�P_��ID��d��e���1d�t �s�������p�V���:�7ӯ_!���8��?����'���Õ��@�=�LR�dX���<5
X���Aߊ�Xr����v���u�g��g�ϋ0Cɗ�2������'Շ���15�x��D���xR�Jȗk@C�Km������r���.m�n����Hoo��ĺ� g5�ҽ=�@��4UDhT�{������S���^���nF�Y�t���q�x�#�*�r~� ���k���ӂI�H��fw���\jP_8C� a��Y�T�����B{.Ih�֍6
*�?���xo�Yӻ���"����H�s+���و1�����j-�vv��I�U��zZ�"�Ђ��l�Q�$����db�ݎ�F����~Q�	�����Pø�h�_Z���~p��֋�V�z)�Aዽy��s�vT�zs�ԁh�N��������j�$����K���z�J�V�u��ƦRRQG[v�&<7�͑,��ϱ�=~�-gc�Cj�^����ܠ��%������D��k�������3<A)�X��,G���rYq�!�X��9��G7�	�J�#�K�~_x�j�6i���@��������xC/���eT�S	�?A7�=�Cǃ
m�K���w�����E9�Jݱ�C�!�$s(<�s����OЈdI����?�{��x-�T+�֐k�}�q�m�>�6��_mw�>q=@�K�?qWA���GQz(�q/�0���)����:���ڤ�9�{hbB��f�q)󓨉�^�� j���\A�c�iG���r�a��.��b��������7vk�e�y7ߔ�_O��^�I[��Z83`!�d�ƥb��[� ː�� �  6a\CL�Rj�=��;�[���`2��	�D��J�?[��^�]�y�c�>�����n��-|��-�ᝆu5��Ax�x]^�,��[{k�VD���^�E	5����[ƕ����I�&Tr	�ߎ�!"~9ƫ(ra򪝣^ZA.97�wPH��T��7��I=�/���/�po�`������q���F9P �;��Ei\)E+u�ra�����[��i����"-�䃮�?�J�7j%"H�9����hĴV���}�[ok��w����^��zH@a�g&��1�+��Cۓ7�S�)+���!;�U��.�K�	��:�����i�m�i�q��V���/o��5�|P";�
[B8��K�w�����+k�J���)���ʂN����vR)�%W�i�(��忂�<	*Zdj6)�薖�ϲ��H���%�m&�i�������/=�Y��v��/^��ύ�      �     x�]�Kv-!E���d���Nڙ�8�p_�9��^(��>�c�]"����)����C�F� �&����>��6i�p��.\�bo2�=tO�h���`~W� 4&*+�$2]���A�#�M����w9ÄP7����M+�ٔ� u!�ZI�u���d�+���?���>���\_f��G�&�	��7�D=Q}1�][1��*F���/ed���a#��oJ+���X�R#E�{:%з�E2�"�Zل�B\�E2�"%��
ce4:q�Y�8ap�"��#�p���"8@�fʮ+Ϊx6�l"�>��Q��*��ڊ�QQj/�I�r�����*A�Ն��ݜ���&���T6�ŠЂC�j7D���#����u�.�&ȂS�'�`�?�36W�6���\�C�h���ZGCt��][@c!�52� �ȤQ�nO�{s��9���j!D����ͺ�:�������4���c\
"5��-�
9q���~��p���%\����E�;���3�?"2~������UB��      �   i  x����n#7�����4��p���M��v��7J3�'>L0�[����=#r2��.�>����t��/n8l��V\Z!��<��z�����=�ٲf��5��ú�쮩���鿯�J,D�~�C	��(���A�n�b���%窈U8(������M���]�}V�%/(��zn�Q�.��7���1[bE�JC��	
�4B��6���`�	�_xr�v'O&�����kު-����3[�m�*�[�ǊkP^9a���_��Pm��PĊ��Q^9c����1�Y�6�4�*�qhV%u�+(���g�~�b�z��A!e��r��Q�J@e��{���0B���؎®@�'����3ٞr��`��G���Ob�f�z�m��h�,a�L!!*	���� ���G���`��(Y+7r��f\�����sR�v�Ax%�2X!���!�z�~�=�B�P��QVg��&%P�@_�R��"'C��ɐ�NFeA&�4����v뵘D��m�$+}��f�c�e�X����_����P��U��0JQ�j��D��5���ku�
lgj�@2P�Gs�¦H:��JF�1�'���~f��Ϸ�*U�*�@R�%��E�GB9��Z�c�T~uVU{���"Vy�I3�4a�RsMѷ�VM߭]P���PN^R[,}��(����&�u7I���P�C�b�ֆ0�W�[�~��ξ�UB@uN���X7��9���;���oU��PiJ���(<.�4O�~�}�Ů����*�)� �>����l��
��mžĿ�!��Sj*�(V^k3��;?P:Ǌj�>����8���֥�k�Pm���:n��ÑA���P擨	�97� �3�;	u_��)f�-�h�ti���j�(��v���hIAq���uS�xYx8@���L�T����!Ki��W}�i�W�ЉvZ�Q2PPܕ�\�u�"Wnz��Q�+��$��(V�d��Li�8VQb����It�I����تAe ���TP�aWE�ϯ�m-<b%��A
	��y�l']	u��cE��T;�T����3�����^�]��kv{A%�t��K�!��`"�&����V�>.-K�K���$
�(u����sC\A�'�@y8�Y�P2xcԴ�t�>=ʗAIxcB��I���:Z��S`J��P�x��%xQE\Ax%DF�N���W�ķ𢊎2�P褈�����P�{��Wԧ@�I(�FK�����j	����r�"+���LK� �mk�����{FR��W$g�{P&�[��ӽ���i߬?�T9�,��ΐፉ�On���̎ 
����I��b��Né���p&Cz�dP�@BY8���sʴ���c5��B6U"���������      �   \  x�m��n�0���S�JeC?��ԪMZ)�r�e)v���Uy�����P!Y���v �Ly�fp�pN�P���EϮC����_d�U��qTѱ�2:VFh؋<c��ͣ��~»k	��.�����G��u�kf��0�b����cD��D�,���	����[l5�L
�Ŏ�V���
D~�]D�^��w-�Q̢e��#�|N�пdtH*�QP�<��7+
�
ޥ��i��*Z��+�u��.Ả9�c��kr��)�v<ҢӢ{`m�k����,^N���d�8���̆��:v��*m+�����@R�,Q��� ��DbI�G5>��=��W�/��I�|Ý��      �   �  x�]��q$IE�%c6���j#v-�����ω���H^�Z��oD�W~���o4?(���\���/��w�_u�������#�q���	����۞�>>�_�����g���[���	��/i�Z)��G�n��"�������o��q�H��P�c������M�Ma��W�Wz9z98
p08\�>Hz/1xpK|���4Pґ�˟o�qy�H��-�%,��zx�|Kt ~I|�c�ЏK���K��[;�7�%��C�;�ܡ��R=�K��ґ��<��4>e;PA)�S��_m��\��zć%�}Q�R��5.ո�q����/ھ�颧K=]j�RjEj�|.eYdY�2I�>prP*��Ȑ�#n���H�-��r��P���]�?�z��[�C@�NL?�_�-����/�}�E��^��"����F�_�l�1�xL<�<&��J�
{���^�^a�4�doa�o�_@k��)��z1�KC�ӥ1]����m�F�M?4���V�\VY����5D֥y���K�x1����b�.����]�->7|n8�p��a?\�c�{l�;xI|OGFrd$�ErX����I����lR�)�,���2�ƙ|"�@��t�F�H7&��N�]���.��Q�����"	�_����Y��2IԏM?6��4[�ٚ%�^�"�@��t�F���x+�"�_
�aa�¶��[=�n<�'��)��Τ$�$�T(I�3)9��3)u&%gR����Çf���9�VE�Ey�ʳ|�Ӛ��\j����L�fjh&C3}�i�K�X*��R,��~	�28�Q4|��W����[�	��2����-���jP�j��Tek�uS����
�a�e�z�q�q(�`5���b�_6|��e�/[;�6�����[	����ʛU���Tݑ�-�[�K��ґ��<�����'=v������t�q�      �     x�=�;r�0k�0�m�i\��0�eݿ�X��!|�=޾�\��||���\�6���t�݂nA��W�6�a�Vt*�*�*��J���Ӵ�;̸Q�]"��cר��g�ϡ�lp�,���5�u����.�/�s�COه2g5���y�a���I�_��ҿҿF�\cO���
�0ߍ���{%�����l���aO�=	{�$�:w�`�u�/��x�o�������|��n�nͺ�W���^� ��83����)��y�;��ѿ�O�	�3�i�3���۹ü�0�7�-���_g̟���J��'�O���y�2|c��ؿ���-���B���<��^�;�8����}H�Aٓ�W��|�?_�<�h.!L      �   �  x�M�˕� E�SQLs�0d�At�qLK�Wի��[��k����|}5F�p��:|�.&�?8�!.�Z�����G�������6�<�n�۪�U�DJ,�GbK�T��u�}5w�b�Y��0�XB�2���Mj�<\��n9Z�B�\�M**�(���1+c6E������TaZ�	C�w�-R�[��A7�6���`?w=����v�vX��dMæ�N�u�ÎS&/;�F��	Vc�D޸yr�#�"$���no1�5���y�x$6"�ޮ�P�)�s����:mu�0$��o�~�.W��7���u��5nE��3��0��8�L�$�����|��%dy{a��5gL��	u't+Ǵ)CW��x{�苷�A��%|!ކ"��طS��?Ǽ#ޡ�H%m�ս��ŀ�'�GQ̎���[|)Tu<��㡎�:��b�|��#`�����^;"`�`��"O&�k�P�ةP��6L�Ma@�i�ʡ۩9$TGy��r2�d��ގ.ƥ^�)����h �~Y6�:%:\*1%�5��R�M�V�)\��>��D�Ae�#Go{�%�Q&�.:L��+uq�-~"���R#n	C�1ePllqGv�DO}q��b*��Ӱ�M-�b����9�E_�[o��*����_�h0�H��r���_T�dH�G�����/����Y�����������      �      x������ � �      �   o   x�5�9�0D��9J��CþC�����S=9�h����n����8b�C0�>虽ts%�ԟ���7�1��T&�����θ��?�ܡ䕼�Wr�������\%Ƙ̢G�      �   R  x��\˒G<�W��,#�}�L�=h/�q/�bV;�����MET�3L�|003��xxDd#�t:��!�rz�����c��bO�$�obi?S���ϟ���pzs����_O��z-y��+T)�P?�����5�.T���@���d��)w�9�B��@�xyxs���?l�J�*H�nP%�Zn�B����>޽{�Uj�R=�ҌU�ڛ�0U�r�ZcI���?C�"%��)o��^>��^>~����?�?������.P�T�-��Jcp�m�U�%v��78C�,P�tI�J���v���"���U)ZqB-�3�'�*;�"1hM5T�����ׁ����w7.��6X��-����
{�;�r@-/8�T_cN����kݺ��w,�<<�bĠA�l�C�ZJ��@�ziگb�pƏ(-4�B0#�ͻ�&�-8U�B،Hʳ�J��%�ZUe�A�iU\䴷���T�j~�p��2{��/`�(��x��A�Jj������Rh��4o+�W?;�%䒫d�M������&Y��h���R[�������/O@���EJ**�߸����*�u�r\Y��2ʕA!}!��t�ɠ�K�u�n��P�Enx�����_.���ߠ(���Ad�#��Z��F3�X��,�T���P�2&��K�ԗ{(�6�����O��N��/8㇇�>�ۆ3/���f�Ƞ�EQ���|�d��*~��b�1�U��"�[�M�%�Zl,��D���-�d���(��v�`ގ�J��&����bG�	Bf+S}K�-��=@]��Z����������C��%�Ȋ��3�����Yk7ȓZ�I�(��r{�q����z��~�V��e�"�"�"����h[mup8��Wf�����?~Y�A�+�f،,е�W�����
�|� Tg���3�_u�w�3�h�섄lP��lP֥�և����8����+ �#?��ۤ(�L.ңu�����e�<Ԧ�"���b�
9	�ڭ�e%��1X4С�PݿA�Z�WnH3�G(	�z+�����J���0\r�ATy����$������ߜ���;�pY�"�xuv���"fR��B��f�e�(p��F_��א�x�,�fH�iV>����p�\=pz�@���$SPPc��9T�n�6�W�������.8�e1N~�V�����[������t2f}+�Y���/ꝟg������"A��E{�m��:��H��P�hL:�>�D�H�ⶂ�H%����Dl:4�f į�d��'ge�U��@n��k��������W�j8/�z�>�f�6�(Z�AA���B����*YBA�����*��PI��"3�q}嬎7qE�qʉ���V��k�ABuV��˼����YYn��	^�si�I�K*�1qV��ʠ���E�]����M��!��=��ZB�r�9��Ls��3gE�,��Y�0�p�ud�P�I[����0gp(π ,�Eݯ���0�v����1������4+��3g ��eF���y�_=���BOh���:�Y��b+ƀ�X�3ci������0��^��2ϯ�"����zZ���$I71mv��E���-!��AD�A��AʄA��AQ��R�����ǹ��t�/�p���7(0KG�,1�Qcg���d�!����� r�9�����Z9+����Ϯ9��kC��q�n_�$hH$s�RX�i��f�Vb̊���8����X��h�9��O�a�^�3m�Ul�:C��<s�bi�q��Z����x�����}����f2%7�@ ��讵�в�fv�B��b��	 ���R�+�If�yӘ@��
��1X`��)&o��v@�_�����6��i]�D�E�n����A�ߪ�l�c�O<�x4���(zMy��&Ρ�����*��}Í�3�Z[��z�I�Ӭ6^�Z�}Ëf�}�o�l�
H�4�~]��[Q�m�Y�	97[KH�ƨޠ�������&����֗��f���6� ���P�x/3�ٮ�	7��K�u;�3�=16��vVkm��?��ʪ��:�����:�E��������ޡ��_���Z�gȫ8�$�ʡ�A���Y���P�CM'����Y�X�H��Z�Y�@����ُ'd?��a������;7�񙌳:�ۿ���/?���y�����V���v^B�q\_��K�9��%�:")��fEY�
yRD�3��ۥzb�g0o��Yx�G3���v8�����;�f�[؟�.$H�"lL*�X%aH�@mR�������xM��gR�����yb80�f�Y�~��L����e�Yע��'���HX�r<>������E�PD�Z?X�RS������
I��'Fa�~�P�X%�FŲ� �0��Ck�"|�����=?E�R�EQ��o5��������Xx|~�P�N�M��m�1��Ud�`d��U-��)]�ׁ�U�Y�#�YVk���3���E��FK0��q(c	G)�8�O]Y]q�N�����?w�Xo-ϼ&���c��q�� $y���q�f����Z��:?��Z���<>g8��~@ʆ��4¡(�p֪�mu|ꬎϐ�(��5�7�b�h�H�Im�\[+Q��A�d���.���=!��;O_q�f}g�&�mE���C�305E@��gg���YQ�k���>��á��w�2��}u�Wr�ᴖ7�<�@)�:�<�<̊# �Y��������A�)%gQ���(��S2ʫ����x�Yy�R�Yy�^y�L���W�7P��s�T�)�K��&�����M(oZ�<է�a�����C �崖�k�'k��PP�xG�b���9�����_����������R۽      �      x������ � �      �   �  x�m��q�0E���d@H�UB&-��:"\&�w�"�S�������ݐ��!&�ڜǋ��}-n��P}�QϾ�rߗ��rUT}]uv�FT_�͚����)�r��ϵ��sr��)�2"�#���Z/P��Ƌ �@
��D��z���Zl�&��;��9>*Q�E�{ќ�]�͵�7����H_�T.�m3#��o��+����s7�[��Y\宭 '���xsb-���Co��+eH��H�T`O�`�[��*�R�vT�U�@�y�%�Qi�[��M���0�|a����Ò#m7F�c�xb.���?P����Bw4wj\�0���i2��u9��6G�,^;FvmhN�0P��gyJ'�Lb4�9�Y޷^B	F�~���/���6�1ؾ�x�;Rtk��3=�{1p��$p�~�-��Њ#�1�?t*wE�k^�Za��0�����:��W��      �     x�U�Kr� ��b^I�cXEo���#6 Pg�.�/G��^�$������>�r�@��zZ�R�?��gA��K�_q��(��V�Y`'⬁2��g9>Nv{1�r?���-T��r�a��P��h��CH�'Du�vZWXњ����+���4[�����}[�?��V��d��T�}��Ia����h�%����)#�L�=Lv,�؎b�W��O�Wh�`��as�i�O:6G:�AP�t��C]=Y�7%�r�u�;�$i�gK�	��dA���)��4�Z���3ewc،�^�d'l�^c!�c�!�X��,�'ʓ��)-�ʓ�wƭ��f���vk;�&��t]��h�2h�W��V4V�Xec��U4V�Xecnm�RX�N�B���h����ķưE���pd�SW(q�5Pv
K$����Oe8��K��@�8H%�IA�t�x���&�e�J��\,A.�ڝڑ�qmtM�EA�2m����=��`Y�j�_�u}��[�~;vzvx*�(3�N�lʠY�a'�+����?3O�q      �   }  x����rd9�c�]vJ�R��7���0���� �'qu��B���?��ǿ�����+b��> ��D����?�F���1RjIo�c���@
A���qP�|D�5-@ (��F4��o �*�����-dl���V'#� l-I��:��Ll!���h���`Cj	�@f$:��#�9�qaiX��°� h �X6���ㆍ�]���0�=$Iy{]�Fb _�.Hy=j��ꨍaOF@D���m�E�����u�&RD�.��$Ϝ�5iE\�b�����B/S	�Z��q������pF��P����'���z"��NG@�_��En[NV��|���H�W�Y�k�@�(����z;w{KZ�P��@Q?�HO��GĨ~�����Sd�(R����]B�C
�t���0��"}������ٓi��Z�m����#2%Nzr�r���C�>>���G�1Yn�J���B^߇���� m3ƽ� �To~���z�V��/�@�G�Mw�MHnٰ�Sϴ�>�]�E�+�mv�Hq:��$��b���at�>��DTC�R�M���6ld4b~���{mq;�`ѡ�{u]J<��ObErXS��*���oe �]X�[�62�,��dۣ�Z��b"�\q�Ȝ�k3����UA�I�==��.�A�4\+m��:��%s�K����l2���ތZ�,4ʲ�&��7���X�����eWLa���(�ԈҪ^���H2БҚt��r��:�M�F�U:I����9-=S*yVt�J�ޓ[��:���SR3b��r1z�C]}9�C��S��-��5�ڎtX�G�zz����({��Iɂ�DG�>}�e�~΁�sζ��sF�S�,S _:���޹�H�|������f��䆒���%S���,�����ֱ� ��}�
>=�J�GɲĔ�U�ȡ>�M×�@�L�C<*��JTj
iN��AEz�3�2ft�jU��_���A��<}+r��
���eJ�� b�ލoȺ�#��S)uF�W��'�h+.[��]���G����پ.�����Y&�	��5:��VβN��y��<o;ux�y߰b#�5�:<P�,CuD�e�j̳��pF��~6�(E�{�ج�����F�4�������� u+�      �   �  x�E��u�0D����
r�H������f���+l^���}���S't|���o�<I]��y6�P� 
��s'�-� ̆E���W�%�������)@b{R�̆��t���K>�`վO��AW����0�@����&0S`t	N	�/W߳�V�s	P`T��y���؎8��3��(=��G*�|0!0�-�U� B�	�`���>P�5u�h?�l����;	���L����dþ�A�#�*]���eR��[=�{R-������d�5N�/��9
�U��Jn�
A*�y����b ka����dpq�s+p���B�E���u �a|��	0�	z��w8	�EhEc*�&��8�����o�N�4,�\��Nn��K��������nL�]4�ך����	���B�`N�I�u�]�LeI=�db�������|=�����'      �   %  x����N#9���)� ���43l`f�m/�B��%�V�ӏ:i��s9 �H?U�\�����s1�16;��[�$�f��r�Y�����t���U��P5��}����М]�eg��ۣ�k)D�2�[5B����zf�м������{��	�GE�x�2�ZLF5���M`��G]rn@(�aQ	BQ��&I9���D-¶[�5�n��[�P��+(�(*g�4������[��Q	J-J���WJ)�F���Ն�h*��{��Q&}@k����4�gh�MX�:�<eO|U$�n���Q�R���p-�0CL2E�$c�,D�qQ�Z���Nv��J��Y�34J}Z�i�N�>K21!'��%d���5EeO�*�=�R�
Qs(JB|�3T�
f$���#���$j��������i�����YxM�G�=�Ƹ���2��m�r��%+X�|U���r�P�g�[c�����jުUV~�TvA��$>��w��c�Ȇ|5�e�*��e(��%y��ǐ�Z����^�.�J��ڸ�C�)[�O�ġ����1(�`��n����L-�u��Q�ƨϨn�U�-[���zs@%Z��.3$u��&~�:�>o�}�3�.���]:�ZT����������eQQYcR�$*�`QI��
h�E%��Ar��';���q���'���.�Z�VP�d�8�%Nv��
����K�3H�襇����,$��N8���s;���pnw8�;��n�8��!��6�%��KD�.���w&���ZգX���P��%|��CT0�qo����I�('����ś���#�����Q��3��.��wU�f�?z�)�K�J�|�c��N�۾�y4�m�t��L?�P鴖��0���oY�vS�&)�f�L)*�h1JcP:���Tf����n����G!*��Q�Rv�+;����z�a��d[�l�6rz�l�:�6a��!�Td��K�Ri�@I*�!��M'딝F-�������Y�	ٹ������j�_�U&��Eep(�C)�0�.���~+��      �   �  x����n�6���S��*�K͸������nXT㪲���,�/-SISFd���s����o�� ���K
%�~m��D��ן_��;����zSث�_U��c}���ޠ����(e,@��ְ�n��=� �P����oz�K�4�IU�e %�,�>��ԃ�T�_U�"7������R��}���?�Ä�����!��1�����-���1@�ٚ�e9A�A>�1����mW��w&�r�7�I؈"�MgoQ�$0��c|���j�g_�l�2��()/���a��%�E���nP2�eB1'�*�$���>�'�Q���Rw5�B�#/�Z4f��E��vH�˹x��/����yr�[8)n7i7(�Ţ|��"�̧��r���N�`�%�� �m��m[�RQ���fH�툺��t� EQ�rh��,�Q��2�3�*�pj�UbB/W�i��]ԫ��U���i}�R'Wi�2�9Wɨ��%���ۯ�S�i��#U#Մ�d�� y� ɜ+�e
�p0	&%�.����~:�����&��d0k��&���N��^��Q�}��RT��9�BoL.��'_ծ:j5n{{���Z�fQ��W�U�t��O{p�\�m26�Қ�4���U���*^@]s�dB=�N�1����1A�1!��k�(��N�UG��2�r5��p�O0�8)޵�sݝt?_ÝKT1�&c}��C�q��!;(�*��f�ܷ�〻l'��JH��$,ސ���V�w}l���� E>_�|(�`�p!Pw�l(�vqא�d�[3�A��XT6U��"���q�į��{�W㫧�KeQ��Q���g�v4�L.������s�.W��}0�
@��&�%�����;_ZS�&�d�U�_!��7���Ϝ���6�pP8��@�.���1)��vUm3�2(�!%����{�Y���&�����@ٝ�zBez��"+� ��jve#Q�3������/5��T9�u)S�3������pi2�km2�eC9�!�NU$j�	���J��A��JD��T�fHG�L(�pRQ,�@�_	�|��]�\,�9@�sP��mc��r-��
zMD��T�MG�L(ע�(�	E�M��~uA��8qԪ�����޾���9G���1^�*�����֝`\�*�.�Za�(j��G�3CEV����������^}ӗ�O���?�m�;p      �     x����Nc1���S��Ώ�e[�3X��B�mE[�y��I)3*")�+��s���3:��������Y�Av����qc�3�u�}X>���b�:��o�;
�	��(��'�xr�3�5ڤJU�� 
zλ�-Yt>^E�� �PI?J��`��h�Q�ŋ��M/#Ƙ����#�S�]H���%
�5U <����jɡb��Q�a8G���y�6+3���U�fo0D�F�fYeT��Y��]1`B��=�(�C�st�@A�^M�-��~�`�!�V��*^�3a����E���^���[s����m���'%:�8ĂM�@�aVW�n���<����*��몠��9l������j�YU��0�ë~�d��Y��'CA�;���Z�(�����0k��u�`:gT��ɨ���]�11��GQ�΃m]*Q�U9.�U�9l_�[�^����q�8�ծ��O�̷�e��� 528k�UAU�&&�P�Sm���B5��IS�%��U�/�o���v��ɧ�kTQ�������,���
�N�1R���3/�a��O(+>@�]RELBܥ���[��O:gΦsB9=�|�{^d)�DsU��jTYk�Q%+;ĮSGP"ǮS'��k��T�JVը�U�����YQ#T1�v��.�4�D�� �3j���{���]4$U:�}�xfhY�����G�k��L�P�����
�9���U��*���ʶS���Tk#rP>��Q���{����PP�-����mg���x<�{r|      �   �  x��VKv�0[Ϝ"h��e�ٶ'���Q�%ҥ�q��������n���~�;#
�a|����c@�MLgm�`�M�����mY���5ÅQr.�C2>�I�`x�A�}bT6�?�ک�'f����O��'0#���-���T�����N^��t7��Qo���{��ԃ䤫^�R����7=d��81#�oEM�k��ʳ�5ԴƑO�-�_㑉�ӟf&��V=g9��[�M3C���&M��e"Px���[�����ûL=�W��g�tXsa*l��W-���
�|)�� ���S��԰`"��!W_�|�/c�9;������Z��{��^0�썘St��?9�ϦY}�8k�g֝�û5R�����1���Ytn�3s�9���\���ΙO���#fpϙaϹ���_�ŎYzx��#������'j�!j:=�5yh���ӻ@��V�z!�n?\ː�cv�M*�?{����#0k�����zd������!W���<�*i��V֝��<{��7$���z���z�`��^;�N�1����뤦#_�fދ�N�.7��?TTw�I?g��c��1E��ɻ�t�;�Gx�8����
�y���pbFaꜾ��#�%^��ǅ�HMjdQ/�Vy����������74j���]n�ou#�a>����_��]      �      x��}ˮe���X�
}��w�C&4���\���4���ޑ{�{�npTm��Tuu��|D��p���{��]������f�K���\�+��ZqϤ���_��-�{v?��r�Ò�ܔSc佨L�	^�%_�\�/�.MF��_t�G��9B�0Kv���[�@�<?�^�����Fs.����Cͫ�2s����O��+�R�%s�ʽ�`�\ws�G~��rT';uF�M{p�#����cp^w*��J=��ەOk�����@}�
�5�#_Ew(Eg��k�Ň负�ϥ���N�yRLW~����b���aM|����n�>��wR��{��\1A�"����=�dy설���13�1�&x�.���<FI��H鿦�����/�PW<'�G�pk��_��s`Q>R����}����%��Z^A��/�A���?B�>�Z%N~����]��ؾ�_�g�z�1�y�ז����@�ς0��q���Ͻ}	����=|����Y�ʬ?t�H���k/>mr����S��RC�)�0�����q��?&�%��6��ď����C�/����O�r��-�M˚L��k�:�H8��#���޿tl��r��:R*�%O�_)1�1v9�s����L�OX.�j���;Ϝs���_l��������;d��gx_Y9P�ӭWU^��'c�ݥ��~vmО��wh�<��v�G��>�S(�hSK:��7�ll��y�|:�#+jm�����چ�tq��_��Q9��B���_h�$x��9y�i$��+?��Y���?�ؗt�g�W�^j�;yj�S���Y�X� �>=�?~����E؈X�<B}?�g% �x�&xR�^h5%��r���į����J�S�7w�Y3\���e�bp�Q�]��צ)x�Ľ����L����0U8��?CJi� yr�4w@(����E�
 R�秜�Fi�ڏt8���	T1��W�x8g�%���z����d��A��dW.�O���Bv���l!t��o��3������ۀ��_ew�\��y�����b�����KΜ|��y,�����}~�H���\�x�ɂx$�v��X�8�ֽ��◓<r����K�?����A j��/�������pp�go ��e��_�,\�^��k`�X�OԢ�Ou���4z/������VKN��ߖ��k�@���)G��Vr_;�d���{�_����{�,���� RC h�t���L�c���!���P|��n�Qᾎ���Ո�NQ��@���n�G�#�<CY���A8�g��++�=%_4x���G?�TXH��[8��\��i�@r����(����	J��(�O�����<�[ �γle��n�s���ֲ�Z&g��IE���/hC��(�[)b��#_��A�`�a�p�_�-���>u~9 �rS����ˢ��!r�����ȯ�o��u����CQĀ���J
���Nc{;�QJ��v��&�%� �"�k��U��A�[@��sKE]/IN�����6o�p)g����>��{��?���iر,ك������Q��+�e� >O�?�sZRf9�χ��fx?O鿄m�m,��׶@%u�"�}@��_�:@��:�?Y�������@0e�#��X8���0@x�!��������߲`�Pn���������R^�~E���oݹDǝ�&�Џ����p�WKi���J*Q!�Rv[{�'����L0����lw�C������������Nw��cP��x?_g &
�������{:��Z��E�W/��)�����Ɣ�Z��w�xQ�<�<�#�E�/o�e% �cn5���z�+�aL������N޽����#_C+:��n���� �$o`PJ�ʺ[�w��JJ59�Rk��p��j� |p�?��'�<�'b� խ@�tiO���3%���U)��"�f��쟋/`0dQ�����v��ȕ������bP��� �=cN�����;����uC��_ԥ�.������'�+"VwG'�������?;x�#o�n�����_��s[����Iᅜ�����֯����V���o�жW>(�O�0�A�4���@&���>�x]S�竫;-lV{��W�U�WJz_O =G^Jm��	FCů�`�e�]y�X7`���ĝ
���_��IR���o�C] ���� �uF�v纈��'��fph�F����._@��R< 0�p�=�Y՚�x����P~|��Xpp;�~�o��QW��?1����c��/�*�K��M�L(ȕ���j�q���y�}�<殔����u��w��AR��-`�N�_�f@h'�J���A#������!@(�_,Q�W7ñ���]��R�;|y��y>�.CF
B�� �iď�c���GN[��y����7g�DB���IG�;�<�k0+���^>֞@}<x=忞�[����;J���.����t���}¢��ߒF�;���?c]Gů�y����V,	+S�� �0��?k�s�.������Ӡ!��	<z�$ ��.N�U��?^:��򜜼�=|� ��Vs6�2�~L�� ��?Z¶��NH��&���DK��Y2���[��?��aI8���(I�7���GX-#S�_$Ե@��񿈛/�E�������Yc�,����5ֽB<ֳ��GFa����W=���-������՚\��ZJ��&��?pU��>��gʃEe���\�˷�eB�:�!r��d��蟗֗�4'��N-#���G� ���A��X���� @b.*`��U��T��9u�5Q���2�k�G���Z����W��-�|�/
�C�!��ݟ���r���Ź�=h%�Ƌg���/r������-܉?� ���H��ꖮ�6���p��.�����&xM�~໫_��+r�m�ߦ�9�/�^G��E�?�����?�_�R�Ej�������Uk���6�\{Ɩ��J�`{D���4�QW�O�Z ����R�W<�7,	������_k�����>d�N
���O?6��SA�g);P��ɖ}�'� p�X��5�e�=�7�A
#{���2������\�A=��*��&�:��F?��O�%�*�ü��F�?8TG��'���s��?(����_~%�K��?h�h���{� �|�)%�?�b��k�e�����~\yD ?:X�0��9����]r��k ��Ř9��3W�g]���m���S �	N����Z<0T��� t��bY]�������?� �`1'���5���C�nF#?,�����v�*<��N}dE������܀0�˶���/L=G,#!��K�-/~��7`w�+��2B��!_���� E���2�*��-��lI1E��XT?"�]��R��	�����;�g;V��[�E}�/�Ӵ��;g?�swS�y ApZ�7(d��.,���8��g�������5�������}-X���w�n�0ڋ�s�*��Ǫ�9�z�lZ�����]p�ďP�K+�8�P�# ����c?Uϻ3F��"�2��ȏ� 0�۠��������yFl�T�P�Ա,�⏌Mџz>�#�x��r�gh�|KU��������
���\F�<���Z�4��~��e�u�g�L"�����s�����n�{k�c���'O�?��/�H��IG�78���}���=�~Q��@����o%�U��� ���خ�?1E7�7p��Zހ�7��,G:�1w�6�����0E�r��W�~��Sh$~%z�I"0Ľ��|D����$��Oߚ2���A�A@�{_[~jJ�κӹ����N���Q������t���l8d�����^�|� ���D��<<���1f_�@�S���#�,�̜9��w�����O�w��Bq��:��kv�Q��fY.���_F�ع�o����?8�V�?��+�9>���%s    A]n�`��7,����?�c�q�5��ؐ�������wW�Y��0j���,YցD֓�? -������/W��� �:&|�����Y��L���U$��R������X�$���%=>��?�"�\�՟Q����s;�)b)��\���7�8�?��Қ��恵 }�y�O�����?������sq(bJ���p=�����������z='�g�w�i�*�;��d���H (8u~g�3L�����|е�P����Yʻ~@d ��"w~���E`5��S{�9y��2����ԑFۀd�:� � !s����
��xj���u75̆�)����<�$�����_����X���l�[+� ��Y��~7DY�?p���-g���֟��$.�/W�`�+�����	����Q`:X�S?�FE��
��|�N�
oIt��D�_��Z�����h�*w��/���4"���S�7�r���p��]���,�,����<�?k.��(v�S)l������bd���>NKߧ�gkX�"�~uZ*�	��?�G�~�az��gE���-�Zo��e����{��|�GC<�n2��f���?c��@���`;�J͏�vg9�:�p�'���`��<�ر)����)�e�&��O�0�~\�O���$����>�E
w����T�l��e>�*.��B 	[)����|@����GD8x������t�>�F.��O�˴���?�ܦJ�����4�~�� ��$�s���Xz�So�� ����;�쟜��o��D���w�^��!�r8�e�S�� |v����N5W(g?�u�Ϻo��)��,����IO�~���,j����J7|��jd��w??}�W���0(��p�p����C�T*~�0T���߂9�^�s��?�g�?:�vo)��b��=a�~�ه��k����k��ԯk�?sa�V.��"K���o��G����W��G-�����=�z-��?`YO5'��n��b��_c�̺�q����-��|�_#���կ�&���y�ϐ���^�������oKE=P�_��;�e�Qg�?u��?�a�#_y��C�`p��+��`��,���?j$`����N�*uq��0Ӽ�����s�'�T2�~������C���{��h3P<W�Y��?a��7���1�����g�w[�$,�~3����Σ�k �� ��_����<��d.q��Q�)6p�#��#$۵(��MJՁ�3����s�R��z�W���+ԑ�a�������ɹ�����?���������_��o����3X��3�~��}{9�jĿ�}���=g;�n�O�?q5� 6z���ʃ;#v>m8E>�0�O&�M��֕�/
P��;��m�4�r�C��(,n� �8��7��O9��K@��ƕo��26w��V"~�ʋ_ ��(W�O}��
^�)���_B<x�>�q�O����VH2־�?���{y�@��@��� ~?}�����i�kv�+ȈB�2���K�����#�n����9����ix��P�R�4�.0<�������`�
� �	?�ȃHP�`��������r�G@~2>*������C<�wR� ����w	�|��W?�B��m����Z����ݫua:��`6D�X���Ew k���/(O�]����-Y�C:�?���Q:�,w��i �دh ��2��O��џP�	t���[�h,W>��Q�7Y ���+P�y>�8dV� �E�j���Y�Ҳ{,�JB�O���+���P����l���?z�sZS�� M�;y��?����W � 6�|=����1��3pԸ��C��;���/���.?�O'��p��u�Ɵ����`(�m���
����&<( $��-������J�#� ������q���q�0���= C �B�s�u�m9���B5�2j����Y�! lȂx��X-�
��wC��`����.]������\����� D"N�������u�Od���N�q��=.�0s�h����cZ�^��N�OU� ��gn �u�_F�35�����5=}�-}f��� �E�� -y �q�	<x�>����:���4���<���lu��!,��4��o���#8��y	�Ů�_Iş��?�����Qf���^ YEFo�H�Vں����V�u;|>��X���ڟ[��`�,���Tk\���p�e��jh���OI����o��= �� ���o/ �� �����//��� �����o/ �� �����/��� �����o�N��2���oP�M��6���o��M��6����оL��6���o�M��:���oP�N��2���o��M��6���пL��6���o�-��� ���oP�-��� ���o��-��� ���oо-��� ���o�-��� ���oP�-��� ���o��-��� ��p<�uu���:���Ʀ�|[��_�[��m�o|�@��_7����ŷ4�m��m���|�@��.�6����ͷt�m��u�/}�@��N�6����շ��m��m�o�}�@��n�iXkk��/�CgSܨ��Cm��`<���"
�������׎_���~�S�����:S7b)���3\˟)�?w!lJ=���}~�v�Ӵ�~@������z�AO�k�����<�@wc�r���K��`���N+���k�8z��n�~E>�~�%r�����#��\h*�ʷ�� �/v��������y㪡j�KXW��G~��B΢���-���wy���,s.���ȃ�e�H�|���eh��ܢ�ͪ��>��k r�Ƿ��g�5�ۂ��/e {�� �CH�<�:�]>�Z�K�I�?��2,�����5r���0��<��|B �k����O��y�#�)v�@�)vٷ��!�!��@���Qt�t�?�x^m����ۡ�#�*�E�ـ����g<����c�om�ۿr������ے������d$��z�8���r�g�!)BW��� ��'����6"�O��C\���;>�����v�}�2�ku���g���jci��?Ŧ�I�y�͝ת�X\�uY�#���"��N��l�͈X��:�~æu�4��7�~?����b�+P��?�"�?�F����^�8�'`�X�<G���q綮������� )�_����=�Yi~\ֿ��?b��YA�+��j��lf�O�7*ƸQ�gn��4���;�E|���v ��^��z(��R� .ee:s���T�&�ӟ 6AX��������	�;"��]�k6SV������s�2����������2��μR@�9�@�`䠠B�W�ƍ+Ɇ���
������~�7W��>���7%����=#~8���O@?�ֻ~�����>g�9�~⇍x�7����g����w�s����1R�گ��;%K����~�ȑ�_:8LPh���v���5e�Lŏ$7���?7W�1�?y~�蟕�ۻ�L�Zl�Yh���(γ�_d�@+Zτ��uV�A�f���±d����u �&*~JՁ����a���,��̿V�g�sl��-��Z���&�������?#�?#��r���fbƉ���R���SHB9����
��[���$�q	�|>�/���@�����J�/`��@"��o+ ��Gj���e}K��7g��j���O���7��ⷶo ����]��!O=?�b�o��-D�=��l)��g���E�s" "��!��u�%,�?��*�����p���GG}�hG���)����B�K Z��o.�F9��ۊ�������?��F�>7X���*�#ߋ=�H����������G�[���_��$]����|��'��H�"K���_��F���2eV    ��� �u�(�e���[����B�Q�c��p��?���/;�����J�in�` z���[�@-�~�^o_�@�	�ӆ%L�r������>�Z�2�}���=�؅z~B�^}���`����N��  8�r���h�Pa9�!�-Y�[n6�LkS��,��/��t�)fD��0֜�����#C�������?��iq�ok�Ps=��߃�o0D���N<�K��Z�nN��u�{�n�AQ����ۻ���}o��_��=:����O��@*���@cPF���hv�?�k�uǊ��گ�?�&��Z����	��MG�\�]/�f��5��p�=��>�=�X��7�0��Ҹ����χt���n+�K�RX^�j�|Nv � �.�A�w�Q��^�����'�$(xQ�O⻂���"��s�/��v���ٮ^������i���0�?9��w�k'`����<\Wj/�}�oר���L�%�����\�ʤ����v�7��0�4�����X���&�G_6���'�`�^��O2��S��VPy��(���w#�+��J�ò��i���i�ݻ�_�蟟��[�����������2}Z*�מ/��U� �������[k:J���W�_[?��Nܗ�~*(�������oA��B�A����^�Wm�%�^	%_@ =�籿n��㩪�����S���3��x�����+�Y��f�����?.�$���V(����j����r8���ޘZ�`�����#o��5¡�R@şO���m���@~�q�\�_���x����(�s��\�w���o�N�_��eQ���w��E�$�P)��a�?Y��C���~��ւ�^j���\�U���q ��������Q/��k�1�R�S`@�垟6ih�5����ՠaՋ^�x���GD��J���C������F���Ξ➏���ޮ�|��p��7���@�c�{'�Z�6�߱?�v��)��u:֝�œj@����|�a�����+6���k�����/��:���Ө���iiG� ���A�����s�o��=@/9����-�]�]��%��F��'���G�`�*�r�7�6 |���3�>���������h ��3�������~��\�V.~��5�p�ʪZ%����X���Gʧ����'����� �L����h�>Wq7���?`=�$�u�_p�A���w�����}�.�=w~h5+c\���.˜�����w���U���uGϭ_�B�/���p� �z���3�ȳ~�\�9�����s��c���vnd(�R�b����v_�T���[���*�y��J���lk�X����gWN�^�ɺ8�qO7�`A=�׍��3�����E���K;�zN�v�[Ns�R�?@>[������(��Oo_���(���X�h��|^���~�O�(�p�~�[����n�'�Q�7X�r��>�$�#P�!&����J�"u.~�n�#Vqu�b�x���`�O�Ն/+�Kl��{Y�w�N�2�=�)~� �c��N���<�/L�O��Uhϩ? �k����?\enr�W~V��S[������y�)���N�
{���v0״�f�K��3n��{��9y�
��o���=߹�Ԋ�g�/��	>���.�1r��:<�-�����Ǿ";N������_kݥb}�������H��.,�eZ���|��\nJ:���r�4���%յt��ON�J��C������ ��I_�g�B ����S��ٷ���ٿ�����9���AW9�7\\�#�g�?6�@ �������OWn���T���?U�]L�����e��ϲ��5�r�g��t��?�[�A�������ɭ���w�����T��㿀{ �����\���[���^���|����1,�ܑ<����{��O�pxO*~��?�Y?�(�
w��%���N�6�#��J��V,�����?�������v{�� v�������?�C.�}q��n% f��ٿ�?�����X?��Ec�OȞ�����Y����/rg8P�gp] ��?F'�_]�)���Z�)<�����(�_r�>��<�skiSK*��۳Ș��~5�BPJ.g�˿� ���kULT�`�b���՚/I�N�T��+q�f���Y36��O}?h�� �[�O!z��RO��Y�!�p�O�aNC�����>����<���H(��V~~,w���Ĭ�M,��=�;��Ř����ռ��u��0�{�����hnN�%�AZ��W���;��zz�>�_��/����ſ�70_�j���hv
����������Ǉ�V����t�����1��N�7��|�Hٯ@kE�>�߼�:����jU����?zZ�[%���"��N���R�I��\����?����ݻU���lD�(���C�5U�5���<X�?��>�W�a�/0�p��z�͐��Z��zL�V�J�C�'뗱v����?���z'{��t+H��V��(�Okq������[�6鿎���?3W��	�.N^ll��ۿ	� ��:'�
�fM������~p��@S��}��59�ap���/N�3�Q�A�����Z����p�q�;"(���w�Ĉ���0��V�n��?����7�el�v����L�.��oz�G��A���{��g�\��3��������}������T����%��d *s�������/-"�%�g��K��(�Yʣ���-��??�_>�or��@}?�:�b�㼿���Z����!lv������W��������j)���`���z�aC�n��6�,��I�J�j�����u+j�������_���DP���?�VgfUc������Ó{����_�$����O��31��[Bw��\�\�����y��C��"�q�Y{���:�?= ��'(|�.Lw~�U�?���;;��
�3��Õ����p�')yk��O�ui.��d���5ڱ�٧�y�6C#.#0�� ��X�����D���+�;!6��R"���j�[����O�<�e�����w��;��r���d�#�C-�t�_��PZ%Oߟ���&��/<����ǟ'?<���<�?�=P�f@P�C5M��;k]�jl�� Ά_����ؿ (q��J?������`]Ğp�N�Z��$=z5C��y ��Җ;@l�����կ��AW�E��P���9��{&p��%�4W����՚UP�q�_�e��[P_@Hg����������A����$u6H��ߵ�_ 0��O�YD��mp�1L���ͣ�e�qJT���Y��������
r�+�V�w~C�	��Iş�,y
1@����k#����=�Ϗ��g"$���Õ���wOj��n����w�oL֟�4�q,��Y?x.��v���#,����u~������<���.q���|#*���l�z�w�� ɀ�F���v�~�JP��K����\`�r珕8��D���� �9X�?���HI��m���Q����X�t|8�O��^�N���6�������uO����|�����aM@(�<n��#o�Ě���&~�-��Ώ�!9#zf.���L�[��o���9���"��GM�{�U�G�J�d������8�f2�w+��w~h��]E ��% �}����|�����ޡ��ʨ���gZ�LV
����B����`M��
���T?��֗��M�n]�p珡���_�R�+@$\�C�e$���/�!K����v�]�l����.�ҿ;�r3��NHߟ�,���fg��3���sW��>�b��Y�;{��J}?��.��,1i�� _��m���MA=�4< ��r��`xn��;?~W���F���g��;���T�R�C
|7@�������;?L�Ѕp�'��Á���ﳖՀ�w~w�v��l�.%�Z��Q�ٿ5��;�F�O�����?��a	I��?    ��0�G>r��T�~�h����Os��{�zN����F��r��u����q~1�?� �ڝ���?���q���I���Q�ڕw�)�_��23���_����U��_^'������l��\8�g�Ŝ���:��˝��W����U�Ӵ08���Ec��&�?r�1_��������`K���;�O�߱~�8-����#mJ!�䣿�+|��u�'��_�W>~ݙ����WV>��x���^=���S�r���f[�Z�������n��������A��J���_�p�'��a�K���c�I�%�b=���?�oz���a<���/Z�e���ߨNW�G���7�{�K�?���/��Xp��V6����A<_��v�y�ߏ���OO�|��O���&��_��>�qdK?��?J~/�kx6x����_��Z���V8Z+�_��g�u]�52l0A!��	Mb������ �����=�_�@���3�	Q���{y�%.��G��k�3v��;�lq�o0���.�l�U���#v��*��r�����ג�L^��~
���Z��g���g��_\�zˇռ5[��/�NL8�sÕ��,������r����߷�=!y뤆��C����{������5v��|�>4/���.l`{z�\��TST�'O��k�+>�rN�@����#n�����ͿLص���?�����'p�?���������_��������������������������%�x��Hy���v"1����ͨK�Y6��F"��X]B�<��xf']$�aJO#F�3���[#��x���*鞝8S���#� d��s]K�j?w�֑����|�������#4 �i���g��#ߡ�A�8���<��2��h�U�F���<?�'KK/8����tR�?��$"��>]�m��_* ��[Kf�FȒ�uR�LR��������	-�q�'!�������ס��q���%�m*#<h[����o�`PK$�P3~�|��r�����o��@D��2<���Q� �׮�2��j�E���5����y�����/�9�g��̡hB�_�p��l���3�F��K�P���X�1I����s��u�2	5vJ�C���29�I�2[���� 	�G�z�%o���)����7���IJ���T{c��u�����Egm�c������`�vG�=��S����c��e�v�7�dS�o]l���_qYc@c����Ǫ�]$b����R��UG�\��GDF!/e�b��'~��;�f�x��Y�V�G���,�H)�����w�����+,���2� q�4��)#*������ @���;@y������m��=��ŇG����� ������UJ%��#�˄�<���)�mIV�y�_#�x���F��(�-W)�&@f��
)�K��l�qOb��B�9��\������䞄�5ܠ��� s�����,L*�Z�4_�&g0r*cP�oc>�ޓhka*�L�����;�X�#)�	���$�h�m�&?��R\q��?�}@�dO��[�������<���6����,���5�)�{9��!6��_6HN+��ogyN>TXZ6���������F
�$��^�a��X�Ӌ�_�V���[�����߀=�ٜ��?u;�?�0V�韔γ��{lw���Op����9�kO]�Ȥ�O�Aj��]���w=`�8��yd���Ofڤ�?��x-��_E,�����]�`\������5(�������O���_�r�bp�f�t��L5�5(�,���=���F��:&�񦯩1�d�a�����r�� Y^��fB�a��V�.)dE>�@
���_)~��f<����f�h�{M����kDP�����,���@j�N�=��ݘ������Ū��OgW�𿥜��[=�Xs��4��#���dR��j�ʝ�Ӯv�d2��S���,kݫ�f���n��/ �p`�Q�O&��l������Q$�|3i�Z)N�,h�o=�̈́�<,��o�i[�|��#�Cy����̛�n% �v��9���ׄ8���3q��s�
�!1��.�<w.��ﺳD��BV+���0ɾ�����p�K���c'#f�]N��O&!~��Y����W�ۚ-{��ﴄ��=ߏh]� #���sT���)��������� 3 ���'��Y�?�{��6�~��[��J�9���X��#�ղ��p�?##@��?R�έ`c�����Z8�w������Ħ���}(J����)�٭���ߊF����?D?DF2
��O�v�V�j0$����uhkI��d��N�L��]��N�[	�m�M���<MK�;�T�6n���Nqj�}�J�eD�0�`��?(n�ԡ[	ｳv��f�0�W���[�������6g�wO%#�70A���@�E��o[�Q���v���U�JT���9�;d�J�[�J��I�����@@ �����{T��ȩ�9����lN�\��5�~�)����v=��yO�!�_��l�p���tr��q��������6�x����D/��}+�稡g��q��WZ�T 6���Ѻ:���S�P�Nd�Ќ�ѧk{?���Z(�\��#`�F^�����ʌv�I�h������sH�+����Ϟ�jX���������yS��R;�ە~֪��߮T�5����{I�ZJR�3my���n ��P�WH>�^���o�=�5���o�_������v�Ђ�,���n���N'�T�4h!����YT���1C�����N�A�����Q�MP�#������B^�����`=P��N0?+_�>L�D��$@9h�K�����+��{hn&��ݟ�S�]��pdƙ��<"���%�����O-��il�n���/�m/���TX�]ocT�*A��[keZ����C��$kS�eX�W��/�Oϭ4���r��҉���ņ���V��RX��|�4*ky���w��+� �W�_���6�:�R�/ڧ%���Ce(���X2]�'~�4,�;������v|w;	 ���'?�^ӧ�<�@̠��s��]yt◃;����w��<�����`(��|���[�0x�<����e�G�s�w~����7~
@�5[#��d��s�r��d��.eS��j%�X��?����B�ʄ��������S����&�����1� ��$��i/X��	i��"��Q�pu�Kj���	���=Xu����GJ��T&���?��/��C�/��������<��t�E@���DT�����Y f��֣������$�:��8���:�9o'��&e
��஽�\׵��a@������u�?N�߈�ٹ�w`?����-ZHG@������9� 7�#/VH5��v2[y�
-?��$>]���ϰ������^rݻ�IifĎxnQyo=(wp����}[G�~��Κ,���p:��E; 4���?���g���_��W5��=������������2��I
��_o-7��ޟ�����?T�U}}+�?0��#�]�<��?�5w+D�{~;����.�8��d��v�Ji7����*�eM����z����=?*��+����L�����?Иs�**�	X�|`�
�����`^+�����Ξ�����G���| ����c�}I�x��v��
cJzO5�Y���j���k������p�W=��ʗ��eE�����������ώ��s�F� �p��4�C��~U�%��r�ov�a;���C�}���ا�-P�gC���1>��]�v��:�P��֎���#�[e���e.��o'2���ZC.��X�)l�������T�H��d��E¯��ݸYԓ{��#5n�O)w���'���}^s��;�(p�'��=e9�w����� )Mx_���Q;����@��f������a���Ê�����!�w�j+^ݗ@��� �����g���zϐn'�T���s�_�e�����m� �	  !x �?L�{���B͋��Mk[�_`���d����y	��߶#ZE3�?+ ��ٝ+�&'��$�g��+���/���5D=���ĝ?�^~C���q�N���C��I��n�K������O����!H����=��U;�{�"�����fk����O�(��i4h����P�* řz>�ǰ�K�v"����6��˿�v	��v�ï���E�r�Nh%O��R�G�޿�pKD�:��@��p ���� �W>ZE�dY�`�~�aY�Y�0�h��=R�WJ���z�ꌥJ�T���? �Nb�g��:�b�ݒ��턙������Oi��q����$�����C����m�^(�����)7�i��fv���Z����6��:���]U {�<�gH�����W�\�s�_�Ϻ�-i�y;!/���J]���Ƕ���vR�R����a�ֻ�\yu.���f��3���̊zl�:UI��l�����`U��|�s�.��R珿���|+���;�5��{���t��?_�N�v�D�z�h��i�Ŧ�����6�`P�'-W �<�͟v-�0d+�6���N�l. �8�H��|���`E��:l�2٨�/X��Q���B4�*�����y�/?��HIV�d�p��ȃ]�]����خX9s�oi�^�W>
�(�@���'���M}�Q��Z�ֵt��Snk�u��V3Q�6A��\���[�w��l8tn�)����N�^�u�s���؏6���Ċ�
��,�N�&��G�}ѳS�� r�z孑�������p,A�z���l?Jܓ+�n������(����G|���ayc�4p�T'� �h����+�}����hs���N�����AB��O<�M�i��?A��R��g�`f�~6T�U<�q�=���eN�l���N��+���F�^g}|��s���q���N����T������ʯ<6S�R�;FDۜ�g��lKA�nt��V?����q�X��c��[����Y[���Y�Ś����3�d4R���H�~4�nA+��h����uT+�on��S�+��	8�Z���Q�i��[7�S��A�.q���;;1|�g�6�~��[ο�7�9-'�ڑ2�3�ٲ�{�G�|h7��g�~U��[?
<��k �p�w�.�4���"bW�+Q����u�@����g�gL���y z��I��
H�Μ����
�����|��n���l�{��7jKaU<�������$s�K���|;q/ ��72�C|�]�y���\�,Z���P���D��;'����ZW~F��Tz���z��o'ӟ]���T�|[��DbE(~hpA>�ۿ�N��D6�� +�6\�bW�.���'/��n'S`ᕺ �p��3K���t:�e6��_6�o�p]�W��P�J�_}���턚�n2�Ꮾ�>!��ɴ��^+p w�`�</���?� i���z�'��E�Ӿ\����v��];<����wN~�i�v�T�N�� �Q���;m�S?�|\���q���:"�r�?XE�:"R�}^y��$n�������������(�U(�QS9h��b� !6{�� ���a����L1;`��yr�����Pz��}���c� #/4����M�\�z;�j�+�X;�?�ᔫ���A��5&�����l�\�P������rR�<������C�m��.:��)3��,yVZ]�~o?��e����u��5u�J����_`������r�W��n����
/ �B��� |���+�sn�
�9��l�b�|�����*w~�X�f�c��x�����M�Aj7���sx��S���\����Nq)�� ���?w�����
1��Y�a���]�ˮ�뤾������%�A0���ց�\���FF=�����5�����}`q�%f��o��Z#t�L�?����k~���Q�/��|�~3�NX� |R�X#Jw���8\��tuq�tA ��C7~=�hY�����=�w��l��-搸��G�X��#S��������_�	�����`8�m�w����?�1�,mJ�?�~��O��� �"��;�--�.�f�K��Z���������W��G.c����FOG���V��ůe[�ҹ�KkV[pc��Ieϼ�J���`P����w?��]����ݟ�󋭈�)���?�}�%@E� �?[�~��uU��M>뷧��!
���������܋����|<j��v��|��>�\��ԔlEX���ȝ.K���`\�v��E�����a��sF� ��m�}�}��&IS�g������vXҘ��I88�|�kMM�s��v�m����F[]�������{�c��� �1ꍿ�z9s�۾�n�������O�����������������/�o�����bR�      �     x�m�KkA��3���@BV�븞4��(H�K;8��I��A����*!!�f�UUf��1P�8�9���ޛm@��v�8��K��f͞�+zG�q|zV�##/��p��P�#�#S��o�0S�`6�G�GzS�*�ۦ�S�R�9$тk��Z��N�xTGD�&�.eff�hł��pL�Щ+m���>�yj���5�6	=�$O~���ta�uQ���;��Uj�T<KϾs�e���?�|M��XKO�x��Е�>��FL!$�+}���~Z�      �   �   x�%��N�0E�3_1_ u�^��Ă����a3M&�U�{���RwGW:G�;D!���M�Va\?�on�3=��б�q��=5�'7e��,��S��)Z%$z��n��Y���|��x ���pa�!�0+�1���2'�Tp�4h���P{����7^Y�l��!�����'4{�pWe]�8{n�bO��͡�QS>IBs���jUN�XiU�cO�}�Z��'D���V�      �      x�3�t��O�2���/Q 3c���� G��      �   �   x�e�M
�0�u�)r�#��+R�ݸ�괝6Mhoo� M}ˏ�c���9�$Y�#ky�{'|GE>P�:�*iD��1��gnpr��BnӪ�c��c%���=�4֤
k�k�CR�,�ň���OY�vq|��?}GZS3{�Ȥ�t����;���pH`      �   @  x�m�ے�0����t ��)���%�{�xc��I`y�*l	8�7���,�@��\��Rޏ�M���
]�|C����m>-���v��sj�!|CMN�	:4{��J�R�����2�b�{�>��Q���V��)�J9����� ~��������!���\R?��f�.rM�2��c�`�S�ij����՚.]>���t�N��Q[��+�LU����A�DU�����;�s7͉�Y���m�����3r�Gt�>�$]v�e�R�k�}�nM��'���wX���|��x�c��Jn�lщ`+2�R͍�`~�s:�\ڍ�q��k����l/��Զ0��z��a]X��fJ��r��9�:��>��:�\֥�� f�HN��7,�W>���Ԟp̳/�ݱ�z�R7�=']����!q�rB�9)�`�s+��j،�C�V[��/~3���<^�3uW4�x�s��v4�ʩV��sf��+" �>�g�R�W�m�<>�	��k��{�FnCj�y:���!|��-��9�v�����/�s��ּ�OI��t{z^;HO�)��!�_�<      �      x������ � �      �   �   x�}�1�0E��)8�w���`d��f!	1	�`���#��_�����U�~� �e��'u6	�p�H�Qp�Q�D��} ���vt8��%�Т��
-�9��4�`2�]���w�Ql��B׈�)h��Yc���ɮp^t���t�{�P��(�)=��t*"_���z��spl��o�� � �6m6      �      x��}�rI��3�+�c�����oq���VmY�v�fm^��h	-�ɑi�f�e�l�gD$@ "�ь5UreF��_�q���8����i}��8}��V��n�z�}����4mW�M�w��ꗇ�����i��e�7���n���O�_V�N�L�O7�j��Brmq=�nX�ŗ���Ot��O�֢��^1�LԘk�2V�$�̕"�ܰ�3"��I^��I�Xl�3�\	��#9c!��S������ΉP�/����c������/?��8������ˉ���u��}��yw���C�P�}���_6O�M��W?OߞW�M����9���Rs<pd(Q�'��P��%Zz�9K6��ft.��?3$�"Hh����ҳTL���Y�Y�X���k6�EN����/�u���|\���i�����������#�v�=>��V�����3��F��F�AD^����U2PX��2zta��E�U��\1媩��M�tylr��>Y�,��0-.��]��o��iZ1������^����i�_z��ZF�]7�*=�y�4}���v�����U�w�W�m�s�4��f�O�[�6+��ӧ����+���d�tթ(_B)E��(�9Ay�ߌfΗȝ���%�qp�&/�@�\%��Enl��[��ЈH>9=[���Iu���[�q]u����##���~\��fg^I�Bq������W����(�i�B��u��\0��GW*H��Y̯crqϰ�B[�3͌�U�dA�r�zRQ琤.�5���s\/�U+^�"IH~i�Sձ��_���X�}��a�e�mV?NOO�_��CK�9��J�!��(?u��<k]�B�G����U���E�d�"�lvX�6,8��)hƵ��7�r���D�_�.�i�T��%�t�� ���C���\�.69Rs��A�#*k����빑I�ޮ�A�dr���<��EH�']8�������̽�-������u�d�G
N�.ǫ�e����L����T���/ut!C������v<��GG�rj���}Z� ˺m��G<��~7m�8%!��r(��B�nZ�i7=�-Kj)��,��+���H�X�V�0�xWI�T�C}vUWM��P�rƬ�RT�a��j�9�~��Cj���	�!�P���S���\�t����&W|F�Oa�2X���!��	2�4�AZd��<��kp�Y�C��s�!��K�Ț甚,|������F6�P>;���;�52��#,@[��q/`0�k[���������9E!Fu��e��:m�S�
 "Ӷ'J._� �i9��+�3�\�3�)X�ƌx͢^%�O[�Ax�f��x�����r���S��4���h�16�в���&��~s�C��Esp�	.x7��>��Q��~�?�V������Ϣ3|��I�+Ϫ�P	�A%RI=\۬�m�"y��U�ԐC�x!��I.f�+y��:��p,���{\>�gp<�G%9T�,���p]�\]��[&L0X��@r�vU݋���$�s��/����Lʗ_��恺²���O�_�r��p1!ip���)� �͉
שc���u	ٖ��ivD�rS��2甚<J�FH�)X���]�a� ���^K������K��]����,Lb�k����Cn�Qڶ�<�K���E��p��A��I�������:*g���B|w~�axH�h��/�� ��O�o�u�<�+�*���i�eZ��?=<x�O�[�R�z*ŧ��x3��N�3"w ��jD@�-RgpQh�y��܈m�ǖ�bv��`��jcD����)�_	 i]LT������*0����i2)F��ܕ"b��;i��C��å��I�x>+ �����ro=O������^����*w�p�Tlx�J����\8s%3�FH���C,,�E�ɪg�fxT���)�
��z^�ܬFx:�v}�2�����e*�8�.)����՛Q���}��c=��o��:�o�,ou�9R��ש���-;�����~O%'3����Μ �ϛ\ I~�!��W*#��{Ed.�06���у�&���i����|�5��L���"h��������W�Q7:�J�aV������p��<�gQU#��V��$�O3UX�<�r�3e��E 3��x=�k��v���S���[�9���ȼ�əUr��_z�=�ly���y�MGj�m�/ϻg@���}���f��0��u�è�?�����]�'��<(<�i�t	�(8`��@g"���������A����$ȥuM~i�C�== m=ޓa��_����L����ఏ�}>�2R��k꣘q��,��sL�b����P�^��>�N��L���VnE��:Pvwd�	�C�-�;$y��ptK%.�Bi��K�:�пM���Nw�8��ѯ�ZW�C�xsI���ə�G���3�xO�/�^��]�j�����>u
��VH�,�����"�\"M+��){��ۋT�ш!�6�\xȮ�Ÿ	<;��a�X�H�����I ����fKy�-��vz�<l���/s�� ��R��ve�����"C�JC&��@6`u9y��)�"���2���#�ۢ}���7� we�&qPS2}�v}�1>�^�m8^��ƥ�;C��(��16��{�����tO��ɸ+!���zy�v4r<��U���4�L��F��#�kr� ���h�(q��I��M�V��AQa��鹮ri���KG�i���a������/ϫ�y?�x�Kw1\p�k���PS!u��Kp[Nav�H�*��S��PA�2�Qy�P+8QQq��]���P��ո���ʙ��/���#1����ټ~X�������	K_�{�J�hb�0c�a*��:z.�������\%��\yp@��m)d*:��P,�q���5�����]/�ж���n0����@�gT������q���~.����at��+#� sD��a��b��Ha��&HQ$5�N*�C��݂W��F������%s$�{�r��,2�X��n���+5և"G\�Hy��N#!��C�9�Z�OӬ�,s}7}�?����Ư7���荊�!���D�,
^l��j"s�����uQ��}���� �8ʜ�&��9	(�LƦ��aԸ�G<,��`CJ$g}meR���Br�Tc 1 �k�:� yu����l����N<|�ҧ17i���������Î:�����&�!�2� ������_���:2�\��m�?M ���A#�r���:eR ����{�C�RD�r�@Q0�-�NoE�v�l�X����xǬ\*�p"��g�V�\&
��/D��&[�j<1P���k@<RH����Q]��L��꼯��>��9>��YB������U�o7s4�$�7{Mn?
�^���p��O�u����#
0��[���#�8g{�A+�2 �#�5��5����,�K��!/�\��r`\��M�ܧR�����z�?�+k�ڰ��8��$���sF*n�Λ�����Y�#�fj�ր��2F,�Ai���=�KP�q=�c����YU������%�ҭ=G#��=f����D��kU���G¤ߌ�m��%�z{��܃m
�Mk�R�s��up�֌�9��j#V���PX-@�:4��φ�5����� ���᧖x����@��HX۵�CXV!��A"�׺2cd������Ran>�w� �p����������	�p8C|��J/��hv7H�I�X�}tr�WU%.gO�	����r����#�A���!X�t�
����&����u\__�txH���÷��+�i�W��"8֝0�.�&���ho�� }�en*(�ux@Ѡ�C�� U�*3�!YS���Y�2�'�c�����'mh{
T��K~� �r0�����H6�0���/)���
�
F�!��@R��Q�X�9�F�S�Ԉ�&g����V��p7��G�r���y�[4�8w�*=��ۭ�O�s�_!����|��~�4bj��=^�I<�^v�ρ������kE�x�����@UMJ�OT    ,�,�E�������"�q}w��r$q��=�>�S�
��z�+��#-�i���C�U͝� ]U���嚜��6�+�s>��Z,6Zkf6�o�
$-_Z�@u#`�)NT>Y=�I��><���[��}��P��7�n�"�4��n5 Lc,������i�i�
X�47S�N%Z��5�
m�^V�Lr�_ P�� �`�r��4)Jl���ן�U�b�_v����k���4vd�����b��6��S���-Cӈ&(*�T�jrFfCn�-CÃcNUx����G�o L�@8cܟ����U�ϵs��?Hc��'F1�����i�lW���y��x�X�w���~w�aC#�̫:xON��G9�#��ɀ��Os/ZIM賛���D�]�$��p��e<Q��{$��'D T���ʏ�G�t^x��$	OP����G�������}L�d�*?r��1*�Z�NYm�F��z��\H<59 �G.�z�<]j)�!^ ��g���f2��A������ιT�(]ν���ϴ����Z���u�?����T��L��j
P{T��\��t{u�`�6`w;x�ȚXS��cl�� �[�dN*rGԦ_��I���>[�X�X�rb�A7�dc�G���:(��.xY#�ߘr��n8� $rX�s��	|�"U�sX�0b�$��~:Rv�?PrAB\��/N�.�,jU�\�O� ��6���iN1�u��bI��k{~e�����*�|���	�g�$K��a���͵.}�Ӱ��2�1��>n��(��mYl��������]K\(8E^m���%4�ʻ0�JSG���Fd���i� f�3���[�볳�7�����I��)�^Z�L��ϻ�q��Ȅ����d���|�U�����;'sT9�N�%K����3vy�"8_��"5� w̎Q��@Mk!O�f��{ˊ���������旇�<�p�P�ߦxA���"�ȴ{���HWNf&4�{XЧf@lҵ\��Q%�#r��`�_i
`��iz��R��rE�V/��2���,��U:�Q)���>�SDƛP)M�,����HM�8g4�x�6�E?��� Z.ck�b��6`qN��Kx�yTm��%�e,��ȑHa~��wp�l�>?�v�h��O:U���d��8��F�����H�Ʉ��=ȄQmXS:� �2	MXU,�靓g�$G`i�QE�= ���H`2��̟�xؔ+�����>lJx��8�2l�]�%/�<Lz��N�<��_6ww�J�����$�az�Y������/\��!�
8��qnU;K�
V+^���Өb�rkP|��W�<ʻڂKEK#�$�W��K�U��D}�v� Zf��r��Xgk��G��r���t$�����Y�&�Ӑ�_������>�ޓ�lo�'h������*~���픶�C/t�Y#��'G���˶ƿ�Q�PB��b��ck�P�U^�=� �`M�;ÓPF���,�^��c������fm���vexP2Y�]�A�z�=ђQ4>;�;�$�Jq�7�p�&U����R�P�@�@k<,Us�_��闗7}���~���]�?7�/|y௫�@�W@�H �Vi�n&%?3�`�ƛ^Sw`@x9����*�m1CG���QߦpM��-�_kW�߽���Vh5FF ����O����3~a;��V�k���P=�(y�j�h[N�I�$�������z�6%��k$��̚E����׍�%�B�c�Y��G[�����^�����lJ57q�����q:�,=�6N�o׻�_>��o�^�Y���w�*�D\��{f�"�C
4��M-\[�$���a;J��Ø��h��r4��f�`T%�[a$7\@�=�%���m��i��;�ڤ���ͧd��2fͭ���G����7�
⺓ i'���[	�O��T�oQ�Q��4_��K�ɑ���J/rXa��0�ʶ�g�P<v�!3�D�M~i�3F�:�H�6��|��׿�D���M�8�Ͳ�h@;�7���@6y�d�*>	كm�dy�Ud���kJÏS̆@a+�(%y�u�<`;�5�}g�^X�$��~n���g������8�����ի��q)Dƽr�8�A��s1�VͲ;��89S���ahC�Kk�3��%Q�on��� SN��X�F��sBS�R>?���&�e�ȩ�N+��];5���?��jm�XZ�3�Z�3���IM��l��7�:��6���캰�Ġ>���K�W\�2@�q�r5"F�\s�S������V�u�	/���^\�j�=:�=_9�=����n�t�F��*T9�������3S,���ŧٽ��/g/M,x��ۋT�o�U��y	|TJ^��K�AД}hr��>��󉖅gWg������>�_����f�3� q�����/=ߩj�h[��t<?z��x��V%��'�UQ�,"��q��$*���P|-tGU���\LC�&��]��[v� �.�����?=�g��~�m`xy�=6�#��9���}�ms��W"w�F'
����}��r�B�w	�$�Fg�Hs0���FQ���@�o�ț�`;��.�*������Egn^�_~���w+�ne�����8-�U���B�2H$�	8\ 'i�
�h�z����K�`���R�U9���M!+X,+����D6�	*�O��k843 �.��Exlb����N�k\�����S��W ��jT��+�L3|)�L˴c� �;�<8��YM6f'�P�'�4T�潲���lu!��_T;#�\oL�; �eP_ǜ���V�~���3�fG�.<�C��ٹ����k��Zw��ơdLI�*�rk��yPE�aTUkdtc W{MD[ʐ3gA@CS����I��8��b,c�����Ojb �����������T��I.ۤ �Wj�
�A�<"m����v���C�� ݸ���H�ܴ�QIG��2�k)�d��|n[#X���Z,藁��!��?���bt��'�dp�zeP述/��dA�׉��j�c<���L�l�s ���}+Ǡ�ʀF�iG���%E�$���ň�m�u$VT2�շ�-�nO)�H�8X<xj;i����\0���<�ڟ�J�jdѼ!��+�/icL��$-��#�����%�R�i{c��Ƀ��/|r9�HϜ�%����0Hڣ'�x��Tب�.���7�ֻǳ��ߟ�-�������u�p,�O���;�j�hb���"��/ �mߋ�����$:�wm'�e�H�L=���`(�0�&��
vkrB�pR%:�d���zG�@;8����[�h�'�
C�I3|6�ڜ
��(56������!�� 0��9M!���)3k�D��]Hp�.��F��>=�/�����쀜6��3�>�T�����7�#3S��Jfe�����ӹtTÉ�#�1��2�	�
'���Ŝ@.����ԑ�Yۼ*;��̣��8h1vX�I�h��xvt����:F����<)�F�����P=�c��p���u�L�d�?��W���o�?��@�(�	iKҼ��=r�xU2j�ίZ��.C��¼RmR�xǳ+H=QU02֘���Q���}�^�mV���i���v�L�a|/M8"��V�>~�"����e��p.ϙ�?E�F���h��'�EHz��})9�vR�,��X�[�2a�@��N�t́v�?mJ5�&������T��t�?+�t7�|�QyP��K��A�y�������q!�I���z,��Ne�[��x,�����h��Է��͖XY�4&Sh[� �S�`rz��A�� �X�hJ̌���aKmr{��.G��w�q�L+�$��7�.	ZK&B���H:����� K0�Lo�[�7A�;ho ]����Z9
$�����yEn�=��" �>!m�+-E�Tn�2�g<"=�S7*:�N1c���[�j��6�!�w��ICP�u��U����Hܧ��M~i�3^��^�yz�9[���l |  &:�*���s�Rx/Be�vrN@����'�x��Yp��'UQ��/��m(�wEd�́�!U���h����
b���\�^}u������c?��G�m�Hp��ݭ��%�|�-�('$�$<�9g)��6���:͟Z-�&Uz(_4���x��,	N^X)�h��hN������OvR%�/���6Gx�!�}��K��`0m�?Ӿ8$%;"��*���H��j3vj�L��:7�ns�ϗ��N[�"�h:�4��ue"��Z����6�5���#�j
��k����x:$X{T�Y -�w܀�	|�!o��;??|@��o�E���&�Ų[���P�-&�A��Ѥ����e�/�wB�5�=).;�����"��C�>�fy��N\�~'��������e� ����u��Y�w�݅�!�+�w�購�wI1߫qlI1�߬F N�}��IrP��V��5�i�˚e�	i4����S�2�D���� �D�	b���Z��L㙍����!�����i5O���-�Qx*��9���=��><t��Oc�����C���m}0ݨ��2/铞&��Ƞ�Axʣ��i�Bh#�*�,aȣ� �H��� 3�6���eWo��u�0��|`$fU(R���V%(lL_q:���<���Bgh#ՏDZ�Ҫ��H�t#Ӹ>j`c\e�~���k�e-0u:�m���spN���7-ܞ��HV/� Y	���0}����o 
��$�x�s1.��-:!#��G}o0��[9?�R`{�~ ���j��wK˿� +d����]�)����*�i!�����|��2 ԨD������]��RW�NHx�גΐ���V|<���	<���d=y�Y ;���u���G�6���$ 똴G	���ȶ�m��R�$w�m}4����Gr�3k���=��$��w��߭��=_�9�������qˆb�/f�����(j���"�M{�5��ʞ��r�u�YV�J���T�˹;�j�ֳ��B�Y�Q$bv�=0ǳ럩d���y���iP�����9���[^ۤ��*�ecw�4��㩑��&�R�*�9���~ΖFJ�cҁFp[����la�C����d����}�ч���?���k�MU      �   �  x�M�;jAc�aLOgn�C878��#��@���S�ֻ��Wk�p���\=�K��!1#����\G��tX�C��t�@��D�:,�a�cE���.�Z������G����UJd�Y�DV�tX�$d�P%���Ȉ,ޥJ��z	$���#y$,�S��7!#%R�$,����@bHX 1$,�X9\	n��~�W@�E�CH�D�-�e�0b��% a����@�HX �
HX$1�$J !��-����,n�F�L#����@by�y�X`���@�R����Y�#C��E�D��J�[j�N�.�(��%�-���@�:#��Y,�cQ"?�Pj�R��c7!#%2R#F,0b����3l�ῡ:,�a���q(�O��{o#X��=F,0b��Z`���}�J-Pj�R���&���;�?������      �   D   x�s��+I�KW0�L�r���8��lc�d8ۄ3�K�3��75'�$�3�˽4��D�#��8�3�+F��� �t�      �   /  x�U�OO�@���C�_i{�Q�����xY芋m!]֤~z���p�߾�23+�B��z9;��J@�yZ�6�s��,���}����uK�H�n����h<GZO��0�6�P��K>���:Z�ɓ��bߐ%��6�v$����*���@Δ�"�	��݉�H���h@���H�@���O#�e0��A����Rbt��B�o�J���ŤiC�X�w.Gb��C
��h)�.��r!*<_o��
���^nmi�W8�4�����P����F����~&mU��\蹀gN4�����6˲�嬸      �   =   x�.�I�M�SPSp�/J�,J��L�
I�+��R���2�K��!�8�"p�I\1z\\\ ���      �   7  x��VMo�6=ӿ���:!)ٱ��.��#Ia�e���+Fb��"Y���3�l�v��
<�73o�Iޛ� l�(�5��4�o{ݺ�7L	����\(����V l�f��9`5���������
r��uq������?�k��$��$�+�����Σ��D����x�G+�vt��'c��J��}�<*�˝.T<1���M�#!n�=��Q�R³�L��nM�"I�d��;h=��kk �2��o .���Q�S� �b�B�h�4�� �1�Y���@CmhUAOw�����՘bd_3E*��O��1%�������7d�R��y��R��A<�7t�S.R�=&2;��� ��0��Y<?s	y7�25�N�ǲ��h )C�茸ȵPYȱ����;��ZCW��1��a����ˠ1�|�1�hk���P��7P�P{�rkp7��"q'����خ�A�'��_?>}y~�0�!縏j����x@�z	���:
�+��Y�5ׅ�6��Ih|���y^:R�J���\\�4ž���ӕ=ִ`���I�O�%]����hL�b����\;�i*}���4���-%AϢ`�UstA��6�L���t���ߺ����>Ac�Ҡ�蝮U�+�F�+�)� Ms��oO �(� E�sg��шr9������~�+N���4z4n1.p~�L�P����S-/��,q [O��}���XL�߳_.�c9�z_SD�	�zJ�8z��1��� |�m�gx�b��	�R�}�,��K2x�s4�5�iɄ����X����}6	�� /��� ٭����l����      �   8   x�KL���S@���F&)i�&ff)��i)F�i��F�I���Ii�@5\1z\\\ �/      �   �   x�5���@E��W�+q)qa4$&�tS`D`(����)wV��T�� ��VW=�T,����zVyk�K�2�Q�5<`G�o��1��Eo��m~N�dQ+�8���i���Ph��D�����O�^ �֔\"�pf��j�ǌA��f��MW-R�}�(,x� ���HP      �   �   x�U��j�0E�3_�h�(�&[Sh��(���f�3�#ۢ��Qh�����H��,��/	�OJ�(Wθ�#��nN�?<�\�e>�A���0q`|�7m����:�ߥ� Ώ2H0�����
N�"�9H@�P�Y���'���yD���^��'�v)���^�[�we��~Iέ�s�2��ܖ��]-F��Oh	��f}~���H��r�y��u�_ψ�Ud�      �      x��\�rI�=��"O=�,��o��"�Z#�Ǭ��Q"�$���a��|��ؼ� �B	�F������=�HJi��O���~0�$�qK���XAy��9�C�>;m�
Z�Q�ye8��;Ց��5w�NS&(�d�g�GYǇ�$m<��������w�d�������ü��,~�]��������q�ޮ�ӯ���N���낒?��ς��'� Z���\��CrLk֯�%˴r��l�w��Y;;�d�STeS��0Ņ�,4;|��S��fg2/rd��I2Ƣo�?�~��Z�����ӫ�r��������a�E��W_6�%ӄp�)~.��*>���P��\�v�����vN�Y��<��]jU>s�n�M�'#Ş��$6���~n��3�����fZ}���ͧ�����%��}�!%�C�"E��QIu}�A���^Ԙ�G"��r!p�h5g�d�F4���u�;��X��8?E6%�l�~n��!F�J�m�����q���r���o�{��j�p��^�Sw+�<��WiH����;�C���=`�P*�9�1�R�3��u���
B�� rN���4j�y;�Z%�`!����&�4����֯!%�6w'�\?l����绻���o�����ֆu�=�8Q�	�]��H�k���1Ag*x�<�G��6O�u�1���(g2�/��ax�Y�q���s��x�׫�	Y���\�e��ZnS���o�zU�"�J1��>s�=������D3f�c�$�����r��k-��i��3dNhv����GF�i���H���2�(p�n��VZ�8�ǟ[���.���t���Bf��T��9�fy���@�M\4/1b�`b�Wut�,�b2�o�mnW�Q�b����)9Ÿ��5�%� �tM6F8<�a�	5��$����2J�8��*��xN�~n��%�x���?���C�{�h�����w�w���v^�}^���\r~"�d����������G�3���S�����k��R�R�N.0N�K����st��pЇ���31�f?�~��]��a�h�c/*L-ן���0<��/�˾�㊫|J��e.3 ��i4�� '\j$8S���J�ڃ�D	/h��"5��RYi;RLPT��S���,�t�p�"�.��b5�Ϭ_��/¼~ܬk
6�}X�nv�_�����qaT=&�\��:���ve��R����0���@a�1�`<���#��aw�&�p�ٙ���Y;�;�3����/�A�x����v���~^p�0�����a���Nr-�Ғ�I�<z) ��8�SPż�ސ�*��ݘ8��'(p25�a"�lI���1&�K��Ai�&��k��[��I,�oP�>�����W+Խ��Y��8�r�<vzpؠ��p���T��8�m�yʙG0� �r
f�A�W�3}���
T�;V=z�q?>�E�1��j?�~��^|�m�ˇ��;�P��]1i% J���Տ+(	��1�e���[��Q1�$t���$%H$ʛ����^�Rx�b��	 �ȰKO�0��|����W�"�����y
�����+�#��}��j�����>��|��=tY�$q��=���	��U��!f��w��Ap�kUP+4�t�Hn��BQk�'M=�M� �4�䵪wn��!!o��������rz���2�R�]ޯ������Υ�E��yA�_�O�F���,�^()" �O��R��3�V'�g)W}�DҶPʮ�-C�߲�����0�_�6%����.餂e|��������j�ٮ��̻�q�~��>�&q��n���D��|�pɃ��\b45���j.Q���*]�(��Д{�ײ|jb���d-��ÎP1JP�v�*y����'� �@�ZQϬ_%Qww��=�w�Q7�_����]}A^�m����7�����W��a�nN����}�";K��9�Bi(��ㅟ"+b�>~��S20�{K���|�Q�SF����I�0$�~|bZX��8���EM�x^�����k�,��z��ؗ�X�������$�����|��s� �h-�-'ݫ�K����lu�$�xf��DeSC�#�E(�_�sw)����@5�_]{|��������$|�*U��[�">[�%����INZ��P"f4���A~yN%��փ4�>��)���N�A:!Gl���-��D�:�T��!���P��i������Dy���FW�;�~$��e���[}Z�^ ���>o&?Bh���9̿ŧ��P�5�{�d�e�$T�Z�L,K���`���.�p���P#m{!�@�F�a
b1�!�D�~l�s�W��O�������|��,j����R�&�ve�RKHT{"��'�e�<�BH<�}r8@tJ��Jy��h�{�<PV����E���DV!�N�=S�i@�8?3�[�a������G�7��͠	�˻���׍�R馷��?�CHUTB<�����^����F��I�{Ċ�0��߸:�ʢ"w 0�G& ��J6��(��8�d��QK���lu�ƪQ%Q)"m]E�s�WǱE����r�i��_�|z�ܛ�?�q�w�X���suM4b���?���˸�䂱]�!���t��������v"rʨw���-iAd����38I�G륏1{T	?@�L;������b�n��yz��ܧ�u�O�6������������Gޑ�I��.�b�B͙~�`�!'b�~�R�6O2]�fIi�5�ƷAb�D�i0�50�8�)5���K��v�s��.[���w�O�e)p���ߌ
B����Dw�/�yyn�'^@�	72	|6��b��_�s��1î˃�wڞQ�4�`�������Oׯ�ыw�����7���.�~�i�O�.�z�����w�h�T�f���"]�����dUڻ%�X���N���ˎKӎ׾�����#����~n�*[�"�f"H���XC��R'�&�,8
�<TH���&�٠L5[�E�W��q�Q�?��A�1����$|W��V
�w�r���&^"o�s�W��& �/����oZ����Ɣ<�����~���rQ"���K���(�v�(/_ʄV8��>`CrT,�P���&����2��v�<m�wRr:��"M�<�f׈0o���]HG�D�fZ�u������)e��i�����_��D��'��.��y�b�q��=���@R���zz�y�L�s�~�I��.k](��C��qd3g�|uQ�����a�- �
Å����=ov</��d�Ι��fyjR����N�]�Z^�+(���t��"r���n6_V���8�c���^\��A�ETS���e��y��~�e�5g)b��*cEi���HDƐ+�����v�s�R�D��VT����W�ؚ�֯M
��u�G��l����ů���~�?�x9��#Y���>Tb��b5��(x�y?�:�G�1m��ʄ����~L�iQ�Ho�x�f�1vI@=E�D�u��w��1�x_��'��o��YO�R�[ �Nt����9͜�G�]��Jtp�؈�o�<<zi�@�٥T�/ܳ�U���A����^��a+#I��!ʐHf����9�~��\�s��.AH����]�a�y�q�m	��K�6�.jE�\\tnbN�1�b�����K��?��Îj
טI�zQ�P��mb�T7�d$��?=���+bɮ/����V_>l�T'������ C�=�5��X_��ۑV����4P��6�.=>AL���"N��4���������5�!��"5@0%B�@fnBKC;���5�H�����jyzM�$����΢}��2����.b�ι���{Q`,=��{_�V�hd�������~��2�B��ڽSZFǓl�s�W�@�Vww���o�c�H (}y7��^3U��,�m$����oG3Qxjp�@YS�c� �#�L����r.�vHh|4�X;�����q~�P��Juk߹�����������fs7��	��t7�i��V�M���� �	  ����6�!e���@Si-���n�.$���х˷[J�6�wM�� ,�N�vU����#h�����%��s�W�'�0�9���©�ҋJS����f��0sPM�u'x``؀d9��u`��)'�!{�����G{Й����V��qm��	5ީ��@�m<�~���Mq�����Oz��&��4����Ur'}`#�.�*���%àz�v̳dRC`	�q��C���&���gPZ��alOs!���2���ve��=���F�x=���+��=�Wo��>H�8��4������|6�K �E���W *�%e���^�4�f�R�*�hZ�Ơ���fJ�AY�{ӀM!c:�2<�)h~f��"��ߖ�/�k����v�M��^�שuĴ�|B_�k�2�>(��r�X.;�3��K����uP��8�v�uA��nv�4nN�@�Np� ���-������ϭ_�a�P�j6�~�����¾�;�/Hn#D@�� (%�LdP�)�~j�
� �'I0G�N�e{1��|�n��)3�̿�Je�p��[�:E/�������
e=����*H�A�"dV���C�37Z�Vf�\��SQ;BȼMm�D3ԘA%�=Ԟ��*�^0�VS|w�X�2ZBP �$[��u���'�����s�W:]f�_6��.׏ˇ�G�9b;��>�9"YԱ��1�~t�����O�n)��8˹�k��'%��iM�9����*C�?}����uNlq����v}ҷ���o�S��<,�Ȫ��'Y5|#Ș0\��3,Jر�U��5�l-i3p͜�#�n?��%gH�WuGU�-�5;04+�j�s�Um��Mw�uPʻE�w���k]-~�w�Ӈ��M�.SPM����1Ցo�e9�ۏ����r�'�����ڡ٭�ѝs���<�e�w�eB��!9��l��5K)Ħ�xϙ����d�I
>����3��{���<�-��q�ܫB?��믌�,^���oW�����ۮP�#���~��|=��>A�j�`�P����]��13%)x���QM���Mz���ы$�ؑp�j��k�~�.������ ˌ��`�;�2���GQ�?�~�o��=Q$5
���D�M�_���oKӅV�	M�$��#���C�1�;Qu�ٕͰ���U�S���[��=�fbTΦKά_}c���͖�tH�W���fշ�N\��Å7%��|���}8�rb�ь�X���}&*L��CCy�m�H�6���Yeғ�V�L6�g��7Sd(�:�Sp^�4ɲ�T��
F�� pn�
� �����f�=���	��}
����S;؁�x<[76gJ�s�e�`c!;$�cs'�A(���-'j``�x��R�� �S@=:zc�������^eX����Źe��~h�z<��1s.���s�_�,q���N��Y��~9���\��YS����r��]^RF/T謆h��!aJ?���'�'�Q��ܬov��P�N괟�
�
� -J����J�F���+M3�w������xK�a/��?p�/e���z�}�y<�����}���x��HҦ	"ڶ�}���UG�I��H�*�鸈ʙ"�W�fw�b:���m��wƞ�_�	j����3����]ۍT��2�Q�Nm���hC�4��[D£�7!�+77`�r��4��b��~���qe�&֦B��mn	�$akK|�Ld�a�?���W�n�G/�<}y��Ŧ�~��W�FK��o�㕭���Å�+*��xSl���1�U!o,h�b�@/b�� eKCJ�-V���5��� �B;`Z?��p�@(�&�έ_G� ���ʤ
OV���Ʃ������]L溳uoA�C�1 Q�cdP�=b��FEy�#.ʋ]z/~��g���Np5�'�2�\t�'�Kmć�n�c�_�����u0��{� ?
�V�c���EO���8��XP�1A�e���@��`��}0��_=���ݦ�`���{�n���B�t=R�Ƿ#k~qǵ�hh)�������̅�#��磊�c[[O��ZbQP��+�E�/[H����)�d�s�4p0K�xgmb͈C	v
4(�&����Uy�a��x��;�����W=���
l�{F���0
�*�y���#'^_�P��^9i7(�	��HBqf�|������'��m��2`^;��<SpXdP��O��֯�&��/.�̅nww�SM������+��zg~�M49�����V�"KH�E��+�����4��j�zأ6��Y%��?&��#��HcZظ�znv he����к�+�Y�J����E�mW�����Z}"�X��������G��B����r�b��4���t)в�y��ڇ��w	F�����>��FlYz����xE-���3����;�Xk}��C����|�ݑ�O��7��+����!1���z�,���=�T��A��c�qu�N��{���&�c����2Ĥ�o�.��^������!;      �   o   x�=�;
1���U���T�B���$W����X�{��s�vUm���fv�]�ۉ/fU������9Ԃ�]�ݗO�Fr��\[�&l�SP�<2���>3ջ� �& ~B�$�      �      x������ � �      �   �  x��V���6=�_���^������"@�i���\F%є(��Vp��o({-��"Yx�]����̼�}��$�����Uݒ����FI,���I��Ćՠ�W`���B�,#S*�n
L��#��Y+�3虜&��)�w��ʍJ�̀�w!J_]?��8���ȞIse�\A�>߇���a��,/ʳ���G����/�@\��KqN�����40b��������DFV,ḑ��8a{9���4����A��+(w�+�lj�K%�g5�"�����J��t	���:�V���ܙ
��$��aE���Q}�gh-�:55�&S��T)�޾�%q$�˪�SH	iwS�ж��h�-
-F�a� �z��1WZ�NnW����x?i�LuȽ�gԍe�U5�a�7���m���<܉�ІhC����⥚�� ��B��$�wL](/z�{�\����\��&�G�8ߝۻ��ץT���ǐ��i����|`�d�2�ʵ��-e�ng�lb�`���6#yG�Z�W�!���Ϩ
R@
/Td$1ˈ�Q���La����|�vb���`�A��<*�0����'�C�)��ZtW�3�d�>��O�G��fAgZ���'j��eF�]�㮌~u
�*���(��T��jƵ[�
>���<#5&\ﶠ,��ǱS��=o�G(a���4Ϲ5��:�	X����{��gv�Qu��2��>�,%�kaG��I�O?͈�-�����5���&��E&T!U!(O����HI�ߪEZ�*�Ƃr߶�Y�LML?����K�a�G����F1j�6�'��lP��E_�W�{��6�`q�rl5~�x➩����r��+�>����D�w��M.(�� ��q����GI�S~]m��h�[�/Pm0bf=����Z��|�5          �  x�}V�r�@</_����8&��J\�RY��r�֖�e.���A�Ay&\�fz{zf����m�]����b|2%����T�����ڥ�#_����Jw��R\�zx�\�kiUX�1����/��^c��Y��ʂ>�EX2gR +Z�k�mh�U]�oę���M�KZ���[Z�B����9�-ދ���4��߸`�t�j���~�aҵ_�C�K� .��dg�'�CA��~J/V]��&6�|=�=�!cF���c�LI:�2�_Cs�6{>��/�m�����G\3M��+f�+6�LSq�3	JAmO'
{��æL�q�夼_��T��7�#��`#~�\嗏(���dV ��]��������Y03���h:O�m��э�/�M7�l�WN�Y��]@�a҄Q6s���ᱎ�}��N�f�>yf<$���^��z��C�^�OaA�Ɋ�o�����4���t7���&u�>�^W������'�v�����0�r�Մ�@G�2�	�S�p;���l?9�;zr^qq��Z��u�����f�bj���nI��!�N���K�nq�L�:=�g��3�=�U����؎	�Ķ����r�J
{z-h��}z��W�%��=ށ�q_��GU�����U��D�� �s�aM��Uo�]l�z�88�:0����[qWթٴ�/%����6���K�e� �:�            x��[�rG�}��O�q��[��c]-Y�W!i��yi��-������S��DQӢ9c�A����<yNV���r������~ڴWb$�Tqk��t��a�^���.����|��������z���D��]~����#rʘw�R��Ē@���E##��%G�5��f�$ǈ���H��8�6��U�\FGI��v������O%u�(ɹ�u��V�(���������k��<|D��L�����q��y�|���.7�x1ï�k�����ɼ����N/�����[E?��:���#08���L[]�<2�C�*��Q�"��;�<��(��.�*q�\�'!ld\Z�쎻ig��͙2�&ž6��ܼl�y��~�d������	!�7�M}��9��t<�v��!ۿ<��~?�_o�=~����=$��Ni�5u�:Z�۬��R}Vv1s��	>�*���:�S�E��L3&
/������Rθ��6������ڼ¿�<�봟7�������I�G�s��	�HJ"r+zZ�<M���e�+�j]p�yR�S�ݰ�8cpG��f)k��p"F'��Q����N��I?n���%SLZ�6O�o��O�����i��~�_�N���	��u�ŷ�:#�K:�� Nj��#��B@��#uÎ=j�P���b�Ii£��g9"��j����c�[��O�y7\��u�()�s؝���Un1��A�M[���˹��DJ�t�KF�w>���Ը�"�����4�%������a�9������{������� 5S�X!9i��m��q��[B��~��!K���t�m���e � �S�5�R�SF�$$�R�k��J����㋄��D�B`�����q�JbQ�*@��_�D�ȭ�o�w�Oο]������H6�{={x���S-e���������*\")<��+7�I��'���m-e�f��na*a{&E�52H��®��2�O��g����n�#��%~��^����~w���~w��C`S�ই�������q�z�7��F�#m]0l_��CYϑ
�.���gv�*�!z�۾I[�a�����}m��ddTxw��G���Ë�z�1�lϨ���麄W�p����T�h�"���bHԤJՈ�7@W�jvPZI��J���ޒ(�=Ӭ�-���15*�u2��1�K> 4}25W�U��Lr������a�B�Z��"���gPq��1<0GDED{* �:Q�BĀ� yv1I�uk�o�3�\��U
LdN��q}8X'�H\��_���@=B��|9����������p���ϋc��)�o�E�v��I�W'�}q�F܍���t��`H�8�tJ|rV�����مZ�lQ�m��P.Y�ǣhI�H0m|���h;l��³�$_)���o���8����d:͇�tY������r��KS5��ϕƟp#� -�A!t� �8	�(k-j�F-��e��R�G�jyxH<�°g��Yb�-k�I�{3$�����E���_H|,1>0����3�����r�>u��h�� �߃�ʑ3��!�` *������D�����J0/!�İG�"$*�!��9�y��p# jy6�����DG0}.2v�M��_�/�7\D0(�eߟ���@-h]�������ٹ��h��UD�����LQ_�jK��-����C���(�`�^?Ŕ#���k��n�?��c�x�v�������w��Q�Zsc<V�6�1͍�;�V���9K.1�u����Uw�EeV��X�j�i�4ḬK�dp�9A��!,3�h�Ω�2E�7����p;R������/w�_�p
��{J*�V�{�2Pu�(8rꠓ��Xd�8���P�<9�,E��dUK���C�t�dl�BX�8V�j��v�A
B���ג�6�žǳ�j�ԗ��G�*�E}b7w[7I��[>$7CR�sv]�S�6�Ȱ��r!�WY���wt{�dm��!1R����a[�ܷ��Wӱ�������8�T����4���bN2�/--�c��f
�}v�%�7�[�ύ�J8���2d&x@�k�ve��\��Y���3�����z����u:��w
��L�޴ꅲ�)�K��4e�r�b�����(��V�f��U�v�J]wI�\I*
z���Z���n�Gtv��CBϨ���~Uc}����������[4��7�|{u>n�������l{:�ǒ����6 M��f/�ިD|���î��NFi�ޱ`Bv�LS�Rһ��V`~��`��N��+�Wv���}6}�&�L����c1,!wFT!G�=�C��Aw��_J�Îk�̚@�ǞNNH��24����P�/K���5�=O5�@�)m�~}��
����_����E����D��0�S�i@���A~>�_�� ����E��,�4��MT՛Li$�X7�y,Zl���x���9d ���y������"�`��$��+�W���vؿ_�gS�}�I5fxi���|�˖�1��O���ީ�� 4**��q �A��� �U��"��7B�R�;�+s �mMG�|���?t@�}e�ʊ�␛5������a}mmG�7�w��3��5���� �%H���h���D�Uԅ$�hW��tJ� �F���.�F���ػB��@��6��^۰C�)�	cnv��:�q�������b��t*��{�HA0�}����b�n�G�J��g�D�����yBn(�;���7��n�"�,vj ��	gc��CgD�O+A=R$�y�=������TeӺmk�Wg��<`>��������/C�E�m>�������n	�s9��>�Y��9N�Lh	��?&!��{���?1.sP����	>a](�	��m�cB��f�>�����OS}�JD�&� &o��4�f_[_-��C�j���7���,��`�Aw��gw]�f�6u�h�Y��<�N���D��<WY̒� v���)���Y�fW:ʄʱg=�t@� �><M2�ɜ�;6����'�y|>}����4��u�~���K
<	7��bǴݮ�K\���]g�L�BXy���3`��C2�rH�ذ�)��K���B؏�G5�a�����>ؿ���K��\��L�G�t���y�>����f��|ܽ�G��Fdz�+�6���T��@�*���*IP8��v��Y
�X�[ �c�ָ��������kI]z|?���p>�dD^�Q���/��B�)��~�����`��(��8� ��6�׮']�������H(]l�<*�!�{��Y'��S��������k�W�������8o������Y+���/��/�q:�->��;�Ww>n��wo��F���?+8�;�
+��LH��)��Յi�FѬ#ړa�`��]4ΡU Ȍ�#�@�ީ���k<�O?�_͝P܄��s�Zc%�|v���E!����䌏���S�� Q� �����3R$u�n�gK�'s$1�BR��k��0Z��g�r޹�/��VG|Ɲ���	��KN�`i{�P�$��u�|P��4��80w���vt��|{2� �H�C)ڱtr�kv-�C������c�nb�/���_�z$꯻�iQW�TmP��Qf�!��6u!G!|���t	��tm��B��v�Ь	F�f�\�������~-mZ!�0�Ӿ6�K�q頋�]��5Hk������0aƾ<�ds9P�مS"��ʢ�pB���C�kܫ�LvW��U���zw��.��\ʐ�Mͮ��=�T/T�@Z���V� �h9����ט[N�#�	~����;��ӇԮ�e��Qy����{��bd�rP�z� :y�Xv�����Yi9s��?@��u������o-�����k�װ[J��3������)�-N8��N��a�`������ʯ8��瀀�)2�c�"O#8z�ˑ�`��͞�S����
�c�_��fϐ�!j6B���e#�A�>u�B����g�������w�MPQ�N�߸^�� ?  L�r��v9�%���zj�� 1��U��	z4�*Ws D��W��Q�_�����j霾����/�幰L`��rxzW����8�f-D�����H�ײ��~ ��2NG��dH;�ҭ�0씉�|��Ir$�U?]u��� PB�e�o��%)LȜC�/:��4�K �B�'���!��Ŏ���J��Q�����bBi�}��>��r��2Ry�#�z��@�����ϐ�.$���O$RN����4�H�Ď�s�]�Ns��k��M���s�{��/�o�/*�\4����B*�����#s�<둃\�w)'^����HA]͌C��fQ�(&pp�jg)��x4�`�f���Ȕ�S���7�k���ࣚ#/����z���Q�ᨠ�=�qғ�L	7؍� L�Be�rPl�'Fu��/���.��Nގ� ��4�����;H�v�d����]1j�P Ow��~�H��i�׭��菒�[��U�w���>�EG8��� F�[{8"ѥr�} ,��H}�t��_H�d�X�x�`t}<�#]��(~�����{��ޑ��+���7�|��l�         "  x��ZɒG�<�_���-������2�4m�K�*B( ,-�ߏ��%P`�M�*<dF�����#q3o�W����x�-�-�w��ts:���j�����ۧ��n������l>�i������O�����ݭ|A(Q��G�?��wd�3D�L �R#� �P������9!�xqǵ%���+�$KR��{<���!��b�1�kJ�2��_q�B�bƿ�zr�@J����ٯO�/�-��q��7ӫ�S�>AD}"��`$����(A��2�Hꊭ�TG�u������r�뤹�Yz��Q�h���Ez�z�LJ"3��K`:b�qY�J&��$�$����e�$�)��6��(��.�>_�/z>���h@.^/���f��N�RH�>E�c|��d�&z�:>�r���VD[�gH4�w�^�@rJ!�ʨ���,��Q^fAX����F��u��t�0j����>~Ň��1��jz�<.ޔ��^@#��Y�D�Η���;��NLt4�*'b��$�T���r��.m�!Ib���S�J,�D�[�kqu��S��pP����'��UA�}!�p�
�T�鄚u�F!+�z9�6o���(U0cZhƵ�C�NL~i�vt8Jϒ��fG-7�8�|!6Z�!�'�(�)��[��Ĺ��i/M �b��|}@!dL$�Q��_ё�D[�W�Wk �%��־�����y?
���_���2��'�2U�x>*�cZ3����KX�C�˞	����޶J�
Y�ˀ���9�hJ. ]�j%��i��{�>�u(9[���WT#;�����i=��y�̜KfA/���iT���{{{���t���R����4���r��s@%�v�x@�Pɨʮh,Z�ev,Nj�H���8r�mE/�g�UR���q��DY���ů�_�cd���i3����ޯ��7Q���_�
�{�����딒r(;T�iل|��x�"ǲ�U!QP���i��ĝG%�/�8g�2��@�D<!w�+jqA!���$-�k�WX�qu�y��t�_ ѳy��,^��P����7�Ŕ1F	�.J��`
�`�GG�56`y42_&$�V�;Ot�GKĕx@+랄H��<M�

J|���_
DҺů�_�ث��
=��ͼ9k�?V����Bf�7���¼�j�V%�]�4t�� xm)���pJ�q=x	FA���'Ts+|o���C�i�����s���-�����  ��v�q��ey8��Sܭ��=ȱY��(�sP<{)���Q��uÝf,)���Ĺ�n�q,PA��ee�j�� ��|�qN2�)��)�k�W$P�8�XA�����ŋ�(J�*�)����.�����m��RmV��S�G�F2&�ii��5Ag*x]t��5��^��`�#n��Ơ�P!J<��xi��a���5@�ٝ����������"�F�=S����'!;(7��������|
��ѭ���z����b��a��}r͟D31̜��sN���+�W����dt�y�4��վTݯ/!(�9{�v	M:�ĩ��6���VX��Zf"D_���Z����A�ŝz����R.Ԉ3��r���Ư�����i���Ӡ��������g�����LP�:�=7���2�B`�S5I�[�%A�J����HOiR`A;�.Le�=g|��n�N-�́��i�����*p������u�<.}8�,����cDC�3ť� ��!���l#|)�Ѷ�������qzF8�v޸!����0��X�k�_�@�ɀ�f�,�����xu�{�t�1]+�ª| D�0 �#qV��?i�K|��ekP�a0��Z8����ہ�Q~�Ư�gc�?����1�\dn�{�%Ba+�WeXN�Hr�[<y�%�`:���	m5��K0�&+�KY��KI�vp$� K��|k�WƯ�3Vk8����/M�d��\�許HN�6*J�Nbl4,G@Q��Z\hOЉ?��ı�$["�e�qM���$+ѯ�_A�z3X��۠$��)�ʄFD��7oa�^�ֻr8C�>�w�V Y�l�g?�TN�Q���AA{Z���B��R�/����	��._O=d�t�O����_�p;���i�f�ۏ��|��/�;�XE�P���'�ڟ�v����Y�M����Y]"�R����X��(�П|�f+cR&�xB�y���9�KT�di�s��hЂ���
���tk�J���=r��n;oo�qH�����鸟���O7��_c��(��7�C�n�vM���/��%�ޏ�a�D<·��r��8桧
��ҽ9,�XR��͜�J�G��xE��\�$IxӍ<����c�_���ں3��@?-5�=�Oǯ��j[�>��0�+�C��W�?W���9��0gJ(s9c���������tF���,K:;^�8���Gܡ�*\˩i�Nha��HǪu��J���jfQԐ�e�Z��ڵ�ҡ�|���]����r������<,��nu�4��#$�+��a�;?�V�$~R�P2�e�Pi���j!Cspx��<�1T�DjqǥB�O#��N����v����(F��Gر�����d��!D
ۦ�j�k���Y��W���};�V�C~iz�\�����(��z�{��<��OP۟�q4P%,�ȱ�XO�w>|��[��(s��wpk^��V	?�!)���Dp��+�W�̨}��YcU���wj�d
��8��J8<���@���ȣ���hV�a�F달F��	�b�ܥq^�R��x��與	j��������<�C�ₜ[���+��o��	z���¥V䯲�	��;��
��?m�a�z�u� �ۺ�1���'�����C<gEϹ)Y���_����P�����VS���}Q_�8QB�J�*ɥ���e'�!���CIU �f�*�Ni۟"�}��)]�Kf]��@���UJv��X%I��k��g#��S�xj�d<}[�?�s�n��3`n<�T���B�P�1f��~�@�Ѵ�%�-����c�:�zU���B��Th�)�`*9�)�1�Q)��Tn�k�W�l�e�߶*�q^ԗJ)-d9T��A���v�Q1NzHA�b��m�s`|mG
�4�#^%�
T;1��x���|�F�)�ˎ8r�C*�v�k��R���b���_�,^����yT%a��r/����r��BE��B�~��Iǌ�`��[<��c7���/�#���gMY��F���B�,������V@�����B�%�c~Hj������_�x~0������wߕ��8�y�\��fu;��<����b�ȋܤ�^�~_h��'b��1�a��HK�]HT�z�z�,GÚ����\��=�F��(�*����2��7���IlV;_R�%!	;ٝP��k����W�L�	|s���E�sy�۬�w���y��6�ȧ�F���������?�`('r�܎oH�"7Z��K��<q��?�����8f�)@��D����\��Z
(�z���+�tm���K�د��_mO�R��X,L�(��~�>v�{7�mN�O�v��=�]����(��d��J�M1$L��;o��'��"'7�ŕf�p��q���X354���)H2X�$ǩ[L�{�T��iƞ�4����p%�z��������t,��*���x�KϤ44��:Jfp���ޘ_ �� �YĮ��2�<p�t�s��FS�2c.��oy��K��/��R-W��/���P�uơ�aV���_�aGhH�q ��k{c�~+/���u��B�*� Y��8����-N��s��#.L)�o�k󯈫Z�a�O���ɓ'�Ģ�         �   x�M���0���0d]��&^4��1S����m���Bҏ~�v��g�
=4����\��>�^k�5jZ�4�����rLJ[yA^&��P��H"N/("#/�4�7��e :F��m=�#3�
�)!D&� Y�h�yA�t�����$�0#�����Ҫq�d�a��,2*�3�L(�$f˗Y����当A��\��I �D�T	�!u��H�`~��6����9"p�F����|{��W}k��O+�0         L   x�K,��/-VN��J��L�
�
8'f�r&s9秥��*䗧�q&q9�fg��d楧g*gd�p�p��qqq �t�      d      x������ � �         �  x�5����0���S�����8r,l��=�"�xqƱ�a��ʆ=8��үO���7Vm���V�l-��w�b
kw>3f�w��uu-�SH�.�p���K�1����d��Z{;�w�38P`��*zB�aOW�P'pt�;��H������OA�p�&�_On@�=��vv�v-_(�^�[�R�Ǵ�,-�G�K��a"=��`1��^�
�:rG(����с�v\р���Y���S+�)���U꩐2�1U`�AY���u�%q��k��,&��[-(Kxq�p'97�nhf ��2�Ɩ-�$�!�I�;��'�r�*�\�M&%�Σ�K{:Y4_�߽4�����䟳��Rw�'әX��C�ʩ�韀�?,M!0���bۅ�ok۩�ՅJ9��:X��G�����:;�N��K��.���j��\;E?����j^dRQ�s���LÖ|��0�����z��         ~  x��ZKn,9\����Gu���9&(�*�*���E��°����� �~|��B�W��� C;W�z"�AQ;S���!�:��!�ڄca� ��֪�B����Υ���v�U��G����RXJ�R]T�'�~=xB�h�b���6!��Sh�6�(��!f��y��V�� D��)��1�<#o5q�"-��vTm\Ky�;vQ�9�N5D0�y��6Men��K��C���eާׅ�E�$L���y�<,��:�(]=՘�QB�j�$�zԱ���ï\D݌���y8,�z�"��/�ʑ��WB��%4�U�H��NE2 	*g̠LkU*��)e�-3O_����P�1@A���J��k�4^��X�J%(P�l�Y�"]����G�8����E˟f:K�g2R�	��-v��YX_���e�ԧ-�I�Χ��!û�4�RW�"^ƶ��;y���zRQ;%h(��-D��O浱2y�9�U��2�8|����"㞹4�;*jp<T~Q�=����+ H�1k��\������c\zjEK	�zx/_�ތXKd-R�����AW(�a/��G;bw��>ǎ# �-Sk�1�xG�y�Đk���C�����n[F��8�-fD�y{vj?�WX{C��=z' �;���~��.3rf�1 ��5h�U� ���u�.- Aû�o`c�?�ٶ�����P��Zi�2�	���~�c���"��M��C����?�-I���3�g����?��w��<=jЂ�Qj��cȄtt-)dl!pپkk"�g�(���-�ͨ�VTE�"R��T����w�9�0fr�iI��ѩ�j��k��3e�4��β���)m�N/�ڿG�m4M	vI��j��A���j��A���j�O_M/�]XA�rۢ���f��2�# ����f?�ve�GL��)�~3&��,JH��z����2VU�c	�l��v4TM��lYmBJ�~��C�Ꞙ�(��ق�j�S���쯺�Lj~�u̔�����o?7��6���<�/4��r��I�']8wi�	ڨ��s'��*�]uR�db@N���f�3�驧�,v�Vhp��祲t�lw��8 r�~@�O�ж\�ۉ�1)�W�����Iw:�g�����Ry8 ������|0�"h77_�t%EG'�۸ޚO��4.r�m�z��������_�����������${��=��Q�.^�_vzy��6����A�����!�����_�l���dS�X�?D5�`4C��K��`+b��
�~��Ŝm�4������CZ���f�#j�D��v�za��"���w`�N�f�(��-�ķr���n'��R�.ROl����+�/Z0>=�;lY�+��@�x�d��8���uG� մ��	��N���@��8_��@���cyG��P,��j�ɥ0E����8�wʮ�w��LJ��y�nʮu�ILrr5����n�qzk1}�41P���jog���Cx��_0B�q�lMkӛy����Nʼ�w��k��̏�p�<N��۷  ���g��z����>�]'���_���q+$�q @���Ml��v�}�i���=h�Y;�0��o�����-/���//����������������˷��?�&�L���3�g����?�}�3ߢFz�-j���j������� W�\r5����5ȷ�D�Eͷ��5ߢ�[�|��oQ�-j�E������������������oĿ��/ߢ~
I���3�緭�?�&�L���3�g�Eͷ���j��A���j��A���j�?\�-��oQ�-j�Eͷ��5ߢ�[�|����E������U)��         -   x�N�I-�L��M�+MKL.)-J�L�
�*�) �&s��qqq ��T         2   x��H������r�tL����,.)J,�/�r�t.-.��M-����� *�4      	   8  x��W�n7}�<��p_���m�F�/y�c�R��A��w4�8r=v�e Hc�!9���{�/���.�Ң}��g�N_ͻ՛�b����yk��Eך{�znRo�O�e�A	4\��K����!�`�5C<Dϴ�L3㩍�-�n���G�z�I�Q$2*.1N<���u���4��tu����s{�6w���}��/��KzH��cZ��u� ������7t��P��1+��%T��j��P(F爰�₈L5�<0�"�V�$b�)��J�a<�TO�6��H޼K�z
/�ݶ�H���/��b7K]�wZ�~=����a.?>I$����Px�29N:�����Jh�<mQJ�<܋�Gnt�	�������ϑp䭬��o�E�n��I(����>���/��f��f@Z���v�^�Tj2����}�LR_CE��^)���Q�2�K���.T�sQp�Ѱh94�u8�~/��B�l��]Z&(w@���&r�P/�{Hb;O�nq�^�W�L�6��S�#�� �@��E3�Dc��I�<9*UNhB��Gʉ�����&�1D`E��gT&RA�d[D(�������Q������T�4V�K���������SYq��F!�� ��2h6�*���F�Sx2F�!�@HG\p��`eYBy">%u�Z��S��Yd@�������l�K�F��XpP<��A�u~�r� i�8&*���������ѼO���~Hݗ^ҷ�kj/���K�H�n���'x�۞CszH��t�a��|E`�)��F
�s5c#.��m� ,�*3y#4.��iB�\�����:h�j�n�qE���R|�^�Vi��mS��@��l�v�m~`�}�R9A�"����K�tD'!+�B�Y�)u�D�Y�!�,%��J4�����Fq������ǊĤ�N]O�K�u �(Ûg��ɐok�yfh)��:9�*�S��Z"3
I���*�ւWT�J���	m�7�Z���O���#���=qB'��{��Te.����2�l0zсωڋ�qTB�6��Tmt�π;���)�%�
}�?*��^������O�����~��mn�^^�y�����F�i�����e�� ���c663�Q1�A�H�R8���9
4��jF��FQ2!���CG���{Q~n��~�xX�ԅ͏�E�{N�'?O���;U�TF����l�ߥ9Px��n�Q��_�r�&�]R;��0#+��\iI��B�4���WGe��z�+���YGG�6�Fcen4p���Vs��nPV����J�x70���/��j��������}����-��"����\g�%�OD��"���#�{P��Q���*�\;48 �FX���P���=���)��|R�Ab05�Wqxibr��G��Œ/ު��T��h~؏�Y�ZI�=����v�v�+�C���M^��
�O_|��_,g���o>��M��F����Օ*����Q�.]--ؾ�3Y�O["����jN�`�q�Wrm$s8:$��_Z�AG2�٧7ggg��@.�      
   �   x�M��
Ac�c�ۧ�/悑���v-T�pu=�L����{�5Z���Y�Q��|�G��kD�ٵ�v��E��5*TQ��(��QW�{�C�4DMG��ǽ�HCl��u!�	���x�3�$@*��0y��!�釓ڑ���4�r�{q9��E^v�����E�v��"{�@vqLv��(I,���yG��hq�b��A.�i�G)��|             x�sT��D.''�+�IA�I����� �*         .   x�3�t��+M��2����+�ȩ�2�OM�2L8]3�t� ��m         �   x�m����0@�ӯ�0�E�p��4wћ�1�v�n����[�GO�ɼ�����X^�7��A=��zC��5a���m^�{���b=�l^WXfI�U'��E<��kO߰]`]��$3T�?��Fvo �q
.2!K�q+�6�'�j�+`��<Ml��C��t�P��"��A��(��5;���Y
S�	�=n	G-�p$7����+]Ϳd�8K!�?�R�            x��\�Rɒ}���� �,��1V	!t5M[���,5�B5�(k��ω�2ٚ���A����{$�D�����{���PL�b��J+��?YJ|H��,�749�,��x�6W�$�虍)7yp��@	�y�,�W~�SIk��i�n��!����?7?և��i�ޟ.�O��o���ߟ�S������/�����j�'l^S)�4�<�v�;�Iʚ�G�Bs눌�ɣ<{i��\�nmd�󘚜%g�Sɰ&��'J4�ɹHLG�~WT�0��$�&7�X���N�z�3�WTG�P]�s�؜�oߏ�Vn{�>���^��M�'��˓�t}8�=��Y�۞l�֟��?![���j��c��-~p{��O�o?|~��t7Bk&C<OԔ�8�`t�"�3&�	�$�ir�bV�|QB�,H���ɉ��
�zW��	�Ղ6y0^bfC��s�W#$C��|����Z��s�v��7P��v:[�����l��1k��.�ͦ����͆�𱃢���������f�\���bZ�_�Nk�=���n.ON6ux?ݖ��������r�֟�ޮ)y����S]Y?�_��Y����S=�ߋ���e3A57T���wh�^5y��Kg\p0���j��*�����̐c�m���D���|���]�yL��������tS����b�c���
�a�:�m�X�u�[�ש~.��k*�sY)�#�na��;H�5&������]��1p������l ҽM��s��|���W3۩�˴�q:�B=���n۟�q����7��-����|���.���k����Л�������o_��莾~\p�>��/rz�L�hTF�Re#g;H���u��j��CnH�;��+�g9�>�{Ɣ5�Xj�|=�c|����g� 93ٟ�9D0�f4|����_5E�vzs�p�_o/w��,ʝ߼�?�˱:��f%)Yi��Z�����Ũ�
+���ߢ�����}t�w_�|����>aq޽�ww�a�Ԙ�AK�2~ء!��^E3cQqa�,�Rv�|�(W�eC����7K��!gb�l�O�_�,��{{��tYu����#������j��s{
�Ag��~�a�J>����w��3��FqJ �0-iW���k)A۝O���Ľ�Lx��5hQ��LaFMN9,.�LE�|������,��$F���������P���l�7�ۓ��~l�/���/{���^m���n�.B�U+S4�讕��TM���W�,�0�ܝ��!d�Tq���1c�{��O*sf9#u�'��Gh��&F^�L�ܕ���I��4J	CZ�zf�:E�C���g��c+�q�d��
	l�q�R���T��n�SD�Hqv�{aZ=@��a �r��%��.5���Ҟ.�X�]1p�0�L��(�bM�������˫�0�Q�h[Q��(��:����Y��Gc�a���q��.:�����|OϿ�،�;�ޜo.6�y|�\���}�e��=-^y�����X
�@�b�����J�������^&��0�d�'��;1k{�����a����Q��?�5�\��1�dRX����˃U�"��Lʜ͋�LCNʃX���c�w��+� w]Ҽyꪼ�>�ܜ=�J\""Z���z%Zt�+RA߂͐��*7dU��\m.�ɘ5�-@]u�Dm5�=VQ�c����"�F��[P��򓂒u��E��bJ�!]�L�9Z�M����NQ.b�ޟ������h��:[��ϫ��OP-����c�O~��p����)l|��<�1u�)K�Ҋ(�f�ER���k���y�g~�B�^Ip�<p�^��)r�*r΃�\���Ӡ؄��

g���W5�s~�4}>��yu|6]_^��O���=���hS����w{8t_�L�שeW4ܳ��i��<?&irk��TI��p��׫����w�zӳ7\��E4���=9~%�;��i[��EGgD|/b�z�����{H [��vs% ����	��z��}z=��ҍԂ�Ж�!����"^��<07j�A�1f$�T�G��O���^�� �9`b��i�2IN�2�9;q���!h�(����c�����-��`�k����/�.s֕�?�D�ےe+x�$Q�jJN�v�4X�H�hQ?U�T�������^��B��yz���`��F��Ư�!�����i7<����!�������-�@��Ғ�x5D��֙8�klP'�%6�ۥ��3`�1�L��������K� 
�ri��T�ac��ӞkcEq�+P"�`�P[�'�N�a��������d;�U�~�~��^�~��?X���1>�=��p�+W�-Zyz����x�j]��cFU�wK�Z��xcK�P�T�n�.o�p�K�˜yVrȃ�Z	�ʫ��JvrQܗԚ�~}%4�O1:�;G��	[����,�4O	�\��ď�k괶&��Y���a�/'`����[����gȃ��Ëg��N?5��̌��`Y�ty{u>�}|ڳ��q���,��V�oLV,��a�~!��3��]g�@�HIW��xQ��C.s��H�UӽM)��ά��(|;494�?���A�lg@UZa\u_>=5�s�W}:`���t:?��W�}{���>���}�{��fޠ;%*�.yQ%xc�ͷ�����Ǐn]�>׿=<z�^�VC�I����4xf�!��E�+��&w�Bi����V�R԰T�`�$񀰪��z$�-�|���!;��.e���d1���� w3�%�ϟ�����e�;`�z}=��R<����ܜ�t�!��c+���?��u�/����2�\yoCU�0a�JOխ�8��K���c�j,7����1�.��UMNkz��!7��a}��s��)�ق�&(	T��d��n���?�����~U{���	�۫� �#ySs�R��]�� ������L|^�$o��y�RW�x��p��+0�ZOLn���pl��GM[�u/��9�6������A`���Ą��"���9�$�Bx�0������+!霿�>]��|pu
|�k��񦔮�[qdM�7��p_�^�v�B����Mz�UICVOZ�`IwO��f�0�����wy$P�j�b���~'U�#wy�ā�N�y�	6�i��}��sIcި�].�H���%byD�����>��CNs&�`�6���_������T���t�>�~��|�z���+IU,�*L�~ݪ�0H������5'�b��?���k�{��V�Ĩ6��RtEM.*N�C��s�pRq�x,���M�>ȡM���
�9�^N�ko���z��)ʣ��t��������<����D������7yq��L����0 .(�f�����'�ɉ��3~����`�� �-Ұ�w;���h�K6i.�G�Z�"���H�=�|Ս��z`�n�����7%-��~���*�Ч�%���:>Q�E��z�����eeŬ@�w��$RO!+�J��{f���,k��h�%"UZ^�l��C%qF���l��"'\�c��s�W��cL{7���!O��r:[�\L۪�Zt=B��B��4�����>��B�G{��^Xe]�:�A���[>+��Je�`�t�V1�pF\�&W`K,�(]����s 03H�a��z�:G��-W4c/P��Ӷ4El�;��#�n�,3�sOD�=(�+Ħ6���ȀY�
"�[R����^Z|�rE]�y�aPB�Z����j��?��M��-xu)��a�Ȉ���Jф����~��*u���Osf�u��]�=5DXVJ�ŗd��C��rřa::���!����m�Jύ_}�����f�k0�~g�'B��c�������/�vw4TP��E���&�J��mM�lǸ+��l��I����<�f�lI���cES0�Q�bH&�\���@�Q��Z������4H	>�����d��:7��j�<�*���k,��m~�Ϳ&��"ʼ�.7�^"r_�B��)8e@}A��୅��X�m��NW����{�i/��	��  �]���`K\2��Cs�o7��T����3{-��Q)�`��d�L�d���G    ��0oq�` �����훅���k��/��`�u�������Lh���>�
y���+�zn�	�hZ���_d
�/���䉀=�ү�����1��I�/7����Y 5���"�{h^6y	����~Z��Qb�����0�,����Ɗ ��W�R幬���L���\�i��o���5 X7S*x��f��V���2Q�LSrs�{�O(�{h�-24y���пm�����2���3�u�feF���`l\�Dti��	��b�H�z}���J*�,��1>"$w��<˟�-�˙�imnz��p{�T�n�>>)�+����@Q{0IC��g��;�{Y�i�[�̲ nl6xⳘg��蒂
�lR2/�h]R	R����T
�M3����؝��+oU	�9-��Y�i�'�<��g9|R���N؂`�q����Z߭�W���i8F�F���ui(���E{���%j蛳24b�_ 3u��#&b�,�k�v�JFAS��"93��{���Cs�}�*��Bi|����Λ�a�0��Wm^]�|�i}+�����ty�#����,t��#���3���L�r�*�#���6Zxm )	���1]��������08r)E�x&�&oyO �k�M[�^�s��)�9��������v:�j>�򤹏��_�}�q3]�xiΔ��욍y�����F��HE���J=/��^�	%����O�}*��rȽ0�$����F--�ܸ?+-����ύ_��g=~���.{ucS��Ϧ�`��V��ja����S�K_@}�p�^V���e�=%����"L	���3z�t���ť	�2�RX�?��n;1���L��
\\r� W������\G�a�Rp!�[�}���.ĬSw��O?6�O'�$�����n�
?��>bw�R�ū������:ç���$<��%k��`0�����D�UT9o��ʃs`+��Ю/�n�_f��%��G�5���u��������5�����[��� t�ۚ0$�����L��L����F�ˊ�w� p�YDCuY�RJ2�����;�xB�<I�?Z��v� ���<K2ŒSɊW9�,P�m�I�4~����lx���W���c
3¬�Y���*�uOT��]iJ��������ח���'JDYϣ���EM��φ`1h ��g"FVۚQ�J�#�pg���t��d )ّ�M��Ak۰�K#�+�^�z.��:Yf�a�g=��|:�m
-)6z��J֎�����鑳�[V�E��Hi�
Jw���z!b+�w�s�uh)m�/�"�zx��X>�T�]�*�LCn��3��9$�����N�*_�/����=���M����֗�5a�/���xӚP��ka]�8o�yD��� l�}�iv��W�Ⱦ�TU�Jb�wZ�Z{t���`:�ղ�!���g����ʕz����V7xf���]�T��ػ<���>������n�Nvq���񵜥��҇5�k,y��G���	�xC�xfg�,�hC԰PՋ�<�bo�6|�%�{�c������F����k�3?����`�59�C�# Y�ʐY^	��O��ʒ�X$��8>�O*L�k)�#���?r�Y�~""�l���j�s��7��q��4B �̂��R�X�N�Q�^�q�M{�Jy�����WMDޥ��dۏA�:>;]�}��N7�1�s����������-�n��i(!�f/#,�}+X�A��%���.[����rM�w����}Ȝ�R��$W�8��S>E��ѿ�ey�r��)~_���,D�/kX$&��M�V7�E�ِ�3��>� ������T�Ҏ����XAg��5PW���{6�Þ����h$��#�Q D6� �`Z�O�ϯÐ+�vY�����1���ڝ���_�"��
��Ҟ���6�9~S9�f=~^1�J ��TI]�o������{X��w/��"� �ڦ{F�r-ux%�����aCu��`�gI���"g��wBB�נ~������<��GcN���]�������V�?�n�q�������6S�!w���6 /K;S8�>�O���__�^��]��v,*�K�PЖ�6s����"���Ka*�p�aI!��^YfNC�L6:v����:�3#]�J��f]�cE�4�.g�Q9�u��dU(�j���|�K�p��!�[��?�!�|��"��6'�!�����lD�#?��1̠�B���]^�X��-�>h���H/B��~�z��MG������`k�R}�dĐa!�����+�zd���}������i�8�f�K��X�E>O��$�%im�0�|��6#�)�:ˣW�c��L��⌕+�����[	��\��o^H�h�%S��>��>Ьetj�/Lj�E��4�P�Y^'�`�.��k�8�eĘ5�a*�����gݐ{�iv��Yʟ�o͖/�+�{y��#��������5c���c}��寂�kKƠv��3=�D�7���/_��r䕵�PjoJ��݈a�*�f(S�G����!�t(��(TK��.g�33��j�Ke�[Ɋ�u�'ǯin���>;�{�\�O��Ug�{(wY�/G>��U/���$к��(]��6��?����S�� �t6>����(}(�I�+�e&�!σzÕ"��88А�/Yb����Q9���k�Q��q�<BfaC��!	���~��*`�9d¤7g^�Q}��f[�L���ގ7�cw-�se͊���)���k�K�,�'�������-�V����BI�%��H@]=xp]Đ���P)�~��(�̪8��g��.��4dN��!7p�C�4�N�8���#C.���"n����Zzp�YE�<.NS=9��Lz�5��!p].N��w/|�;}�9�K�WJ�-m
��]@c�]#m��%����˗^ּ՗��e"F �4��[_K�k6Z��4�����r��?���%*-[i�����z�Jv�ε4�j*A�!
\!d}�7�♗�B�@�4��Z)��S1$�Tj�?7�ڜ#�(�܎��k��%Ԭ@������g�G&:بM��&`��?���%.��\�!���)n���l���*���iP��㡴�"��q�D�`�����>Dp��T��L�Ʉ����2��mہdU�nI��NA��؊βѿ�k���6�#���9F7�*R<����F�٘_D�4��j��_P>�i����l�{F�5��{9�ݡ����y���K&��!�Z6A�G;X�������O{�{����	�8"���i�C�*�U�I-�f��T�F9�*�5�t@�IPGK����9�	��)T ZiB�0���+(�_�r��?n~m�=-_JU^[5"Z�?\WDR�}�)-yUZ��_O�_L|s�����/ہ�̿�ӻ��`~D��K�M�VTE�	�������Ea�0=�k���nȽs��D��;����c\Y��r��:�H��6w�O>�R˶����$M탊>�lWR�ڒ����P�U'+[v�I�>+���:���C4�hw]�KrGz����Tض>�$UlrVk'Rg7�%��p��w[<�]���"�r��-lm�`��5����~r�^���G���OXh�����J�cs�R�kk){����tj��~	�9�T�+�e���^�����w�><>/us�ҟa�J
[�=B���X}���_�B�8{+C�q�ח%����tygH&VG�(�mEʊ��܈�I�{�tu)�3���,�q�!1����l@ &�`Ǳ-�+��4���21�o�~0�875�	ݢd����L����U-ʻ�4������z���cl�{�DxM�7�*�J�.Nh��b���G ��ޗ�O��_������q�R�n2��%T �Ϣ 5�]BG`(_r	��Z�a���Q��t�h+�U,�C�G\����Ư�e��?]�,�1�77��fW�W���RqZ�Rq�
�ۮF���@���#Y�R��A���Vu�f�	��]O�`,�"MBUSVSa�nG��	����ƀkz�Ht��GW���zx�<
�� �   ��������jd�%Q��E�����J�T��z{@�F��;ؕ�?�xGl/)U;��d.i���B�K����O��A�|�A�N��5��4���vp��b�E�N5��bx�F����y���zٽ���θӋ�X���be��W�8xa����g�;���qA�﷿����9�-y           x�e�k�[G��W��
�~?V`0ds���F,Lv�qwu�S��>���oߜs~��/����r|�o��}��/����q=�د��������!�O�-�O_総��t��xܶ�����E���O���z��_N��e���>�@>�ǧ�Vקn�?������?���s�~|��: ��J��Kl��|[/��m��G��z���2�|Ga+����{����x:��گ#�Zߞ��y�aQ��/�C�m`"���f�u���b�,��b�#wF�|��VR�6�_RDN`BP`FP`AP`EP���X(�jI����2";")ƈH��H��H�iN�o�ZsL]�߭ʠ��9%�[�c��JO�hu�:$���l���ՙ"T�!Ғ��E�FG�B1ЪP���Y��V��U�1�V��d+6����d+�d+f�lł!�W�y�/0R�B+-T��A�L��4X�T�PP�JA;]�h�=UT1qP��A���Uކ�����`c�J��[�@�R�yK\�����R�N[�B�Ӳ�D[���[�"UiKT�JC����*�*KbV/	�T�����ۧ"�(E�>+5�"�(�N��p�g��>h�F����h�ϔ,Krm�=�|@OEQ�� rQ�(���(�6�h���EQ��wE�7j~ 5�b�;��=:9��L@�hE�h�(4S&h��V<��N;��g�撣��`r+�6Yl|-X*ק9�:1��j�ڊ|zM�b�)P�4���@�֚b�<�����uiC����T�K��ˍ Y숪��=��F,�
�UUn�3*4R���M%'���2�zpr�m�C![�H+H+K�W��Jgj�]1���ȿ�w��J�0С�H�
�t(.�{�#A�KM�B����8i�,W�`�����f�gE��>��8:�T ���=��G%��g�NJڽ����tQ�/�9��BG��5ѷG9Z�s:�}0'�b�_(�tNiC��������S@�O�I9fے��.��t�����=>����=�6{|      b      x������ � �      c      x������ � �     