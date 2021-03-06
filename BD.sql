PGDMP     6    '                z            BDArquitectura    13.7    13.7 !    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16571    BDArquitectura    DATABASE     l   CREATE DATABASE "BDArquitectura" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
     DROP DATABASE "BDArquitectura";
                postgres    false                        2615    16572    Visual1    SCHEMA        CREATE SCHEMA "Visual1";
    DROP SCHEMA "Visual1";
                postgres    false            ?            1259    16608    Administrador    TABLE     J   CREATE TABLE "Visual1"."Administrador" (
    "ID_Med" integer NOT NULL
);
 &   DROP TABLE "Visual1"."Administrador";
       Visual1         heap    postgres    false    6            ?            1259    16606    Administrador_ID_Med_seq    SEQUENCE     ?   CREATE SEQUENCE "Visual1"."Administrador_ID_Med_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "Visual1"."Administrador_ID_Med_seq";
       Visual1          postgres    false    6    208            ?           0    0    Administrador_ID_Med_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "Visual1"."Administrador_ID_Med_seq" OWNED BY "Visual1"."Administrador"."ID_Med";
          Visual1          postgres    false    207            ?            1259    16597    Jugador    TABLE     l   CREATE TABLE "Visual1"."Jugador" (
    "ID_jugador" integer NOT NULL,
    "Resultados" character varying
);
     DROP TABLE "Visual1"."Jugador";
       Visual1         heap    postgres    false    6            ?            1259    16595    Jugador_ID_jugador_seq    SEQUENCE     ?   CREATE SEQUENCE "Visual1"."Jugador_ID_jugador_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "Visual1"."Jugador_ID_jugador_seq";
       Visual1          postgres    false    206    6            ?           0    0    Jugador_ID_jugador_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Visual1"."Jugador_ID_jugador_seq" OWNED BY "Visual1"."Jugador"."ID_jugador";
          Visual1          postgres    false    205            ?            1259    16586    Medico    TABLE     j   CREATE TABLE "Visual1"."Medico" (
    "ID_medico" integer NOT NULL,
    "RegistroPS" character varying
);
    DROP TABLE "Visual1"."Medico";
       Visual1         heap    postgres    false    6            ?            1259    16584    Medico_ID_medico_seq    SEQUENCE     ?   CREATE SEQUENCE "Visual1"."Medico_ID_medico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Visual1"."Medico_ID_medico_seq";
       Visual1          postgres    false    6    204            ?           0    0    Medico_ID_medico_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Visual1"."Medico_ID_medico_seq" OWNED BY "Visual1"."Medico"."ID_medico";
          Visual1          postgres    false    203            ?            1259    16575    Usuario    TABLE     ?   CREATE TABLE "Visual1"."Usuario" (
    "ID" integer NOT NULL,
    "Nombre" character varying,
    "Apellido" character varying,
    correo character varying,
    cedula character varying,
    rol character varying
);
     DROP TABLE "Visual1"."Usuario";
       Visual1         heap    postgres    false    6            ?            1259    16573    Usuario_ID_seq    SEQUENCE     ?   CREATE SEQUENCE "Visual1"."Usuario_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Visual1"."Usuario_ID_seq";
       Visual1          postgres    false    202    6            ?           0    0    Usuario_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "Visual1"."Usuario_ID_seq" OWNED BY "Visual1"."Usuario"."ID";
          Visual1          postgres    false    201            ;           2604    16611    Administrador ID_Med    DEFAULT     ?   ALTER TABLE ONLY "Visual1"."Administrador" ALTER COLUMN "ID_Med" SET DEFAULT nextval('"Visual1"."Administrador_ID_Med_seq"'::regclass);
 J   ALTER TABLE "Visual1"."Administrador" ALTER COLUMN "ID_Med" DROP DEFAULT;
       Visual1          postgres    false    208    207    208            :           2604    16600    Jugador ID_jugador    DEFAULT     ?   ALTER TABLE ONLY "Visual1"."Jugador" ALTER COLUMN "ID_jugador" SET DEFAULT nextval('"Visual1"."Jugador_ID_jugador_seq"'::regclass);
 H   ALTER TABLE "Visual1"."Jugador" ALTER COLUMN "ID_jugador" DROP DEFAULT;
       Visual1          postgres    false    206    205    206            9           2604    16589    Medico ID_medico    DEFAULT     ?   ALTER TABLE ONLY "Visual1"."Medico" ALTER COLUMN "ID_medico" SET DEFAULT nextval('"Visual1"."Medico_ID_medico_seq"'::regclass);
 F   ALTER TABLE "Visual1"."Medico" ALTER COLUMN "ID_medico" DROP DEFAULT;
       Visual1          postgres    false    204    203    204            8           2604    16578 
   Usuario ID    DEFAULT     t   ALTER TABLE ONLY "Visual1"."Usuario" ALTER COLUMN "ID" SET DEFAULT nextval('"Visual1"."Usuario_ID_seq"'::regclass);
 @   ALTER TABLE "Visual1"."Usuario" ALTER COLUMN "ID" DROP DEFAULT;
       Visual1          postgres    false    202    201    202            ?          0    16608    Administrador 
   TABLE DATA           6   COPY "Visual1"."Administrador" ("ID_Med") FROM stdin;
    Visual1          postgres    false    208   H#       ?          0    16597    Jugador 
   TABLE DATA           B   COPY "Visual1"."Jugador" ("ID_jugador", "Resultados") FROM stdin;
    Visual1          postgres    false    206   e#       ?          0    16586    Medico 
   TABLE DATA           @   COPY "Visual1"."Medico" ("ID_medico", "RegistroPS") FROM stdin;
    Visual1          postgres    false    204   ?#       ?          0    16575    Usuario 
   TABLE DATA           W   COPY "Visual1"."Usuario" ("ID", "Nombre", "Apellido", correo, cedula, rol) FROM stdin;
    Visual1          postgres    false    202   ?#       ?           0    0    Administrador_ID_Med_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"Visual1"."Administrador_ID_Med_seq"', 1, false);
          Visual1          postgres    false    207            ?           0    0    Jugador_ID_jugador_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"Visual1"."Jugador_ID_jugador_seq"', 1, false);
          Visual1          postgres    false    205            ?           0    0    Medico_ID_medico_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Visual1"."Medico_ID_medico_seq"', 1, false);
          Visual1          postgres    false    203            ?           0    0    Usuario_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Visual1"."Usuario_ID_seq"', 1, false);
          Visual1          postgres    false    201            C           2606    16613    Administrador pk_ID_Adm 
   CONSTRAINT     b   ALTER TABLE ONLY "Visual1"."Administrador"
    ADD CONSTRAINT "pk_ID_Adm" PRIMARY KEY ("ID_Med");
 H   ALTER TABLE ONLY "Visual1"."Administrador" DROP CONSTRAINT "pk_ID_Adm";
       Visual1            postgres    false    208            ?           2606    16594    Medico pk_ID_med 
   CONSTRAINT     ^   ALTER TABLE ONLY "Visual1"."Medico"
    ADD CONSTRAINT "pk_ID_med" PRIMARY KEY ("ID_medico");
 A   ALTER TABLE ONLY "Visual1"."Medico" DROP CONSTRAINT "pk_ID_med";
       Visual1            postgres    false    204            A           2606    16605    Jugador pk_Jug 
   CONSTRAINT     ]   ALTER TABLE ONLY "Visual1"."Jugador"
    ADD CONSTRAINT "pk_Jug" PRIMARY KEY ("ID_jugador");
 ?   ALTER TABLE ONLY "Visual1"."Jugador" DROP CONSTRAINT "pk_Jug";
       Visual1            postgres    false    206            =           2606    16583    Usuario pk_codigo 
   CONSTRAINT     V   ALTER TABLE ONLY "Visual1"."Usuario"
    ADD CONSTRAINT pk_codigo PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY "Visual1"."Usuario" DROP CONSTRAINT pk_codigo;
       Visual1            postgres    false    202            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     