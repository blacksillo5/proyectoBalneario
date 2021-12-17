PGDMP                         y        
   roquerioDB    13.3    13.3 g    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    81920 
   roquerioDB    DATABASE     h   CREATE DATABASE "roquerioDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "roquerioDB";
                postgres    false            �            1259    81923    cliente    TABLE     �   CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo text NOT NULL,
    pass text NOT NULL,
    fono integer NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    81921    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    201            )           0    0    cliente_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.idcliente;
          public          postgres    false    200            �            1259    81987    dia    TABLE     x   CREATE TABLE public.dia (
    idreserva integer NOT NULL,
    idcliente integer NOT NULL,
    fechadia date NOT NULL
);
    DROP TABLE public.dia;
       public         heap    postgres    false            �            1259    81985    dia_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.dia_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dia_idcliente_seq;
       public          postgres    false    210            *           0    0    dia_idcliente_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dia_idcliente_seq OWNED BY public.dia.idcliente;
          public          postgres    false    209            �            1259    81983    dia_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.dia_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dia_idreserva_seq;
       public          postgres    false    210            +           0    0    dia_idreserva_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dia_idreserva_seq OWNED BY public.dia.idreserva;
          public          postgres    false    208            �            1259    82023    estacionamientos    TABLE     Q   CREATE TABLE public.estacionamientos (
    idestacionamiento integer NOT NULL
);
 $   DROP TABLE public.estacionamientos;
       public         heap    postgres    false            �            1259    82021 &   estacionamientos_idestacionamiento_seq    SEQUENCE     �   CREATE SEQUENCE public.estacionamientos_idestacionamiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.estacionamientos_idestacionamiento_seq;
       public          postgres    false    212            ,           0    0 &   estacionamientos_idestacionamiento_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.estacionamientos_idestacionamiento_seq OWNED BY public.estacionamientos.idestacionamiento;
          public          postgres    false    211            �            1259    81952    reserva    TABLE     x   CREATE TABLE public.reserva (
    idreserva integer NOT NULL,
    idcliente integer NOT NULL,
    tipo text NOT NULL
);
    DROP TABLE public.reserva;
       public         heap    postgres    false            �            1259    81950    reserva_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.reserva_idcliente_seq;
       public          postgres    false    204            -           0    0    reserva_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.reserva_idcliente_seq OWNED BY public.reserva.idcliente;
          public          postgres    false    203            �            1259    81948    reserva_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.reserva_idreserva_seq;
       public          postgres    false    204            .           0    0    reserva_idreserva_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.reserva_idreserva_seq OWNED BY public.reserva.idreserva;
          public          postgres    false    202            �            1259    82251    reservaadicionales    TABLE     �   CREATE TABLE public.reservaadicionales (
    idreserva integer NOT NULL,
    idcliente integer NOT NULL,
    idsomglo integer NOT NULL,
    camas integer,
    sillas integer,
    tumbonas integer
);
 &   DROP TABLE public.reservaadicionales;
       public         heap    postgres    false            �            1259    82247     reservaadicionales_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaadicionales_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.reservaadicionales_idcliente_seq;
       public          postgres    false    224            /           0    0     reservaadicionales_idcliente_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.reservaadicionales_idcliente_seq OWNED BY public.reservaadicionales.idcliente;
          public          postgres    false    222            �            1259    82245     reservaadicionales_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaadicionales_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.reservaadicionales_idreserva_seq;
       public          postgres    false    224            0           0    0     reservaadicionales_idreserva_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.reservaadicionales_idreserva_seq OWNED BY public.reservaadicionales.idreserva;
          public          postgres    false    221            �            1259    82249    reservaadicionales_idsomglo_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaadicionales_idsomglo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.reservaadicionales_idsomglo_seq;
       public          postgres    false    224            1           0    0    reservaadicionales_idsomglo_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.reservaadicionales_idsomglo_seq OWNED BY public.reservaadicionales.idsomglo;
          public          postgres    false    223            �            1259    82207    reservaestacionamiento    TABLE     �   CREATE TABLE public.reservaestacionamiento (
    idreserva integer NOT NULL,
    idcliente integer NOT NULL,
    idestacionamiento integer NOT NULL
);
 *   DROP TABLE public.reservaestacionamiento;
       public         heap    postgres    false            �            1259    82203 $   reservaestacionamiento_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaestacionamiento_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.reservaestacionamiento_idcliente_seq;
       public          postgres    false    216            2           0    0 $   reservaestacionamiento_idcliente_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.reservaestacionamiento_idcliente_seq OWNED BY public.reservaestacionamiento.idcliente;
          public          postgres    false    214            �            1259    82205 ,   reservaestacionamiento_idestacionamiento_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaestacionamiento_idestacionamiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.reservaestacionamiento_idestacionamiento_seq;
       public          postgres    false    216            3           0    0 ,   reservaestacionamiento_idestacionamiento_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.reservaestacionamiento_idestacionamiento_seq OWNED BY public.reservaestacionamiento.idestacionamiento;
          public          postgres    false    215            �            1259    82201 $   reservaestacionamiento_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaestacionamiento_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.reservaestacionamiento_idreserva_seq;
       public          postgres    false    216            4           0    0 $   reservaestacionamiento_idreserva_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.reservaestacionamiento_idreserva_seq OWNED BY public.reservaestacionamiento.idreserva;
          public          postgres    false    213            �            1259    82232    reservasomglo    TABLE     �   CREATE TABLE public.reservasomglo (
    idreserva integer NOT NULL,
    idcliente integer NOT NULL,
    idsomglo integer NOT NULL,
    sombrilla boolean,
    glorieta boolean
);
 !   DROP TABLE public.reservasomglo;
       public         heap    postgres    false            �            1259    82228    reservasomglo_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.reservasomglo_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.reservasomglo_idcliente_seq;
       public          postgres    false    220            5           0    0    reservasomglo_idcliente_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.reservasomglo_idcliente_seq OWNED BY public.reservasomglo.idcliente;
          public          postgres    false    218            �            1259    82226    reservasomglo_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reservasomglo_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.reservasomglo_idreserva_seq;
       public          postgres    false    220            6           0    0    reservasomglo_idreserva_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.reservasomglo_idreserva_seq OWNED BY public.reservasomglo.idreserva;
          public          postgres    false    217            �            1259    82230    reservasomglo_idsomglo_seq    SEQUENCE     �   CREATE SEQUENCE public.reservasomglo_idsomglo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.reservasomglo_idsomglo_seq;
       public          postgres    false    220            7           0    0    reservasomglo_idsomglo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.reservasomglo_idsomglo_seq OWNED BY public.reservasomglo.idsomglo;
          public          postgres    false    219            �            1259    81971    semana    TABLE     �   CREATE TABLE public.semana (
    idreserva integer NOT NULL,
    idcliente integer NOT NULL,
    fechainicio date NOT NULL,
    fechatermino date NOT NULL
);
    DROP TABLE public.semana;
       public         heap    postgres    false            �            1259    81969    semana_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.semana_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.semana_idcliente_seq;
       public          postgres    false    207            8           0    0    semana_idcliente_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.semana_idcliente_seq OWNED BY public.semana.idcliente;
          public          postgres    false    206            �            1259    81967    semana_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.semana_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.semana_idreserva_seq;
       public          postgres    false    207            9           0    0    semana_idreserva_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.semana_idreserva_seq OWNED BY public.semana.idreserva;
          public          postgres    false    205            `           2604    81926    cliente idcliente    DEFAULT     o   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    200    201    201            e           2604    81990    dia idreserva    DEFAULT     n   ALTER TABLE ONLY public.dia ALTER COLUMN idreserva SET DEFAULT nextval('public.dia_idreserva_seq'::regclass);
 <   ALTER TABLE public.dia ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    210    208    210            f           2604    81991    dia idcliente    DEFAULT     n   ALTER TABLE ONLY public.dia ALTER COLUMN idcliente SET DEFAULT nextval('public.dia_idcliente_seq'::regclass);
 <   ALTER TABLE public.dia ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    210    209    210            g           2604    82026 "   estacionamientos idestacionamiento    DEFAULT     �   ALTER TABLE ONLY public.estacionamientos ALTER COLUMN idestacionamiento SET DEFAULT nextval('public.estacionamientos_idestacionamiento_seq'::regclass);
 Q   ALTER TABLE public.estacionamientos ALTER COLUMN idestacionamiento DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    81955    reserva idreserva    DEFAULT     v   ALTER TABLE ONLY public.reserva ALTER COLUMN idreserva SET DEFAULT nextval('public.reserva_idreserva_seq'::regclass);
 @   ALTER TABLE public.reserva ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    202    204    204            b           2604    81956    reserva idcliente    DEFAULT     v   ALTER TABLE ONLY public.reserva ALTER COLUMN idcliente SET DEFAULT nextval('public.reserva_idcliente_seq'::regclass);
 @   ALTER TABLE public.reserva ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    204    203    204            n           2604    82254    reservaadicionales idreserva    DEFAULT     �   ALTER TABLE ONLY public.reservaadicionales ALTER COLUMN idreserva SET DEFAULT nextval('public.reservaadicionales_idreserva_seq'::regclass);
 K   ALTER TABLE public.reservaadicionales ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    224    221    224            o           2604    82255    reservaadicionales idcliente    DEFAULT     �   ALTER TABLE ONLY public.reservaadicionales ALTER COLUMN idcliente SET DEFAULT nextval('public.reservaadicionales_idcliente_seq'::regclass);
 K   ALTER TABLE public.reservaadicionales ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    224    222    224            p           2604    82256    reservaadicionales idsomglo    DEFAULT     �   ALTER TABLE ONLY public.reservaadicionales ALTER COLUMN idsomglo SET DEFAULT nextval('public.reservaadicionales_idsomglo_seq'::regclass);
 J   ALTER TABLE public.reservaadicionales ALTER COLUMN idsomglo DROP DEFAULT;
       public          postgres    false    224    223    224            h           2604    82210     reservaestacionamiento idreserva    DEFAULT     �   ALTER TABLE ONLY public.reservaestacionamiento ALTER COLUMN idreserva SET DEFAULT nextval('public.reservaestacionamiento_idreserva_seq'::regclass);
 O   ALTER TABLE public.reservaestacionamiento ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    216    213    216            i           2604    82211     reservaestacionamiento idcliente    DEFAULT     �   ALTER TABLE ONLY public.reservaestacionamiento ALTER COLUMN idcliente SET DEFAULT nextval('public.reservaestacionamiento_idcliente_seq'::regclass);
 O   ALTER TABLE public.reservaestacionamiento ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    214    216    216            j           2604    82212 (   reservaestacionamiento idestacionamiento    DEFAULT     �   ALTER TABLE ONLY public.reservaestacionamiento ALTER COLUMN idestacionamiento SET DEFAULT nextval('public.reservaestacionamiento_idestacionamiento_seq'::regclass);
 W   ALTER TABLE public.reservaestacionamiento ALTER COLUMN idestacionamiento DROP DEFAULT;
       public          postgres    false    216    215    216            k           2604    82235    reservasomglo idreserva    DEFAULT     �   ALTER TABLE ONLY public.reservasomglo ALTER COLUMN idreserva SET DEFAULT nextval('public.reservasomglo_idreserva_seq'::regclass);
 F   ALTER TABLE public.reservasomglo ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    217    220    220            l           2604    82236    reservasomglo idcliente    DEFAULT     �   ALTER TABLE ONLY public.reservasomglo ALTER COLUMN idcliente SET DEFAULT nextval('public.reservasomglo_idcliente_seq'::regclass);
 F   ALTER TABLE public.reservasomglo ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    220    218    220            m           2604    82237    reservasomglo idsomglo    DEFAULT     �   ALTER TABLE ONLY public.reservasomglo ALTER COLUMN idsomglo SET DEFAULT nextval('public.reservasomglo_idsomglo_seq'::regclass);
 E   ALTER TABLE public.reservasomglo ALTER COLUMN idsomglo DROP DEFAULT;
       public          postgres    false    220    219    220            c           2604    81974    semana idreserva    DEFAULT     t   ALTER TABLE ONLY public.semana ALTER COLUMN idreserva SET DEFAULT nextval('public.semana_idreserva_seq'::regclass);
 ?   ALTER TABLE public.semana ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    205    207    207            d           2604    81975    semana idcliente    DEFAULT     t   ALTER TABLE ONLY public.semana ALTER COLUMN idcliente SET DEFAULT nextval('public.semana_idcliente_seq'::regclass);
 ?   ALTER TABLE public.semana ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    206    207    207                      0    81923    cliente 
   TABLE DATA           R   COPY public.cliente (idcliente, nombre, apellido, correo, pass, fono) FROM stdin;
    public          postgres    false    201   Z}                 0    81987    dia 
   TABLE DATA           =   COPY public.dia (idreserva, idcliente, fechadia) FROM stdin;
    public          postgres    false    210   �}                 0    82023    estacionamientos 
   TABLE DATA           =   COPY public.estacionamientos (idestacionamiento) FROM stdin;
    public          postgres    false    212   ~                 0    81952    reserva 
   TABLE DATA           =   COPY public.reserva (idreserva, idcliente, tipo) FROM stdin;
    public          postgres    false    204   2~       "          0    82251    reservaadicionales 
   TABLE DATA           e   COPY public.reservaadicionales (idreserva, idcliente, idsomglo, camas, sillas, tumbonas) FROM stdin;
    public          postgres    false    224   f~                 0    82207    reservaestacionamiento 
   TABLE DATA           Y   COPY public.reservaestacionamiento (idreserva, idcliente, idestacionamiento) FROM stdin;
    public          postgres    false    216   �~                 0    82232    reservasomglo 
   TABLE DATA           \   COPY public.reservasomglo (idreserva, idcliente, idsomglo, sombrilla, glorieta) FROM stdin;
    public          postgres    false    220   �~                 0    81971    semana 
   TABLE DATA           Q   COPY public.semana (idreserva, idcliente, fechainicio, fechatermino) FROM stdin;
    public          postgres    false    207   �~       :           0    0    cliente_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cliente_id_seq', 3, true);
          public          postgres    false    200            ;           0    0    dia_idcliente_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dia_idcliente_seq', 1, false);
          public          postgres    false    209            <           0    0    dia_idreserva_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dia_idreserva_seq', 1, false);
          public          postgres    false    208            =           0    0 &   estacionamientos_idestacionamiento_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.estacionamientos_idestacionamiento_seq', 1, false);
          public          postgres    false    211            >           0    0    reserva_idcliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reserva_idcliente_seq', 1, false);
          public          postgres    false    203            ?           0    0    reserva_idreserva_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.reserva_idreserva_seq', 5, true);
          public          postgres    false    202            @           0    0     reservaadicionales_idcliente_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.reservaadicionales_idcliente_seq', 1, false);
          public          postgres    false    222            A           0    0     reservaadicionales_idreserva_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.reservaadicionales_idreserva_seq', 1, false);
          public          postgres    false    221            B           0    0    reservaadicionales_idsomglo_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.reservaadicionales_idsomglo_seq', 1, false);
          public          postgres    false    223            C           0    0 $   reservaestacionamiento_idcliente_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.reservaestacionamiento_idcliente_seq', 1, false);
          public          postgres    false    214            D           0    0 ,   reservaestacionamiento_idestacionamiento_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.reservaestacionamiento_idestacionamiento_seq', 1, false);
          public          postgres    false    215            E           0    0 $   reservaestacionamiento_idreserva_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.reservaestacionamiento_idreserva_seq', 1, false);
          public          postgres    false    213            F           0    0    reservasomglo_idcliente_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.reservasomglo_idcliente_seq', 1, false);
          public          postgres    false    218            G           0    0    reservasomglo_idreserva_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.reservasomglo_idreserva_seq', 1, false);
          public          postgres    false    217            H           0    0    reservasomglo_idsomglo_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.reservasomglo_idsomglo_seq', 1, false);
          public          postgres    false    219            I           0    0    semana_idcliente_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.semana_idcliente_seq', 1, false);
          public          postgres    false    206            J           0    0    semana_idreserva_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.semana_idreserva_seq', 1, false);
          public          postgres    false    205            r           2606    81931    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    201            x           2606    81993    dia dia_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dia
    ADD CONSTRAINT dia_pkey PRIMARY KEY (idreserva, idcliente);
 6   ALTER TABLE ONLY public.dia DROP CONSTRAINT dia_pkey;
       public            postgres    false    210    210            z           2606    82028 &   estacionamientos estacionamientos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.estacionamientos
    ADD CONSTRAINT estacionamientos_pkey PRIMARY KEY (idestacionamiento);
 P   ALTER TABLE ONLY public.estacionamientos DROP CONSTRAINT estacionamientos_pkey;
       public            postgres    false    212            t           2606    81961    reserva reserva_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (idreserva, idcliente);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public            postgres    false    204    204            �           2606    82258 *   reservaadicionales reservaadicionales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.reservaadicionales
    ADD CONSTRAINT reservaadicionales_pkey PRIMARY KEY (idreserva, idcliente, idsomglo);
 T   ALTER TABLE ONLY public.reservaadicionales DROP CONSTRAINT reservaadicionales_pkey;
       public            postgres    false    224    224    224            |           2606    82214 2   reservaestacionamiento reservaestacionamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.reservaestacionamiento
    ADD CONSTRAINT reservaestacionamiento_pkey PRIMARY KEY (idreserva, idcliente, idestacionamiento);
 \   ALTER TABLE ONLY public.reservaestacionamiento DROP CONSTRAINT reservaestacionamiento_pkey;
       public            postgres    false    216    216    216            ~           2606    82239     reservasomglo reservasomglo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.reservasomglo
    ADD CONSTRAINT reservasomglo_pkey PRIMARY KEY (idreserva, idcliente, idsomglo);
 J   ALTER TABLE ONLY public.reservasomglo DROP CONSTRAINT reservasomglo_pkey;
       public            postgres    false    220    220    220            v           2606    81977    semana semana_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.semana
    ADD CONSTRAINT semana_pkey PRIMARY KEY (idreserva, idcliente);
 <   ALTER TABLE ONLY public.semana DROP CONSTRAINT semana_pkey;
       public            postgres    false    207    207            �           2606    81994     dia dia_idreserva_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dia
    ADD CONSTRAINT dia_idreserva_idcliente_fkey FOREIGN KEY (idreserva, idcliente) REFERENCES public.reserva(idreserva, idcliente);
 J   ALTER TABLE ONLY public.dia DROP CONSTRAINT dia_idreserva_idcliente_fkey;
       public          postgres    false    210    210    2932    204    204            �           2606    81962    reserva reserva_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_idcliente_fkey FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 H   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_idcliente_fkey;
       public          postgres    false    204    201    2930            �           2606    82259 G   reservaadicionales reservaadicionales_idreserva_idcliente_idsomglo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaadicionales
    ADD CONSTRAINT reservaadicionales_idreserva_idcliente_idsomglo_fkey FOREIGN KEY (idreserva, idcliente, idsomglo) REFERENCES public.reservasomglo(idreserva, idcliente, idsomglo);
 q   ALTER TABLE ONLY public.reservaadicionales DROP CONSTRAINT reservaadicionales_idreserva_idcliente_idsomglo_fkey;
       public          postgres    false    220    220    220    224    2942    224    224            �           2606    82220 D   reservaestacionamiento reservaestacionamiento_idestacionamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaestacionamiento
    ADD CONSTRAINT reservaestacionamiento_idestacionamiento_fkey FOREIGN KEY (idestacionamiento) REFERENCES public.estacionamientos(idestacionamiento);
 n   ALTER TABLE ONLY public.reservaestacionamiento DROP CONSTRAINT reservaestacionamiento_idestacionamiento_fkey;
       public          postgres    false    212    216    2938            �           2606    82215 F   reservaestacionamiento reservaestacionamiento_idreserva_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaestacionamiento
    ADD CONSTRAINT reservaestacionamiento_idreserva_idcliente_fkey FOREIGN KEY (idreserva, idcliente) REFERENCES public.reserva(idreserva, idcliente);
 p   ALTER TABLE ONLY public.reservaestacionamiento DROP CONSTRAINT reservaestacionamiento_idreserva_idcliente_fkey;
       public          postgres    false    2932    204    216    216    204            �           2606    82240 4   reservasomglo reservasomglo_idreserva_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservasomglo
    ADD CONSTRAINT reservasomglo_idreserva_idcliente_fkey FOREIGN KEY (idreserva, idcliente) REFERENCES public.reserva(idreserva, idcliente);
 ^   ALTER TABLE ONLY public.reservasomglo DROP CONSTRAINT reservasomglo_idreserva_idcliente_fkey;
       public          postgres    false    220    2932    204    204    220            �           2606    81978 &   semana semana_idreserva_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semana
    ADD CONSTRAINT semana_idreserva_idcliente_fkey FOREIGN KEY (idreserva, idcliente) REFERENCES public.reserva(idreserva, idcliente);
 P   ALTER TABLE ONLY public.semana DROP CONSTRAINT semana_idreserva_idcliente_fkey;
       public          postgres    false    207    207    2932    204    204               �   x�M���0@�ۏ!��k#nI0..�4x�5���6�s�s$���n���}=�K���$�:��2&�tY�FJ-L>y�������s���4�kF�40tmW��5��0ZF��H�g��T��ySWF+)���2=            x������ � �            x������ � �         $   x�3�4�,I�-�/JLI�2�4B�r#�b���� Kd      "      x������ � �            x������ � �            x������ � �            x������ � �     