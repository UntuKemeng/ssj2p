.class public Lcom/sec/android/app/IWSpeechRecognizer/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final CMD_ALARM:I = 0x3

.field public static final CMD_CALL:I = 0x2

.field public static final CMD_CAMERA:I = 0x7

.field public static final CMD_CANCEL:I = 0x9

.field public static final CMD_GALLERY:I = 0x8

.field public static final CMD_MUSIC:I = 0x4

.field public static final CMD_RADIO:I = 0x5

.field public static final CMD_VIDEO:I = 0x6

.field public static final CMD_VOICETALK_ALL:I = 0x0

.field public static final CMD_VOICETALK_SCHEDULE:I = 0x1

.field public static final CMD_YES_NO:I = 0xa

.field public static final COUNT_DOMAIN:I = 0xb

.field public static final COUNT_LANGUAGE:I = 0xf

.field public static final DEFAULT_EXTRA_LANG_PATH:Ljava/lang/String; = "/system/voicebargeindata/include/"

.field public static final DEFAULT_PATH:Ljava/lang/String; = "/system/voicebargeindata"

.field public static final DEFAULT_SAMSUNG_PATH:Ljava/lang/String; = "/system/voicebargeindata/sasr/"

.field public static final DEFAULT_SENSORY_PATH:Ljava/lang/String; = "/system/voicebargeindata/sensory/"

.field public static final DUALTHR_CAMERA:[[I

.field public static final LANGUAGE_BRAZIL_PORTUGUEE:I = 0x9

.field public static final LANGUAGE_EU_FRENCH:I = 0x4

.field public static final LANGUAGE_EU_GERMAN:I = 0x5

.field public static final LANGUAGE_EU_ITALIAN:I = 0x6

.field public static final LANGUAGE_EU_SPAINISH:I = 0x3

.field public static final LANGUAGE_HK_CHINESE:I = 0xd

.field public static final LANGUAGE_JAPANESE:I = 0x7

.field public static final LANGUAGE_KOREAN:I = 0x0

.field public static final LANGUAGE_RUSSIAN:I = 0x8

.field public static final LANGUAGE_SG_CHINESE:I = 0xe

.field public static final LANGUAGE_TRADITIONAL_CHINESE:I = 0x2

.field public static final LANGUAGE_TW_CHINESE:I = 0xc

.field public static final LANGUAGE_UK_ENGLISH:I = 0xa

.field public static final LANGUAGE_US_ENGLISH:I = 0x1

.field public static final LANGUAGE_US_SPAINISH:I = 0xb

.field private static final MODELS_SAMSUNG:[Ljava/lang/String;

.field public static final SAMSUNG_SO_FILE_PATH:Ljava/lang/String; = "/system/lib/libsasr-jni.so"

.field public static final SENSORY_MAIN_SUFFIX:Ljava/lang/String; = "_v2.raw"

.field public static final SENSORY_SO_FILE_PATH:Ljava/lang/String; = "/system/lib/libSensoryBargeInEngine.so"

.field public static final SENSORY_SO_FILE_PATH_64:Ljava/lang/String; = "/system/lib64/libSensoryBargeInEngine.so"

.field public static final SENSORY_SUB_SUFFIX:Ljava/lang/String; = "_v2_2.raw"

.field private static final STRING_DOMAIN:[Ljava/lang/String;

.field private static final STRING_SAMSUNG:[Ljava/lang/String;

.field private static final STRING_SENSORY:[Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "16.06.13"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 83
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "models_16k_KOR.bin"

    aput-object v1, v0, v4

    const-string v1, "models_hci_daco.bin"

    aput-object v1, v0, v5

    const-string v1, "models_16k_CHI.bin"

    aput-object v1, v0, v6

    const-string v1, "models_16k_ESP.bin"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "models_16k_FRA.bin"

    aput-object v2, v0, v1

    const-string v1, "models_16k_GER.bin"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "models_16k_ITA.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "models_16k_JAPANESE_bi.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "models_16k_RUSSIAN_bi.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "models_hci_daco.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "models_hci_daco.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "models_16k_ESP.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "models_hci_daco.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "models_hci_daco.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "models_hci_daco.bin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/Config;->MODELS_SAMSUNG:[Ljava/lang/String;

    .line 105
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "kor"

    aput-object v1, v0, v4

    const-string v1, "eng"

    aput-object v1, v0, v5

    const-string v1, "chi"

    aput-object v1, v0, v6

    const-string v1, "spa"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fra"

    aput-object v2, v0, v1

    const-string v1, "ger"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "ita"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jap"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rus"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eng"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eng"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "spa"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "chi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_SAMSUNG:[Ljava/lang/String;

    .line 106
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ko_kr"

    aput-object v1, v0, v4

    const-string v1, "en_us"

    aput-object v1, v0, v5

    const-string v1, "zh_cn"

    aput-object v1, v0, v6

    const-string v1, "es_es"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fr_fr"

    aput-object v2, v0, v1

    const-string v1, "de_de"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "it_it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ja_jp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ru_ru"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pt_br"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "en_uk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "es_la"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zh_tw"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zh_hk"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "zh_sg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_SENSORY:[Ljava/lang/String;

    .line 107
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stop"

    aput-object v1, v0, v4

    const-string v1, "schedule"

    aput-object v1, v0, v5

    const-string v1, "call"

    aput-object v1, v0, v6

    const-string v1, "alarm"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "music"

    aput-object v2, v0, v1

    const-string v1, "radio"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "camera"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gallery"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cancel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "yesno"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_DOMAIN:[Ljava/lang/String;

    .line 109
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/Config;->DUALTHR_CAMERA:[[I

    return-void

    :array_0
    .array-data 4
        0x12c
        0x514
        0x12c
        0x258
        0x514
    .end array-data

    :array_1
    .array-data 4
        0x12c
        0x190
        0x1f4
        0x2bc
        0x4b0
    .end array-data

    :array_2
    .array-data 4
        0x2bc
        0x0
        0x258
        0x64
        0x708
    .end array-data

    :array_3
    .array-data 4
        0x12c
        0x12c
        0xc8
        0x190
        0x44c
    .end array-data

    :array_4
    .array-data 4
        0x12c
        0xc8
        0x190
        0x12c
        0x4b0
    .end array-data

    :array_5
    .array-data 4
        0x384
        0x44c
        0xc8
        0x320
        0x320
    .end array-data

    :array_6
    .array-data 4
        0x258
        0x1f4
        0x5dc
        0x384
        0x578
    .end array-data

    :array_7
    .array-data 4
        0x64
        0x0
        0x4b0
        0x384
        0x1f4
    .end array-data

    :array_8
    .array-data 4
        0x2bc
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_9
    .array-data 4
        0x708
        0x9c4
        0x6a4
        0x76c
        0x1f4
    .end array-data

    :array_a
    .array-data 4
        0x12c
        0x64
        0x12c
        0x64
        0x578
    .end array-data

    :array_b
    .array-data 4
        0x514
        0x384
        0x384
        0x5dc
        0x64
    .end array-data

    :array_c
    .array-data 4
        0x12c
        0x0
        0xc8
        0x12c
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0xc8
        0x12c
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0xc8
        0x12c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSamsungModels(I)Ljava/lang/String;
    .locals 2
    .param p0, "language"    # I

    .prologue
    .line 166
    const/16 v0, 0xf

    if-lt p0, v0, :cond_0

    .line 167
    const/4 p0, 0x1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "param/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/Config;->MODELS_SAMSUNG:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSamsungNameList(I)Ljava/lang/String;
    .locals 2
    .param p0, "domain"    # I

    .prologue
    .line 173
    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 176
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nameList_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_0
    const-string v0, "nameList_voicetalk_all.txt"

    goto :goto_0

    .line 181
    :pswitch_1
    const-string v0, "nameList_voicetalk_schedule.txt"

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static GetSamsungPath(I)Ljava/lang/String;
    .locals 2
    .param p0, "language"    # I

    .prologue
    .line 159
    const/16 v0, 0xf

    if-lt p0, v0, :cond_0

    .line 160
    const/4 p0, 0x1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/voicebargeindata/sasr/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_SAMSUNG:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/16k/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSensoryAM(II)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # I
    .param p1, "domain"    # I

    .prologue
    .line 131
    const/16 v2, 0xf

    if-lt p0, v2, :cond_0

    .line 132
    const/4 p0, 0x1

    .line 134
    :cond_0
    const/16 v2, 0xb

    if-ge p1, v2, :cond_1

    .line 135
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_SENSORY:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 136
    .local v1, "SensoryModelLangauge":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 137
    .local v0, "SensoryModelDomain":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/voicebargeindata/sensory/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/samsung_bargein_am_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .end local v0    # "SensoryModelDomain":Ljava/lang/String;
    .end local v1    # "SensoryModelLangauge":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetSensoryGRAMMAR(II)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # I
    .param p1, "domain"    # I

    .prologue
    .line 145
    const/16 v2, 0xf

    if-lt p0, v2, :cond_0

    .line 146
    const/4 p0, 0x1

    .line 148
    :cond_0
    const/16 v2, 0xb

    if-ge p1, v2, :cond_1

    .line 149
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_SENSORY:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 150
    .local v1, "SensoryModelLangauge":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 151
    .local v0, "SensoryModelDomain":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/voicebargeindata/sensory/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/samsung_bargein_grammar_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .end local v0    # "SensoryModelDomain":Ljava/lang/String;
    .end local v1    # "SensoryModelLangauge":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
