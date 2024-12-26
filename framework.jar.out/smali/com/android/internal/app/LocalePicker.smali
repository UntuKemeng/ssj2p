.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final LANGUAGE_XML_OMC_V1_DIR:Ljava/lang/String; = "/data/omc/etc"

.field private static final SALES_CODE_KOREA:Z

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->isKoreaSalesCode()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/LocalePicker;->SALES_CODE_KOREA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 72
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    const v1, 0x1090090

    .line 228
    .local v1, "itemLayout":I
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    const/16 v2, 0x143

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const v1, 0x109012e

    .line 236
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    :cond_1
    :goto_0
    const v2, 0x10200cf

    invoke-static {p0, v1, v2}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    return-object v2

    .line 233
    :catch_0
    move-exception v2

    .line 236
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v2
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 248
    .local v8, "isInDeveloperMode":Z
    :cond_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 252
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method private static filterSupportedLocales(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/system/csc/language.xml"

    .line 356
    .local v1, "languageXmlPath":Ljava/lang/String;
    const-string v4, "/data/omc/etc/language.xml"

    .line 357
    .local v4, "omcV1Path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "persist.sys.omc_path"

    const-string v10, "/data/omc/etc"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/language.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "omcV2Path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 361
    move-object v1, v5

    .line 365
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->getLocaleListFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "supportedLocales":Ljava/lang/String;
    if-eqz v6, :cond_5

    if-eqz p0, :cond_5

    .line 369
    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    const-string v8, "_"

    const-string v9, "-"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 376
    .local v3, "locale":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 380
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 382
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "locale":Ljava/lang/String;
    .end local v6    # "supportedLocales":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/omc/etc/language.xml"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    const-string v1, "/data/omc/etc/language.xml"

    goto :goto_0

    .line 383
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "locale":Ljava/lang/String;
    .restart local v6    # "supportedLocales":Ljava/lang/String;
    :cond_3
    const-string v8, "fil"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 386
    const-string v8, "fil"

    const-string/jumbo v9, "tl"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, "tlLocale":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 388
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 398
    .end local v3    # "locale":Ljava/lang/String;
    .end local v7    # "tlLocale":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 406
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-object v2

    .line 403
    :cond_5
    const-string v8, "LocalePicker"

    const-string v9, "Support all languages"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    .line 406
    goto :goto_2
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 120
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "locales":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v10, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    invoke-static {v10}, Lcom/android/internal/app/LocalePicker;->filterSupportedLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string v18, "ar-XB"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    const-string v18, "en-XA"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 134
    const v18, 0x1070008

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, "specialLocaleCodes":[Ljava/lang/String;
    const v18, 0x1070009

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, "specialLocaleNames":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v9, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 139
    .local v7, "locale":Ljava/lang/String;
    const/16 v18, 0x5f

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 140
    .local v5, "l":Ljava/util/Locale;
    if-eqz v5, :cond_1

    const-string/jumbo v18, "und"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 145
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 149
    new-instance v18, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 156
    .local v12, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v0, v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    iget-object v0, v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "zz"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 162
    iget-object v0, v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 168
    new-instance v18, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :cond_3
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "displayName":Ljava/lang/String;
    new-instance v18, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 180
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "l":Ljava/util/Locale;
    .end local v7    # "locale":Ljava/lang/String;
    .end local v12    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_4
    const v18, 0x11200d1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 182
    .local v14, "shallShowCountry":Z
    if-eqz v14, :cond_7

    .line 183
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 184
    .local v7, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v5, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 185
    .restart local v5    # "l":Ljava/util/Locale;
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "languageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "displayName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 189
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 191
    const-string v18, "%s (%s)"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v6, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    :cond_6
    iput-object v2, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    goto :goto_1

    .line 200
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "languageName":Ljava/lang/String;
    .end local v7    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_7
    sget-boolean v18, Lcom/android/internal/app/LocalePicker;->SALES_CODE_KOREA:Z

    if-eqz v18, :cond_a

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v4, "korLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v17, "tmpLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 204
    .local v8, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const-string v18, "ko"

    iget-object v0, v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 205
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    .end local v8    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_9
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 212
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 213
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    .end local v4    # "korLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    .end local v17    # "tmpLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :goto_3
    return-object v9

    .line 216
    :cond_a
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_3
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 287
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    aget-object v2, p2, v1

    .line 292
    :goto_1
    return-object v2

    .line 286
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "locales"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const v3, 0x104005d

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "localeCodes":Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "localeCodesArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string/jumbo v3, "tl-"

    const-string v4, "fil-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_1
    move-object v1, p0

    .end local v1    # "localeCodesArray":[Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v2, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v2
.end method

.method private static getLocaleListFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v15, 0x0

    .line 413
    .local v15, "rootNode":Lorg/w3c/dom/Node;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 414
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 415
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 416
    .local v6, "doc":Lorg/w3c/dom/Document;
    if-eqz v6, :cond_0

    .line 417
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v15

    .line 426
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    :goto_0
    if-nez v15, :cond_1

    .line 427
    const/16 v18, 0x0

    .line 458
    :goto_1
    return-object v18

    .line 419
    :catch_0
    move-exception v7

    .line 420
    .local v7, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v18, "LocalePicker"

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    .end local v7    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v7

    .line 422
    .local v7, "ex":Lorg/xml/sax/SAXException;
    const-string v18, "LocalePicker"

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v7    # "ex":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v7

    .line 424
    .local v7, "ex":Ljava/io/IOException;
    const-string v18, "LocalePicker"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const-string v19, "LanguageSet"

    aput-object v19, v16, v18

    const/16 v18, 0x1

    const-string v19, "Display"

    aput-object v19, v16, v18

    .line 432
    .local v16, "tagList":[Ljava/lang/String;
    move-object v14, v15

    .line 433
    .local v14, "node":Lorg/w3c/dom/Node;
    move-object/from16 v2, v16

    .local v2, "arr$":[Ljava/lang/String;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_4

    aget-object v17, v2, v11

    .line 434
    .local v17, "tagName":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 435
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 436
    .local v5, "children":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_3

    .line 437
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 438
    .local v13, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v13, :cond_3

    .line 439
    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 440
    .local v4, "child":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 441
    move-object v14, v4

    .line 438
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 433
    .end local v4    # "child":Lorg/w3c/dom/Node;
    .end local v5    # "children":Lorg/w3c/dom/NodeList;
    .end local v10    # "i":I
    .end local v13    # "n":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 448
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_4
    if-eqz v14, :cond_5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v16, v18

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 449
    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 453
    :cond_6
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 454
    .local v9, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_7

    .line 455
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 458
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method private static isKoreaSalesCode()Z
    .locals 2

    .prologue
    .line 463
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    :cond_0
    const/4 v1, 0x1

    .line 470
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 333
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 335
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 336
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 338
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 340
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 299
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 322
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 324
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 310
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 304
    return-void
.end method
