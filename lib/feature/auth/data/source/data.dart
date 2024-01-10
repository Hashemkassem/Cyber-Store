// ignore_for_file: unused_element, non_constant_identifier_names
import 'package:cyber_store/config/Theme/theme.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import '../models/models.dart';

class Shop extends ChangeNotifier {
  List<Cyberproduct> saftyRobot = [
    Cyberproduct(
        subinfo: 'Office Security',
        id: 1,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84G81OtorQyfBh-BuWGxVWvMuvY_vg7qAcJ4q1nM7Z5-sVFwgrJ5cShMNNBI3ykvtB0L4PidKOfD7f0Pl_nJD77FJw09ZC1byCP3zoj8EXgXxabhbUIoES_Uyy2Lr0JoHiylZcUY8Lz7EskZxBNqqn5=w500-h500-s-no-gm?authuser=0',
        name: 'ZR-12',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_t3k9zta8YFZ-Arw-IShkrUrrOK9Eme6gqOmjfSdwJDPgX_ZU9qSjsukwd44r44OELqMJnqGwG-M_8sbciq9UWcsew67uKWpvpxf1OiPn4Ay8ibVI1H7CC0vD43arhnor1SD5xGoaIRAHT2gtixOeM=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 2,
        subinfo: 'Personal Security',
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85fuwJqwHBJ9_pvcNhL4-1JHgj9zEYyWJNfpPm-KIAjnEzt9jcOk4JZJlno55RzJbgmmLYKMvszQGzUCrWsdLWNO6eWD-VbfNDPyf6PhMn2R9CK_XC2w40eevSwG_gcbgEaM97vqQX_mSahpXtSPy4t=w500-h500-s-no-gm?authuser=0',
        name: 'XS-312',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-CGxFrfBVG95zcuzVRSdonBRCCDy7tHAXj-Lf4CQ0DHGIZELf_8YQRMB2fscQ9eWZt20ngQCQozNqpSRFRhovQrTtElbpidf3KBIMBEsyVm3iZK96KHuQUZ7psfiwTs_WKvrmh92XMf_9JVrS5WBSv=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 3,
        subinfo: 'Office Security',
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV8477Rh6G9fzdVMvC50u2UGphamArrgpArOmmw_-ewXm0ynN_jUzYBqScfOz-9-o9ElVFUv3DJWwC8dvCnRF85eJ4zLjFN4hQXB-dNo63emdDkwurmfPqICEMx5Kkt70L0xXzBRw3O6F7H1RFZ0206vy=w500-h500-s-no-gm?authuser=0',
        name: 'RW-152',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_1D67FyzH68fFdhUaOEu4A3Y9FPFsTu9-CkK_HWOwnyi34n2xwx0OiCPSi_9RaZZjJLj6ssOLoUOWljAhJa8O4mwPg-86ilHzI6x40pJwx2960tNPAirPOKJavFvoeK7-Uwcl7hiq_6EVHhGyMXIwn=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Data Center Security',
        id: 4,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86G0O7_OzsKosr1_M3nGUNzhW6RxdxRY5DyYMXbQRUk2NpgzWCFIIn8VvXVUpTI4HQd1sf8CTVAQeqSU5gNJsZYky1c3aXYycTHpQYz9193sssluaFHPEDK5jsbD_WMVIHHnwOAbq-_N7iyIYJYIaY0=w500-h500-s-no-gm?authuser=0',
        name: 'SV-32',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_q9VzCsWxoyY569LLxBOCXD8EqFrOQbzO3Qk-Qco_IjIeaepG76g0JGzMsYRWct5XXpZV8-roUfstTscEVvS2tPlqMy9iND95hG0T1RiWGaQbsGQDBAnM1MHpIq4D-bidPfiiSVhqDxPHECYc6yw4g=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Company Security',
        id: 5,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84Ha8sidKbkkw42D_5Xp1lUPcpHQKdgEeQU_N5lTa4xuwS16eZR5utbmcnDuiBaFhc7hmsa0gyAUKWCRH-dnNnj1orN0nwUbktteAssdlmjFormBpmIqFgPXzphLX82PsXdIyIVpnlM_kHGjp5bvs-L=w500-h500-s-no-gm?authuser=0',
        name: 'WQ-64',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8KAUtzGVP02SieXYvR95QSQsi5x6kNj7z-qgHLSBHqglTnZ8x_5-jxHDGzc50K1WwN5-hnvAvZzO34i0yW1reC_s_S3S-vggV6v8-K-W5CFLBfedcQwxQT41Rt5pJpt00nRifO7wfghIyXj9H3ujiM=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Company Security',
        id: 6,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV878qLoDkfTaDs0_KdOqIo9kbWZ4U7FEDarqgAcI8yIXzVuezLVf24gfEMoZ2rzlQTvMy8r_FB5tflf0TqjlZIcy4swhGkdASC76JXAWHEsPF6UTtslWGrLFMNZ12_cVOIwooAq3A_nTEVC-LbMboDLW=w500-h500-s-no-gm?authuser=0',
        name: 'ASP-82',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_d-IpoprrzzBnOxU01vr53OUKZmhg5IRi_67UziYB08KZee7jczdvwxULwQpxCjkzYlmnUXVwyp1az-7ely6m-_zQQqWCNK482_5qQs3d8MHLYbfsnPaGWfUPwzCGsF03rt5PMbuUVm9XnIHye0IFV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Family Security',
        id: 7,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86QgjOATnJ8cJPr6Z6ddMtBer1nTQzAdLcjUPJr9L5ZpCcThSxFHs3eKnC2eswOUrEH7dQR5azmUpKJK6Hn9TCkhfbN0nbJYkOAO0erS6o45XsqRuRzPb4yM8Ccuvv7_4Jvgol2LhUoNqu4QKBbblls=w500-h500-s-no-gm?authuser=0',
        name: 'OP-874',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8bzNaCYyLIWlwR_Zj53UO9sXZ9Z8-noC8OE9eb9TPkZF-u6WkNAL43uGwIhrINMEfSwVQMNpt7JYNE-uxVNktIlK0KL5frv-LNQPG46ydUnBmIEUGW3Gu2UTn6AFn7ZVCvNvNnUTe-jKOrjJzP6C4a=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Threat Analysis',
        id: 8,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85KC_EQw8ZF19mmLFL7UhhwsXxm_WMrnXrYAsLkhvfifngmKZF2FEmNf-l_Ycf5uAHhxgen7UWDZt8q8zkd7A_NKxDr_cn5iSKpZo-z_P_N_7_J2P-_-T8n8ZVusAkGTL2BqDp2WlE6WvwqAmFSRvjU=w500-h500-s-no-gm?authuser=0',
        name: 'RYT-59',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_wtpgKIqkjzUogL3QxKSnforcgkT4a-OcFCNXDwTngE4hnmwdAqgaBmRtaDV7ugzNiVTPLIrHdCcDGkHHBZmnfLJjaKP_QzMkkCWGW--bvlmX62rSwIqMs0XRbpGK37ljtJzwZL4S8t9_0EdA-e0oU=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Detector',
        id: 9,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87hx-l8DScgBLTFb3tcD_oN_gPNl-YJGGCUo8msSYwnAHpLb-ZopHIiuDalxAVsz4qGXJl4qEgqT9Jv0YGP-R6HpxR9fL9hiULPz_en1k4cAy7nJRTmrVtHkPKPjSWbkXLdJUN3MZzPUNb4lB0qo8XY=w500-h500-s-no-gm?authuser=0',
        name: 'DV-44',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-P-GLBPRV-AEoLUCZL6LMDPbHdOIRsRUcGLMmR25XE2mUh1ZfqnceLmWGikRuMsDZEcAnGawPl-P8LsjG6P07lKsyOONpt_XFziguG22HO2X5vL7CWOAl_DlJIzVZN7M6StxV6cGFy-M4VA2cnv5nQ=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Criminal Investigator',
        id: 10,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV868oPIz5jNloRDyeSkLgWKDn9GjIkq5MF8rSeSz2GDu1cS8RfHuwf4gfuCShv9Dbnqj6nePLge_irvAEBUg_Wnh1Y8J880wKLkydnVfUzLHw41PwBgWNLfuPh3FpAitrmAGq8YXJPx5YpH79g7F7qZc=w500-h500-s-no-gm?authuser=0',
        name: 'EC-52',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8OkUBFQL34eY4VGDEWqFKmf5OpGSC5jy5UmK-29kaSkw2ES092vXN7Fr3mlrv0mBJBDojNvHpTkINgZWqXyp189qw4u0BnxgAD_FHahQwOk2t9AhovofR-CqZtYCgMPE6aLMRvQhm1s97ItkWds1YV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Digital Detective',
        id: 11,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85SWBDi29DmfRfjUX7VaQWPC_hZrijgJyfPhdpYk3PUsyYxfJ3itgznNzZM4L4ShGJdGcLQhNJh5bCn0q3A23xU1r4SngB6Q5GdHuG2kqeDus_GgkaEdGlaPo6wETu5xIbp5lXnAEmjZ9gDWepT3-3u=w500-h500-s-no-gm?authuser=0',
        name: 'SX-14',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8ZCg_ewR3ZRVssNEq8T1Bdhfs1L9AvhpY9WY5y1C_aiF-ytbUQ_yGpunTxMDtORB8GS4eOo6HfwdUjVWUU4rr8waIE3CtZH7BoknLwJj8FcJ6R0COXZ6iwyWy5z_TadpHDekd9MrnV2bqJ7lfpZbu5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Red Team',
        id: 12,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86bDuslXyuX--mXud1QfQNGZrR4vFRboWYKIJUQOzEFjH4trD5qCtJydZoEPqrsDV_ApoF-vdyqoXex2scH_Ukx6QdeHP4z3ezmtcm-qWHAzgBQ3z1ttArcnrpwQeRlvorTfSWuTx7wsrE0Svp9vqgi=w500-h500-s-no-gm?authuser=0',
        name: 'UI-452',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-iRuN35ViTBZAX5sNoaE2iYdnnfhDV9kg6QLI0VWQP0JLoPPoloRLefLeusHMtoMRPTMISpptE7SV8zjaeK9khltaYnp_LiZfhsN_D2XTM4zZfm7Qt2ckPvKJEEU0G-TpJEFrbzxcN4fo6zLcuwNMK=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Company Security',
        id: 13,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84mjUQP76bQFWVyD3LtT-yODBYXNvxkGfM6XpOsrwc6CmDIthtmDIP0OSkpSWNZwzNmhW6mHbOY5cGgcmEiII-EK8ck0dnZmyPa7BEtbl21MGJR784FkoacPch850DfIG5kY3wXIv8Zgh-p2AwLR67w=w500-h500-s-no-gm?authuser=0',
        name: 'XVC-486',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8Ap3Zz9AEtJd7eV9gz0XN9Ay8NnAtB2nR0ALCMW4U22StbhiUfIiXcUv3baYDE_iCYidfLK922_-_oJwrMeb8yxrVRuEtflo5wmpkYRoxxvMqe4QncbDNEj2yAGDJL5iDOqmmTX7mWw5OR6fajFNJr=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Personal Secutity',
        id: 14,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV866j3e92gqNAPXQ6PRIPZeg8o-cvViI1SQ9xENHiioeKzkWlbtl22Z3VlTLjS2sRDVfq5Ps0XEobPlKAr6S2Y3AuKzoZxzmtdt-EY05adsNM_tHTyksnkoiT35uQtbA_4nwyF0BBEwgt4PV1rFKUhbO=w500-h500-s-no-gm?authuser=0',
        name: 'GBF-118',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8-htW-BL6zO7bpD1ogqBNPz9Y1P22md6x338-Dc2Qkq5Ig1Ixf-IK1a_dgodN2sqf4H507SGO62fE_X24ZWua0QK_mKkYtFCm4pUeiguRsIdo36yZZzLOZQrGnhM2Vb5aSyz_SK7Z1srkd2aYs1bBE=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Personal Secutity',
        id: 15,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86wsTqtCPpN2mOqTKinpvxYj6ronIU9VJZXWFmUk49s5Q_xQh5j7vV8GbOLmENzQfTyXZu6Lyb0G1qodaFH3S58wQ_bGDEi3Uimmmbt2p3olUnza-18f3oRlX7IOyt-4rPQ7p7x1y68-eaHBkFctsJP=w500-h500-s-no-gm?authuser=0',
        name: 'HGH-67',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_PZoQNJGmooJOe43ritBnWiD6dKyIdwOAVe3iufWidIMm27Wdi9HhaKMz4JTTqPzoevOjoKu5dzR5uRkRBDzyemJieh-1s70A53GEBNYbU-RcNuQvLb3FVXyLRIh42PqYLEN6xcPe1WtNjAZ9bOhTw=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'HitRobot',
        id: 16,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85AvT-Q5IjF9XAChvVyxJ3vrNb3xK7l89VM0lilOsq2qjG_E3uijtsv4Eq3n6Vf-Ip12iToLgC3uY1DQAZtgAhtycrAoyeYFrSFu0ZL2FXoMMlQcSaFnFYLvECrs5omRUSRXY2Hyar6htfzE_LIfOi7=w500-h500-s-no-gm?authuser=0',
        name: 'YK-28',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-jlRWu0G3O4dQLGdZ1Rln892PJuf7I_GUlegUQyGwHTY0DqS25qvMVD96uBM466Py4O3HaSWMPS0JChdMCnA5paGp-VLDsDCdUHDPdwee6js6Pz2iDVIc0dDviYoWNxya1iKCeTmi1t2dDsqnbAMP_=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Blue Team',
        id: 17,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV878qLoDkfTaDs0_KdOqIo9kbWZ4U7FEDarqgAcI8yIXzVuezLVf24gfEMoZ2rzlQTvMy8r_FB5tflf0TqjlZIcy4swhGkdASC76JXAWHEsPF6UTtslWGrLFMNZ12_cVOIwooAq3A_nTEVC-LbMboDLW=w500-h500-s-no-gm?authuser=0',
        name: 'ETR-92',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_d-IpoprrzzBnOxU01vr53OUKZmhg5IRi_67UziYB08KZee7jczdvwxULwQpxCjkzYlmnUXVwyp1az-7ely6m-_zQQqWCNK482_5qQs3d8MHLYbfsnPaGWfUPwzCGsF03rt5PMbuUVm9XnIHye0IFV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 18,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84kXwma6PjH1r1ioiQ60YWqPFVgpGnUZR9OhkyBFdin5R7Bomlk2sIfV5Sq08HXwqqsIJE146_J-XJZSV52tKFrR_EOXQfJWIcP9We8H9cuLZg56F3_JbtHhVAaBEjQczeSQLDi5prhyFjCOkKuYKFe=w500-h500-s-no-gm?authuser=0',
        name: 'UKF-884',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8yeB_7UixQGIxBB92JIaHeubAybaLk-ZGcm4e4UdX7r7hq8R1EyW59k7uuTcARSEjc7KIOiSCqfUzyNTa4KgLOvqSHTNZ6xBnh9z3AaFIbKn4BruRm82-LJOd_Ong7slwXZzfR_4G1e1YRj5jVcztd=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'House Security',
        id: 19,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV854d9I2Nc8sKtjVyhFXR70uMbvDsEagpJFSMFEdLiykTOLItc8HZLyfeK83OwWksZJ1e-caFoBxKQ2XfiknD7Bth9MbTgZLdzndL4W5CwG_xHoRCHFCUvswXHgH5Mc55z9vadAqzDpApEfj_t7npZiC=w500-h500-s-no-gm?authuser=0',
        name: 'RTD-188',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-XCKFz6_uZ0mg_CLeNFk9EkOnWMKYRvvfnVrBCUrdfjqUkluRH0kBSrMi3CeeahRgVABIzCtEQnvM-w8ZCRRPrncK9V24M7RVvyM_NLH74aO5XcC758BbI_pcYjxS6xMpMvWzctLpUIj4p8T-sDWBN=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'HitRobot',
        id: 20,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85UTmwlGQ9oNmGcNkCH6DstM1NiqkAyb1dlU0rt30IS8xWCYDHAkbJyinfwOva7AX8SvVN3ngfh4ogExJ3aFLvqQFr5N74uAUbzOWTjmwnmf9SkwPf-eqPcRMi2tI-KGQFa2xJuHdDHoRvXE6CU6eH2=w500-h500-s-no-gm?authuser=0',
        name: 'DLT-987',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9zhb1c9fkiejm9-WU9FAd9Eo5KhXzXGmSkove6rMYy_agcFkoHbbJxvowsevjkk-hWBoDCuVsISsD8UgXv5m7lyUtXsKjvnHO7G6hwbiogtVSCGe98HmrlKTS-FKDRCdR2X4GlXzQBV8arWPlundbb=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'HitRobot',
        id: 21,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85737VzNqjBlAJxcJRxSBAYJr4BvUDJQ0DAhaOzhmsz2EQPqXK10hl3REI7lKQcGtkyXrJlt54zXiN0KHeXldIqxzjdOtnSXWk3cHVwRl0M9ghRGKZ_souAU0Suz7ZyC1HPa03a0Mc6lkAeyiryle-I=w500-h500-s-no-gm?authuser=0',
        name: 'DJK-303',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8Xwk7ruEfVPk7zD46K2gkQvceqyN9MIVnguCVNO0xMZ8_uUOcE5x05OyPd5y2PkURHLW6nwBgMQUuYYfBo9bcMG4Yzs3UXB6Az2vEAP3aMPfPLUMQUQOUEEBixTn18Vp-I5RTjp1iip78joHeoJw4e=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'Network Adminstraion',
        id: 22,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85KLpAbVmwqmzj2XqFFf6g9Nhz39f_TrTULZxH3PVmYifFY3ZE-Cf59koPK7DDK6fF2pVthXAlBDcdWTDzSsDhR4VR2y6ic5qkSNZlyqC7zRNNtxFKO2-7wp5GfZMH4D39gFYReP6HHzNkEmeguZ5b_=w500-h500-s-no-gm?authuser=0',
        name: 'RDW-257',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc808GDZIJgDDhXhC5J3Rpyp6a3fUvGAEkSyLOaJLXetuVJ6eifto8_dXmHZ_29Cgfl1aqgfIzHrNJUj8gSybBmvVdRuXFictifgnA_xVawLynMnBHMqVzEGq54OvcAgo-w1K3n-sGOfBvwlYzX0v7jH=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: 'fashion Mode',
        id: 23,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87sULu5aiQmCpvqSnn0nV6A31Irp32aKvzxFHZPO8scYfM9Qbqp8HMUo0F6_4iif7GkERyZU0TaLjHGyUkhTJuqse8I51tfbrBK3dljEWgkd5vcvnC4Ohm6cb2XZ39zGgDHU1BfFQi5YaE6phBIWvhF=w500-h500-s-no-gm?authuser=0',
        name: 'PJI-57',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-N6URDNWKwtN_y8eoKfuAzzLsM8VJ92Ytw90ySEfxTWpRCQgYQSNjAOP5e-kWmao-6D8cDvgdVyWPiNQKGGCSbrcWd99qxbr9KFd2ZqcL46JHZxP4nQ9g-_oKG-LXl1KkvFMndlJ3tKdSdYCRNkexa=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 24,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85kW2qbJlx-bbqdRcK1CV9DGo0e7N_fluuKyCV79cLzs5MtbLaF-dcLhY1NzBj56eUUAy7geJorzGei9ckIvqzebSqOivDCCwY4U95bTZu5iUhp3rtY0BAvYy6Aj0ZQGzO3iqxUSV1zu1sfs4FywtiP=w500-h500-s-no-gm?authuser=0',
        name: 'FSL-892',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-v8j-qKAGxI3YWVXo-I4t9YbvE7ismVm5CU9VJgnlL1I9cnDRWHNo1iL8EqgRSuwdqzVymxCyjLuUwrOKnVS9UDWbaj83DHraIaG4ejt2lXlKWKzEP0vlqvmwD7aePLNlbcen01Xe2QSDEuuQGyia2=w768-h768-s-no?authuser=0'),
  ];
  List<Cyberproduct> jobsRobot = [
    Cyberproduct(
        id: 25,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV847hjVqFf8XRXiLsJpfqgVMhGUlbDRzAuiL7_kfL6IusQ0yAH0G3Sd3ByZx5jVq9ieOseXSYDoNaW_qKZoYmSNzpF1AQNQy-yZhXgDnagEFqKdQ_Y9fqR9Oe_CU48IllWWy_6NOgG3HEEGekn2DMTNA=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Costemer Service',
        name: 'ALEX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9frayfbkL-HaM1aVm7SyDa5SuQkgYOBDSgnbFnGJdcbHJ70zIveblyC0PwjnOgImwJGxusqfLgcTu1pbSDYXCYKg-pnWkAeRFzK4XXNtrb3TP6Vf6MCpt4wQkQuzKZily6XfZvZ9L7saO2moPp6NDb=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 26,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87CSKU6LIfm4zuuKCDhb8zqXigK_0dB-h7yLYJdeNWWFxdnvF1LZnSy68mGpJwurLt6FbzkZlW3XEvAypUp5mn9PgQIjD2D0eRTxrZSKEqZ-7U8fFe6HVonYhSCG19mczskxw2DJQB0pl4Au8ERrsyS=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Flutter Developer',
        name: 'JAMES',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_6Dd75RRa4T7ikYgaaTV5H2vm_uuPdkIePBOeOn8_naHga102DxEZyy0Z3C3z6nyjOUoOYGVW2zOYhj0qpoRGwyq3Lg9y-MCd_qDK5Thc6abPZZsMNbFthqPxN05iOALk4dGQt1VZqE-yk7gtNktbV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 27,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84oSs8ajmo9CjvuvXZzWJkWKXJa5hRI8K6cN-WpIqak74EBcc98RraB2wwSBKJsAuB03p2mt-yB1I_98yh70kcHvA7c1MJoCUPUiCQNA4LEZmRzXkVSl46hU_QxMo4o9TCifhRn_b4jLGRRQL_GIsXT=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Sys Adminstration',
        name: 'HENRY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_oYcAjJfrc863WeLUvEFFJ3EgKpoYf2uEvqsSthYCxf7Bch7EOY-Tiy1SgLyEkiChjHXetA68sitOLhypCuO1ToBBibMqj2i0WxcxrJtfnbD7Jn1XFTnOXovBH3gHX4KVxxt8I6Vp0li5Ke7uRCRYA=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 28,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84YR4s0rMWNgLFr2hz5Ze3Ur_ltk0Zxs8_r4uF4dVEiB0cqalBYFRTD9Ta4Bzl74_0qSQ-w072TxY8OAJugbfoJPzgU-fvil0yMVdvW9NUFUeqrN2Ez0jLQgN5hqjfpJKLcIByyxqIF-OsZ6Mf80eRw=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Security Anylist',
        name: 'SARA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8YKb6eV3l0STblxK178dFqT598NGDzs5gIL3zN-sZG9RkHixLK5K6EpxgKVqgCvq9ySeTOmfCXF0F_pri6zqBOUutIYSD0EhxGp2w2IWYoKSqU0MyyZyiOOHiXql-eh1LSwLTaBpzIoX9tKdqcgLXB=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 29,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87x9PTlZuPM0Wd_sl_vxU826WKqgKAyOWL5xpsj0J4i32svTJC60mjmVYi-KjG6SIA2EsH1nmSCuL6G3V-Fsog8YtDzxBX6y7iz_8MBSE1xzJ4Zb_I4BSNxPFWqxg3c0YzVFUO7ITJOITqDFB4nl_OH=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Team Leader',
        name: 'SIRI',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-tvaVsUQMK0MqP9-85SxdFqrheTynwxddY3H57mnfcPGM8V9kKbAbd2cj0661mtEQLUcJ-zJ3_9x3E41YKE8GjjplXzwsf4KdbPV_Q1mfJJQhZwokUyJR9tEIcMTXd2hggYa1vOTFADTWEkc2E0BXG=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 30,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84kxf2Ja3twfFJ5EXWqGQbGbiL3zqWBJB41zzPEmCjsrbHO7OLQ5vwRuKMsJJuFJFt6otjz94qwWQPCfCezBcc9K0AncRu4716BfFxwTrTXbGo20G6pMf6EnLhpoeswha7Qsm-OY8zU1PtpsFSukbON=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Project Manager',
        name: 'MADARA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-hSaMUtx7ZU4pVk2ylAlgV-hE7L7M07t_U4sbkLShVau1l52Buj2ObGZ0wquduZcZJlo-W88E9SzXPeNODwmwLx8G57zCaBFAjUiZ2H21Wmn0S2I4kjjBW9gN3gOxlN2eaVdsnczs5zrvQHe3MFx_L=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 31,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV872L9_nFabkF7sp969kHYoN5RSJnRy5GlMIkx2KsXsk_xsSFXigeE4uO0NOTjlK1PYJXbsOLaFL_5j6ETv4t-YchXfvF6o1Rc5Ek9Yxdrgc_VVQaB-KXWqHEa74dz7l1wTNH7pwxfrnL-bBLwBi4XQU=w500-h500-s-no-gm?authuser=0',
        subinfo: 'PHP Developer',
        name: 'DAVID',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_G3fy3DBUMH79Kne1biWATN03TGYkoC8CwcYqEOzIsqyRMN0ylgHbBsvtX7pn5fsNzzxCm_5UoGFrt2kHqKX7gr3Ncu6AkluXnqkfltdTCew6_ujSYuqN7B8PaVz41uoEto8-4fZr7SBMbOVvGYoEP=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 32,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86KHUyu1_rV6dRIB71ypqKLnsMLNIIQ0GCHLDTFfcJBCih3GNRLPVLNfSAOPCQlZNBCuA70NyT7VMsPSB6ZEy6dag4I-9i_lk83qS6RUdqXzGYjcqTZbcnvAv8ZeZWnHJ1F1c--ny2pWvgwaX6GYglb=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Social Media Moderator',
        name: 'ALIX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8u6YGP-9t0EB5RVj_wNVgdZWYgc3AjgvuI4NRieNqKTnXJeLT-JsIeOhvrl_BzSKUUb3kb73UFzaqJnG9rgcELcsT4MqPAULEGvkcgdIAp0xwWvbko7kWx8ozU-FIc39KfWRpuYP0DJ5QTNyv8dpP6=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 33,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV847tzxBxzZ34rCLH47-XuxHjxoDgFX5oKAs03zZmkvd6slHFEo02VuFGIm7cKWyvCzPuH6AsSYt5guggdb1kTyWi2g2f2mQaW5wIZRFy9xpzYFSj3l-zU2hCmfCSlFrz08G44j1OVk0XZ5jjX4ppAZY=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Copy Writer',
        name: 'SARA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-Wx1x1coEFeDaePIJqyREf-NfJmW7AWCC5m6DfCUK7vdXHLNnzxTnO0JZQsWFTyYF8Q2skFmYal6NeDKgql7Wrtfvigo0TVGg64eIml_ZxMXG1zIQYvTJ2zpSTb9pa1YC56qHK3SGytO2hNbWQmkZz=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 34,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86A0e0Cj2gzbmSDZbcQnU23UxTA4WYx-_gSohx9h-oLtA1mINfhNeYkJ5IR9MNOWUuRmhse8iPE3Boz30R0wX1wpAn4fR5meci-uZ7xwq0_D6543kACGMR5F42kRZwzMxr5hq2W5TAXJPrNlTgoDKja=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Full Stack Developer',
        name: 'MARTEN',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_xgA_F2R8ViFyk8BRB842jD_5fXPn6kYs18MHMThZjp1PIV4Yisg0RV5qUzJxsAaB3b7tho9EsSQMN73TjaeBgMrL0fg-edI3AY2GlYcV9mH61bfV45KqH_SUjjkdq-mzFW5XiK3mlV6z4WJ02f3hH=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 35,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV8614h4_LvpTM-y3K8LatJj6sKH75_4gMnnJxj71LlpGJ5O3_50e_RNvfGF4wShCJHezmMeNXYKANiY6XHyA0CcF0Q-xh1e6cYFZzVZCWiI94Bw-Geq-bebNlWNFpp3wVXjYrjPDxdons79RjfnMps8d=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Devops Engineer',
        name: 'OGOZE',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-xLuDeeVlr0I1eGaovyIjV_aT6RoZ_DYLvBy-IXGMDatnxlPRjvBrNvJa9bAAyEkg9v4Bn1zQwG5sysyIt5wl5P-JuxIGM17CkMeBwHK5Nl8lbciGIQnsB_oA6JlrwrfOVtz4a-9_BlPQFUw985zFd=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 36,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84IdA2KDz-VvcZjBq0sFe0ar8V9kyWpImR-agZcWIsmzUyloFuciJmc6qF4Ms5LNDvRq1UjvwSJ6x79o7-fHLsDQcNoj-RFbuJX_HiYxLLXTAiSiZ5ES8ANs0pE7R2Ypxv7Lyo5u9Chn5RQV_SX9ZQ3=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Malaware Developer',
        name: 'SOOZY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-Pph2SmIumsNc_n0wF9eYMB57uPLFx6bMI49enjoX525sHd6T6mbelRweHg_dmZ5nKVVPeOxeKhqa8lV19SpO6Ic4W-anT1v-v9t2kjOmBBalcw2wjA4gwoZ3vDmr2rpOMDnervVE1cJKjL6hCiGOC=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 37,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV859iXti9R3JDWYaKnWE7qproLE0-vG_yfOL4rvOkBMtLphiqTLXwd9jNpUU9QsLP1r1l0Gmxvx2z-thwgt76oUBt_VoZpePFr3qtucCQym7NE_xboIdessnF0g6cbuxhGdwczpnjbTGYm3XYXTIYQKE=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Cloud Engineer',
        name: 'DAVID',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9HbjuZYO9FVaqCXagAhipK6iArHxxmEFe8KX0mOG8oehXLCmAhJtbWC9S6pyNyk4SOzZnwdpGIRRa0vBG2eFO1zSO21V4_2G78A01lZ0eO49iCMh2NtnjLJfhPPjRb1hkSrAtQNlSH4IQi8STo0jaI=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 38,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV8589VI_p8FaTS-1iKA_YjR55Rg2bpssFqP8JSLz_6XDJrsExiO9kHZ3feJxAiJs2abvNU38WP3Jt8gpveQ39X-lMxkLEcs4XqaFgmgxqiGC5cUk9dN8Ffdo9uC85loHc06RpwDqvwSAAo94n8VN5e69=w500-h500-s-no-gm?authuser=0',
        subinfo: '',
        name: 'TOMAS',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9Hb_JxZcIkVYcncKvFBIaSeU7AHZXlF6KrrluUxXHDwT6URt24XqyOUzfVns99UB4YrE7eFEBZWz_03MXk3zN6Ep3Xe51Bh96ybVQM421KnyfTPkxnjcATI9ULtXw_DyBy1Am1AfqTPJTJ32FCGloV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 39,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85zHpb70wRlZa08NhP5Ei4m9WUph_XwXTPRnR-13Pfek8jV62mGXs_D6Rmk6c9A1qhz5HNcacA3r1tv9EkLeL6u44nkTG5j0y23998B8rmCDTccQAFHjRwvCu9Fjj7UyJJpQO4OoIO_MBXO7cF4KUzD=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Python Developer',
        name: 'CRIS',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_b9RH2yN8en4_N6E-pJPyJwtZUydgCD9-SsMglY0q4qRPzrAh6Hu04R4fk9N59Vs-3BMJy9vCvgd1kso4MSL6R7QPz27xAVlcJ8-L5BAaS7lds6emiLi9oiBEss7ZucLLdHT7Q8g35eLexU3yYgBOR=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 40,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV8707Z-famoFDAFC-QpZs_yKQ75PHvpx9lnqTLof6TXR_FEW_YzR97ZSKsauAr4Dk60gVBJxLFqX8MIc1sznvX-wbgRmBa1fa5RcMdWHZRtT-7sZUEuwJrv_5qZ9GqSbzRKAhzi-FoUwu1PCApDo1GwM=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Backend Developer',
        name: 'BABY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc__8N-HWN_12kryRehkqNFPwuree-eiKx-6n7o943IpD7Rwlm9zHd53HpaOfBieNYF7LKrNDlKX2z_ovkJkqpjFG5qO_5_OQrm-n-p1I_-pPucRSZypOKlM8GnSBnhFtXHhTmjqK2bR06Nyw0R55bx6=w768-h768-s-no?authuser=0'),
  ];
  List<Cyberproduct> careRobot = [
    Cyberproduct(
        id: 41,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85IWU6y7BScNHkvL4cyKVjRIB4Kuxw2jGuKIakqnEVsqgxG4hVEvA6jPpk_3bYANA8EGEW7cyPv-cLXnax0LOO0i8M-15MRvuJR2UlOvsjFeZNo2o3AnJ-FtjoDWYWTxcU7cGvIZbkmTq1W0DME4Ejh=w500-h500-s-no-gm?authuser=0',
        subinfo: '',
        name: 'CANDY',
        information: 'Brain Sergory Specialist',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc85-m4Q5ZmegYQSv-CZliHz9Qhkr31N27tYYivyuH102VhdX47QrdVco7VWl3vUNzEYSD65u-kcPTjbwXOZrILjaWwkEeVjFxBm6VfyOzR9U2xwpX2PxkY3p2AZQI8P0qGmCvRnWCSInKajVXu-d1_x=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 42,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84XcmZ-gBFWZKU9pwxTmWlWkW9-4zt_PvAIM5STu3kZ7cPhbhAid1MoYQZG20jM5RqRdFGMhl2P1JlRU-JPA4DrG1Sn_O_sMR6FvD9tuK0XXvd-WvYFu7_t2AyuJbl9MI2bgnodfbAabQBNHbD0iK2N=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Heart Sergory Specialist',
        name: 'ROBY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_qHp8GEztIJ8z3rBGbhiZnGk9uzz99Khy99imZFuL8GKPn1wffc-0sMfetcZDgvOOfU-k14KMj0n0U3Pp5oFisvN9DhmTu19iC7bUJOv3ZJH_oZ-edwu10Fsm9-OddRiMQ0O_eLIhpO--n8Q9RuQbm=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 43,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87PyczI7nErWglAvaQief9PcifnUEuh0GmZQVCVanSK4GWgD-CT56uDg4zetTe6Ssrz1rBbwwpwN3LzwEEyemp4u4hMNTXWDrBNuZXeEYX9E_XoZTqCThSd8sBnAONQG2XymnDEWPm1hGtpbgEXyREq=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Dentist',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc86zi_YIaFZf6xxcumefgnGYJfB5Xu7xCauXTkN9-a9mdgiQDTwbDU68VgRwByKl2JcANq8F2upYVzruHafNgTQLMkq0NDZ__30fQVKdD59LdFvTMZkWKZXQokuIj5G8d3nEZEZvuHCrRxLflsAf-Ix=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 44,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86HTffYvOgaeq4AhhXVOp8lAWiILsyhncmTy3LLk2xE1X8XK0WF1pAqZxdq6Q02KBfTiL7ZGjvl470cGmdOm5vC3tTXBJrYFdwzfZz1knB36YG3L56RM4E0Xp9wMHJ0stg2RlZFflTBPPPwtknmNDQt=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Masage Specialist',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9mYZH3L3wPvqkKL27mkNKpH8vrkE2dl_PSAhcn5RJWP4GTt6D9I1gwVmCTMpaFW9CSlqxts3ega0fWtcyGMcjZ73pbi1YSwQYOJv7lh6OW0Df82QKS-ctNr6XvR1POZH0OwNhqxXCmMgdcLoNObQZ1=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 45,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86XnZJKqb2hKNz2kacfgX080UJO88A4c3byFkPLEXc5RQ_Ker5Y9eSR73PIYWeA_sg-gI0Xz9WIHe3sdjNvlxpnERub-bpD2NYbgpyVbLhFUuDpXZskx0IN4SWEW6rUIvrRwA6drQkoGko0TLgU0gAU=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Reflexthology Specialist',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-oxo-knmGCgVAy0z4dQDvRWw8gMuh7qYeeUQd5SlkiiqwFXIu2OkAvpwrACqn-4t2dSoOblEz6AGNudioM6_HGua5MAIiKfPJ6onZrWwNK3hmE0ZDvABA0WTunrKARrK4lyEe8-Y6_i0W0uw-G9pEM=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 46,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84tolb6_RHcSMEmtUycDmdtkaoCjikr7d6jJGfKZJC1JOyJSJvjqJrdE0Eo8VJerwNceYB2nroUURxHnMMWkQWcSdzYc7w7BCIsJAdbIrOh8yuwQ-zugyY9A8VMpzTqQlts76PzjB2vGebHnnyN8ha6=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Pidondontist',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9gGeegrqdifEG14fxeeG_pGedP1QqHiSTBVuoyo1R36241hSbahtuY2GbEV5ZZuPK0r_R48sw0NjFF72pDkfasJOR3sRptYgUgBUoS9epYW9Ddbv0q7KFeSIgurtikS8e3KLNy9X8aKK1r6WwUmSjf=w768-h768-s-no?authuser=0'),
  ];
  List<Cyberproduct> earthShips = [
    Cyberproduct(
        id: 47,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84zFv1b4B6Rn9h7-HO15v5bWLnY3bMfvM8uqEkCU3DYf4_YtTfoT3ivA0TfaTJlauwGZGBqexf41H_Il8dfMpkZ7OUL24ErqE42kDFnRzGuhyp64h8_VZnBx93Ph5Pc6bKt8gL2EZ8HUoYcHSwaTHCc=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'ER-234',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9DkjjAG4A8qBOIkOlm6m-lhaKwRQVpX2kXilsjSBjdLoEreLXhAk5Mf4bakgctYwFOFwRiBrL83aIVjuFsRrR9ZqMV6oO3WXqoNsjau-WYmMsix9gHbvN1E_fRFex7O17pW2AR5J4MeDOTN5_kLfw5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 48,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84wpjLhZ94-l319zvXUNqsRd_VNGGmf5I0YuNvINXZMxc8JY5mOaOicDptQTKIN8EhIxesQy5PXp8jTNC14lGUJKq-iPoRfr_h9uiAzEfXkjoPj7WYsMqhHuwlusPzOUFBJmvO2IApbjm5S-TQSwBDt=w500-h500-s-no-gm?authuser=0',
        subinfo: ' Fleet',
        name: 'ETH-568',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9WjaepPtNFCPVqG_ALi3zQL1x375OPFIN05X_15wYLBLDtaoGJAddAt_PmZuvT2gpl5gl1Er2-g4a7NE1em8vQHAMRsIZL6y0dbjnJG9ly3v3uPObNtNnNAz0o4noLGRxKxSacC3TcQJbPUy1X-4mX=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 49,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85vgrJKykTPqa-E3uzAC8SMBw9529dNXArCwiSwu1chbegIdTbqqZ2pRWB4_B36PO9V1nC9jBkKVsjafL2Efv6ffKUV0HpAEfTL_u-Rr1H8o4VOVQePwl0gs4Z5qRb4ioyXnjYi3aL9htf3qlCO0ndA=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Shopping',
        name: 'EOP-56',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_aDg-UrZaInaYg1i0OZ5qm2EYudoH1X5HBmPYtW8IoAEIduyzUj-qBMhUALEe4ewVkC5tVsQrumW9U7ymwDSzpWJc0C9pWa0Z_wiJG9Xw9cAIkX1qR4Zp932TXoT5GPIyOZ2qZpw5MHfUr32LfwJ2Q=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 50,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86NWUdRwyNWhTWtHrOXjeeFB6KLz3IsF-dZmrJQGdpR6XO2bFVdYU14MHhU42TYOB1J_mi_kiRF8PQqvaXUihKfq6e4x55cMr3GN6cdRF-po8o6oJY0avGWq3coCgvvdHsf1b_dvtx-tAydyiY-eRbW=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Sys Adminstration',
        name: 'ENM-865',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc94RQJBlAVq-Z2-S7ROjZpIjBSEvcwGzaabGpGw8RWCMPF-8bGUVy9DWXUtbwDOH-ig9ZBJ7GtO_B_PNgmAFQXvkHQ0aVBSgyGX2FQ2loRuxc1hsVwuUcWa3z3Qu9vFWPjHPiK1oJm9iajzIy4Gkige=w768-h768-s-no?authuser=0'),
  ];
  List<Cyberproduct> spaceShips = [
    Cyberproduct(
        id: 51,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84VqRdqj-WvUJwqbIWmDt_BF767PInXUH8ZWRoF6dC0BYVP5ablTxbGQyODI7yXw5_6ww6U9ECpCgKH5rWQ4DRGBoCefVlgLZNUh9ZV2CFVWiDBLAYB7-9KgQGFLutSbIAXSvASYF8LdrLwB5dg_NVC=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Costemer Service',
        name: 'WEQ-S52',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9ylHYYpSETwKUxC4JUiWuIuO-xTKyvw25buVL2oS9ga7k6n0JY5Amo6wz3IGi-02SYeOKObIPqqtwY5a_KGeetbp2hpZw8Ae5Z8nBURr405dEYSGJ0dE7IteKQtXfxZHAJwsL8ztbEX5SjiUfShGM_=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 52,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84R9TwXzv7Ac8m_oWrAs7qNBvfkg3otI5X-ZUP2XEyUu4vU2wlTgR5HDHv5MJkc_BtJvf7PBpYsqAIlIuuvvnE9xdaPACvEkqzQ2J8ajfO4hhyBEtPIqIzjjlvbfgXmahh9gzPp6WaZVxduoCSO5M8m=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'KUE-D59',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_lGmnEKQAe9jojrh1Sb2YhADH6-P8mw72gMXiMJYzAEAEkCGZN0qpSoXApa0NsAPlv-6lnZdS6IGotRd26_pvUcJgn8hS-jLxYHi-gZ9S6u1kbbnCV-oQX4D62HnFgyNgIolEs5042_XbUK22ZPAAe=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 53,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85vGsVqvNbRu4j8zOgaMty-rM5ZOYhG4uEBLXeEm8IDQkDeXPl201uPx21rZDzHpcYTOVQ_QuV_cEYj1jOCMyYDMJ4Wy6aL3nDmbaOGWxCwHdAu0tvM_lsyLycqpS1ZrLbXhupjVHjncIYi0ZRn3gIR=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'OWE-S52',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc991R-0AEIUwz4j869BovLEIpDcl6sHFQ4vy3BlewzJ0Bln8qpEMH4Z5FmUSHEMu3fFq-zaIBVju43DyZN0ofdf8XSagdbQayxsmKx8zrlVYwEl1RLzsGrUD0mBY0jQKmEE5eSj42LXVMSjBHvUY3EC=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 54,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86Nh2EtqgQF2t-78LLU209ekBXTPBzCvANeSQlalf2vHY2nYTgT7XMsjPqrQtzOjM7z-jaWZv5HKDDoefQy_eGK8NpvUE9RZoIxKyMYu13p1_X8cXzpdXp4V_LTdlAFbVJ7Wq3x_5gU1DIlwRt9yJwd=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'PSI_78',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8f-0rAIecC2qNZhKvHQ2mcEs6826eZ8PGBVPJeuotgTOq886sJvIwUyfIFcbJsS2AlSE2rIxLQvzzxXIido_83qxgK_ZDYjkgNc-PqyGO7Clh4lw3kuTIDuo8OSQZoawAqWmV3sx3t_qcl5OlkAMe5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 55,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV8749HPFmBQBIPlZ790pp2vG0Q2sGHpROCNiN0e8pHz79N944gQif3DgYoysm5uHhzvPS1ybl_ACGf29Y2tjFtZZH1GiHuTYiYZK7JMq9jSme8U18a5sePBurxtm1OGH8nied9XkTGsTtbaqqxsEbzJ4=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'GTY_W63',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_RuhnEqFZELr8iRD3kypPMvM6Wos62jHh_-hm5jkqmLilywHtVYy16VlUBErJQuzSB5x4zt_gbFjEOwt4vxIOYM7xjdFl6Xya4xyzjOCF6JwLIfZIGR8PDyqYPTY68J8uv0jrkwGhSIMBCoW5pDg_V=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 56,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84sX9XCh9L9ER4r41T_0yBBgujv95WjiWSjfKEvD25ywJq51KyQmqLDLvEgTapUI090Nu7c3AG7hHgxEJbDkIcVS_2G-N1SMs0Xyxtd43H-inHCE0OFXQvR2pQ8E-MS0iIg0CM8JmgOYz8JjIVWeYIY=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'GES-O22',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-yPt4OpKY7KgbJdNSWcnm4wPQcLTaU0a0cY_0dAL_0v10LoTtTpfAdE-4fRWAplJg54wcSmJJcLlCF3G9_k-pCbEokOIj9SBBTGPR3p3i1U7pDoa9nMhCEx4bB8DBXsKR6veRHytAMetqhW3o23q-T=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 57,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86Nh2EtqgQF2t-78LLU209ekBXTPBzCvANeSQlalf2vHY2nYTgT7XMsjPqrQtzOjM7z-jaWZv5HKDDoefQy_eGK8NpvUE9RZoIxKyMYu13p1_X8cXzpdXp4V_LTdlAFbVJ7Wq3x_5gU1DIlwRt9yJwd=w500-h500-s-no-gm?authuser=0',
        subinfo: '5 Fleet',
        name: 'MMG_A16',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8f-0rAIecC2qNZhKvHQ2mcEs6826eZ8PGBVPJeuotgTOq886sJvIwUyfIFcbJsS2AlSE2rIxLQvzzxXIido_83qxgK_ZDYjkgNc-PqyGO7Clh4lw3kuTIDuo8OSQZoawAqWmV3sx3t_qcl5OlkAMe5=w768-h768-s-no?authuser=0'),
  ];
  List<Cyberproduct> planes = [
    Cyberproduct(
        id: 58,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV84YKpZX7gPNEF3Vmm1itznuc1g6nI7ORogfJcJKSmrt6lxdRS4wf3if3lA40T8hJjZ0ZtEHy0siE6tK535ASPZ1UAdxTIucrf5ftPRnpPj6wdESVns5kiXvhEqCEptypMd8nTx2you1IKd_xgQrK5lp=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Costemer Service',
        name: 'ALEX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8P8DekS2U8ZuikRp5f9_eRz5WbEkEWq9T2hTBwVMkwVRV8ucHPyDWS0Wm_kp08xcXUVrZX086117UGlWpds21v74RjLWSbf1hNksmsiaUyAcWDDRDvk6Q7QYjEkoxg4Db7gUo5GlbX3cBQJb1o5y5K=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 59,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86Sejy_PjcqYo2iBVIimf_gf0wcbjWfGrJ-mIql-wdfoocCOfX5tm4o7m33dyOdf9xenvdZKm9hnzOyRhVoHi0bmJrU81PSR-pSLkKqUUuefkaj3-5Woz5WIYcjq1TExMkaJy99PbOlt40gHGjlK78F=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Flutter Developer',
        name: 'JAMES',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-AAet8Yb00SiNTV8g9IvV9SRSyKd3K26-F2ztja97kFp2kQo4S8a6cWSi1svfUhK7lgPyxmdsDVbdlnXD7ebSxt33r3blsmR7_wN09kWvRxZBLHlCL_G9cuvcKoDuIeQjseAGSmRoTgnvjae2tLESc=w768-h768-s-no?authuser=0'),
  ];
  List<Cyberproduct> wepons = [
    Cyberproduct(
        id: 60,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87tJpAqUFVCxiBdEfunTBXpa4fvaUugZMKhsCB9jHXS_osm3FdFjQqvvuhM7LDsBMyaP8nG1iTHdHeo_apzVasztabtxbLJyG2gH0MmMsh1vkrX1bb6qqHEOnluSyYJX7xaT_IvcFM3JNV4HLZajl2H=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Fox Killer',
        name: 'ZANGITS',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHeUiFNkVfGx8DRJA8Qy62vvU_sS9jdYBv_U9t8yC1PT8D2H-Nf1kMr_gHnjuBlA3eAyYQVQzqUS8b-EOjxlVmMYIyiHUqLkKiw8dmHS2VO56QR7pEfCMzfK2AjZw2HJg5pEn7ZlpkkrU6SvqXG2aZ5s=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 61,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87TMFRTfNAQ25S38zC-6pw1Vo81c_5UtB73ppsCg9n7sMcKrs5SQDlgkDPc1GIrOYBoXCkeDUJ6BUZYHAy656hgJI9x1G3kYVTxjU_-Q57spQ1spLyY2hUqUbGgi4wCE6qRnu8MkGglXiLBkvk2R7ks=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Giant Snake',
        name: 'ZABIMARU',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHc4V2yC0imp3NiwdiQAdvVecr04htF3Wk8YVgT-JfuXgsL7T1BcKjfVXDMpdYMK9g80OlsN35D7XyllIlvDMo6WHsRhkq80XVTJrS9GTbEiep33mUAVPVCwNdtZmJpS9KF5MVPk87CrIiMV7Lhd75F9=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 62,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86q1t7F9GWryw0fesUfb4CxuKdpJgSY6wYRYGJ3KfXOOdOrP8smsWZCU8yszj3e2Bmd67f_0Qt-GNFz9-PWNCpAlytKqwWW6uHCF73zaLaIA7I706cJU4O8eaDuSwTb-akX3IAJPgYyTo18Icx24Sgh=w500-h500-s-no-gm?authuser=0',
        subinfo: 'The hidden killer',
        name: 'KORO',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHfBGQW9eSocnmGX_WwNXEh8KMeRIC4W_NsYK95XquXeXFGnGG5qrSs6GzAG4aBiWeiiHNLhVLN1AVuv9gU0-guK_7OPlt_eBbxsiBeS9r0GMOdpAA8pkhuIKK8N7wjmYGLYh3WMzQTgLYvqshjM4syT=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 63,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV87n-79N3juO1PsAqZHqUgi2z_26TsRKMp9PWDMO6hQ9D0aa8SqQGa_7alrut7CEdTnlAiVpkx73TqZ2-eF5Dj7WlQh09jzzwfWWQ1PhjKv6FvjpEeu904SsHCxXz2UAsHvivqNsTIsYPgVHKB6fhAKy=w500-h500-s-no-gm?authuser=0',
        subinfo: 'The Cutter',
        name: 'KINBATCHI',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHdJRJz-Rt-kUC5DMZYKD7S64TrqpZ6ysVze00moFVgzOWHefvPtY2A0p_TzUfO7Z64gQxMNgHiigxp07w9dK4TldC0K8oWHvD6_YTqyIyHdVP2rvt1CkKIiiKcwUngGs470zxXG6uudMgsfQomtc6y3=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 64,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86LJMlyRqeWBui8K33o-GU7nUxVPoYKNbccT98JyVVV8MVPcySLputTXS69wkpWXkNRbaYBabcVqjSbSOAQ2a8Qd7lCjCo7Rt4BrjT8N4mGXZtg5-wKnFYvkgosvRtcQZVGR5H6POXLLvXQCBzyeJB5=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Giant killer',
        name: 'Levi Ackerman',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHfVmhy1x9bmBaFeyR0uphzx8AMU0foKESxF_HRowtb6uaPRKe-zI6Gl1aAIEa7Gt_yqhbXBaVTLpncpnfSurLz7TI1jGq2HvQ20sdre66LIF0qgdDEX7yp0rb7GoyHZTBGNBUfT4lGermP0kDSEDuyO=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 65,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV86q-M8uQCjRfB6QzZMM6wNtdX0_AXRnLlQRrAoBjoI2khm0ypjiQmu1wuTpzENdhc58p0Us8hbRcLqXsjGF_TZZtaY38QxhPGpc3APP873QurDAPz2DkuF5_y3uRRkIA3BRd_wF-l6O8mLqWBaF89hZ=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Dragon Slayer',
        name: 'YUKIMAROU',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHfcmVHpMoVCMuNzHvh19FXyLamP7yn_yfEqILdoXvYnCgtu0_yVuFnSIahVfM7kEDJ_RRNV0aMMZoMLtvXpTy3geNLWnU52AFA0XJnaqM1CcUTiSnTYLEisj7F8INdSzWt7dCRI93huFTQMahtt81N7=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 66,
        image:
            'https://lh3.googleusercontent.com/pw/ABLVV85v9RhCrC4XE3XM2N6-abqFcfT4VswIKW8DH3qpbBUEbovzGC7jC-OwCIkq64h_SRdS18BcELsXrGWNwBO73igfGCuomuFsS-lOB8wE05T18P6IbWQyfcUcWOOq2Jptp0yODc3De-qu52HzcWvP6yfs=w500-h500-s-no-gm?authuser=0',
        subinfo: 'Demon Slayre',
        name: 'PIAKUYA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/ADCreHeojQAXOQspAB2uaz5oltnUBZwCoG13grXPJ1nR2LiHYhgummsuM1I5O8qjpkIz8n5w7P3hBSxcznJRB9eFBoapMIfTzwdj1gEzTnD3wZ4JcBJVBpRAep6a5g2jhGB88PCF1ULfdvOSbhTPyQaorO9Z=w768-h768-s-no?authuser=0'),
  ];

  List<Cyberproduct> All = [
    Cyberproduct(
        subinfo: '',
        id: 1,
        image: 'images/1 (1).png',
        name: 'ZR-12',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_t3k9zta8YFZ-Arw-IShkrUrrOK9Eme6gqOmjfSdwJDPgX_ZU9qSjsukwd44r44OELqMJnqGwG-M_8sbciq9UWcsew67uKWpvpxf1OiPn4Ay8ibVI1H7CC0vD43arhnor1SD5xGoaIRAHT2gtixOeM=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 2,
        subinfo: '',
        image: 'images/2.png',
        name: 'XS-312',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-CGxFrfBVG95zcuzVRSdonBRCCDy7tHAXj-Lf4CQ0DHGIZELf_8YQRMB2fscQ9eWZt20ngQCQozNqpSRFRhovQrTtElbpidf3KBIMBEsyVm3iZK96KHuQUZ7psfiwTs_WKvrmh92XMf_9JVrS5WBSv=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 3,
        subinfo: '',
        image: 'images/3.png',
        name: 'RW-152',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_1D67FyzH68fFdhUaOEu4A3Y9FPFsTu9-CkK_HWOwnyi34n2xwx0OiCPSi_9RaZZjJLj6ssOLoUOWljAhJa8O4mwPg-86ilHzI6x40pJwx2960tNPAirPOKJavFvoeK7-Uwcl7hiq_6EVHhGyMXIwn=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 4,
        image: 'images/4.png',
        name: 'SV-32',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_q9VzCsWxoyY569LLxBOCXD8EqFrOQbzO3Qk-Qco_IjIeaepG76g0JGzMsYRWct5XXpZV8-roUfstTscEVvS2tPlqMy9iND95hG0T1RiWGaQbsGQDBAnM1MHpIq4D-bidPfiiSVhqDxPHECYc6yw4g=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 5,
        image: 'images/5.png',
        name: 'WQ-64',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8KAUtzGVP02SieXYvR95QSQsi5x6kNj7z-qgHLSBHqglTnZ8x_5-jxHDGzc50K1WwN5-hnvAvZzO34i0yW1reC_s_S3S-vggV6v8-K-W5CFLBfedcQwxQT41Rt5pJpt00nRifO7wfghIyXj9H3ujiM=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 6,
        image: 'images/6.png',
        name: 'ASP-82',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_d-IpoprrzzBnOxU01vr53OUKZmhg5IRi_67UziYB08KZee7jczdvwxULwQpxCjkzYlmnUXVwyp1az-7ely6m-_zQQqWCNK482_5qQs3d8MHLYbfsnPaGWfUPwzCGsF03rt5PMbuUVm9XnIHye0IFV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 7,
        image: 'images/7.png',
        name: 'OP-874',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8bzNaCYyLIWlwR_Zj53UO9sXZ9Z8-noC8OE9eb9TPkZF-u6WkNAL43uGwIhrINMEfSwVQMNpt7JYNE-uxVNktIlK0KL5frv-LNQPG46ydUnBmIEUGW3Gu2UTn6AFn7ZVCvNvNnUTe-jKOrjJzP6C4a=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 8,
        image: 'images/8.png',
        name: 'RYT-59',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_wtpgKIqkjzUogL3QxKSnforcgkT4a-OcFCNXDwTngE4hnmwdAqgaBmRtaDV7ugzNiVTPLIrHdCcDGkHHBZmnfLJjaKP_QzMkkCWGW--bvlmX62rSwIqMs0XRbpGK37ljtJzwZL4S8t9_0EdA-e0oU=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 9,
        image: 'images/9.png',
        name: 'DV-44',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-P-GLBPRV-AEoLUCZL6LMDPbHdOIRsRUcGLMmR25XE2mUh1ZfqnceLmWGikRuMsDZEcAnGawPl-P8LsjG6P07lKsyOONpt_XFziguG22HO2X5vL7CWOAl_DlJIzVZN7M6StxV6cGFy-M4VA2cnv5nQ=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 10,
        image: 'images/10.png',
        name: 'EC-52',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8OkUBFQL34eY4VGDEWqFKmf5OpGSC5jy5UmK-29kaSkw2ES092vXN7Fr3mlrv0mBJBDojNvHpTkINgZWqXyp189qw4u0BnxgAD_FHahQwOk2t9AhovofR-CqZtYCgMPE6aLMRvQhm1s97ItkWds1YV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 11,
        image: 'images/11.png',
        name: 'SX-14',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8ZCg_ewR3ZRVssNEq8T1Bdhfs1L9AvhpY9WY5y1C_aiF-ytbUQ_yGpunTxMDtORB8GS4eOo6HfwdUjVWUU4rr8waIE3CtZH7BoknLwJj8FcJ6R0COXZ6iwyWy5z_TadpHDekd9MrnV2bqJ7lfpZbu5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 12,
        image: 'images/12.png',
        name: 'UI-452',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-iRuN35ViTBZAX5sNoaE2iYdnnfhDV9kg6QLI0VWQP0JLoPPoloRLefLeusHMtoMRPTMISpptE7SV8zjaeK9khltaYnp_LiZfhsN_D2XTM4zZfm7Qt2ckPvKJEEU0G-TpJEFrbzxcN4fo6zLcuwNMK=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 13,
        image: 'images/13.png',
        name: 'XVC-486',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8Ap3Zz9AEtJd7eV9gz0XN9Ay8NnAtB2nR0ALCMW4U22StbhiUfIiXcUv3baYDE_iCYidfLK922_-_oJwrMeb8yxrVRuEtflo5wmpkYRoxxvMqe4QncbDNEj2yAGDJL5iDOqmmTX7mWw5OR6fajFNJr=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 14,
        image: 'images/14.png',
        name: 'GBF-118',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8-htW-BL6zO7bpD1ogqBNPz9Y1P22md6x338-Dc2Qkq5Ig1Ixf-IK1a_dgodN2sqf4H507SGO62fE_X24ZWua0QK_mKkYtFCm4pUeiguRsIdo36yZZzLOZQrGnhM2Vb5aSyz_SK7Z1srkd2aYs1bBE=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 15,
        image: 'images/15.png',
        name: 'HGH-67',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_PZoQNJGmooJOe43ritBnWiD6dKyIdwOAVe3iufWidIMm27Wdi9HhaKMz4JTTqPzoevOjoKu5dzR5uRkRBDzyemJieh-1s70A53GEBNYbU-RcNuQvLb3FVXyLRIh42PqYLEN6xcPe1WtNjAZ9bOhTw=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 16,
        image: 'images/16.png',
        name: 'YK-28',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-jlRWu0G3O4dQLGdZ1Rln892PJuf7I_GUlegUQyGwHTY0DqS25qvMVD96uBM466Py4O3HaSWMPS0JChdMCnA5paGp-VLDsDCdUHDPdwee6js6Pz2iDVIc0dDviYoWNxya1iKCeTmi1t2dDsqnbAMP_=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 17,
        image: 'images/17.png',
        name: 'ETR-92',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_d-IpoprrzzBnOxU01vr53OUKZmhg5IRi_67UziYB08KZee7jczdvwxULwQpxCjkzYlmnUXVwyp1az-7ely6m-_zQQqWCNK482_5qQs3d8MHLYbfsnPaGWfUPwzCGsF03rt5PMbuUVm9XnIHye0IFV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 18,
        image: 'images/18.png',
        name: 'UKF-884',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8yeB_7UixQGIxBB92JIaHeubAybaLk-ZGcm4e4UdX7r7hq8R1EyW59k7uuTcARSEjc7KIOiSCqfUzyNTa4KgLOvqSHTNZ6xBnh9z3AaFIbKn4BruRm82-LJOd_Ong7slwXZzfR_4G1e1YRj5jVcztd=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 19,
        image: 'images/19.png',
        name: 'RTD-188',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-XCKFz6_uZ0mg_CLeNFk9EkOnWMKYRvvfnVrBCUrdfjqUkluRH0kBSrMi3CeeahRgVABIzCtEQnvM-w8ZCRRPrncK9V24M7RVvyM_NLH74aO5XcC758BbI_pcYjxS6xMpMvWzctLpUIj4p8T-sDWBN=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 20,
        image: 'images/20.png',
        name: 'DLT-987',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9zhb1c9fkiejm9-WU9FAd9Eo5KhXzXGmSkove6rMYy_agcFkoHbbJxvowsevjkk-hWBoDCuVsISsD8UgXv5m7lyUtXsKjvnHO7G6hwbiogtVSCGe98HmrlKTS-FKDRCdR2X4GlXzQBV8arWPlundbb=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 21,
        image: 'images/21.png',
        name: 'DJK-303',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8Xwk7ruEfVPk7zD46K2gkQvceqyN9MIVnguCVNO0xMZ8_uUOcE5x05OyPd5y2PkURHLW6nwBgMQUuYYfBo9bcMG4Yzs3UXB6Az2vEAP3aMPfPLUMQUQOUEEBixTn18Vp-I5RTjp1iip78joHeoJw4e=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 22,
        image: 'images/22.png',
        name: 'RDW-257',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc808GDZIJgDDhXhC5J3Rpyp6a3fUvGAEkSyLOaJLXetuVJ6eifto8_dXmHZ_29Cgfl1aqgfIzHrNJUj8gSybBmvVdRuXFictifgnA_xVawLynMnBHMqVzEGq54OvcAgo-w1K3n-sGOfBvwlYzX0v7jH=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 23,
        image: 'images/23.png',
        name: 'PJI-57',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-N6URDNWKwtN_y8eoKfuAzzLsM8VJ92Ytw90ySEfxTWpRCQgYQSNjAOP5e-kWmao-6D8cDvgdVyWPiNQKGGCSbrcWd99qxbr9KFd2ZqcL46JHZxP4nQ9g-_oKG-LXl1KkvFMndlJ3tKdSdYCRNkexa=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        subinfo: '',
        id: 24,
        image: 'images/24.png',
        name: 'FSL-892',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-v8j-qKAGxI3YWVXo-I4t9YbvE7ismVm5CU9VJgnlL1I9cnDRWHNo1iL8EqgRSuwdqzVymxCyjLuUwrOKnVS9UDWbaj83DHraIaG4ejt2lXlKWKzEP0vlqvmwD7aePLNlbcen01Xe2QSDEuuQGyia2=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 25,
        image: 'images/27.png',
        subinfo: 'Costemer Service',
        name: 'ALEX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9frayfbkL-HaM1aVm7SyDa5SuQkgYOBDSgnbFnGJdcbHJ70zIveblyC0PwjnOgImwJGxusqfLgcTu1pbSDYXCYKg-pnWkAeRFzK4XXNtrb3TP6Vf6MCpt4wQkQuzKZily6XfZvZ9L7saO2moPp6NDb=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 26,
        image: 'images/28.png',
        subinfo: 'emon',
        name: 'JAMES',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_6Dd75RRa4T7ikYgaaTV5H2vm_uuPdkIePBOeOn8_naHga102DxEZyy0Z3C3z6nyjOUoOYGVW2zOYhj0qpoRGwyq3Lg9y-MCd_qDK5Thc6abPZZsMNbFthqPxN05iOALk4dGQt1VZqE-yk7gtNktbV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 27,
        image: 'images/29.png',
        subinfo: 'Sys Adminstration',
        name: 'HENRY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_oYcAjJfrc863WeLUvEFFJ3EgKpoYf2uEvqsSthYCxf7Bch7EOY-Tiy1SgLyEkiChjHXetA68sitOLhypCuO1ToBBibMqj2i0WxcxrJtfnbD7Jn1XFTnOXovBH3gHX4KVxxt8I6Vp0li5Ke7uRCRYA=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 28,
        image: 'images/30.png',
        subinfo: 'Security Anylist',
        name: 'SARA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8YKb6eV3l0STblxK178dFqT598NGDzs5gIL3zN-sZG9RkHixLK5K6EpxgKVqgCvq9ySeTOmfCXF0F_pri6zqBOUutIYSD0EhxGp2w2IWYoKSqU0MyyZyiOOHiXql-eh1LSwLTaBpzIoX9tKdqcgLXB=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 29,
        image: 'images/31.png',
        subinfo: 'Team Leader',
        name: 'SIRI',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-tvaVsUQMK0MqP9-85SxdFqrheTynwxddY3H57mnfcPGM8V9kKbAbd2cj0661mtEQLUcJ-zJ3_9x3E41YKE8GjjplXzwsf4KdbPV_Q1mfJJQhZwokUyJR9tEIcMTXd2hggYa1vOTFADTWEkc2E0BXG=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 30,
        image: 'images/32.png',
        subinfo: 'Project Manager',
        name: 'MADARA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-hSaMUtx7ZU4pVk2ylAlgV-hE7L7M07t_U4sbkLShVau1l52Buj2ObGZ0wquduZcZJlo-W88E9SzXPeNODwmwLx8G57zCaBFAjUiZ2H21Wmn0S2I4kjjBW9gN3gOxlN2eaVdsnczs5zrvQHe3MFx_L=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 31,
        image: 'images/33.png',
        subinfo: 'PHP Developer',
        name: 'DAVID',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_G3fy3DBUMH79Kne1biWATN03TGYkoC8CwcYqEOzIsqyRMN0ylgHbBsvtX7pn5fsNzzxCm_5UoGFrt2kHqKX7gr3Ncu6AkluXnqkfltdTCew6_ujSYuqN7B8PaVz41uoEto8-4fZr7SBMbOVvGYoEP=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 32,
        image: 'images/34.png',
        subinfo: 'Social Media Moderator',
        name: 'ALIX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8u6YGP-9t0EB5RVj_wNVgdZWYgc3AjgvuI4NRieNqKTnXJeLT-JsIeOhvrl_BzSKUUb3kb73UFzaqJnG9rgcELcsT4MqPAULEGvkcgdIAp0xwWvbko7kWx8ozU-FIc39KfWRpuYP0DJ5QTNyv8dpP6=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 33,
        image: 'images/35.png',
        subinfo: 'Copy Writer',
        name: 'SARA',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-Wx1x1coEFeDaePIJqyREf-NfJmW7AWCC5m6DfCUK7vdXHLNnzxTnO0JZQsWFTyYF8Q2skFmYal6NeDKgql7Wrtfvigo0TVGg64eIml_ZxMXG1zIQYvTJ2zpSTb9pa1YC56qHK3SGytO2hNbWQmkZz=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 34,
        image: 'images/36.png',
        subinfo: 'Full Stack Developer',
        name: 'MARTEN',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_xgA_F2R8ViFyk8BRB842jD_5fXPn6kYs18MHMThZjp1PIV4Yisg0RV5qUzJxsAaB3b7tho9EsSQMN73TjaeBgMrL0fg-edI3AY2GlYcV9mH61bfV45KqH_SUjjkdq-mzFW5XiK3mlV6z4WJ02f3hH=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 35,
        image: 'images/37.png',
        subinfo: 'Devops Engineer',
        name: 'OGOZE',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-xLuDeeVlr0I1eGaovyIjV_aT6RoZ_DYLvBy-IXGMDatnxlPRjvBrNvJa9bAAyEkg9v4Bn1zQwG5sysyIt5wl5P-JuxIGM17CkMeBwHK5Nl8lbciGIQnsB_oA6JlrwrfOVtz4a-9_BlPQFUw985zFd=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 36,
        image: 'images/38.png',
        subinfo: 'Malaware Developer',
        name: 'SOOZY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-Pph2SmIumsNc_n0wF9eYMB57uPLFx6bMI49enjoX525sHd6T6mbelRweHg_dmZ5nKVVPeOxeKhqa8lV19SpO6Ic4W-anT1v-v9t2kjOmBBalcw2wjA4gwoZ3vDmr2rpOMDnervVE1cJKjL6hCiGOC=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 37,
        image: 'images/39.png',
        subinfo: 'Cloud Engineer',
        name: 'DAVID',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9HbjuZYO9FVaqCXagAhipK6iArHxxmEFe8KX0mOG8oehXLCmAhJtbWC9S6pyNyk4SOzZnwdpGIRRa0vBG2eFO1zSO21V4_2G78A01lZ0eO49iCMh2NtnjLJfhPPjRb1hkSrAtQNlSH4IQi8STo0jaI=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 38,
        image: 'images/40.png',
        subinfo: '',
        name: 'TOMAS',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9Hb_JxZcIkVYcncKvFBIaSeU7AHZXlF6KrrluUxXHDwT6URt24XqyOUzfVns99UB4YrE7eFEBZWz_03MXk3zN6Ep3Xe51Bh96ybVQM421KnyfTPkxnjcATI9ULtXw_DyBy1Am1AfqTPJTJ32FCGloV=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 39,
        image: 'images/41.png',
        subinfo: 'Python Developer',
        name: 'CRIS',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_b9RH2yN8en4_N6E-pJPyJwtZUydgCD9-SsMglY0q4qRPzrAh6Hu04R4fk9N59Vs-3BMJy9vCvgd1kso4MSL6R7QPz27xAVlcJ8-L5BAaS7lds6emiLi9oiBEss7ZucLLdHT7Q8g35eLexU3yYgBOR=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 40,
        image: 'images/42.png',
        subinfo: 'Backend Developer',
        name: 'BABY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc__8N-HWN_12kryRehkqNFPwuree-eiKx-6n7o943IpD7Rwlm9zHd53HpaOfBieNYF7LKrNDlKX2z_ovkJkqpjFG5qO_5_OQrm-n-p1I_-pPucRSZypOKlM8GnSBnhFtXHhTmjqK2bR06Nyw0R55bx6=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 41,
        image: 'images/43.png',
        subinfo: 'Backend Developer',
        name: 'CANDY',
        information: '',
        bigImage:
            'httpstts://lh3.googleusercontent.com/pw/AIL4fc85-m4Q5ZmegYQSv-CZliHz9Qhkr31N27tYYivyuH102VhdX47QrdVco7VWl3vUNzEYSD65u-kcPTjbwXOZrILjaWwkEeVjFxBm6VfyOzR9U2xwpX2PxkY3p2AZQI8P0qGmCvRnWCSInKajVXu-d1_x=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 42,
        image: 'images/44.png',
        subinfo: 'Sergory',
        name: 'ROBY',
        information: '',
        bigImage:
            'httpstts://lh3.googleusercontent.com/pw/AIL4fc_qHp8GEztIJ8z3rBGbhiZnGk9uzz99Khy99imZFuL8GKPn1wffc-0sMfetcZDgvOOfU-k14KMj0n0U3Pp5oFisvN9DhmTu19iC7bUJOv3ZJH_oZ-edwu10Fsm9-OddRiMQ0O_eLIhpO--n8Q9RuQbm=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 43,
        image: 'images/45.png',
        subinfo: 'Backend Developer',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc86zi_YIaFZf6xxcumefgnGYJfB5Xu7xCauXTkN9-a9mdgiQDTwbDU68VgRwByKl2JcANq8F2upYVzruHafNgTQLMkq0NDZ__30fQVKdD59LdFvTMZkWKZXQokuIj5G8d3nEZEZvuHCrRxLflsAf-Ix=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 44,
        image: 'images/46.png',
        subinfo: 'Backend Developer',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9mYZH3L3wPvqkKL27mkNKpH8vrkE2dl_PSAhcn5RJWP4GTt6D9I1gwVmCTMpaFW9CSlqxts3ega0fWtcyGMcjZ73pbi1YSwQYOJv7lh6OW0Df82QKS-ctNr6XvR1POZH0OwNhqxXCmMgdcLoNObQZ1=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 45,
        image: 'images/47.png',
        subinfo: 'Backend Developer',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-oxo-knmGCgVAy0z4dQDvRWw8gMuh7qYeeUQd5SlkiiqwFXIu2OkAvpwrACqn-4t2dSoOblEz6AGNudioM6_HGua5MAIiKfPJ6onZrWwNK3hmE0ZDvABA0WTunrKARrK4lyEe8-Y6_i0W0uw-G9pEM=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 46,
        image: 'images/48.png',
        subinfo: 'Backend Developer',
        name: 'CANDY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9gGeegrqdifEG14fxeeG_pGedP1QqHiSTBVuoyo1R36241hSbahtuY2GbEV5ZZuPK0r_R48sw0NjFF72pDkfasJOR3sRptYgUgBUoS9epYW9Ddbv0q7KFeSIgurtikS8e3KLNy9X8aKK1r6WwUmSjf=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 47,
        image: 'images/56.png',
        subinfo: 'Costemer Service',
        name: 'ALEX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9DkjjAG4A8qBOIkOlm6m-lhaKwRQVpX2kXilsjSBjdLoEreLXhAk5Mf4bakgctYwFOFwRiBrL83aIVjuFsRrR9ZqMV6oO3WXqoNsjau-WYmMsix9gHbvN1E_fRFex7O17pW2AR5J4MeDOTN5_kLfw5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 48,
        image: 'images/57.png',
        subinfo: 'Flutter Developer',
        name: 'JAMES',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9WjaepPtNFCPVqG_ALi3zQL1x375OPFIN05X_15wYLBLDtaoGJAddAt_PmZuvT2gpl5gl1Er2-g4a7NE1em8vQHAMRsIZL6y0dbjnJG9ly3v3uPObNtNnNAz0o4noLGRxKxSacC3TcQJbPUy1X-4mX=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 49,
        image: 'images/58.png',
        subinfo: 'Sys Adminstration',
        name: 'HENRY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_aDg-UrZaInaYg1i0OZ5qm2EYudoH1X5HBmPYtW8IoAEIduyzUj-qBMhUALEe4ewVkC5tVsQrumW9U7ymwDSzpWJc0C9pWa0Z_wiJG9Xw9cAIkX1qR4Zp932TXoT5GPIyOZ2qZpw5MHfUr32LfwJ2Q=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 50,
        image: 'images/59.png',
        subinfo: 'Sys Adminstration',
        name: 'HENRY',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc94RQJBlAVq-Z2-S7ROjZpIjBSEvcwGzaabGpGw8RWCMPF-8bGUVy9DWXUtbwDOH-ig9ZBJ7GtO_B_PNgmAFQXvkHQ0aVBSgyGX2FQ2loRuxc1hsVwuUcWa3z3Qu9vFWPjHPiK1oJm9iajzIy4Gkige=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 51,
        image: 'images/63.png',
        subinfo: 'Costemer Service',
        name: 'WEQ-S52',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc9ylHYYpSETwKUxC4JUiWuIuO-xTKyvw25buVL2oS9ga7k6n0JY5Amo6wz3IGi-02SYeOKObIPqqtwY5a_KGeetbp2hpZw8Ae5Z8nBURr405dEYSGJ0dE7IteKQtXfxZHAJwsL8ztbEX5SjiUfShGM_=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 52,
        image: 'images/64.png',
        subinfo: 'Flutter Developer',
        name: 'KUE-D59',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_lGmnEKQAe9jojrh1Sb2YhADH6-P8mw72gMXiMJYzAEAEkCGZN0qpSoXApa0NsAPlv-6lnZdS6IGotRd26_pvUcJgn8hS-jLxYHi-gZ9S6u1kbbnCV-oQX4D62HnFgyNgIolEs5042_XbUK22ZPAAe=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 53,
        image: 'images/65.png',
        subinfo: 'Sys Adminstration',
        name: 'OWE-S52',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc991R-0AEIUwz4j869BovLEIpDcl6sHFQ4vy3BlewzJ0Bln8qpEMH4Z5FmUSHEMu3fFq-zaIBVju43DyZN0ofdf8XSagdbQayxsmKx8zrlVYwEl1RLzsGrUD0mBY0jQKmEE5eSj42LXVMSjBHvUY3EC=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 54,
        image: 'images/66.png',
        subinfo: 'Sys Adminstration',
        name: 'PSI_78',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8f-0rAIecC2qNZhKvHQ2mcEs6826eZ8PGBVPJeuotgTOq886sJvIwUyfIFcbJsS2AlSE2rIxLQvzzxXIido_83qxgK_ZDYjkgNc-PqyGO7Clh4lw3kuTIDuo8OSQZoawAqWmV3sx3t_qcl5OlkAMe5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 55,
        image: 'images/67.png',
        subinfo: 'Sys Adminstration',
        name: 'GTY_W63',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc_RuhnEqFZELr8iRD3kypPMvM6Wos62jHh_-hm5jkqmLilywHtVYy16VlUBErJQuzSB5x4zt_gbFjEOwt4vxIOYM7xjdFl6Xya4xyzjOCF6JwLIfZIGR8PDyqYPTY68J8uv0jrkwGhSIMBCoW5pDg_V=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 56,
        image: 'images/68.png',
        subinfo: 'Sys Adminstration',
        name: 'GES-O22',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-yPt4OpKY7KgbJdNSWcnm4wPQcLTaU0a0cY_0dAL_0v10LoTtTpfAdE-4fRWAplJg54wcSmJJcLlCF3G9_k-pCbEokOIj9SBBTGPR3p3i1U7pDoa9nMhCEx4bB8DBXsKR6veRHytAMetqhW3o23q-T=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 57,
        image: 'images/70.png',
        subinfo: 'Sys Adminstration',
        name: 'MMG_A16',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8f-0rAIecC2qNZhKvHQ2mcEs6826eZ8PGBVPJeuotgTOq886sJvIwUyfIFcbJsS2AlSE2rIxLQvzzxXIido_83qxgK_ZDYjkgNc-PqyGO7Clh4lw3kuTIDuo8OSQZoawAqWmV3sx3t_qcl5OlkAMe5=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 58,
        image: 'images/61.png',
        subinfo: 'Costemer Service',
        name: 'ALEX',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc8P8DekS2U8ZuikRp5f9_eRz5WbEkEWq9T2hTBwVMkwVRV8ucHPyDWS0Wm_kp08xcXUVrZX086117UGlWpds21v74RjLWSbf1hNksmsiaUyAcWDDRDvk6Q7QYjEkoxg4Db7gUo5GlbX3cBQJb1o5y5K=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 59,
        image: 'images/62.png',
        subinfo: 'Flutter Developer',
        name: 'JAMES',
        information: '',
        bigImage:
            'https://lh3.googleusercontent.com/pw/AIL4fc-AAet8Yb00SiNTV8g9IvV9SRSyKd3K26-F2ztja97kFp2kQo4S8a6cWSi1svfUhK7lgPyxmdsDVbdlnXD7ebSxt33r3blsmR7_wN09kWvRxZBLHlCL_G9cuvcKoDuIeQjseAGSmRoTgnvjae2tLESc=w768-h768-s-no?authuser=0'),
    Cyberproduct(
        id: 60,
        image: 'images/49.png',
        subinfo: 'Devops Eng',
        name: 'ZANGITS',
        information: '',
        bigImage: ''),
    Cyberproduct(
        id: 61,
        image: 'images/50.png',
        subinfo: 'JAMES',
        name: 'ZABIMARU',
        information: '',
        bigImage: ''),
    Cyberproduct(
        id: 62,
        image: 'images/51.png',
        subinfo: 'Flutter Developer',
        name: 'KORO',
        information: '',
        bigImage: ''),
    Cyberproduct(
        id: 63,
        image: 'images/52.png',
        subinfo: 'Flutter Developer',
        name: 'KINBATCHI',
        information: '',
        bigImage: ''),
    Cyberproduct(
        id: 64,
        image: 'images/53.png',
        subinfo: 'Flutter Developer',
        name: 'ONAHANA',
        information: '',
        bigImage: ''),
    Cyberproduct(
        id: 65,
        image: 'images/54.png',
        subinfo: 'Flutter Developer',
        name: 'YUKIMAROU',
        information: '',
        bigImage: ''),
    Cyberproduct(
        id: 66,
        image: 'images/55.png',
        subinfo: 'Flutter Developer',
        name: 'PIAKUYA',
        information: '',
        bigImage: ''),
  ];
  List<Cyberproduct> Cart = [];

  //double? size30 = MediaQuery.of(context as BuildContext).size.height * 0.01;
  String email = '';
  String password = '';

  String get _email => email;
  String get _password => password;
  List<Cyberproduct> get _saftyRobot => saftyRobot;
  List<Cyberproduct> get _job => jobsRobot;
  List<Cyberproduct> get _careRobot => careRobot;
  List<Cyberproduct> get _earth => earthShips;
  List<Cyberproduct> get _space => spaceShips;
  List<Cyberproduct> get _planes => planes;
  List<Cyberproduct> get _wepons => wepons;
  List<Cyberproduct> get _All => All;
  List<Cyberproduct> get _cart => Cart;
  void addToCart(Cyberproduct product, int quantity, BuildContext context) {
    for (int i = 0; i < quantity; i++) {
      if (Cart.isEmpty) {
        Cart.add(product);
        showDialog(
          context: context,
          builder: (context) =>
              MyDialog(context, 'Successfully Added To Cart', 'images/ok.png'),
        );
      } else if (Cart.where((element) => element.id == product.id).isNotEmpty) {
        showDialog(
          context: context,
          builder: (context) =>
              MyDialog(context, 'The Item Already in Cart', 'images/error.png'),
        );
        // MyDialog(context, 'The Item Already in Cart', 'images/error.png');
      } else {
        Cart.add(product);
        showDialog(
          context: context,
          builder: (context) =>
              MyDialog(context, 'Successfully Added To Cart', 'images/ok.png'),
        );
      }
    }
    notifyListeners();
  }

  void removeFromCart(Cyberproduct product) {
    Cart.remove(product);
    notifyListeners();
  }

  void MyDialog2(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text(
                'The Item already in Cart',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.done,
                      color: Colors.orange,
                    ))
              ],
            ));
  }
}

Widget MyDialog(BuildContext context, String text, String image) {
  return Dialog(
    backgroundColor: Colors.transparent,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: MediaQuery.of(context).size.height * 0.53,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff2A303E),
      ),
      child: Column(
        children: [
          Image.asset(
            height: MediaQuery.of(context).size.height * 0.175,
            image,
          ),
          const SizedBox(
            height: 42,
          ),
          const Text(
            'Alert',
            style: TextStyle(
              fontSize: 24,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              // fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                        vertical: 20),
                    foregroundColor: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1,
                        vertical: 20),
                    foregroundColor: Colors.black,
                    backgroundColor: orangOpacityColor),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
