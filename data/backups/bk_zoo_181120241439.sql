PGDMP  .    '            
    |         	   zoologico    17.0    17.0 '   9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            <           1262    16389 	   zoologico    DATABASE     |   CREATE DATABASE zoologico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE zoologico;
                     adminzoo    false                        2615    16951    animals    SCHEMA        CREATE SCHEMA animals;
    DROP SCHEMA animals;
                     adminzoo    false                       1255    16548 )   contar_visitas_habitat(character varying)    FUNCTION     }  CREATE FUNCTION public.contar_visitas_habitat(habitat_q character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    contador_visitantes INT;
BEGIN
    SELECT 
        COUNT(*) 
    INTO contador_visitantes
    FROM HABITAT_VISITANTES HV
    INNER JOIN HABITAT H ON HV.IdHabitat = H.ID
    WHERE H.nombre = habitat_q;
    
    RETURN contador_visitantes;
END;
$$;
 J   DROP FUNCTION public.contar_visitas_habitat(habitat_q character varying);
       public               postgres    false                       1255    17354 -   eliminar_animal_por_nombre(character varying)    FUNCTION     �   CREATE FUNCTION public.eliminar_animal_por_nombre(p_nombre character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM ANIMALES
    WHERE NOMBRE = p_nombre;
END;
$$;
 M   DROP FUNCTION public.eliminar_animal_por_nombre(p_nombre character varying);
       public               postgres    false            �            1259    16956    animales    TABLE     �   CREATE TABLE animals.animales (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechanac date,
    idcuidador integer NOT NULL,
    idhabitat integer NOT NULL,
    idespecie integer NOT NULL
);
    DROP TABLE animals.animales;
       animals         heap r       adminzoo    false    6            �            1259    16952    animales_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.animales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE animals.animales_id_seq;
       animals               adminzoo    false    254    6            =           0    0    animales_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE animals.animales_id_seq OWNED BY animals.animales.id;
          animals               adminzoo    false    250            �            1259    16953    animales_idcuidador_seq    SEQUENCE     �   CREATE SEQUENCE animals.animales_idcuidador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE animals.animales_idcuidador_seq;
       animals               adminzoo    false    6    254            >           0    0    animales_idcuidador_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE animals.animales_idcuidador_seq OWNED BY animals.animales.idcuidador;
          animals               adminzoo    false    251            �            1259    16955    animales_idespecie_seq    SEQUENCE     �   CREATE SEQUENCE animals.animales_idespecie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE animals.animales_idespecie_seq;
       animals               adminzoo    false    6    254            ?           0    0    animales_idespecie_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE animals.animales_idespecie_seq OWNED BY animals.animales.idespecie;
          animals               adminzoo    false    253            �            1259    16954    animales_idhabitat_seq    SEQUENCE     �   CREATE SEQUENCE animals.animales_idhabitat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE animals.animales_idhabitat_seq;
       animals               adminzoo    false    254    6            @           0    0    animales_idhabitat_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE animals.animales_idhabitat_seq OWNED BY animals.animales.idhabitat;
          animals               adminzoo    false    252                       1259    17025    clima    TABLE     c   CREATE TABLE animals.clima (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE animals.clima;
       animals         heap r       adminzoo    false    6                       1259    17024    clima_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.clima_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE animals.clima_id_seq;
       animals               adminzoo    false    275    6            A           0    0    clima_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE animals.clima_id_seq OWNED BY animals.clima.id;
          animals               adminzoo    false    274                       1259    16967    cuidador    TABLE     �   CREATE TABLE animals.cuidador (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechacontratacion date NOT NULL,
    salario numeric(10,2) NOT NULL,
    idespecialidad integer NOT NULL
);
    DROP TABLE animals.cuidador;
       animals         heap r       adminzoo    false    6            �            1259    16965    cuidador_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.cuidador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE animals.cuidador_id_seq;
       animals               adminzoo    false    257    6            B           0    0    cuidador_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE animals.cuidador_id_seq OWNED BY animals.cuidador.id;
          animals               adminzoo    false    255                        1259    16966    cuidador_idespecialidad_seq    SEQUENCE     �   CREATE SEQUENCE animals.cuidador_idespecialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE animals.cuidador_idespecialidad_seq;
       animals               adminzoo    false    257    6            C           0    0    cuidador_idespecialidad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE animals.cuidador_idespecialidad_seq OWNED BY animals.cuidador.idespecialidad;
          animals               adminzoo    false    256                       1259    16975    especialidad    TABLE     j   CREATE TABLE animals.especialidad (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 !   DROP TABLE animals.especialidad;
       animals         heap r       adminzoo    false    6                       1259    16974    especialidad_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.especialidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE animals.especialidad_id_seq;
       animals               adminzoo    false    6    259            D           0    0    especialidad_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE animals.especialidad_id_seq OWNED BY animals.especialidad.id;
          animals               adminzoo    false    258                       1259    16984    especie    TABLE     �   CREATE TABLE animals.especie (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idfamilia integer NOT NULL,
    idestadoconservacion integer NOT NULL
);
    DROP TABLE animals.especie;
       animals         heap r       adminzoo    false    6                       1259    16981    especie_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.especie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE animals.especie_id_seq;
       animals               adminzoo    false    263    6            E           0    0    especie_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE animals.especie_id_seq OWNED BY animals.especie.id;
          animals               adminzoo    false    260                       1259    16983     especie_idestadoconservacion_seq    SEQUENCE     �   CREATE SEQUENCE animals.especie_idestadoconservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE animals.especie_idestadoconservacion_seq;
       animals               adminzoo    false    6    263            F           0    0     especie_idestadoconservacion_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE animals.especie_idestadoconservacion_seq OWNED BY animals.especie.idestadoconservacion;
          animals               adminzoo    false    262                       1259    16982    especie_idfamilia_seq    SEQUENCE     �   CREATE SEQUENCE animals.especie_idfamilia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE animals.especie_idfamilia_seq;
       animals               adminzoo    false    263    6            G           0    0    especie_idfamilia_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE animals.especie_idfamilia_seq OWNED BY animals.especie.idfamilia;
          animals               adminzoo    false    261                       1259    17000    estado_conservacion    TABLE     �   CREATE TABLE animals.estado_conservacion (
    id integer NOT NULL,
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL
);
 (   DROP TABLE animals.estado_conservacion;
       animals         heap r       adminzoo    false    6            
           1259    16999    estado_conservacion_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.estado_conservacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE animals.estado_conservacion_id_seq;
       animals               adminzoo    false    267    6            H           0    0    estado_conservacion_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE animals.estado_conservacion_id_seq OWNED BY animals.estado_conservacion.id;
          animals               adminzoo    false    266            	           1259    16993    familia    TABLE     �   CREATE TABLE animals.familia (
    id integer NOT NULL,
    nombrecientifico character varying(50) NOT NULL,
    nombrecomun character varying(50) NOT NULL
);
    DROP TABLE animals.familia;
       animals         heap r       adminzoo    false    6                       1259    16992    familia_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.familia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE animals.familia_id_seq;
       animals               adminzoo    false    265    6            I           0    0    familia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE animals.familia_id_seq OWNED BY animals.familia.id;
          animals               adminzoo    false    264                       1259    17009    habitat    TABLE     �   CREATE TABLE animals.habitat (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idubicacion integer NOT NULL,
    costobase numeric(10,2) NOT NULL,
    idclima integer NOT NULL
);
    DROP TABLE animals.habitat;
       animals         heap r       adminzoo    false    6                       1259    17006    habitat_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.habitat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE animals.habitat_id_seq;
       animals               adminzoo    false    271    6            J           0    0    habitat_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE animals.habitat_id_seq OWNED BY animals.habitat.id;
          animals               adminzoo    false    268                       1259    17008    habitat_idclima_seq    SEQUENCE     �   CREATE SEQUENCE animals.habitat_idclima_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE animals.habitat_idclima_seq;
       animals               adminzoo    false    6    271            K           0    0    habitat_idclima_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE animals.habitat_idclima_seq OWNED BY animals.habitat.idclima;
          animals               adminzoo    false    270                       1259    17007    habitat_idubicacion_seq    SEQUENCE     �   CREATE SEQUENCE animals.habitat_idubicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE animals.habitat_idubicacion_seq;
       animals               adminzoo    false    271    6            L           0    0    habitat_idubicacion_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE animals.habitat_idubicacion_seq OWNED BY animals.habitat.idubicacion;
          animals               adminzoo    false    269                       1259    17051    habitat_visitantes    TABLE     �   CREATE TABLE animals.habitat_visitantes (
    id integer NOT NULL,
    idhabitat integer NOT NULL,
    idvisitantes integer NOT NULL,
    costofinal numeric(10,2) NOT NULL,
    fechavisita date
);
 '   DROP TABLE animals.habitat_visitantes;
       animals         heap r       adminzoo    false    6                       1259    17048    habitat_visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.habitat_visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE animals.habitat_visitantes_id_seq;
       animals               adminzoo    false    284    6            M           0    0    habitat_visitantes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE animals.habitat_visitantes_id_seq OWNED BY animals.habitat_visitantes.id;
          animals               adminzoo    false    281                       1259    17049     habitat_visitantes_idhabitat_seq    SEQUENCE     �   CREATE SEQUENCE animals.habitat_visitantes_idhabitat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE animals.habitat_visitantes_idhabitat_seq;
       animals               adminzoo    false    284    6            N           0    0     habitat_visitantes_idhabitat_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE animals.habitat_visitantes_idhabitat_seq OWNED BY animals.habitat_visitantes.idhabitat;
          animals               adminzoo    false    282                       1259    17050 #   habitat_visitantes_idvisitantes_seq    SEQUENCE     �   CREATE SEQUENCE animals.habitat_visitantes_idvisitantes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE animals.habitat_visitantes_idvisitantes_seq;
       animals               adminzoo    false    6    284            O           0    0 #   habitat_visitantes_idvisitantes_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE animals.habitat_visitantes_idvisitantes_seq OWNED BY animals.habitat_visitantes.idvisitantes;
          animals               adminzoo    false    283                       1259    17032    tipo_visitantes    TABLE     
  CREATE TABLE animals.tipo_visitantes (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descuento numeric(5,2) NOT NULL,
    CONSTRAINT tipo_visitantes_descuento_check CHECK (((descuento >= (0)::numeric) AND (descuento <= (100)::numeric)))
);
 $   DROP TABLE animals.tipo_visitantes;
       animals         heap r       adminzoo    false    6                       1259    17031    tipo_visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.tipo_visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE animals.tipo_visitantes_id_seq;
       animals               adminzoo    false    6    277            P           0    0    tipo_visitantes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE animals.tipo_visitantes_id_seq OWNED BY animals.tipo_visitantes.id;
          animals               adminzoo    false    276                       1259    17018 	   ubicacion    TABLE     g   CREATE TABLE animals.ubicacion (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE animals.ubicacion;
       animals         heap r       adminzoo    false    6                       1259    17017    ubicacion_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.ubicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE animals.ubicacion_id_seq;
       animals               adminzoo    false    273    6            Q           0    0    ubicacion_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE animals.ubicacion_id_seq OWNED BY animals.ubicacion.id;
          animals               adminzoo    false    272                       1259    17041 
   visitantes    TABLE     �   CREATE TABLE animals.visitantes (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idtipovisitante integer NOT NULL
);
    DROP TABLE animals.visitantes;
       animals         heap r       adminzoo    false    6                       1259    17039    visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE animals.visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE animals.visitantes_id_seq;
       animals               adminzoo    false    280    6            R           0    0    visitantes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE animals.visitantes_id_seq OWNED BY animals.visitantes.id;
          animals               adminzoo    false    278                       1259    17040    visitantes_idtipovisitante_seq    SEQUENCE     �   CREATE SEQUENCE animals.visitantes_idtipovisitante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE animals.visitantes_idtipovisitante_seq;
       animals               adminzoo    false    280    6            S           0    0    visitantes_idtipovisitante_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE animals.visitantes_idtipovisitante_seq OWNED BY animals.visitantes.idtipovisitante;
          animals               adminzoo    false    279            �            1259    16395    animales    TABLE     �   CREATE TABLE public.animales (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechanac date,
    idcuidador integer NOT NULL,
    idhabitat integer NOT NULL,
    idespecie integer NOT NULL
);
    DROP TABLE public.animales;
       public         heap r       adminzoo    false            �            1259    16391    animales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.animales_id_seq;
       public               adminzoo    false    222            T           0    0    animales_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.animales_id_seq OWNED BY public.animales.id;
          public               adminzoo    false    218            �            1259    16392    animales_idcuidador_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_idcuidador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.animales_idcuidador_seq;
       public               adminzoo    false    222            U           0    0    animales_idcuidador_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.animales_idcuidador_seq OWNED BY public.animales.idcuidador;
          public               adminzoo    false    219            �            1259    16394    animales_idespecie_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_idespecie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.animales_idespecie_seq;
       public               adminzoo    false    222            V           0    0    animales_idespecie_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.animales_idespecie_seq OWNED BY public.animales.idespecie;
          public               adminzoo    false    221            �            1259    16393    animales_idhabitat_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_idhabitat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.animales_idhabitat_seq;
       public               adminzoo    false    222            W           0    0    animales_idhabitat_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.animales_idhabitat_seq OWNED BY public.animales.idhabitat;
          public               adminzoo    false    220            �            1259    16464    clima    TABLE     b   CREATE TABLE public.clima (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.clima;
       public         heap r       adminzoo    false            �            1259    16463    clima_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clima_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.clima_id_seq;
       public               adminzoo    false    243            X           0    0    clima_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.clima_id_seq OWNED BY public.clima.id;
          public               adminzoo    false    242            �            1259    16406    cuidador    TABLE     �   CREATE TABLE public.cuidador (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechacontratacion date NOT NULL,
    idespecialidad integer NOT NULL
);
    DROP TABLE public.cuidador;
       public         heap r       adminzoo    false            �            1259    16404    cuidador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cuidador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cuidador_id_seq;
       public               adminzoo    false    225            Y           0    0    cuidador_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cuidador_id_seq OWNED BY public.cuidador.id;
          public               adminzoo    false    223            �            1259    16405    cuidador_idespecialidad_seq    SEQUENCE     �   CREATE SEQUENCE public.cuidador_idespecialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cuidador_idespecialidad_seq;
       public               adminzoo    false    225            Z           0    0    cuidador_idespecialidad_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cuidador_idespecialidad_seq OWNED BY public.cuidador.idespecialidad;
          public               adminzoo    false    224            �            1259    16414    especialidad    TABLE     i   CREATE TABLE public.especialidad (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
     DROP TABLE public.especialidad;
       public         heap r       adminzoo    false            �            1259    16413    especialidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especialidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.especialidad_id_seq;
       public               adminzoo    false    227            [           0    0    especialidad_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.especialidad_id_seq OWNED BY public.especialidad.id;
          public               adminzoo    false    226            �            1259    16423    especie    TABLE     �   CREATE TABLE public.especie (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idfamilia integer NOT NULL,
    idestadoconservacion integer NOT NULL
);
    DROP TABLE public.especie;
       public         heap r       adminzoo    false            �            1259    16420    especie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.especie_id_seq;
       public               adminzoo    false    231            \           0    0    especie_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.especie_id_seq OWNED BY public.especie.id;
          public               adminzoo    false    228            �            1259    16422     especie_idestadoconservacion_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_idestadoconservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.especie_idestadoconservacion_seq;
       public               adminzoo    false    231            ]           0    0     especie_idestadoconservacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.especie_idestadoconservacion_seq OWNED BY public.especie.idestadoconservacion;
          public               adminzoo    false    230            �            1259    16421    especie_idfamilia_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_idfamilia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.especie_idfamilia_seq;
       public               adminzoo    false    231            ^           0    0    especie_idfamilia_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.especie_idfamilia_seq OWNED BY public.especie.idfamilia;
          public               adminzoo    false    229            �            1259    16439    estado_conservacion    TABLE     �   CREATE TABLE public.estado_conservacion (
    id integer NOT NULL,
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL
);
 '   DROP TABLE public.estado_conservacion;
       public         heap r       adminzoo    false            �            1259    16438    estado_conservacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_conservacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.estado_conservacion_id_seq;
       public               adminzoo    false    235            _           0    0    estado_conservacion_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.estado_conservacion_id_seq OWNED BY public.estado_conservacion.id;
          public               adminzoo    false    234            �            1259    16432    familia    TABLE     �   CREATE TABLE public.familia (
    id integer NOT NULL,
    nombrecientifico character varying(50) NOT NULL,
    nombrecomun character varying(50) NOT NULL
);
    DROP TABLE public.familia;
       public         heap r       adminzoo    false            �            1259    16431    familia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.familia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.familia_id_seq;
       public               adminzoo    false    233            `           0    0    familia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.familia_id_seq OWNED BY public.familia.id;
          public               adminzoo    false    232            �            1259    16448    habitat    TABLE     �   CREATE TABLE public.habitat (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idubicacion integer NOT NULL,
    idclima integer NOT NULL
);
    DROP TABLE public.habitat;
       public         heap r       adminzoo    false            �            1259    16445    habitat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.habitat_id_seq;
       public               adminzoo    false    239            a           0    0    habitat_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.habitat_id_seq OWNED BY public.habitat.id;
          public               adminzoo    false    236            �            1259    16447    habitat_idclima_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_idclima_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.habitat_idclima_seq;
       public               adminzoo    false    239            b           0    0    habitat_idclima_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.habitat_idclima_seq OWNED BY public.habitat.idclima;
          public               adminzoo    false    238            �            1259    16446    habitat_idubicacion_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_idubicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.habitat_idubicacion_seq;
       public               adminzoo    false    239            c           0    0    habitat_idubicacion_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.habitat_idubicacion_seq OWNED BY public.habitat.idubicacion;
          public               adminzoo    false    237            �            1259    16480    habitat_visitantes    TABLE     �   CREATE TABLE public.habitat_visitantes (
    id integer NOT NULL,
    idhabitat integer NOT NULL,
    idvisitantes integer NOT NULL
);
 &   DROP TABLE public.habitat_visitantes;
       public         heap r       adminzoo    false            �            1259    16477    habitat_visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.habitat_visitantes_id_seq;
       public               adminzoo    false    249            d           0    0    habitat_visitantes_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.habitat_visitantes_id_seq OWNED BY public.habitat_visitantes.id;
          public               adminzoo    false    246            �            1259    16478     habitat_visitantes_idhabitat_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_visitantes_idhabitat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.habitat_visitantes_idhabitat_seq;
       public               adminzoo    false    249            e           0    0     habitat_visitantes_idhabitat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.habitat_visitantes_idhabitat_seq OWNED BY public.habitat_visitantes.idhabitat;
          public               adminzoo    false    247            �            1259    16479 #   habitat_visitantes_idvisitantes_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_visitantes_idvisitantes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.habitat_visitantes_idvisitantes_seq;
       public               adminzoo    false    249            f           0    0 #   habitat_visitantes_idvisitantes_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.habitat_visitantes_idvisitantes_seq OWNED BY public.habitat_visitantes.idvisitantes;
          public               adminzoo    false    248            �            1259    16457 	   ubicacion    TABLE     f   CREATE TABLE public.ubicacion (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.ubicacion;
       public         heap r       adminzoo    false            �            1259    16456    ubicacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ubicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ubicacion_id_seq;
       public               adminzoo    false    241            g           0    0    ubicacion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ubicacion_id_seq OWNED BY public.ubicacion.id;
          public               adminzoo    false    240            �            1259    16471 
   visitantes    TABLE     }   CREATE TABLE public.visitantes (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechavisita date
);
    DROP TABLE public.visitantes;
       public         heap r       adminzoo    false            �            1259    16470    visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.visitantes_id_seq;
       public               adminzoo    false    245            h           0    0    visitantes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.visitantes_id_seq OWNED BY public.visitantes.id;
          public               adminzoo    false    244            �           2604    16959    animales id    DEFAULT     l   ALTER TABLE ONLY animals.animales ALTER COLUMN id SET DEFAULT nextval('animals.animales_id_seq'::regclass);
 ;   ALTER TABLE animals.animales ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    254    250    254            �           2604    16960    animales idcuidador    DEFAULT     |   ALTER TABLE ONLY animals.animales ALTER COLUMN idcuidador SET DEFAULT nextval('animals.animales_idcuidador_seq'::regclass);
 C   ALTER TABLE animals.animales ALTER COLUMN idcuidador DROP DEFAULT;
       animals               adminzoo    false    251    254    254            �           2604    16961    animales idhabitat    DEFAULT     z   ALTER TABLE ONLY animals.animales ALTER COLUMN idhabitat SET DEFAULT nextval('animals.animales_idhabitat_seq'::regclass);
 B   ALTER TABLE animals.animales ALTER COLUMN idhabitat DROP DEFAULT;
       animals               adminzoo    false    252    254    254            �           2604    16962    animales idespecie    DEFAULT     z   ALTER TABLE ONLY animals.animales ALTER COLUMN idespecie SET DEFAULT nextval('animals.animales_idespecie_seq'::regclass);
 B   ALTER TABLE animals.animales ALTER COLUMN idespecie DROP DEFAULT;
       animals               adminzoo    false    253    254    254                       2604    17028    clima id    DEFAULT     f   ALTER TABLE ONLY animals.clima ALTER COLUMN id SET DEFAULT nextval('animals.clima_id_seq'::regclass);
 8   ALTER TABLE animals.clima ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    274    275    275            �           2604    16970    cuidador id    DEFAULT     l   ALTER TABLE ONLY animals.cuidador ALTER COLUMN id SET DEFAULT nextval('animals.cuidador_id_seq'::regclass);
 ;   ALTER TABLE animals.cuidador ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    255    257    257            �           2604    16971    cuidador idespecialidad    DEFAULT     �   ALTER TABLE ONLY animals.cuidador ALTER COLUMN idespecialidad SET DEFAULT nextval('animals.cuidador_idespecialidad_seq'::regclass);
 G   ALTER TABLE animals.cuidador ALTER COLUMN idespecialidad DROP DEFAULT;
       animals               adminzoo    false    256    257    257            �           2604    16978    especialidad id    DEFAULT     t   ALTER TABLE ONLY animals.especialidad ALTER COLUMN id SET DEFAULT nextval('animals.especialidad_id_seq'::regclass);
 ?   ALTER TABLE animals.especialidad ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    259    258    259            �           2604    16987 
   especie id    DEFAULT     j   ALTER TABLE ONLY animals.especie ALTER COLUMN id SET DEFAULT nextval('animals.especie_id_seq'::regclass);
 :   ALTER TABLE animals.especie ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    263    260    263            �           2604    16988    especie idfamilia    DEFAULT     x   ALTER TABLE ONLY animals.especie ALTER COLUMN idfamilia SET DEFAULT nextval('animals.especie_idfamilia_seq'::regclass);
 A   ALTER TABLE animals.especie ALTER COLUMN idfamilia DROP DEFAULT;
       animals               adminzoo    false    263    261    263            �           2604    16989    especie idestadoconservacion    DEFAULT     �   ALTER TABLE ONLY animals.especie ALTER COLUMN idestadoconservacion SET DEFAULT nextval('animals.especie_idestadoconservacion_seq'::regclass);
 L   ALTER TABLE animals.especie ALTER COLUMN idestadoconservacion DROP DEFAULT;
       animals               adminzoo    false    263    262    263            �           2604    17003    estado_conservacion id    DEFAULT     �   ALTER TABLE ONLY animals.estado_conservacion ALTER COLUMN id SET DEFAULT nextval('animals.estado_conservacion_id_seq'::regclass);
 F   ALTER TABLE animals.estado_conservacion ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    266    267    267            �           2604    16996 
   familia id    DEFAULT     j   ALTER TABLE ONLY animals.familia ALTER COLUMN id SET DEFAULT nextval('animals.familia_id_seq'::regclass);
 :   ALTER TABLE animals.familia ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    265    264    265            �           2604    17012 
   habitat id    DEFAULT     j   ALTER TABLE ONLY animals.habitat ALTER COLUMN id SET DEFAULT nextval('animals.habitat_id_seq'::regclass);
 :   ALTER TABLE animals.habitat ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    271    268    271            �           2604    17013    habitat idubicacion    DEFAULT     |   ALTER TABLE ONLY animals.habitat ALTER COLUMN idubicacion SET DEFAULT nextval('animals.habitat_idubicacion_seq'::regclass);
 C   ALTER TABLE animals.habitat ALTER COLUMN idubicacion DROP DEFAULT;
       animals               adminzoo    false    271    269    271                        2604    17014    habitat idclima    DEFAULT     t   ALTER TABLE ONLY animals.habitat ALTER COLUMN idclima SET DEFAULT nextval('animals.habitat_idclima_seq'::regclass);
 ?   ALTER TABLE animals.habitat ALTER COLUMN idclima DROP DEFAULT;
       animals               adminzoo    false    271    270    271                       2604    17054    habitat_visitantes id    DEFAULT     �   ALTER TABLE ONLY animals.habitat_visitantes ALTER COLUMN id SET DEFAULT nextval('animals.habitat_visitantes_id_seq'::regclass);
 E   ALTER TABLE animals.habitat_visitantes ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    281    284    284                       2604    17055    habitat_visitantes idhabitat    DEFAULT     �   ALTER TABLE ONLY animals.habitat_visitantes ALTER COLUMN idhabitat SET DEFAULT nextval('animals.habitat_visitantes_idhabitat_seq'::regclass);
 L   ALTER TABLE animals.habitat_visitantes ALTER COLUMN idhabitat DROP DEFAULT;
       animals               adminzoo    false    282    284    284                       2604    17056    habitat_visitantes idvisitantes    DEFAULT     �   ALTER TABLE ONLY animals.habitat_visitantes ALTER COLUMN idvisitantes SET DEFAULT nextval('animals.habitat_visitantes_idvisitantes_seq'::regclass);
 O   ALTER TABLE animals.habitat_visitantes ALTER COLUMN idvisitantes DROP DEFAULT;
       animals               adminzoo    false    283    284    284                       2604    17035    tipo_visitantes id    DEFAULT     z   ALTER TABLE ONLY animals.tipo_visitantes ALTER COLUMN id SET DEFAULT nextval('animals.tipo_visitantes_id_seq'::regclass);
 B   ALTER TABLE animals.tipo_visitantes ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    277    276    277                       2604    17021    ubicacion id    DEFAULT     n   ALTER TABLE ONLY animals.ubicacion ALTER COLUMN id SET DEFAULT nextval('animals.ubicacion_id_seq'::regclass);
 <   ALTER TABLE animals.ubicacion ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    273    272    273                       2604    17044    visitantes id    DEFAULT     p   ALTER TABLE ONLY animals.visitantes ALTER COLUMN id SET DEFAULT nextval('animals.visitantes_id_seq'::regclass);
 =   ALTER TABLE animals.visitantes ALTER COLUMN id DROP DEFAULT;
       animals               adminzoo    false    278    280    280                       2604    17045    visitantes idtipovisitante    DEFAULT     �   ALTER TABLE ONLY animals.visitantes ALTER COLUMN idtipovisitante SET DEFAULT nextval('animals.visitantes_idtipovisitante_seq'::regclass);
 J   ALTER TABLE animals.visitantes ALTER COLUMN idtipovisitante DROP DEFAULT;
       animals               adminzoo    false    280    279    280            �           2604    16398    animales id    DEFAULT     j   ALTER TABLE ONLY public.animales ALTER COLUMN id SET DEFAULT nextval('public.animales_id_seq'::regclass);
 :   ALTER TABLE public.animales ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    222    218    222            �           2604    16399    animales idcuidador    DEFAULT     z   ALTER TABLE ONLY public.animales ALTER COLUMN idcuidador SET DEFAULT nextval('public.animales_idcuidador_seq'::regclass);
 B   ALTER TABLE public.animales ALTER COLUMN idcuidador DROP DEFAULT;
       public               adminzoo    false    219    222    222            �           2604    16400    animales idhabitat    DEFAULT     x   ALTER TABLE ONLY public.animales ALTER COLUMN idhabitat SET DEFAULT nextval('public.animales_idhabitat_seq'::regclass);
 A   ALTER TABLE public.animales ALTER COLUMN idhabitat DROP DEFAULT;
       public               adminzoo    false    222    220    222            �           2604    16401    animales idespecie    DEFAULT     x   ALTER TABLE ONLY public.animales ALTER COLUMN idespecie SET DEFAULT nextval('public.animales_idespecie_seq'::regclass);
 A   ALTER TABLE public.animales ALTER COLUMN idespecie DROP DEFAULT;
       public               adminzoo    false    222    221    222            �           2604    16467    clima id    DEFAULT     d   ALTER TABLE ONLY public.clima ALTER COLUMN id SET DEFAULT nextval('public.clima_id_seq'::regclass);
 7   ALTER TABLE public.clima ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    243    242    243            �           2604    16409    cuidador id    DEFAULT     j   ALTER TABLE ONLY public.cuidador ALTER COLUMN id SET DEFAULT nextval('public.cuidador_id_seq'::regclass);
 :   ALTER TABLE public.cuidador ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    223    225    225            �           2604    16410    cuidador idespecialidad    DEFAULT     �   ALTER TABLE ONLY public.cuidador ALTER COLUMN idespecialidad SET DEFAULT nextval('public.cuidador_idespecialidad_seq'::regclass);
 F   ALTER TABLE public.cuidador ALTER COLUMN idespecialidad DROP DEFAULT;
       public               adminzoo    false    225    224    225            �           2604    16417    especialidad id    DEFAULT     r   ALTER TABLE ONLY public.especialidad ALTER COLUMN id SET DEFAULT nextval('public.especialidad_id_seq'::regclass);
 >   ALTER TABLE public.especialidad ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    226    227    227            �           2604    16426 
   especie id    DEFAULT     h   ALTER TABLE ONLY public.especie ALTER COLUMN id SET DEFAULT nextval('public.especie_id_seq'::regclass);
 9   ALTER TABLE public.especie ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    231    228    231            �           2604    16427    especie idfamilia    DEFAULT     v   ALTER TABLE ONLY public.especie ALTER COLUMN idfamilia SET DEFAULT nextval('public.especie_idfamilia_seq'::regclass);
 @   ALTER TABLE public.especie ALTER COLUMN idfamilia DROP DEFAULT;
       public               adminzoo    false    231    229    231            �           2604    16428    especie idestadoconservacion    DEFAULT     �   ALTER TABLE ONLY public.especie ALTER COLUMN idestadoconservacion SET DEFAULT nextval('public.especie_idestadoconservacion_seq'::regclass);
 K   ALTER TABLE public.especie ALTER COLUMN idestadoconservacion DROP DEFAULT;
       public               adminzoo    false    230    231    231            �           2604    16442    estado_conservacion id    DEFAULT     �   ALTER TABLE ONLY public.estado_conservacion ALTER COLUMN id SET DEFAULT nextval('public.estado_conservacion_id_seq'::regclass);
 E   ALTER TABLE public.estado_conservacion ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    235    234    235            �           2604    16435 
   familia id    DEFAULT     h   ALTER TABLE ONLY public.familia ALTER COLUMN id SET DEFAULT nextval('public.familia_id_seq'::regclass);
 9   ALTER TABLE public.familia ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    232    233    233            �           2604    16451 
   habitat id    DEFAULT     h   ALTER TABLE ONLY public.habitat ALTER COLUMN id SET DEFAULT nextval('public.habitat_id_seq'::regclass);
 9   ALTER TABLE public.habitat ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    239    236    239            �           2604    16452    habitat idubicacion    DEFAULT     z   ALTER TABLE ONLY public.habitat ALTER COLUMN idubicacion SET DEFAULT nextval('public.habitat_idubicacion_seq'::regclass);
 B   ALTER TABLE public.habitat ALTER COLUMN idubicacion DROP DEFAULT;
       public               adminzoo    false    237    239    239            �           2604    16453    habitat idclima    DEFAULT     r   ALTER TABLE ONLY public.habitat ALTER COLUMN idclima SET DEFAULT nextval('public.habitat_idclima_seq'::regclass);
 >   ALTER TABLE public.habitat ALTER COLUMN idclima DROP DEFAULT;
       public               adminzoo    false    239    238    239            �           2604    16483    habitat_visitantes id    DEFAULT     ~   ALTER TABLE ONLY public.habitat_visitantes ALTER COLUMN id SET DEFAULT nextval('public.habitat_visitantes_id_seq'::regclass);
 D   ALTER TABLE public.habitat_visitantes ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    246    249    249            �           2604    16484    habitat_visitantes idhabitat    DEFAULT     �   ALTER TABLE ONLY public.habitat_visitantes ALTER COLUMN idhabitat SET DEFAULT nextval('public.habitat_visitantes_idhabitat_seq'::regclass);
 K   ALTER TABLE public.habitat_visitantes ALTER COLUMN idhabitat DROP DEFAULT;
       public               adminzoo    false    249    247    249            �           2604    16485    habitat_visitantes idvisitantes    DEFAULT     �   ALTER TABLE ONLY public.habitat_visitantes ALTER COLUMN idvisitantes SET DEFAULT nextval('public.habitat_visitantes_idvisitantes_seq'::regclass);
 N   ALTER TABLE public.habitat_visitantes ALTER COLUMN idvisitantes DROP DEFAULT;
       public               adminzoo    false    248    249    249            �           2604    16460    ubicacion id    DEFAULT     l   ALTER TABLE ONLY public.ubicacion ALTER COLUMN id SET DEFAULT nextval('public.ubicacion_id_seq'::regclass);
 ;   ALTER TABLE public.ubicacion ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    241    240    241            �           2604    16474    visitantes id    DEFAULT     n   ALTER TABLE ONLY public.visitantes ALTER COLUMN id SET DEFAULT nextval('public.visitantes_id_seq'::regclass);
 <   ALTER TABLE public.visitantes ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    245    244    245                      0    16956    animales 
   TABLE DATA           [   COPY animals.animales (id, nombre, fechanac, idcuidador, idhabitat, idespecie) FROM stdin;
    animals               adminzoo    false    254   f      -          0    17025    clima 
   TABLE DATA           ,   COPY animals.clima (id, nombre) FROM stdin;
    animals               adminzoo    false    275   �l                0    16967    cuidador 
   TABLE DATA           [   COPY animals.cuidador (id, nombre, fechacontratacion, salario, idespecialidad) FROM stdin;
    animals               adminzoo    false    257   �m                0    16975    especialidad 
   TABLE DATA           3   COPY animals.especialidad (id, nombre) FROM stdin;
    animals               adminzoo    false    259   no      !          0    16984    especie 
   TABLE DATA           O   COPY animals.especie (id, nombre, idfamilia, idestadoconservacion) FROM stdin;
    animals               adminzoo    false    263   �p      %          0    17000    estado_conservacion 
   TABLE DATA           O   COPY animals.estado_conservacion (id, codigo, nombre, descripcion) FROM stdin;
    animals               adminzoo    false    267   �s      #          0    16993    familia 
   TABLE DATA           E   COPY animals.familia (id, nombrecientifico, nombrecomun) FROM stdin;
    animals               adminzoo    false    265   �t      )          0    17009    habitat 
   TABLE DATA           O   COPY animals.habitat (id, nombre, idubicacion, costobase, idclima) FROM stdin;
    animals               adminzoo    false    271   �v      6          0    17051    habitat_visitantes 
   TABLE DATA           c   COPY animals.habitat_visitantes (id, idhabitat, idvisitantes, costofinal, fechavisita) FROM stdin;
    animals               adminzoo    false    284   �x      /          0    17032    tipo_visitantes 
   TABLE DATA           A   COPY animals.tipo_visitantes (id, nombre, descuento) FROM stdin;
    animals               adminzoo    false    277   �x      +          0    17018 	   ubicacion 
   TABLE DATA           0   COPY animals.ubicacion (id, nombre) FROM stdin;
    animals               adminzoo    false    273   �y      2          0    17041 
   visitantes 
   TABLE DATA           B   COPY animals.visitantes (id, nombre, idtipovisitante) FROM stdin;
    animals               adminzoo    false    280   �z      �          0    16395    animales 
   TABLE DATA           Z   COPY public.animales (id, nombre, fechanac, idcuidador, idhabitat, idespecie) FROM stdin;
    public               adminzoo    false    222   �                0    16464    clima 
   TABLE DATA           +   COPY public.clima (id, nombre) FROM stdin;
    public               adminzoo    false    243   ��      �          0    16406    cuidador 
   TABLE DATA           Q   COPY public.cuidador (id, nombre, fechacontratacion, idespecialidad) FROM stdin;
    public               adminzoo    false    225   Q�      �          0    16414    especialidad 
   TABLE DATA           2   COPY public.especialidad (id, nombre) FROM stdin;
    public               adminzoo    false    227   ��                0    16423    especie 
   TABLE DATA           N   COPY public.especie (id, nombre, idfamilia, idestadoconservacion) FROM stdin;
    public               adminzoo    false    231   ��                0    16439    estado_conservacion 
   TABLE DATA           N   COPY public.estado_conservacion (id, codigo, nombre, descripcion) FROM stdin;
    public               adminzoo    false    235   ��                0    16432    familia 
   TABLE DATA           D   COPY public.familia (id, nombrecientifico, nombrecomun) FROM stdin;
    public               adminzoo    false    233    �      	          0    16448    habitat 
   TABLE DATA           C   COPY public.habitat (id, nombre, idubicacion, idclima) FROM stdin;
    public               adminzoo    false    239   ��                0    16480    habitat_visitantes 
   TABLE DATA           I   COPY public.habitat_visitantes (id, idhabitat, idvisitantes) FROM stdin;
    public               adminzoo    false    249   )�                0    16457 	   ubicacion 
   TABLE DATA           /   COPY public.ubicacion (id, nombre) FROM stdin;
    public               adminzoo    false    241   f�                0    16471 
   visitantes 
   TABLE DATA           =   COPY public.visitantes (id, nombre, fechavisita) FROM stdin;
    public               adminzoo    false    245   u�      i           0    0    animales_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('animals.animales_id_seq', 190, true);
          animals               adminzoo    false    250            j           0    0    animales_idcuidador_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('animals.animales_idcuidador_seq', 1, false);
          animals               adminzoo    false    251            k           0    0    animales_idespecie_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('animals.animales_idespecie_seq', 1, false);
          animals               adminzoo    false    253            l           0    0    animales_idhabitat_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('animals.animales_idhabitat_seq', 1, false);
          animals               adminzoo    false    252            m           0    0    clima_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('animals.clima_id_seq', 30, true);
          animals               adminzoo    false    274            n           0    0    cuidador_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('animals.cuidador_id_seq', 20, true);
          animals               adminzoo    false    255            o           0    0    cuidador_idespecialidad_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('animals.cuidador_idespecialidad_seq', 1, false);
          animals               adminzoo    false    256            p           0    0    especialidad_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('animals.especialidad_id_seq', 30, true);
          animals               adminzoo    false    258            q           0    0    especie_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('animals.especie_id_seq', 63, true);
          animals               adminzoo    false    260            r           0    0     especie_idestadoconservacion_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('animals.especie_idestadoconservacion_seq', 1, false);
          animals               adminzoo    false    262            s           0    0    especie_idfamilia_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('animals.especie_idfamilia_seq', 1, false);
          animals               adminzoo    false    261            t           0    0    estado_conservacion_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('animals.estado_conservacion_id_seq', 18, true);
          animals               adminzoo    false    266            u           0    0    familia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('animals.familia_id_seq', 44, true);
          animals               adminzoo    false    264            v           0    0    habitat_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('animals.habitat_id_seq', 23, true);
          animals               adminzoo    false    268            w           0    0    habitat_idclima_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('animals.habitat_idclima_seq', 1, false);
          animals               adminzoo    false    270            x           0    0    habitat_idubicacion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('animals.habitat_idubicacion_seq', 1, false);
          animals               adminzoo    false    269            y           0    0    habitat_visitantes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('animals.habitat_visitantes_id_seq', 1, false);
          animals               adminzoo    false    281            z           0    0     habitat_visitantes_idhabitat_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('animals.habitat_visitantes_idhabitat_seq', 1, false);
          animals               adminzoo    false    282            {           0    0 #   habitat_visitantes_idvisitantes_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('animals.habitat_visitantes_idvisitantes_seq', 1, false);
          animals               adminzoo    false    283            |           0    0    tipo_visitantes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('animals.tipo_visitantes_id_seq', 10, true);
          animals               adminzoo    false    276            }           0    0    ubicacion_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('animals.ubicacion_id_seq', 40, true);
          animals               adminzoo    false    272            ~           0    0    visitantes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('animals.visitantes_id_seq', 2000, true);
          animals               adminzoo    false    278                       0    0    visitantes_idtipovisitante_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('animals.visitantes_idtipovisitante_seq', 1, false);
          animals               adminzoo    false    279            �           0    0    animales_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.animales_id_seq', 96, true);
          public               adminzoo    false    218            �           0    0    animales_idcuidador_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.animales_idcuidador_seq', 1, false);
          public               adminzoo    false    219            �           0    0    animales_idespecie_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.animales_idespecie_seq', 1, false);
          public               adminzoo    false    221            �           0    0    animales_idhabitat_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.animales_idhabitat_seq', 1, false);
          public               adminzoo    false    220            �           0    0    clima_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.clima_id_seq', 15, true);
          public               adminzoo    false    242            �           0    0    cuidador_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cuidador_id_seq', 20, true);
          public               adminzoo    false    223            �           0    0    cuidador_idespecialidad_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cuidador_idespecialidad_seq', 1, false);
          public               adminzoo    false    224            �           0    0    especialidad_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.especialidad_id_seq', 15, true);
          public               adminzoo    false    226            �           0    0    especie_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.especie_id_seq', 63, true);
          public               adminzoo    false    228            �           0    0     especie_idestadoconservacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.especie_idestadoconservacion_seq', 1, false);
          public               adminzoo    false    230            �           0    0    especie_idfamilia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.especie_idfamilia_seq', 1, false);
          public               adminzoo    false    229            �           0    0    estado_conservacion_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.estado_conservacion_id_seq', 9, true);
          public               adminzoo    false    234            �           0    0    familia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.familia_id_seq', 44, true);
          public               adminzoo    false    232            �           0    0    habitat_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.habitat_id_seq', 23, true);
          public               adminzoo    false    236            �           0    0    habitat_idclima_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.habitat_idclima_seq', 1, false);
          public               adminzoo    false    238            �           0    0    habitat_idubicacion_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.habitat_idubicacion_seq', 1, false);
          public               adminzoo    false    237            �           0    0    habitat_visitantes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.habitat_visitantes_id_seq', 800, true);
          public               adminzoo    false    246            �           0    0     habitat_visitantes_idhabitat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.habitat_visitantes_idhabitat_seq', 1, false);
          public               adminzoo    false    247            �           0    0 #   habitat_visitantes_idvisitantes_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.habitat_visitantes_idvisitantes_seq', 1, false);
          public               adminzoo    false    248            �           0    0    ubicacion_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ubicacion_id_seq', 20, true);
          public               adminzoo    false    240            �           0    0    visitantes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.visitantes_id_seq', 600, true);
          public               adminzoo    false    244            !           2606    16964    animales animales_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_pkey;
       animals                 adminzoo    false    254            1           2606    17030    clima clima_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY animals.clima
    ADD CONSTRAINT clima_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY animals.clima DROP CONSTRAINT clima_pkey;
       animals                 adminzoo    false    275            #           2606    16973    cuidador cuidador_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY animals.cuidador
    ADD CONSTRAINT cuidador_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY animals.cuidador DROP CONSTRAINT cuidador_pkey;
       animals                 adminzoo    false    257            %           2606    16980    especialidad especialidad_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY animals.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY animals.especialidad DROP CONSTRAINT especialidad_pkey;
       animals                 adminzoo    false    259            '           2606    16991    especie especie_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT especie_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY animals.especie DROP CONSTRAINT especie_pkey;
       animals                 adminzoo    false    263            +           2606    17005 ,   estado_conservacion estado_conservacion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY animals.estado_conservacion
    ADD CONSTRAINT estado_conservacion_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY animals.estado_conservacion DROP CONSTRAINT estado_conservacion_pkey;
       animals                 adminzoo    false    267            )           2606    16998    familia familia_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY animals.familia
    ADD CONSTRAINT familia_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY animals.familia DROP CONSTRAINT familia_pkey;
       animals                 adminzoo    false    265            -           2606    17016    habitat habitat_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT habitat_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT habitat_pkey;
       animals                 adminzoo    false    271            7           2606    17058 *   habitat_visitantes habitat_visitantes_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT habitat_visitantes_pkey;
       animals                 adminzoo    false    284            3           2606    17038 $   tipo_visitantes tipo_visitantes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY animals.tipo_visitantes
    ADD CONSTRAINT tipo_visitantes_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY animals.tipo_visitantes DROP CONSTRAINT tipo_visitantes_pkey;
       animals                 adminzoo    false    277            /           2606    17023    ubicacion ubicacion_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY animals.ubicacion
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY animals.ubicacion DROP CONSTRAINT ubicacion_pkey;
       animals                 adminzoo    false    273            5           2606    17047    visitantes visitantes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY animals.visitantes
    ADD CONSTRAINT visitantes_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY animals.visitantes DROP CONSTRAINT visitantes_pkey;
       animals                 adminzoo    false    280                       2606    16403    animales animales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_pkey;
       public                 adminzoo    false    222                       2606    16469    clima clima_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.clima
    ADD CONSTRAINT clima_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.clima DROP CONSTRAINT clima_pkey;
       public                 adminzoo    false    243                       2606    16412    cuidador cuidador_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cuidador
    ADD CONSTRAINT cuidador_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cuidador DROP CONSTRAINT cuidador_pkey;
       public                 adminzoo    false    225                       2606    16419    especialidad especialidad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.especialidad DROP CONSTRAINT especialidad_pkey;
       public                 adminzoo    false    227                       2606    16430    especie especie_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_pkey;
       public                 adminzoo    false    231                       2606    16444 ,   estado_conservacion estado_conservacion_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.estado_conservacion
    ADD CONSTRAINT estado_conservacion_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.estado_conservacion DROP CONSTRAINT estado_conservacion_pkey;
       public                 adminzoo    false    235                       2606    16437    familia familia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT familia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.familia DROP CONSTRAINT familia_pkey;
       public                 adminzoo    false    233                       2606    16455    habitat habitat_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.habitat DROP CONSTRAINT habitat_pkey;
       public                 adminzoo    false    239                       2606    16487 *   habitat_visitantes habitat_visitantes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.habitat_visitantes DROP CONSTRAINT habitat_visitantes_pkey;
       public                 adminzoo    false    249                       2606    16462    ubicacion ubicacion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_pkey;
       public                 adminzoo    false    241                       2606    16476    visitantes visitantes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.visitantes
    ADD CONSTRAINT visitantes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.visitantes DROP CONSTRAINT visitantes_pkey;
       public                 adminzoo    false    245            B           2606    17059 !   animales animales_idcuidador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_idcuidador_fkey FOREIGN KEY (idcuidador) REFERENCES animals.cuidador(id);
 L   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_idcuidador_fkey;
       animals               adminzoo    false    257    4899    254            C           2606    17195 "   animales animales_idcuidador_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_idcuidador_fkey1 FOREIGN KEY (idcuidador) REFERENCES animals.cuidador(id);
 M   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_idcuidador_fkey1;
       animals               adminzoo    false    254    4899    257            D           2606    17069     animales animales_idespecie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_idespecie_fkey FOREIGN KEY (idespecie) REFERENCES animals.especie(id);
 K   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_idespecie_fkey;
       animals               adminzoo    false    254    4903    263            E           2606    17205 !   animales animales_idespecie_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_idespecie_fkey1 FOREIGN KEY (idespecie) REFERENCES animals.especie(id);
 L   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_idespecie_fkey1;
       animals               adminzoo    false    263    4903    254            F           2606    17064     animales animales_idhabitat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_idhabitat_fkey FOREIGN KEY (idhabitat) REFERENCES animals.habitat(id);
 K   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_idhabitat_fkey;
       animals               adminzoo    false    271    4909    254            G           2606    17200 !   animales animales_idhabitat_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT animales_idhabitat_fkey1 FOREIGN KEY (idhabitat) REFERENCES animals.habitat(id);
 L   ALTER TABLE ONLY animals.animales DROP CONSTRAINT animales_idhabitat_fkey1;
       animals               adminzoo    false    254    4909    271            K           2606    17074 %   cuidador cuidador_idespecialidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.cuidador
    ADD CONSTRAINT cuidador_idespecialidad_fkey FOREIGN KEY (idespecialidad) REFERENCES animals.especialidad(id);
 P   ALTER TABLE ONLY animals.cuidador DROP CONSTRAINT cuidador_idespecialidad_fkey;
       animals               adminzoo    false    257    4901    259            L           2606    17210 &   cuidador cuidador_idespecialidad_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.cuidador
    ADD CONSTRAINT cuidador_idespecialidad_fkey1 FOREIGN KEY (idespecialidad) REFERENCES animals.especialidad(id);
 Q   ALTER TABLE ONLY animals.cuidador DROP CONSTRAINT cuidador_idespecialidad_fkey1;
       animals               adminzoo    false    257    259    4901            N           2606    17084 )   especie especie_idestadoconservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT especie_idestadoconservacion_fkey FOREIGN KEY (idestadoconservacion) REFERENCES animals.estado_conservacion(id);
 T   ALTER TABLE ONLY animals.especie DROP CONSTRAINT especie_idestadoconservacion_fkey;
       animals               adminzoo    false    267    4907    263            O           2606    17220 *   especie especie_idestadoconservacion_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT especie_idestadoconservacion_fkey1 FOREIGN KEY (idestadoconservacion) REFERENCES animals.estado_conservacion(id);
 U   ALTER TABLE ONLY animals.especie DROP CONSTRAINT especie_idestadoconservacion_fkey1;
       animals               adminzoo    false    267    4907    263            P           2606    17079    especie especie_idfamilia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT especie_idfamilia_fkey FOREIGN KEY (idfamilia) REFERENCES animals.familia(id);
 I   ALTER TABLE ONLY animals.especie DROP CONSTRAINT especie_idfamilia_fkey;
       animals               adminzoo    false    263    4905    265            Q           2606    17215    especie especie_idfamilia_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT especie_idfamilia_fkey1 FOREIGN KEY (idfamilia) REFERENCES animals.familia(id);
 J   ALTER TABLE ONLY animals.especie DROP CONSTRAINT especie_idfamilia_fkey1;
       animals               adminzoo    false    263    265    4905            T           2606    17151    habitat fk_clima    FK CONSTRAINT     q   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT fk_clima FOREIGN KEY (idclima) REFERENCES animals.clima(id);
 ;   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT fk_clima;
       animals               adminzoo    false    275    4913    271            H           2606    17116    animales fk_cuidador    FK CONSTRAINT     {   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT fk_cuidador FOREIGN KEY (idcuidador) REFERENCES animals.cuidador(id);
 ?   ALTER TABLE ONLY animals.animales DROP CONSTRAINT fk_cuidador;
       animals               adminzoo    false    257    254    4899            M           2606    17131    cuidador fk_especialidad    FK CONSTRAINT     �   ALTER TABLE ONLY animals.cuidador
    ADD CONSTRAINT fk_especialidad FOREIGN KEY (idespecialidad) REFERENCES animals.especialidad(id);
 C   ALTER TABLE ONLY animals.cuidador DROP CONSTRAINT fk_especialidad;
       animals               adminzoo    false    259    257    4901            I           2606    17126    animales fk_especie    FK CONSTRAINT     x   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT fk_especie FOREIGN KEY (idespecie) REFERENCES animals.especie(id);
 >   ALTER TABLE ONLY animals.animales DROP CONSTRAINT fk_especie;
       animals               adminzoo    false    254    4903    263            R           2606    17141    especie fk_estado_conservacion    FK CONSTRAINT     �   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT fk_estado_conservacion FOREIGN KEY (idestadoconservacion) REFERENCES animals.estado_conservacion(id);
 I   ALTER TABLE ONLY animals.especie DROP CONSTRAINT fk_estado_conservacion;
       animals               adminzoo    false    263    267    4907            S           2606    17136    especie fk_familia    FK CONSTRAINT     w   ALTER TABLE ONLY animals.especie
    ADD CONSTRAINT fk_familia FOREIGN KEY (idfamilia) REFERENCES animals.familia(id);
 =   ALTER TABLE ONLY animals.especie DROP CONSTRAINT fk_familia;
       animals               adminzoo    false    4905    265    263            J           2606    17121    animales fk_habitat    FK CONSTRAINT     x   ALTER TABLE ONLY animals.animales
    ADD CONSTRAINT fk_habitat FOREIGN KEY (idhabitat) REFERENCES animals.habitat(id);
 >   ALTER TABLE ONLY animals.animales DROP CONSTRAINT fk_habitat;
       animals               adminzoo    false    271    254    4909            ]           2606    17161 $   habitat_visitantes fk_habitat_visita    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT fk_habitat_visita FOREIGN KEY (idhabitat) REFERENCES animals.habitat(id);
 O   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT fk_habitat_visita;
       animals               adminzoo    false    4909    271    284            Z           2606    17156    visitantes fk_tipo_visitante    FK CONSTRAINT     �   ALTER TABLE ONLY animals.visitantes
    ADD CONSTRAINT fk_tipo_visitante FOREIGN KEY (idtipovisitante) REFERENCES animals.tipo_visitantes(id);
 G   ALTER TABLE ONLY animals.visitantes DROP CONSTRAINT fk_tipo_visitante;
       animals               adminzoo    false    277    280    4915            U           2606    17146    habitat fk_ubicacion    FK CONSTRAINT     }   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT fk_ubicacion FOREIGN KEY (idubicacion) REFERENCES animals.ubicacion(id);
 ?   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT fk_ubicacion;
       animals               adminzoo    false    271    4911    273            ^           2606    17166    habitat_visitantes fk_visitante    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT fk_visitante FOREIGN KEY (idvisitantes) REFERENCES animals.visitantes(id);
 J   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT fk_visitante;
       animals               adminzoo    false    284    4917    280            V           2606    17094    habitat habitat_idclima_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT habitat_idclima_fkey FOREIGN KEY (idclima) REFERENCES animals.clima(id);
 G   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT habitat_idclima_fkey;
       animals               adminzoo    false    4913    271    275            W           2606    17230    habitat habitat_idclima_fkey1    FK CONSTRAINT     ~   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT habitat_idclima_fkey1 FOREIGN KEY (idclima) REFERENCES animals.clima(id);
 H   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT habitat_idclima_fkey1;
       animals               adminzoo    false    275    271    4913            X           2606    17089     habitat habitat_idubicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT habitat_idubicacion_fkey FOREIGN KEY (idubicacion) REFERENCES animals.ubicacion(id);
 K   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT habitat_idubicacion_fkey;
       animals               adminzoo    false    271    4911    273            Y           2606    17225 !   habitat habitat_idubicacion_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat
    ADD CONSTRAINT habitat_idubicacion_fkey1 FOREIGN KEY (idubicacion) REFERENCES animals.ubicacion(id);
 L   ALTER TABLE ONLY animals.habitat DROP CONSTRAINT habitat_idubicacion_fkey1;
       animals               adminzoo    false    273    271    4911            _           2606    17104 4   habitat_visitantes habitat_visitantes_idhabitat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idhabitat_fkey FOREIGN KEY (idhabitat) REFERENCES animals.habitat(id);
 _   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idhabitat_fkey;
       animals               adminzoo    false    284    4909    271            `           2606    17240 5   habitat_visitantes habitat_visitantes_idhabitat_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idhabitat_fkey1 FOREIGN KEY (idhabitat) REFERENCES animals.habitat(id);
 `   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idhabitat_fkey1;
       animals               adminzoo    false    271    284    4909            a           2606    17109 7   habitat_visitantes habitat_visitantes_idvisitantes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idvisitantes_fkey FOREIGN KEY (idvisitantes) REFERENCES animals.visitantes(id);
 b   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idvisitantes_fkey;
       animals               adminzoo    false    280    4917    284            b           2606    17245 8   habitat_visitantes habitat_visitantes_idvisitantes_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idvisitantes_fkey1 FOREIGN KEY (idvisitantes) REFERENCES animals.visitantes(id);
 c   ALTER TABLE ONLY animals.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idvisitantes_fkey1;
       animals               adminzoo    false    284    280    4917            [           2606    17099 *   visitantes visitantes_idtipovisitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY animals.visitantes
    ADD CONSTRAINT visitantes_idtipovisitante_fkey FOREIGN KEY (idtipovisitante) REFERENCES animals.tipo_visitantes(id);
 U   ALTER TABLE ONLY animals.visitantes DROP CONSTRAINT visitantes_idtipovisitante_fkey;
       animals               adminzoo    false    280    277    4915            \           2606    17235 +   visitantes visitantes_idtipovisitante_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY animals.visitantes
    ADD CONSTRAINT visitantes_idtipovisitante_fkey1 FOREIGN KEY (idtipovisitante) REFERENCES animals.tipo_visitantes(id);
 V   ALTER TABLE ONLY animals.visitantes DROP CONSTRAINT visitantes_idtipovisitante_fkey1;
       animals               adminzoo    false    277    4915    280            8           2606    16488 !   animales animales_idcuidador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_idcuidador_fkey FOREIGN KEY (idcuidador) REFERENCES public.cuidador(id);
 K   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_idcuidador_fkey;
       public               adminzoo    false    225    222    4877            9           2606    16498     animales animales_idespecie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_idespecie_fkey FOREIGN KEY (idespecie) REFERENCES public.especie(id);
 J   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_idespecie_fkey;
       public               adminzoo    false    222    231    4881            :           2606    16493     animales animales_idhabitat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_idhabitat_fkey FOREIGN KEY (idhabitat) REFERENCES public.habitat(id);
 J   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_idhabitat_fkey;
       public               adminzoo    false    4887    222    239            ;           2606    16503 %   cuidador cuidador_idespecialidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuidador
    ADD CONSTRAINT cuidador_idespecialidad_fkey FOREIGN KEY (idespecialidad) REFERENCES public.especialidad(id);
 O   ALTER TABLE ONLY public.cuidador DROP CONSTRAINT cuidador_idespecialidad_fkey;
       public               adminzoo    false    225    227    4879            <           2606    16513 )   especie especie_idestadoconservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_idestadoconservacion_fkey FOREIGN KEY (idestadoconservacion) REFERENCES public.estado_conservacion(id);
 S   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_idestadoconservacion_fkey;
       public               adminzoo    false    231    235    4885            =           2606    16508    especie especie_idfamilia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_idfamilia_fkey FOREIGN KEY (idfamilia) REFERENCES public.familia(id);
 H   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_idfamilia_fkey;
       public               adminzoo    false    231    4883    233            >           2606    16523    habitat habitat_idclima_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_idclima_fkey FOREIGN KEY (idclima) REFERENCES public.clima(id);
 F   ALTER TABLE ONLY public.habitat DROP CONSTRAINT habitat_idclima_fkey;
       public               adminzoo    false    239    243    4891            ?           2606    16518     habitat habitat_idubicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_idubicacion_fkey FOREIGN KEY (idubicacion) REFERENCES public.ubicacion(id);
 J   ALTER TABLE ONLY public.habitat DROP CONSTRAINT habitat_idubicacion_fkey;
       public               adminzoo    false    4889    241    239            @           2606    16528 4   habitat_visitantes habitat_visitantes_idhabitat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idhabitat_fkey FOREIGN KEY (idhabitat) REFERENCES public.habitat(id);
 ^   ALTER TABLE ONLY public.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idhabitat_fkey;
       public               adminzoo    false    4887    239    249            A           2606    16533 7   habitat_visitantes habitat_visitantes_idvisitantes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idvisitantes_fkey FOREIGN KEY (idvisitantes) REFERENCES public.visitantes(id);
 a   ALTER TABLE ONLY public.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idvisitantes_fkey;
       public               adminzoo    false    245    249    4893               �  x����n�F���O�`��nn�H�ĖcD���$z��F31���9R�Ijj_�cz�v�4�.uY����4UT5Jӭ{�G�dU�:�Ze����?C�]Q6�)��j�,�u^�ۢ���$Ъ��7�/^�eWp�����y8�I�����N5���vs�d��s-ݎ�i�����B�%��n'��"�۠�(���y>��z���:i�
����h����,�d!DA�G��O�`Y��T
��ss��E��G�wL���LҲ���;�);���jFqM�=�nr�\Ɨ�z5�z=LS�����������c�D�.�c��~�&H�d������T]�vIM�0G5/�>��$=T�pa�@r�Ў׽�
��mRd�-}��".�4a��W�9US��E�R�>��%y����찡kln{��DezCmC���hG���)�ͧȡ�Y�?��\��/I��0��!V��Jk�iz���]��I����T+c���/.�o,yT�������~^�E/�pY��eq�ʨǍ25��Oi]0�H��Z}:�5���Ci�ϟ�K^u0���t�nݲ0��Pl���<����Z�L���.̍	sS���c�UVcR�}K�����ZYL�x>���x�!�U��O��k
�ҬU�����p�OiB�$q�xkLAO����\)� ���=]�5Ie�n]Ն������/if˰w�+�����6E�aأw1���ҳ��t*��z�!ŋ�6T��dh��q�Cb��Y�'ӐW"
aw�M�n���e��jzs�}�W�
+֮f��x:�'�[���.ST^���!�� L4��>���w�2�͚̋��x��Dk?'�f�c�����_��2��nZff1
5UFՖޝ�qVQ�(�U<T{�ZO����Y�2/7��oK�"��n��)9�i�>��2���}*��嵪�˘Ӌ��n�|���d�����4�h�� D������y����g&�lL�6���>�:�t�i��&�ؤ�T�s>P��c���UM���s��b�U�ҫqL��{�/lv��a���f[.�җƄ��[����!v��eWMMw�C�Y�_�.k��0�w�w�ˆ;�Z�s�i����jS4<ݻuL�K����]9Kt�_�$��[E,�DZ�����o�nZF�J�t��n��G�P�	�+Օ���ס��ˎ�z�W��S$Vu8=�W�7/�:��q|L�O��ժ����G?l ��,�uݱ?y�*�{w�BZ�4�58ڵ2�v��\�HʸO�2�Y�RF�`��/M�-6�����t����'�)l���ZɄ�ވ��YYfT�C�TF�"�2�L�TF%Ne|m�*#g�TY�"�2fMdUFdXeL�H�t��U�?2�2ZV���2�-#+�t���(���V�VDK���lq+�Epe@�L���ѕM#�+������"�2xz_H����ZX�f�`\-",�e�e[o@,�f�b�s�����9��"�2�z�d�;��7�2�ZdY\�0ˠk�ft-�,�E�e�@� l�h|-#-�7��A�[P� �M�e���r]�\��ml�-�-{ܖЖ��"�2H[�[lo�jo�12�2h[\n˄��mq�-3.'� ���2�2�[�\x�˭A�[�?�� ��e���.���e��D���p����������G��?@;O�      -   �   x�U�?� ����0�\��F5&��z	�?�XKj�w��=zǣ�+#��$���E=�Q��=9�,�(��F9Q���ז��k��ͧ�Nl�l�K-l��32�C�[����XG^z�:��e�����Jؚq�jQ���)��)�5�Y�rEE\Y1��b1k�LZ���E��O�m��Y�^7B��iu         �  x�U�Mn�0��3���C�.�Iaحag�k�� Y,(ˋ��K/��t��v�#�03�{O�|��X����)�R�R+�\��A)�H��a|�b1~��t���H��QIGh`fC�{�<~�/�T�T�L:�|�X7G�GIERW@U�d�������m_�VR�$CI�c;+^|n�g�*��E�X²y\+������N�+X�h�G8�7��<KRF']�5��O^�l��D���I��%CٻNl���I�g�0��FY!���uL�i���jZq(��h�/~?�z��{7�ٕ��}&�Px�]�Z�;�����S9�'�A����zh������ΐMn���i�m'����c���Qs>CӋ':�rw�EDE<��E]��B�m��n�6\�VS��{�쪂�`�m�o���8�`S��]�l��Yk�#�f���e�ߔNȐ�sߏg�lC��'*c��p�����f�,           x����N�0���S�	P���z��8M8q	�AFm���oOR	:P6n������d��݈ŭU�C'�ؓ6�kF�Tg\�>⇧_��T����*��pb�W�AwPv^-��Ҡ|��l�C6㕦��[2�Z��1<}����ɓn�h�^$�����k�m��M&<�2;���b�=u�ǹ��^;l�>���������U4*�E�5��;������F��&�����J#��?Le��
�B�%� �s�U
,�)�P\'e�,T����,�I��,E���s��Q�      !   �  x�mT;n�@����	�/����HlǈA����Xr�%i���K)�tiy��!IR�3o��f�Tï�J���t��c/��\�� �^#۰+�h��םr<J)m{u3��;K!eޒ6��vjV��:g�/�qB�]�%y��A@7Jn�<���pm'4�ϭ�o�4�Ѥ�5��xT\�1֕��#�4\��ե%"�S �ԋm�������oIW�s������I�BW-�h�-F��i]8m&1�+[�D.�"��8���v<�dJ(�6{]5\��4���u�w�k-�g���N�	�*�_������0�3$���7�s����S�iy�zx�t.\VG�n�o���1����f ���/X���PO�'��M�(�,�N�ǈ�o,���{�Yc��w=9'tg]ח�mII[6�kåmi�D���79w5����6��l�<XHT���BW��2��qS����,v�/�2�\�� ��yB��UCPf�+�08��ºJ��@�'t.�y�k ����t̕����+�h�S�rMj�<��N7�ea��b��X��F���`� ���
�l�����jtJ�l!	i����RĈ�z'6;��j4�����8�:9��LD�#��8\l����q��u�c�U�Kʭ���NPc,hy�/���3!�='г�[���]
�.N��k�"��.Ax�N^�
iú��l��۳WD[~��h�I~{�y��{      %   T  x���MR1�םS� �e�w�0;��Pх�fh0T&M%�)�Z���b�p��K:����g {�l��O#�ה[�[Ԟ5mlL���E����YGt���Ʌg�*[Q-ȱLr�Uȼ^����:6ٜOK�I�
�s������ӫd����Kqy�d��0}�i�<�9��AC��:�V�.hnQV[;ܱ����Ƃ<�<�܈��1��^�'���h ��8/׸�+��WG��pCL�����>Q�1��j��àX��=��Z"k��֗&�t�Ve�#���G
�~�2w��5�
��q)^�<��i]ش/"l:�El��06�k!��*���,LL      #   �  x���Kn�0���)t��|��LܤY�E��]�0��b@qR2�ި��"�����,���y����$�1r�vƧH�Q�G�)�,E4�A(��]e�����d�����%{��f�o��
bmcIb�����]���+���=F�u&��1P�=C���"����&�@	�����X��6����c�`_����1����n�3�%����p!�c�y�{,)�Ȇ�����R{.�� 	vK̋yz.�M��o^�aXB���sC+�	&�� �f{Ӵ�<ľ/-oR��	�"t��b[:�ٹ�Q�v��T���b^�Ї�~�u�8��{�-���?�%iQ�[�R�W��8�3W�j̇"�#B�꓈��<#r3��NP��1Qb�%'9Qj����D-'9Q�9N�z̉��p��s��Ř-&8��
'ZMq��N~��f�x�      )     x�MRK��0]�N�K�~�LH`��ʦƭ��RG��\'�"�}�<94���U��)zL�C�wk-�i�)���} %4}�9o�;>V<g&O�9#�Ƴ��)x~ǔ1��֑�b��i�R]K�5��\���J�������'wK9��7R����4�.�
�r!J5���ӻ�|�R���y�{���@�e�dD�/)��T��\�R4�zR������J˚jY�P��z �^��9�ש���/��T���#�e�B-ן�Oo��g��2 ?�P���|����XEM�r�Wd�27e�3�|�uL��&�k��`h��������9 ���[���3��S^[t�)tB98t�^!o��-�C��h��$�y��A���@7P�*�w���ߦ�i�Z���2���=l�	�BE�ZR���yC�`���J�0B���j����>�=2��`���5Q�ǌ��{ o�ak��n�5=�<�[Lhs/c�.P�[�8�i��G
1�-$'�J!�_��p      6      x������ � �      /   y   x�3�tL)�)��4�30�2��M��/RHIUHMIL�4�s����d&敤r��L��r+�8MA����E��y�
��y
)��ɉ�ə ���
�P,3�j��e��,34 d[� �h>�      +   <  x�}�Mn�0�����m�$K���������	8�Hē��c��XHA
Nw����'�[L^(�Te*�|H@�Aa�'�R�5���"��������<����x�-�0۹�d�b��gm�ǲn�+��Ў{��ȉȜ����RNlAJ�2�;n�۰����:�dM8Wj�vX� Sq�[�蓬�9=&Ϝ��ِ��Co��3� �,٣�>��u���U�ª�%bcr���u���JnLI6��ɰ��}��/V�T}Į"�j�W���Ы��㫘������D_�z��#�:����:����O��_ �~�m      2      x��}���H��}��x���JIY����J�۵�A&!
���\��ڼ�X�#�!���r�c��9f#�rZ]��<�d7M���VE�y�+W����7�g����h6�]u���]������ԛ]�b]7��l�l�]�ͮ�/�m�}Ym�l�l�}(����wU4K�����i������&�Ū�RlM��}��W�m����E�ZWM�ÿ����㯳��ܔ�Ͻ늯�.�v]d�g��bSlw����*�j��t>�.���vW�.�{��<�M�^� ����/�૲��m�c�վ�����3���B�����gЫ���t���0��V:���دK�i��)��w�ؾ\���_R�q?�MSb�u~e��/�U�+z˦��}��.�<�>��U�`�0`�f���އzU.�E�j�W�O��e?㧻bÎ��K��ݢX}��nV�~��E���R��������3�>���r[�~�{�E�ۻ�B��%��Q���t���Ì#�'����ٓ�(�������,>
=�+7���X;�5�h
]��]_�l�d�01[�@w�߷�}����N�W+��f��a"W�m���g�������?p�J�b���Ջ��c�>|���c��Ǔg7ھX�~�N(��6dޚkS<�i�F��/��5�m{������h����DÛz�`Ӽkv�#5�YA��.L�eq�W����כuq�_Ӌ=_��+����S��f��~(���U��6�h���T��>��[��o��h����~����ٓ&K}[�ss����;��|�a�<;��SS��$����k��Ѕe�Ap(u=����W8��Co�rW�=�a���,��/���,p��(���<��#z�����=&`��/�����{~���1���z�޿,���W�c<ՍrW�8p��c���ϲ�U���{��o0������-V厣ϳhCOߖ�=8wK���ι�kL���C�'��w<v;���O�
=�\�����Zb8ɮ��<ֽ�?1�E�cq[c|��\�����,8H�h������a�<�={)�{��,@��>~�qx�sX�k��Y�i�Zc��0��l2�(�xb�NxIǅ��2}IS�x`Wa����A�W'�o��Ui�.p���<�\�k
�ޫf��}`�������-�����?�_�.<?�)*!�jɦ��^�}���y��wK�{[�sM����3���3�~��ύ9�BՒG��9�~l�U���^��'i�Y�N!%��5����B��k���i�β�R����]�W��l�	k������k#$,�^s���(	�C~P�Ͱm������%��rwt��7�KZ�^��^��G��f��@�r+\�	�o|��{�O� �L�C�z�>~6gK��n�{!�����l��\6�Z%��b�W!����=y��m��T��u��t������ͲŦ�*�9�vk��)O>�>S.�z��r>�ݷ)�}w����A�rO�.K�*~?tv����mZO~��`>�?>U*�8)�$�m9�;�2��Y�+~i�%YԫO��%D�5�,�0��V$~������52ǥ\֛��ɩ��G�c7�=��5x��[��-oWg�]A~P�7F��<{��"���O��,����v�Y�)�l�������|���]z�������F�(gY��@y�����}���K�Wܫbu��'0Y�)�-���Ն�:��6e�����aƫ0�W��dm�b��=�g�M�	��Ymև?8z4��ú)0�i��
�l6�����:	W�F�
?Wm78�
�Ct;�w�%��v�p��ۋ}��í����S}	~�ۿ�N��7{����[,"G|S<`n /�Ǳ��蝇�a�M��ANd,������|)p�Үγ�ع���k�����]y��X�у�;A�k1u��"�$�UʣNT��W
��m��KbJ���9�>�+�m����m+�)*6��]}[/��K���
!!),	��e���c��x}S�Vq���N�J,���� x�c*�n����M}x�����+��Xr�p������D/��~�4\���h	ql��8��(.q~��z������Z��s��;=�l{]��/�D�_;Z�{����r'�����v����[\�=Uz����	ל^q�T��q�>/�(-�p@�8�rM�Ԩ����o(g�
 ��D��%��;{n��!��mMe��hws9L���R�o"�����^���5��+�����\��E����n@>;0�t�`2��0��;K@���'p@~�RuH\��X�jW:����)#j?�Dk���=��U ��+�b�_}�W��p�S�}]�K�-s���?L�X��:B���cw�cc
��E�]�\=*�lT��'��F��U���c
^�~ق;��� ����N;hS�Tl��N �N�ٽ�Fܗ��I�y)���J�
�yU���S�89�w�(�$��W����yPsp�1����h�k��,������[Jqh1�f9� ������Ի���@
�+��m��^.K�0����Udk�({[|e>{��^��m�wQ��:
��������ص<�֟��kju��\9�V �_�+n�xػh����N٪�����{��4M���IP��ԼjP�-���y����Z��i]����ƺ,
�����t�/�ݪ��(��)�ڎ��U�=��]*0��TL@1t)B�W�=RWՖ7���P�hSx��R�3�jˡ\�v9�}b����p�T�o�+���.��0��i`Ao���#D0r�������{Q93�V]my�uz�kv��ʀ��սiz�e��B?f��o��l��C�:�I�1pu�,\��EɌbgg�{��{Qkgv%�u�Sv�� څ㛮�{��Z# �'� [S��^Qp�{��^��>|ߕN��F�j��<P�g�..�u��xt���]�ca���bW񬼩!��G^ �/�
�dN#�L�3�L;�� ��j]�J��A�B�Scew�<��|��By��n	N�f3m�M� h�oL1�.�J�Dz��jdmr? 楜X�8���8������늚Т>�$a���Y__����y�8�`���������j�Ba�T4$�_
���JK�`J]d@���Dn�*LOe׎�p���u�Jyne�����]�P:�fQ�]���{$�3\�*����h����p�(i�#;{���w D��e���� �j��=�.L9��84�P_�=WH�+@��`����N�-�7���kByAW>�ЯN3��0M�^vC@�f�dH�t��Y)�jbQ�r@��7�m9q0M�&�V;.�����V���汽�h�ioM��A\��{Xu�e���~ܗ�d�}�y1���8��P��cZ�D��¡O7���øP�����WN�w����z<�ϲ�?׼n������&�2nFoM5v���)^i�p����L� T�����kr�� �_��'l$� ��jv>��Z//Z=��	��m	u�v���f�Ѯ&�ț0���!���P��b��ؿ� � ��l��Dad�����n�X�b�7s�~yn����S2o�&t�!L���d{1����!����ޫ��R�*P�3�]�v8���9�9m�M����Q0��Ձ�ԋ��X#�5�L&���
�'���lmӠr��%ptk��_�6~� '�a~�!��T�Z�+-:��w��#�g���Z,�
��W�U߆�V��ӊs�ʹ嶧$�/U��}J�t��\�	�b�tlG���
;�V/�!����n��Z�	h����y��b���c-��y�F���cΥ��� ��>zS�>����Ü�h��a��z8|�!_D�z�X��e%870��\�r��x�z��{8���T��3�|5����^d�㤬�����L	�������C������\]����>X��6�ԕ����_�5����Nkg*�%��]    �ӶQ5�6Okg0��J��j��e����˞��t�"fп���ϱm�]C5*�-�S�*���8����h�%�lU���M�'�fW�R��/6�R}w���9�f�kj�dιȧf��Jg/�ԋ��R~�����ڪ��P%Vȷ��Z��!Uhxѝ�'���~g�tZZ��:������X)��L ����^��kۙ<�R�����X6|�ݡ�(���[W�����#�����.��Y>Syo�F�`?�MtM��Q׸J���|�m휎9]�7$6o��������@�v�}�h�VK��z���C��7Z�p>�s��hcp@�姆���0{��( �i�`Qw�G_�Z��D�g�2���}�C���j,�|i��a�\�u�_���s9OufU�!h�xB��P����vߨ~��	}��3��)\ݦ`�8���ci֞�Zw���ce����Z�Be���aCQ���C�_�c��NYƄ ��UM��瓇N����ڔ���}U�qۯ͜=y6�N[g頻�nV�^���/A$A�A�`����'��ДP<�7@�T5�i�~<V���f�>"�U%

�#�m�R����/����ІY�^��}m��j�ͣF${r�������ž�g���D��	�y�7��߂x���ͻ�h�^:O��Q� �չj�E#�]�����XVjd��ԛQyCk)7�.�����M6ҭ*�K���ؘ;;؈y��¥�~��S�:�̸Q�p$�]�%�������Ǣh��<{[�v������L���u��?;��]���W�n��sX/��b�=H�%�%�L@� v��f���������(�X(�g�䉌Ts�V�as7�{S��U�Z�v~t��ŦŜ�G��M��\-�3�l���X8%����<o��� �C�(5\a@I_��t���w��TJ>����6�7�����@��'܌�=�;}�6@�:��F��#S9F����� f�R��i�kQ��5}�w]]:k��V�����gp���B�@V�Ò?b�^�/&�z�#}���_=��~_�?I0 :��F��R����>s��w*JG ���l�:�><f�@�1���c��y��~Zw�j�@��x�^lnŸ���2y)�a�+NM�,^��7��𖂪*Z_A��c�� �Z�=��@��E�� q_�4�Zjl��m�1��v;_�/�.Ҋ�ҧGa�
��̻�X���Y �:\���޸�_���7�ך��D��x��Y�6�]`��G8v[�0]�����7�Y��yv}���>Q�d��.���؜���f����ޯ��`�S��o+Zx!����!=�m���E���IgZ  %�s�;dGS��J�s�N�K�@��FM�J���|����3��<h���!.>kX|C͇x�������6�%���Y���͹�!���4Q�	ఀ����aG��7��:6`�� ��b�����IL5�!���4{ӭ�nNAc&m���`N^��Ӄ�M�#�n�G�s)	9�3�rejTC��w�������8�h���:��84��l��8<�Y�j����)��7�n��*����e�M��cF�����JX�d��%�H���SG�i/t�q�$l��V�-�5�i{�)a6D�]z_.��BY�{k�c�$X�;���z,�HL�V�)��J5��8[��QN7
�:��-�-'��@i�sq+��qU���ݞ��GCg�woj5����+��<�񡜠��M��f[9j��������n�RG�(Գ�L��i�+�B�|Nش�����z8�K0�]�Jk0�΢,��f��	���~�W�@U(����1�!0v�i�4���'����}�\ (�����ȴ�������M���{^�5��44��;�\T�s�o����}x��~���1>�ݪ�d<p~�PUw�� uU��D���:�� �(z�9	/�غ/�H��z���?�T3�U�;�KJE6l�WҚ��÷ÿ��:��ߚh,��o�u9����htE0e��:���}g��z�d���q_ V[��]t�6��0S+E��B�g�2�#�Q���~.k�4��sC�B���W��� t�r'��:�������
Կ��Yj�������BI���ۦ���:j��x�]�
`�{f�3DY��gL�.W�Z���9��B���a1)���P�/�ѷ��!��I�(��{���׋��otV��0(�#���8[���� �2�z,0��~�1�4�udF�����/78PN��S�}(��c�=�mz�x��{&\�|�����e���}�,� @��p1!���z	T ��ѡ�߭�Kv0�!M��8���A�w�̅S4��9 B�*�f�=��q�ߩB��,/��)l���s�-��mr^,˘��^�!�ߨ��qq��&G/Q'�V�c[C�$w��e?_�\Ko�w}�F�X�%��AlOc6���0ۏ����B��10��E�jS��/.��nQ����������5f_�*~���ё7�� �Ӥ�c5����
��.�5�
����IU7nL�����к�W�pv~+�>�F�\L?��[F��ޯ�MT>[������>���܃6ZE���b�di��1'����}��է�����4���F�D��� v����Y'
����&ט F��*צ^��]P����~��K��j�}��F{(�;u�(LN,@��{��5R���kK��u0X�7��Xc#l.U��eM��I���=����M�.�C��p���F`�;(l(������;&G	G�����z/��q�}�7��Y���%�E�y֫ �tw���^�\��7wj:�p����'��c�L
�h3���*� ��z��D|�)&�|h���iLrv��]�����G.� �X}�N誈�O��E^�)���8S85�ƾ⭛-v�s�GrKa�yl�o�Z�s��d�m~<�p�^cf4da�}`����y�^P)Q�)f� �} ^oh�xQ*�t5��iG?�
|d�S^�l�o5�C���?�>ΜZ惭��yF�[m�q��1-��Go�w��Y����5uN�G��N1����fWo��"]��cǽz���J:�{��{.��KY��d��{����+�B1�0��]�u��݄Q�a��/���#�΋r�,�ĭ��s;��ML�P-�:�>�/>���O�Y �ź��s	5p�g���
��`Yr΁���	��Q�j�683�S��.�z+���M���`���"�9q��P6����\Nj�#��O���:9�«jMO��E��y�>0َ��.���CS�NT�����X���q��S�վ��1X\[+Ε1����p�D��W�����֙���JM$�S��sg>�����h�	/����}��+ouX�YH~� f�;׵��qi0�0�DjH�3��=�k �*����o_.�:������H��������o�1�Fɮ>*�&�Qk�l����P}ȥ�ףqkQv�o)�ځI�����p{�d��E��)�1$�9�ʇ�ݢ�ΙAp���ʷ�'b�~RK���5�$<�&����`m����Zh����9�o�5̥HР��
��:kmos�k_8�è���n����W,�s�����tg�ź� ���ӣ�#��|~"f���ER��gݭ�1q�����.�uL�>�?Q��UM���}� AZv�����&q:�~��^��ʍ&
N�w�mtzmOie��T���>��	ocu�P=�N&�%�yX�}R��W*}�13���:���}�/�%}��
d2�=ѕ���}y���w͸�&΀�&��@��&X�^�Ǳ*�� .	�\��7���ӡ�4��f���C���������f49[_?��\��[6e���%��oKʛ#Iݻ��j��2e.�M�R�k��Y�ū�<iM[i_�GZэ���y�\������/W�B}�����ϙ,�FfӠO    ���W;��D�K��̔������3�&�nA�ґ�U��v�o���ĩ'
��+[�Ϧ�n�"��̹9��9�o� N35N�����C�9�t�Y�I�������r��>v�2xp� �;��!��.��~_}��!P���ނ��fԿk& W�ކ�V�}�"�k5�,|��iб!��9�tGϹ?n�V�e�s��n2��ǚ�籍"f�i~�;�r����̙c���.�8<�W�b[�<�/!�_��*]n��"�\��$��礨Tk�XH\�|^�/�1T:�o���g)Zځ�-n=0�h��0}reZ�����{g�rq�EtO ����M�j4ZppRCL�_���1e���޲B|=|hʔ8v����ѺLc�+#~���`�M�08XH�{p��Ș�Ll�c���x/6LZO�E���c��������;GSr�߭x6mv(�k���E�I|�o�2��<�P�D�}���t���P*T�?=	Y��(-V�]e�����SZ�G�xF+�JM�i_ÞiҜ����H�wSVxp��������P|���2�/=��R�1ދ�׆1�B6���E
�-�����ܞ�S��Qt�)��3�iD�_� ̚����6�qbf���3�:�j4Q��lơ��� �"��=~��7��=��QZ8����y�é� _��0LEA��1�JM���nf�)#����-��?_�g>mF����U��<\���yyn���Q|�@Z�a�����/�P�-��4H�F�]Sfɩ���E�f�MGcg��@��CKfOG�Y�w��.\|eD�u��^�Qy�e�5;y��a!�i�s5��v�%�H�l<o���B����
y�)�M�eF��EkiF���L�׏�z�p��U�=|]u�j��4S�y㱏��@#a٧	,������D0<�c�g8��ͣ�>�n���&�~�|l<����*�R���$yt:i�oV�@��g&z����HXh�>8<J%���`�}�cЧ ǿ����D9%�G�k��q����x��C��LZ�ŸX���LB��uM1��33�u�a3/uDs��㼗}_Z��9���bv4�����j���<aa�.�ef\Pr]����������n�#��t�G�X3�*��6
+���� q�
h�B��L�S�elJN�4�e��ZZ9�)e���ᘛ	D��?�C�]���z�����Za��fA
��΅n��
W����M��Ά!)�.,����;峑7c�n�wD���������h9�Qi�5�F��!�k��©��j�3�i��� ��u��
d'����t�M�}ْ�xiX��1���������m{o�3�M��5*kөSJ�t�����r3��K��q�(�..�_9eT���_�1����uⲻ4��W��M��5��`a��=]ں���7�Bf5�5Q���p���.w�׷0C�v�G���!�����N2��E��$Ng|=A�#�:|�1!Rm$[E���Ƞs��/����o-�Δ�����e�ur�1���'�>�5´�A�L��B���.$8�r�4\ǐ��r�9#��R���f�
������V'�G�bn���C��CZ�ʍ������X����s�)���S]��+k���!�[8�_=!6_X����uǊ̀�]������_�� ��q��Hzֶ��C�㙇�Л���V~4��օI�eq��e�Fvi�:f �W�2/D�¢�f��(�\�*N{�
6������GI���`��X ���Z��C�h߆@�`;�fJ�%�3f������5 �� m���q5��{3k�����������f�4�w�;-l�e�|A5pqu����V��M����?y�Z������Gn@�Qd���g�.���4�6}_�
�"v�Ȏ��g�iB!�Z�i�|ƯjjL�5t64œ�|��k*����C�7L��y6k�����L��z�[�Ǘ�[�\~c4�9��5�޶��( ��j�Ñ]Z�Lu�c�r��Y]�ǵa��h�*�*k>61��V4�F�۟ځy�\���t�Q{�画(|�z7hX{ϴ��;�}���4�V/����*�I}/�si�B�k9��)@"v��v��?1A��R-HnN��$,����fc�[���ea.h���Yj��.��$�^�iE55�Y��C�Z{����f���H�b_��}=@7u��\u��V�֮�"�����E�N�{l;�
\T����]k.*؅`<Sܞ����8��jV����Ω���c��X��ؼj��{6Qe�N-�>��z�ŉ�	�MM��=��Oj�ͦ�
�K^�T 6��z4Tie%}`HO�p�q+��h����|���f9������[4 k��֙ƪ`��S���T�z�L}���Ko��g�D�m��3�r�Yn�G˶�M�v�. �?�>N�yO�QY���Ϫd��詞�'���n��U-T��l=l��_:m��"�T��>���d A�`��Kf����?Y(�}����A+�ָ�QĮ|ۄ�#aX���ȍ��G8	����2	T�T�l��gL���P�#�dh�^Ѫ!1�3�0*��ӿ4;�l>�@��ͮ�����w_�$�e�X{��	��*9�Rl$_2�y�gj|�Z �!~6��몄�U�pB��_�J�s�DNS[�X�qQy���x+����}s0��;���W��ڿ�RMS�|�}��~�Ͼ60���hiY��+�9���Ōʩ؜�pp���Z|lz�}��[M~d+ˮ��<�<�����Q�(3��j��~��9�\-A⯖�`�S{�X�����m��(�LC�����4�"Me�[���#�yJ8����0ڊ�i9V������yZ�yѸ�b�T�s�B��8yfV&��ւ�y[�ҧ	́��ps��+�3g��Ә/��j����+��2j���E�5���q],�*����M�
�m;_^�r��Z���:	%5�J&���#�i@VA��,`�,d�y-���p�����m�-�
��<(,QƇ�̇�`h_h|�cG_��^ie��od�	�_��y��8��M���>\U�r�:@��s�!�"n���Kd��Z!�@����młT�K<���gJx²'�-|d� Mx���������r>n<��J Έ�Q,T)^$x�e�i�hh�Z�S�f�-����kG�� ���>���D��-�/��܌ZƐ�0������,lK�jN�έ�p�#���k�V>�{w��~.0|�H�8���'���ɡ6�O�և����j{ A������@0�⻻R���빅�p�د'A���U�}`�a��5$b`��VKu|W��{�X^t����74i1S�3���%59�&�ٹP�CL��Lćޫ��U��3~��l�O��	�V0=*��S����]�MOW@��dv��Y|��|2m�����P�9`�/L��W+T�2��>���w�)F��˚���Bx�|:p�6�ջx�6i�ڗ�KWK�am|u:lc�zA�M0�ے�`���̘�sG��tt��֝�K���'��4D�x5�O�8k�s��u��v�m�j��9�YMXl6�����7���ھ�lc=a=К�h��nf�Q糪����mm��v̴�Z��jC�����e׏�x�f�6]�T���~A�S�[@��X�Yȑ0=�l7j�����s�Z�R,Č�������k�B�P+��$j>�v
|>T��Q����P�82W�f>���Q���}�G���i�∎,W�a�/�!h�F�S��ӣ�p|�Vlo*��,{UiH��1JW�9�,�X�6aN��C�2�9�z�����.J�֬�9ma��5���eF���*���v�� �՝�L��E� ��A�#p�O�]���(K`0��|���1�3�sT��c�q�i_q��P�%�ٞU���`����.U�g�Y\�F#b\*`�9��}-b��,�Q��]�^�:
�Ӧ��K�筎��̣*�lbr�o�'t9!�A���Q�5�R�����	_6�    "WK�����Q�s>Ƚ�ΓM�rl��6F�� ��j����w/T�9�|��8��X:g����T�����uP���m㬵Ś����l���[K5uN:W��O�G6g�k���Y0rk���y{y��W��3���zPw'}ȪQҧ&�P��,��;��ǧ�� Epm}:��]��a�]��9{.,�U��[q� `]>��+�A,;K�y��a� ��v���jIZ>6?�Q�5�.�P16sn k>Y0[������#�f��me��ʶC�0�K\�I��J(��r�e/�=;�X�ݘӦ�i*�g\^S���y:� }d�2"X���~�0�Q�s�K���	�6c�<$B8��kWs�?��3�i�S�*VԼj�+���[���);9��j�����<&r�?)�������n��4V	�={��E��L=��XY��B>ˈ���6]MC�sN�|��'�C[g�ՑY�~@�R1;��O�����߈���i��,C��@�e��ӽ6e5�v���RT�PVQ��ǘ�� ����`�E�}��!B݅�\���d�Y�W����<;���Ҹ�����5?oC6���o�Z�
CA������E��q�ֿQ��p$���6�o6��®��@�I#�|��|��6���<2��Z�����)>�V�U��A�ަ�4�5�����έ����B�)�m���Ȏ��d2��]yF|����jiך7`�Rt~vT�Ͽߢ�9����8Z܊H�1q�~[������'ޭ�
��M��Bͦ�b���D������p�u�Ja������~�PJ0�O�vy#��|pts���l+х]��i�;��m ��mU�|>jI�{�*f��Ҹtv��yY��bh�>��w�gӰ�7�ң0���#Ӎ-o߅��;s_�5D�o��OƗ��k�ԓ�q�Um��A.����x)S���=ݘAZ��5`6����fP�_��S���'Ӛ���(78�`�z�����Qd��58<��+]�o5�aR�F�iIcv�,\�o]aZ�N��F����x�@u�̮V�L�P����\	 j�J.����URTvh?���;Eh�?�9����ZO3ۡ!Nn���Z�(�I�g��N��*�ݠ��np��n�Mx7�P�N��R�w2�ߡ)F}���w�k��?H�=J���	�N����)"<4'��d�A������'�C�iJ<4t���'	Z<�Ɖ�И��C�ir<4D��d%�C�i�<4�H��|�&��-E���4Y~p]~%�C[e���yhJ���q���C�9�y�Y�>�	=��(���E���t��ɠ�H?���/dzh=A��������Cc�T�1Z=4���М�֓��z�Q�^��{�Q�b-)�=4�M���Ɖ�И��Cs�l�'��d'�C[�rm	�=�Fi���E���D���v�~���C�)>��$�N���)>4ǉ����Cc��m:>���Д��C{��MQZ�4/_'1���|gP���K������|q~�A�I��$E_���$I_�����n��$Q_�����/���E֗f�K������"��b�S��8�"�}]�}iھ3y�R�}1�$u_w_��/����;��/F�g���Kq�EH��,~�4~�<~]D~�0�%���\~	2���t~	>�3	�:��~qN��_7�_'��y�~ib�$�_��/��&�K������~i��N��$�_��/A�`�����y�bD�LTI����(�_��/���M�w���lʿnοnҿ$�_�����/I�w�_��O���&��N�?���I��O��r�P���� �	�t� J�P�<��"��tPJ�P�d���(q:@9�(qB@9�P������3I%�
(	Z@��J�PN3J�P:�%B(Qv@I��_��N�@9�(���I�$X%J(1�@9M(I�@9�*PNqJ�,P�l�����@�J�1P"����i��X%I(i�@IJ�9PRԁ���䁒d�4}���%N ()A����!(qAI�J�FP�<�r�HP���$�%�%(I2A9�&(	:AI�	J�PP���RP����$����i��WP�Ăg���tpJ�\P삒��$���	�$à�(%�1(Q�AI�J�fP�<�r6Ѡ��%N5(q�AI�J۠��%�7(݄��`�(堤8��tPb����4A<(I�A9M=()�A�&���D�%�?(qBI1J��PNs�IB9��P�4�r��P:����PRT�r��P��%�F():B��J'!��	���PҜ�� %�nVBI�J'/�ĉ	%�L()jB�sJ��P:�	���P����"(�N�BIQJG�t�J��P�h
�$O�D�
%�T(T���*�Y���
%IW(�B�J��PNPJ��P��g-�m���[(I�B�d.�(u�D�%I^(��/�N�B�������P���Ab('X%Mc(<�%2�4��ĩ%�e('�%�f(�t�r��P���e4�S����i(iRCI�J��PR���$6�4��ĩ%�m(]���n(1zC9��P�!8��%Fq(���$9�4ˡ�As()�C� :�?3J��P�\�';�ۡt�Jߡ�&<��$)�4�t�J7�t��9���$>�3�%A}(I�CI��Y쇒�?����%ŀ(���@�$	��bA�ND�� J�QL��M�().D�72D��!J�QR|�!D�8#�$(��Q����`E�S���͋(���$3�$�%ƍ(1rDI�#�IzD��#J� QN3$JE��ő(�H%Β(Q�DI�$JQ�����D�s%J�,QN�%ʙt��K�a�D%E�(I�D9�4Q�X%A�('y�q�$�%M�(i�DI�'J�=Q�L�(��� P�����P��8%B�(�Y%M�(IE9�HQ�L���R�(��$�%Ʀ(�NQ:��4���%I�(iNE9�TQ:X%E�()^EI+J����%ʭ(irE��+J�^QN�+J�`Q����X�38%I�(�,��E�(i�E�&Z�L��Z�ע���$ۢ$�%ŷ(]��r>��)�4碜&]�$뢜I�(Q�E�3�$�%F�(1�EI�/J�}QR��_�3%��(	
FIs0��$��ba��t�0J��QRL�r��Q�\��I�(I6FI�1J��Q�	���Qb���d�4)�$Y���Q⼌r1�Ę%I�(��%I�(g�3J'=�t�3J'A�����Q:9%N�(q�F��4J��Q�D����(I�FIp5JY�D�%A�(�FI6J��Q������(g�6Jk���m�o�$���FIP7�I�F��7J��Q:����Q:	%��(q
GIp8�$��dq�S4����(i"GI29J��Q:�%N�(��%E�(i>G�&t����C�(iNGI�:�iVG�u���ĉ%��(1jGIq;J��Q�����w���t<J'ã�(%��(	�G�3ˣ�i%��(	�G9��Q:�%��(��%��(]t�rߣ$	%��(gR>J��Q�H%��()�GI�>J��QN1?J��Q�܏�E�(1�G�����I )g0@ʟ) %�)g�@J�R�i %�)"H�0AJ�
R�\�r.�t�AJ�R�|��"��������'�$H!%�
)IZH��BJ�R�̐r5��5nH�39�$�!%A)q~H�"��8C��)"��#R:I"%�)	�HI�DJ'Q���"%M)Q�H��E�yl������HIF��������8g�t�FJ�5RҴ���)��#�$s���#�\�H� ��4{�$�#��?R"��b�����9$���DY$%E#)IIIIJ�IRRT��䒔����$%A')i>I�$��.FIIQJJ��t�JJ�UR��r�WR:�%���$�%�$��$�%�<vI��KJ�_RR��b���IIqLJ�dR�,�����Ϥ��&%�4)i�I�qMJ�lRN�MJݤ��&��pR������.�II�N�I�I馝�?�NJ�xR:�'%J=)I�I��O��r�~Rb��%��.JISPJ��R$�e����x(�$�D�(%JE)�\��EF)I �  6JI�QJ��R�)%�H)gPRJ��RN�RJ+��h)���RbĔ��L)1jJ9��R����N)IzJ��SJ��RN1TJ��R:8*���R�,�rM���S)1�JI1UJ��R�\�rY�$�*���R|�ra�$+%EY)i�JI�VJk�$h+%�[)q�J9��Rԕ�ஔy���+%B_)��W�	K�b��s),���RR$��b���@c)�<�r��R:�,%Je)\��Af)�l��Eg)'�,%Jh)iFK�RZJ���Aj)IVK��ZJ��R�Ė�d���Ԗ�涔8����n))zKI�[J��R�.%Fq)I�K9��RN�\J��R�y.���R�a��եts]J٥D�.%Jw)I�KI^J��R:(/%�y)'H/%�z)I�K9��R�ėr��R��/��K�"��n�K頿�4��$	0%ŀ))
L����	�t�`J�S"<�%&L�QaJ�S�$Ô(���0%͇))BLI0b�)JL��Ĕ4)��VLI�bʙ���M�)IfLIPc�Ԙ��<{������      �   �  x�}V�r�F<c�"?�Լ9s���S�#�HU�l�2���D4��ݲ�>�'�K��@C���G�r�P�0��Hظ���.c�a<a�(xZ����mA��iA4<�@a����,���ٻ�;�m�mX�1�y��.�t�3Yb�O7��I4���f𗾛�1\�E���7�{��y�d��b;M��#`,�Eu�Q����=E�4L�Al����}N�Q�n�"��Ͱt����W��W�=nB>�YŴ�ҹy��aSl�a��wnt�a"4Lb��8戦�*D��8��e��$g@mN��c�w���a��C������pS��ƾL�0�`�)�aWNWQ
�e�u��(*�&Q����҈mPyfb����)w���%h�Տ�sΨ��DIh�-[�n�JL�qӹ$��^�T0x����Jd�����eX�JO۰&D������XG�N�#O�}7��.���!ԉ('B����.8�<Q5~_�vS]^�����)ai�hⱖO�[^�!�
���e�k��R$ō���e�E\��N����.L8E�両���׶rU����1�FDߨ�4��4DJt��g�T�0M$:gX.�蜐4ֿR5�2^>���(�����O�%;$99�
�tA���M�H"+"-jz��cs�m�
�u%����PK��a��=K�ޥ��(��6+f��	�Dţ�?ՙQ���$����)�ŉ���f2d��q�TL"���'�/��+�@��wǍWO'+�"����??ӕPq���^鱡N�_5�mw8|T�5�f�[�e����_��WC3��p3/cq4>�1e���Q�����?�c�°h
�)�K:�1*6'A����(�iW<<�?���4ޖ�b��a�IC�&�-�[|�.xh�_�5iٵ��"��[^�b�C�4%q+�y�_|9���BN+��-C��6<35���f���5��'7��u��boI�¯�@�ӎ.
�!��"�۹+؊
_�!�?�Y�5�a�>&~����z-CkD��(`��Oib6�K�L	[�שx������r����0-[[b4l�x����F���[m��ĻI��߮R%N#\�����\�Zpqbix��ލ�a�T��a_�}�ͮ����Y�ᱛVө��
����ЈHb���\��lͥ�~̇<��xH��i)�~� |�Q��&����         �   x�5�?�@���0���Hdpc���-)w~z�g�����t��,���,�XBO���x��&�d�+xj��G��D��oOХ!�KghU>*[��qθ=��L�<ҠkV����s	�����dUP�e�k��_�4%      �   �  x�=�;��0���)x��2�>�N{�4��% �%��m\��j���e(�Ұ!8��O��D�<�{��h�J
5�0p��I��ǟ�7Jg
0"�-���9~t�K�t�4B&r�ړ<�+��(m֐����<�[߼-3k�F�(aOS ��C���L�R!B)*8��ɶ���R�D��IA�ѾRZ�+ej��N����[���	c#�9:���o�
8o�2V��~l-ð�1��kd͚6�(�����m�'��y|RX)��<P�l�⽿,��Q���vtu6�����/�G<�߉������A�LXdc��=��=$:�bG�k��t����sQ%�ȥ<�74^~��=��O�8��-q);�1��Re��c�x��R�t����!�?��y      �   �   x�U��N�@����'@li�9Fi�*��,Y%6�n���x#���e3�	���'�9a�{�%�ʵ#��$��+~�1Ík&�vg)��k��j�!�,ݸ���ᷮaMY]��f�W�[��hO?uα;⎄�~A^�+�V���	��&���/��!#���JR�=�+���y�����-fB-�jvc�A�za�2`��U�q�R���8����W ��qv         �  x�mT;n�@����	�/����HlǈA����Xr�%i���K)�tiy��!IR�3o��f�Tï�J���t��c/��\�� �^#۰+�h��םr<J)m{u3��;K!eޒ6��vjV��:g�/�qB�]�%y��A@7Jn�<���pm'4�ϭ�o�4�Ѥ�5��xT\�1֕��#�4\��ե%"�S �ԋm�������oIW�s������I�BW-�h�-F��i]8m&1�+[�D.�"��8���v<�dJ(�6{]5\��4���u�w�k-�g���N�	�*�_������0�3$���7�s����S�iy�zx�t.\VG�n�o���1����f ���/X���PO�'��M�(�,�N�ǈ�o,���{�Yc��w=9'tg]ח�mII[6�kåmi�D���79w5����6��l�<XHT���BW��2��qS����,v�/�2�\�� ��yB��UCPf�+�08��ºJ��@�'t.�y�k ����t̕����+�h�S�rMj�<��N7�ea��b��X��F���`� ���
�l�����jtJ�l!	i����RĈ�z'6;��j4�����8�:9��LD�#��8\l����q��u�c�U�Kʭ���NPc,hy�/���3!�='г�[���]
�.N��k�"��.Ax�N^�
iú��l��۳WD[~��h�I~{�y��{         *  x�m�MN1���)r ��?,K;�j�
l��-�2�(Ɍ�^�#p1���Y�s��~�%P�C����-���ݡbi�)�����Y

e\�M�{�<�׃,"��SvY��b�`<�*ؖ<��X9��a��9R#vI�����+�k��#��)���s�W�w>Pą'����C֢mhɨ�Z�{1�P��[l(�^��Q�L�՞�؅�׊����"��Z<��a�����-��d̒��b}��)A-�w��Jbs\��ӵy��*���]16Rj&�N�u5��?T�IH��.�qn��a䥛         `  x�-PKN$1];�� ��/��#$`#6��t���I��s�Yp
.���"��l?�����Tc��V��P�9�M�ѐsX�9O4��Vl��w{���%��.�Afnl��H�K<�Q\�8aȵj�w�)�+xL�36ލ�5_�3���G�gѼ�0u�T�`���Ze���ԬK��m�?����t����3���葂D��%�{
��<N�����3�:s�Jj�]o>��J�p�T|Ï��ncm�}3;���/��a6���-*GI��
68�C;b�L�.��?��D{N�`7f��������im$��Y�������+=<e�][Aô�3��	��%�X��^<�R\}=q�}4ٻ�      	   �  x�M�An�0E��S��IY��m� H����У� E�$e�:=@E����S��n��������$�X%�5��;d�(Kw��Y�q�v8���2ɑ�uzOƪ-}��%פ9KL%�%�z����廓�D�@�%���D�^��c*��U�9�Xs�M�ԞEF�R��c���V��[�EJ��Si�F�=q�g��J�	#R)��c���#�t��<��+w�Xz^��1U��+�W��Pb˥x�9J�Jh[z�'`���n���|3����ڴ�eX�7��,�R�G��wtc�s�A�o|o߿�W�|��>M`�mp��"y�S���2x��г��kj����i�l�KD3u���>4vk�C�KJ��5m�/���
8���J�?�3�9         -  x�E��q�6���b2<���_G�[�wƞ1͛8�?����������k����m�����O>#���Q����պ������gͷ�G?��]��W�jK��j����՞�L[Cɉck��~N{�F;�w�G�s�:H���w���C[�W��;�6��~�6�j�o��Â�YWWMOnO�s��3��w�흺���\j�ޓ{w=sj�Эޙ�gi�����΋hzo�j\��w�Go�x���wYԳ�K׻���w�wW��]�Ph��%�͟}��4G�߾�Х�@��ݓ�y�ma��m�滃���Iii�6b_Ľ�E)�D{,��F�R�zcx����JQ��h��t��~�(�K��,�RV����}t�{�l޶�7;�҅�"�����B=޽����>l����Ѵ�ud��&/R���=�>��}�-s��z��ْƱ�����xV�ߴ2uף�������|o�khtt�����P]@#�����N�7x���MKW׼�k5�oȉ��I�zk<�EˢS��$,��b'����fr��jY�,�\S+zI_���19	�w�gi�����Î��T;��^L��2��tx����������8�(es��]��[��u��a�5�S����my�����;t踞�4�G�ʅ镁�Y���ō�_n���˓Y4$K|��a���&��q(��BCᗱIȥ�p�˧q���S���֮���<��!|[��X^_q�nV&�K;:s��ɚ�.��;�.�m���!��ћ� B�����~����+A��N��?w׼����Z�6�:��QWb�.i����a��r�S����J�8��r|���\��йm�B��������{�ٌqL�Ö�h����q0��; �H� x���V��PG�9a���UGg�r#6P���f����\HjZ�w=��9�E9�Zz$wm�8� /���֡�����'L@�����Pt��i�I1�C�^#p�� ��R:���Q������u��� (��#��a��4�OV��9v�d�g�:g�
V�0Jb�^�b�k���<�K�CU8��I�BD�'8��,p8g牋�\�$�QղN�vP�ꘆ���lXgL�ٕ�&$\a���IP��H���Xc�}-�E�ՋJ�l�B��Ew�Y `2�n���
�����A�o�~����ז�'�����k��%��f�Wnxчh�r%sY���e��.����k�K�w�29mV>�I���܊�^Qx�����!��I�DjG���x}F�Ag�NH���(�.3��
����hŊ�m
��wu�^�\�����(�|э��7
p$LzQ�|#e��:���ƞDy�_��+��3;�a"���6=(#�Τwm��cD,(��� 0?�4+�5����r����6�!�e�b$���.3�p��� 5�)}�߄ߡ�$s�ȭ����6,��b��i���C'�e�8��	�0ǝ�É�H�]�,�^<���8��)����S-D�
d@3�wА���q�9+l��&t�ӢY�3`��*M+8��3/Mc���D������"�X��c�b}'in1|�
��\�ǲ��MD�Y<?�;u%:��R0 mV�)B=��[���
�,�cLss�bb������D�����g�D�1ftj��QRў��3�ظ_��b��H!2�"�7ll(�8 ���P�W	�� `��i���*Zό���̬��V�sG�-��� �锏�#�3~�gn���c[�l �ʱ��la�qBxЊh���f�g�[���I���)Ľ)�=�h�D����a��R8`�0�U#}���G��܎��R�1��AN�-� 9�2�f��`�f~I�j����[��nj+�.cv��Nx��g��J�3}РE��V�g@�W/��ɦ�r�}ר����%���D��9�BZ�s�b��I�ᓔ�	 ǌ��Q�g)GeM�Z��DJ�� ;܂�[��@>-�Ύ�y�e���Y�t��$d�:Ff�V���Z&�ꚅ`�]e/̅@ת��ʊ�4�7(m9���`�3�s栯�	.��Qu���J��"��9�E�r(�n��Q,M���W�ScT�c��A���<8�Ѐڅl/�Բ�k#:�������V�b��T �����-� v�3�f�Z��QTH����ޕk\�l�W1�Y+�-� �X_2@��+x���;�U��!�b�瘋�����,SN*�#��[0���V�Xº�i����k�ͯ)�b�x�H�" ��w�F��n����\}�̪tc�iS�.���h��!��P��nN�(#���n�I��M��������f�"�j��(lmg$t۶�,FO�W��(@l.��V�ԧ@<�${�v������u4$�=�և���Tm@��%;{9}~7(���R�gU�h9�*�����ک(ʰ�S��=3��UdpP{���w�b���� 
ZE�8p�D��E9�Ώ�n� �?{W�A}��M�)r�]Q+�N�yX���o�������,Gd��vUnRw@7�i;zE0-	��箂 �xG僘JT�	Q�a�?݄'p�Q�FY2��Z��J�;�9�⃺F��в_�Oe�;�w@v��`-�F�k�f��U���#���Q�3���R�b^QN�wlc4�֢�*l�]��Ky>�q<@��oA���63l���fUP0� �L���ubK����.�h�Fb���Y�	�$�U�s�~��NƷI�P+ʯ�����CF�v��* 7$�������^��UUHaJ�i�v�_	X[W�$�7�B`<UGƕ\�a��b��M�IZҢ�!D ����'8!�Z��6�0���ÄC�U�g��I����pV�IH�X�|W��YЙL��Y2�Up��0���r|����7�UvN��UFә�� ˊ_�.V~��X6 +V��������]�=tb:y;Y��vI�؅��^�hE�pE���K�cۢe|_�V>\pC��'�x���%�z�P&�����?��3h�-�}�Sdj$��2�P5�hv-�I���+:&�Ϡ�LSTf֗ �Td�!S�*�MKC;�ԡ��A ŝ�3����V1h�v
�Y���>Ǟr+������m�V��F���_D*��tV��w� ~��ؙ鲀�![���T8Sg},���5�Jc�`���?��Yg0|�mtJw�I�E���W.}Ed,�]��&ݟ�ؤ @GT.����6��U��bR3Yp ��o�\z��Z�c�����s�)r{�T�.��5��sV���Oj��QGM)%'��gѿ�Ǩ��3�\p�Y�Y>���̛�����3��\@��d.�?�0��'�P�W\�l�� �]*G�:뫡�U��r���䶅q��}�L��ݥ��@/�.q��O�I_9��:����g4��" TU�+pǠ��Ψx�s�"��I��"��+�Ek=�г����M �,X��r�{s�Ú]<<�e4�-�����1k��Ȫ�C���%�pI������>��)�D.�5z������_1��l����s��:ذ
��<�)�� Ny���j������}&T�\e����}�����         �   x�E�Kn� @��)8A��I�$���������=VG"L
�j��3�bŶ����Fţ~r�
���"��	�GP�~���a�l�X`�l���iہΉEX�7,1Cۄl�k���Ւ~vm�6;��� �L�@����+ƨ���;��q��$�������) ��z��&m����D^�Jm�]���J}�J=a���$��ѵ�;��A���]f�T�OC�}@_S�w��gI1��9>�����
 ��z            x��Z�r�8�]S_�]�|C$ I\�]U~���ow�L�F�I�寿'������h� ���'�'�n�B�x��Oe�:�E�<I���Y������۩�U�ܨ*W�����,a3=��Mŗ[��ۺ����'���*�6��ea�Jc1M��+Z�s��+�)�M����V��l��4������{m����>[F��6Z�wݶ�JS���<���j��~��d�U�$��R�̲貮d�ƷuY�)���m2�~(���R��?�|;�{��b�$���j�1^+��f��[�l����V��G�����^�ѓs1KXt%����UY�#q��a=�����v)�����΋��ɺ�Rv�$�k�,YD��zS�P��L�5�d=���*Kup�L�/�U��a�'yPe�����kY��ե������gn_�����Q�t+��W<���$:��|1Ƕ�K@x2�.�9�u�W���x�YʆՇ��H5x��R ��[�ɰ�8x�r�R���m�s����.��R��V��	����V/�������G����.��t���z�Qn���ˢ���#;IΪZJN�gsD��Rծ�6����K���c�!v׳�E���<H�\�ei���1d�DΕ�7�����?����ѝ�<õ�ܟ�&�1�[Y�צ�/p�jS����;d�.վ�ﵴq%l<��et�MӪJǷ�Ç��f3VWэQ�2�u�\o6�8�TH��!�E��3���޽u������@�*��5r����n3�Dkd-��5���lr9܀�4�&���Cm�V�t����Uu�UZ�^���8Y���8�.���36�q
�Fɪ�_TU�m�M�Y��p�"~�G�l.�e���o��}ݵ[<��i�Ō��[]@7E��_I1�g������0e�J�FF�t1����(|Reݻ���E] T��>��<O!��	��*uӨ��3�u&�A���n�%�����_�����b�_R�7
�����;��3� �c^H@Q�3�Ph&��]"z��My/[ �%ak:��\��s��L��`zkû��u�V���l�,��@BTǷr�O�0�H�'����;Րx��BP��:x^�ԝ���͆���W�A��P4hK=H�[4��R'`�f]"��G���|�O-�; �������v��b]�(��:�sݶڛ��I+\]�R!A.�.w�F�R �Ebq����̞R̖��J��6��oJ��l��}D�2��??��Q�	��7$8Y�Y�itӕ(>�:��no�+�K�H˼\ �m�y�N�@Kk M� {kTg+[v�"z `P��8,J,�����QkC� ����z�JF��'�i�s[�d�U���)k/��Y��n�"@������Ny�����V����So`_�-ȭ�C��ox���Z�\�U@?��:����ي���H?�U�;,������`3�)�+Yb�y%���O ��Ϻ싹���{ ԛ����f�lE��i��ձ<���j�w��j�-Ӻì<+[ex�����<z�$��eT���*~��r�?��%���HdS�QK���4z��*^�f{
��p$c�* �����,O���3}�%���&�C�h&����ȅeݹ�v��W. k��_w�є���-��, � S.l����]��3��H�C�-q�,����0^�����R��XR���+�z"7=X)�$�r6G T��#�I_ݓy
 o�mC"'g�n΢u]�k��y�$��xt+��G��K��&��,��#*�Q��m��\H�z��m?uE���i#,�/���o, ��@��*��u����f��Q��'��ӥO#z/�~��eh`S� :��,d�`{]����|zݪ�-�����'�ph�W��:�BZE��^�tջ����Kk?0��%��DL�sb�t��� h���!�S�" Be�����6A��r�$�D������(�j��6��%~��t�Һj�P)tqZ����6 �e��	T��H��z����p�����3�^o�)�Gi,��6�b���Q񕩷���(U)�Rj<�kٴ��P��`��*�y�K�޴��Q�'����<%ۂX#�K8�!�ƿ��?Ȣ��M"@�������,D8��۶/.����w���W��w�@�L��`� Ѝ;%Efm��W�F�E���_PeI��ϑ������_j�1ɲ �h���e�ٖ}����}^mpM��i-6��k�lj���]T&���{z�F�r���?N�D�P���A��a�:x���c��U�
rZJ�j�@�m��QfS�Qb{���l�%$���Z�� .��HW5������tK]���[���a���42߶��p0�/�z[�*�]��%���}��P*�U������}�.D<�����I	' �(8�m�{�!�@��D	�YR��/%����J&�h]7��� ͛�]�#`��=�JJ=`�~np����l-�B"!�^�xڅz�$�!�m�I��/,-�	��Q�:5�-s/�����*>7U?k �Jܓ+j��p2�@���&!���A�������C$`��.Aa$���z�!nY$��DqA�Kոr��5��ռ�T�Me�MN7E;�`�R��ll�ߔ:>�[��(q�����A��f:�e6	(�w0��"u��QKk":�"u�`��S���	��%0X������)ٖ�`��9:K�ί@������Bן��§@�?�Nw�,[ ]�gA�ρ"ȟ�ңgj���8�ق��תM��,�%�zS[�&�����]�B������o��[ݡ`��&� �܈449��.�
���G��#b���֕⴯`�zCS�5�E9����(�k]�o��# ��LI�~%mk J҇��V�4�����DU���b<�gAȾߟb��_,B��p!����>�9@��K��w����,�j��㿌���ҿɂf�����RȄ��2BgM,�z�$��������+���:
yt@b݇Ō�@ s%m���lU?�����,[w\;@�\U����־���m�잠�T��VՐ��������!�l?�t��~'�����1T�ao��Mu��A�/��ȑ��2�&P}�J��t��E|O��	�iI��J:��ӪL2,��V�G�*i\���|�3G�Gj'^UQ�~X��9����F�}S�kg}�\a��T���kn�F���sN���#"T�kۡ駰�""4�6~��Ҝ&��(I
��[7vsWW5��4>�%�������8��{���4󉉭7D���� �D���W|Al�28qT�ޟ�����W[⸧rJ#N0v�4vML�uNa��	������_dv�$�e����(V�R���O�4S �߮�Q�$i�U���k��|Wɏ�����ݟ�C[x�S�R�v������TM��ǿ�-Q�!�ɥ`�7�^�t���9�1����-m�/�}�z��k��+I�{�rϹ� ֈ�KbZ�+��jnn���[�#j�	�l����*:	���ԧ s�r�A����}^��� ���t*����)�-�C��D���.<<-�0*���,_��CY�Lc������Kn�USq����Q5�k��C�&ۀ��J@)Rq��Si�%�x�~��9�m��N��R�b_���=�\�0oG��a ��qMךR�v�A�����|��Lvs�@U T@s~ca7o�����T��ײ�#�%��_I�Y?��ͦiZ\����s��Ɨ(y���<(�7�S#����to�K� F��?��<��'q�-u���;Rp��dP�� Wt��#\��tb�m��LI���.7x�TC�~�w;�>�$��������/��M��m�n+;�IA��OE�zR���ک9ܝF��F��ʷ�~T�)�;8�#~1��'�O�SN��ߡ&:��T6�4�*�pQ�n�#�����E�dJ��%�K��~^��>�P:��gv>q����]��K��?��s���b��7e_�vK�~��o$2b�)�:H
�PԪu����s�B� �  %����� �.ֿqIE���ش�<q�6F��s��i��J
��E�1���s�k�Sp����p��O���XB$������[ݏ�|z,��E�*�'�y8u뮺���鏏��5E�?q�EB/��sK�h�^Ks�XЧd�r;١b4|Í@�_����q�̦k�X��[Д�r�_I�c �C��ʺ+u�?8��>b|#*�S��pHA�/Lzv���K������!�>Q�>v-I��_L��M�m��:*�Xc4�Q�A�l���ʛ�:K��}��W�����!E������}-��t��vD�7*+�����D����8�I��ԾhK|j�~���K�O�����U��>�cu;��ピ۹*}���-"�پ�	���-��6��Ė)
Ps�s�1��Ѹ�����S����I��%-ˁA�XQ���_�Ae���R�$�Q~|Q�Jy�)؞<]�)�j���ٕ�7@�]&M����u�cL{^V}��f�m+s��T'� �{�Z�N�}������}
���p�r��t�ktʲ����`�5�'�ߍ�B��U�|}D���t�(�9;�å��nۣ�&�.�3᧫x�C~��l�?bf	�N��Q���vtAa�~A��)��W؏[�h`�������
��i�)�X��������<�}V1����gxN�A+IX���S:�yP���A�
���U�<�Wa�	�
�4+lT���l��u+,$\aa�
IWXH��B�R���|�M�WXP�
��������Xظ��d,,�ca!!+Y&�,!-K@�T���,�z���eB��;�����M�Z؄��M�ZX@����V��Qi�ж������-, oaA}���MI\ظƅ�D.,�ra26�sa�B6�ta�R6�ua!�W��Q��]؄��/lB��6%za�6){a�������/lJ����/,�~a�п�� �0,$�a�`X@Â2���	!�P°Q)iaXH��j6!�aA=����I=�������axHÃz>���!=�������0<���z>���=�a����0|\��z>���A=������a�����0|J���0<���A=�ax@�'�0<���a=�a�����0|\�Cz����O�axP���0<���Sz����O�ax@��z>���cz>���z����O�a���O�a�o�axH��z���	=������0<���z>���z>���Sz����O�axP�Cz>���!=�axH�z>���!=�����0<���=������a���O�axP#Bz�È�F��0bJ#&�0b\#��0bR#�z1��!=��aDP#&�0"��A=��aD@#z�È�FL�aD@#F�0b\#z�È�F�0bB#Bz�È�F��FL�aDH#�z�Èq=��aĄF��0"��z�È�F�0bT#Bz1��z�È=��aĄF�0b\#z�È�FL�aĄF�0b\#�z�È�F��0"���z1��=��aDX#&�0b\#�z�z1��!=��=���È�F�0"��A=��È�F�0b\#�z�ÈI=���È��ÈQ=��aDP#��0�Q=����l6�m�n	     