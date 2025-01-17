PGDMP                         |            t2    14.8    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16947    t2    DATABASE     v   CREATE DATABASE t2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE t2;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16955 %   Банковские_продукты    TABLE     �   CREATE TABLE public."Банковские_продукты" (
    "Продуктid" integer NOT NULL,
    "Название" text,
    "Тип" text,
    "Процентная_ставка" integer
);
 ;   DROP TABLE public."Банковские_продукты";
       public         heap    postgres    false    4            �            1259    16948    Клиенты    TABLE     �   CREATE TABLE public."Клиенты" (
    "Клиентid" integer NOT NULL,
    "Имя" text,
    "Отчество" text,
    "Фамилия" text,
    "Номер_телефона" text
);
 $   DROP TABLE public."Клиенты";
       public         heap    postgres    false    4            �            1259    16962    Транзакции    TABLE     �   CREATE TABLE public."Транзакции" (
    "Транзакцияid" integer NOT NULL,
    "Клиентid" integer,
    "Продуктid" integer,
    "Дата" date,
    "Сумма" integer
);
 *   DROP TABLE public."Транзакции";
       public         heap    postgres    false    4            �          0    16955 %   Банковские_продукты 
   TABLE DATA           �   COPY public."Банковские_продукты" ("Продуктid", "Название", "Тип", "Процентная_ставка") FROM stdin;
    public          postgres    false    210   -       �          0    16948    Клиенты 
   TABLE DATA           �   COPY public."Клиенты" ("Клиентid", "Имя", "Отчество", "Фамилия", "Номер_телефона") FROM stdin;
    public          postgres    false    209   �       �          0    16962    Транзакции 
   TABLE DATA           �   COPY public."Транзакции" ("Транзакцияid", "Клиентid", "Продуктid", "Дата", "Сумма") FROM stdin;
    public          postgres    false    211   W       f           2606    16961 P   Банковские_продукты Банковские_продукты_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Банковские_продукты"
    ADD CONSTRAINT "Банковские_продукты_pkey" PRIMARY KEY ("Продуктid");
 ~   ALTER TABLE ONLY public."Банковские_продукты" DROP CONSTRAINT "Банковские_продукты_pkey";
       public            postgres    false    210            d           2606    16954 "   Клиенты Клиенты_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Клиенты"
    ADD CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("Клиентid");
 P   ALTER TABLE ONLY public."Клиенты" DROP CONSTRAINT "Клиенты_pkey";
       public            postgres    false    209            h           2606    16966 .   Транзакции Транзакции_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Транзакции"
    ADD CONSTRAINT "Транзакции_pkey" PRIMARY KEY ("Транзакцияid");
 \   ALTER TABLE ONLY public."Транзакции" DROP CONSTRAINT "Транзакции_pkey";
       public            postgres    false    211            i           2606    16967 =   Транзакции Транзакции_Клиентid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Транзакции"
    ADD CONSTRAINT "Транзакции_Клиентid_fkey" FOREIGN KEY ("Клиентid") REFERENCES public."Клиенты"("Клиентid");
 k   ALTER TABLE ONLY public."Транзакции" DROP CONSTRAINT "Транзакции_Клиентid_fkey";
       public          postgres    false    3172    211    209            j           2606    16972 ?   Транзакции Транзакции_Продуктid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Транзакции"
    ADD CONSTRAINT "Транзакции_Продуктid_fkey" FOREIGN KEY ("Продуктid") REFERENCES public."Банковские_продукты"("Продуктid");
 m   ALTER TABLE ONLY public."Транзакции" DROP CONSTRAINT "Транзакции_Продуктid_fkey";
       public          postgres    false    210    3174    211            �   �   x�m�M
�@���)za����0v]�(@��X:�V�^��F�t'H���� �![C;b��]�0���1Z��f�kG
&��a�X�9腫N�	�ւ;��� s[Q1aX�w#�$�)��w"�3���Ӎ�A*R��?��zX��aL��      �   w   x�U�A@0���*����86���Nܠ!�p��%Bf3?��D���\�.80�VWS`�D�fR
Ih1c�C�oZ�ȱ���3q��TŞ*B�J�ؘ���/����7>\ŉ�<�'�dc}      �   N   x�e��	�0г�K�?M\����h)��!�����!�R�"�FF�8��.U�:)��/������s�;>��~Nfu>�     