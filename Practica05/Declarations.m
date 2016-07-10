//
//  Declarations.m
//  Practica03
//
//  Created by Christian Barragan on 26/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Declarations.h"

@implementation Declarations

tst_State stStates[MAX_STATES] =
{
    {
        "Chiapas",
        "Se encuentra en el extremo sureste del país, en la frontera con Guatemala.",
        "chiapas_main.jpg",
        {
            {
                "Comitlán de Domínguez",
                "",
                "- Población: 537,102 hab.\n- Superficie: 96 km²",
                "chiapas_comitlan.jpg",
                16.2292601,     /* Municipal Latitude */
                -92.1212187,    /* Municipal Longitude */
                13              /* Municipal Zoom */
            },
            {
                "Palenque",
                "",
                "- Población: 42,947 hab.\n- Superficie: 1237 km²",
                "chiapas_palenque.jpg",
                17.5105481,
                -91.9960477,
                14
            },
            {
                "San Cristobal de las Casas",
                "",
                "- Población: 206,481 hab.\n- Superficie: 484 km²",
                "chiapas_sanCristobal.jpg",
                16.7356551,
                -92.6368637,
                14
            },
            {
                "Tapachula",
                "",
                "- Población: 320,451 hab.\n- Superficie: 303 km²",
                "chiapas_tapachula.jpg",
                14.9068812,
                -92.2653877,
                14
            },
            {
                "Tuxtla Gutiérrez",
                "",
                "- Población: 537,102 hab.\n- Superficie: 96 km²",
                "chiapas_tuxtla.jpg",
                16.7479631,
                -93.1008617,
                14
            }
        },
        16.2571713,     /* State Latitude */
        -92.249946,    /* State Longitude */
        7               /* State Zoom */
    },
    {
        "Estado de México",
        "Es uno de los estados fundadores de la federación, y el de mayor densidad de población.",
        "edoMexico_main.jpg",
        {
            {
                "Ecatepec de Morelos",
                "",
                "- Población: 1'656,107 hab.\n- Superficie: 160 km²",
                "edoMexico_ecatepec.jpg",
                19.599345,
                -99.0484797,
                14
            },
            {
                "Ixtapan de la Sal",
                "",
                "- Población: 17,640 hab.\n- Superficie: --",
                "edoMexico_ixtapanSal.jpg",
                18.8382131,
                -99.6769937,
                14
            },
            {
                "Teotihuacan",
                "",
                "- Población: 23,325 hab.\n- Superficie: --",
                "edoMexico_teotihuacan.jpg",
                19.6843296,
                -98.8696138,
                14
            },
            {
                "Toluca",
                "",
                "- Población: 489,333 hab.\n- Superficie: 452 km²",
                "edoMexico_toluca.jpg",
                19.2808281,
                -99.6564057,
                13
            },
            {
                "Valle de Bravo",
                "",
                "- Población: 25,554 hab.\n- Superficie: --",
                "edoMexico_valleBravo.jpg",
                19.1867947,
                -100.1379754,
                14
            }
        },
        19.24392,
        -98.7884704,
        7
    },
    {
        "Jalisco",
        "Es la tierra de los charros, jaripeos, mariachi y el tequila.",
        "jalisco_main.jpg",
        {
            {
                "Guadalajara",
                "",
                "- Población: 4'495,182 hab.\n- Superficie: 151 km²",
                "jalisco_guadalajara.jpg",
                20.6739384,
                -103.4054537,
                10
            },
            {
                "Mascota",
                "Pueblo mágico.",
                "- Población: 40,404 hab.\n- Superficie: 1591 km²",
                "jalisco_mascota.jpg",
                20.5276357,
                -104.7983976,
                13.5
            },
            {
                "Mazamitla",
                "Pueblo mágico.",
                "- Población: 11,671 hab.\n- Superficie: 177 km²",
                "jalisco_mazamitla.jpg",
                19.9185017,
                -103.0266555,
                13.5
            },
            {
                "Puerto Vallarta",
                "",
                "- Población: 325,000 hab.\n- Superficie: 1301 km²",
                "jalisco_puertoVallarta.jpg",
                20.6446408,
                -105.2356403,
                12
            },
            {
                "Tapalpa",
                "Pueblo mágico.",
                "- Coordenadas: 19°36′N 103°36′O\n- Población: 16,057 hab.\n- Superficie: 442 km²",
                "jalisco_tapalpa.jpg",
                19.9444453,
                -103.7644233,
                13.5
            }
        },
        20.6771654,
        -102.9998861,
        6
    },
    {
        "Sonora",
        "Es conocido por sus características desérticas, su clima caluroso y sus playas.",
        "sonora_main.jpg",
        {
            {
                "Alamos",
                "",
                "- Población: 250,848 hab.\n- Superficie: 6,426 km²",
                "sonora_alamos.jpg",
                27.0251908,
                -108.9424057,
                13
            },
            {
                "Caborca",
                "",
                "- Población: 59,922 hab.\n- Superficie: --",
                "sonora_caborca.jpg",
                30.7182046,
                -112.1921157,
                12
            },
            {
                "Guaymas",
                "",
                "- Población: 134,153 hab.\n- Superficie: 12,206 km²",
                "sonora_guaymas.jpg",
                27.9121389,
                -110.9103201,
                12
            },
            {
                "Hermosillo",
                "",
                "- Población: 641,791 hab.\n- Superficie: 168 km²",
                "sonora_hermosillo.jpg",
                29.0791417,
                -110.9681757,
                11
            },
            {
                "Puerto Peñasco",
                "",
                "- Población: 57,342 hab.\n- Superficie: 9,744 km²",
                "sonora_peñasco.jpg",
                31.3244488,
                -113.5131778,
                11
            }
        },
        29.2352587,
        -110.278801,
        6
    },
    {
        "Yucatan",
        "Lugar de hermosas playas, cenotes y ruinas mayas.",
        "yucatan_main.jpg",
        {
            {
                "Mérida",
                "",
                "- Población: 777,615 hab.\n- Superficie: --",
                "yucatan_merida.jpg",
                20.9751624,
                -89.6298044,
                11
            },
            {
                "Progreso",
                "",
                "- Población: 53,958 hab.\n- Superficie: 270 km²",
                "yucatan_progreso.jpg",
                21.2943923,
                -89.6633807,
                11.5
            },
            {
                "Santa Elena (Uxmal)",
                "",
                "- Población: 3,832 hab.\n- Superficie: 698 km²",
                "yucatan_santaElena.jpg",
                20.3524791,
                -89.7109326,
                10
            },
            {
                "Tinum (Chichén Itzá)",
                "",
                "- Población: 641,791 hab.\n- Superficie: 168 km²",
                "yucatan_tinum.jpg",
                20.7266226,
                -88.4623022,
                10
            },
            {
                "Valladolid",
                "",
                "- Población: 48,973 hab.\n- Superficie: 1,117 km²",
                "yucatan_valladolid.jpg",
                20.6902418,
                -88.1991596,
                13.5
            }
        },
        20.6175035,
        -89.0477061,
        7
    },
};

@end
