.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field protected static EXTERNAL_PATH:Ljava/lang/String; = null

.field public static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_NOTIFICATION_2:I = 0x100

.field public static final TYPE_RINGFORME:I = 0x20

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x80

.field public static final URI_COLUMN_INDEX:I = 0x2

.field private static mCachedUriPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultAlarmUri:Landroid/net/Uri;

.field private static mDefaultNotification2Uri:Landroid/net/Uri;

.field private static mDefaultNotificationUri:Landroid/net/Uri;

.field private static mDefaultRingtone2Uri:Landroid/net/Uri;

.field private static mDefaultRingtoneUri:Landroid/net/Uri;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 933
    sput-object v3, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 934
    sput-object v3, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    .line 935
    sput-object v3, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    .line 936
    sput-object v3, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    .line 937
    sput-object v3, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    .line 1055
    sput-object v3, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    .line 1056
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/media/RingtoneManager;->mCachedUriPath:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 274
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 284
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 285
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 274
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 296
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 297
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 298
    return-void
.end method

.method private static checkDefaultRingtoneProperUri(Landroid/content/Context;I)Z
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 1087
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v19

    .line 1088
    .local v19, "soundUri":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v18

    .line 1089
    .local v18, "soundPath":Ljava/lang/String;
    if-eqz v19, :cond_0

    if-nez v18, :cond_2

    .line 1090
    :cond_0
    const/4 v4, 0x1

    .line 1167
    :cond_1
    :goto_0
    return v4

    .line 1092
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getStringForCurrentUser(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1093
    .local v22, "uriString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getStringForCurrentUser(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1096
    .local v17, "pathString":Ljava/lang/String;
    if-nez v22, :cond_3

    .line 1097
    const/4 v4, 0x1

    goto :goto_0

    .line 1098
    :cond_3
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1099
    const-string v4, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : InternalMediaAudio uriString not null type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v4, 0x1

    goto :goto_0

    .line 1102
    :cond_4
    if-nez v17, :cond_5

    .line 1103
    const-string v4, "RingtoneManager"

    const-string v6, "checkDefaultRingtoneProperUri : Settings of SoundConstantPath null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v4, 0x1

    goto :goto_0

    .line 1106
    :cond_5
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1107
    .local v3, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1108
    .local v12, "cursor1":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 1112
    .local v13, "cursor2":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/media/RingtoneManager;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1113
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1116
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    .line 1117
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1118
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1121
    .local v20, "str":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1122
    const-string v4, "RingtoneManager"

    const-string v6, "checkDefaultRingtoneProperUri : path and URI match to each other "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/media/RingtoneManager;->setCacheUri(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    const/4 v4, 0x1

    .line 1164
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_6
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1128
    .end local v20    # "str":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v4, "RingtoneManager"

    const-string v6, "checkDefaultRingtoneProperUri : patch and URI DONT match"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1132
    .local v5, "uriSearch2":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const-string v7, "_data=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v17, v8, v4

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1135
    if-eqz v13, :cond_b

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    .line 1136
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1137
    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1140
    .local v10, "_id":J
    const-string v4, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : we\'ve found same path and another index :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 1143
    .local v21, "uriForDefaultRingtone":Landroid/net/Uri;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->setCacheUri(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1151
    :goto_1
    :try_start_3
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1152
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "is_ringtone"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1153
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1154
    const/4 v4, 0x1

    .line 1164
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_8
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1146
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 1147
    .local v15, "e":Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1160
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "uriSearch2":Landroid/net/Uri;
    .end local v10    # "_id":J
    .end local v15    # "e":Ljava/lang/SecurityException;
    .end local v21    # "uriForDefaultRingtone":Landroid/net/Uri;
    :catch_1
    move-exception v16

    .line 1161
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : Excepiton : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v4, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uriString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pathString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1164
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1167
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_a
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1157
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "uriSearch2":Landroid/net/Uri;
    :cond_b
    :try_start_6
    invoke-static/range {p0 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v14

    .line 1158
    .local v14, "defaultSoundUri":Landroid/net/Uri;
    const-string v4, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : we havn\'t found same path. default Uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1164
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_c
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1164
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "uriSearch2":Landroid/net/Uri;
    .end local v14    # "defaultSoundUri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_d
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4
.end method

.method protected static clearCachedUri()V
    .locals 1

    .prologue
    .line 1062
    sget-object v0, Landroid/media/RingtoneManager;->mCachedUriPath:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1063
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 687
    :goto_0
    return-object v2

    .line 650
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 654
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 657
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 659
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 662
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v2, "!=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static constructBooleanTrueWhereClauseTheme(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 720
    :goto_0
    return-object v2

    .line 694
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 698
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 701
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 703
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 706
    :cond_3
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v2, "!=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static convertSettingForType(II)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "simId"    # I

    .prologue
    const/16 v1, 0x100

    const/16 v0, 0x80

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1326
    if-ne p1, v2, :cond_2

    .line 1327
    if-ne p0, v2, :cond_1

    move p0, v0

    .line 1341
    .end local p0    # "type":I
    :cond_0
    :goto_0
    return p0

    .line 1329
    .restart local p0    # "type":I
    :cond_1
    if-ne p0, v3, :cond_0

    move p0, v1

    .line 1330
    goto :goto_0

    .line 1336
    :cond_2
    if-ne p0, v0, :cond_3

    move p0, v2

    .line 1337
    goto :goto_0

    .line 1338
    :cond_3
    if-ne p0, v1, :cond_0

    move p0, v3

    .line 1339
    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 872
    const-string v5, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActualDefaultRingtoneUri  type    :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->checkDefaultRingtoneProperUri(Landroid/content/Context;I)Z

    move-result v1

    .line 876
    .local v1, "isProperUri":Z
    if-nez v1, :cond_1

    .line 877
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultSettingSound(I)Landroid/net/Uri;

    move-result-object v0

    .line 878
    .local v0, "defaultSettingSound":Landroid/net/Uri;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 890
    .end local v0    # "defaultSettingSound":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v4

    .line 884
    :cond_1
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "setting":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 886
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getStringForCurrentUser(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "uriString":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method protected static getCachedUri(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1069
    if-nez p0, :cond_0

    .line 1070
    const/4 v0, 0x0

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/media/RingtoneManager;->mCachedUriPath:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected static getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1424
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1425
    .local v0, "currentUser":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    .line 1426
    .local v2, "myUser":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1427
    .local v4, "profileGroupId":I
    const-string v5, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "myUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1429
    if-eq v2, v0, :cond_0

    if-eq v0, v4, :cond_0

    .line 1432
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 1434
    .local v3, "otherContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1442
    .end local v0    # "currentUser":I
    .end local v2    # "myUser":I
    .end local v3    # "otherContext":Landroid/content/Context;
    .end local v4    # "profileGroupId":I
    :goto_0
    return-object v5

    .line 1435
    .restart local v0    # "currentUser":I
    .restart local v2    # "myUser":I
    .restart local v4    # "profileGroupId":I
    :catch_0
    move-exception v1

    .line 1436
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v5, "RingtoneManager"

    const-string v6, "Can\'t find self package"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1442
    .end local v0    # "currentUser":I
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "myUser":I
    .end local v4    # "profileGroupId":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    goto :goto_0

    .line 1439
    :catch_1
    move-exception v1

    .line 1440
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "RingtoneManager"

    const-string v6, "Can\'t get current user. return default user"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getDefaultSettingSound(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 940
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 941
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 951
    :goto_0
    return-object v0

    .line 942
    :cond_0
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_1

    .line 943
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    goto :goto_0

    .line 944
    :cond_1
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2

    .line 945
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    goto :goto_0

    .line 946
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 947
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto :goto_0

    .line 948
    :cond_3
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_4

    .line 949
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    goto :goto_0

    .line 951
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDefaultSoundConstantPathField(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 900
    const-string v0, "_CONSTANT_PATH"

    .line 901
    .local v0, "constantPath":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 913
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 903
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 905
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 907
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 909
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_sound_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 911
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 901
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 956
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v7, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 958
    .local v10, "defaultSoundTitle":Ljava/lang/String;
    const/4 v12, 0x0

    .line 960
    .local v12, "foundUri":Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    .line 961
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 962
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 1048
    :goto_0
    return-object v1

    .line 963
    :cond_0
    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 964
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    :goto_1
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default ringtone/notification sound is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v13, 0x0

    .line 997
    .local v13, "internalCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 999
    .local v8, "dataCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 1000
    .local v15, "tempStrUri":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1001
    .local v14, "tempStrIndex":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1004
    .local v9, "dataPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    invoke-static {v7}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "title_key"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1009
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1011
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1012
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1013
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1019
    if-eqz v8, :cond_1

    .line 1020
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1021
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1022
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1023
    const/4 v8, 0x0

    .line 1025
    :cond_1
    if-eqz v9, :cond_17

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1026
    const/4 v12, 0x1

    .line 1027
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_10

    .line 1028
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 1041
    :cond_2
    :goto_3
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default notification\'s uri found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1046
    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_4
    :goto_4
    if-eqz v12, :cond_18

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 965
    .end local v8    # "dataCursor":Landroid/database/Cursor;
    .end local v9    # "dataPath":Ljava/lang/String;
    .end local v13    # "internalCursor":Landroid/database/Cursor;
    .end local v14    # "tempStrIndex":Ljava/lang/String;
    .end local v15    # "tempStrUri":Ljava/lang/String;
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_9

    .line 966
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 967
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 968
    :cond_6
    const-string/jumbo v1, "ro.config.ringtone_2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 969
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 970
    :cond_7
    const-string v1, "RingtoneManager"

    const-string/jumbo v2, "ro.config.ringtone_2 is not set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 973
    :cond_8
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 974
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_b

    .line 975
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    if-eqz v1, :cond_a

    .line 976
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 977
    :cond_a
    const-string/jumbo v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 978
    const-string/jumbo v1, "is_notification"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 979
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_d

    .line 980
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    if-eqz v1, :cond_c

    .line 981
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 982
    :cond_c
    const-string/jumbo v1, "ro.config.notification_sound_2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 983
    const-string/jumbo v1, "is_notification"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 984
    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_f

    .line 985
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    if-eqz v1, :cond_e

    .line 986
    sget-object v1, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 987
    :cond_e
    const-string/jumbo v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 988
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    const-string/jumbo v1, "is_alarm"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 991
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1029
    .restart local v8    # "dataCursor":Landroid/database/Cursor;
    .restart local v9    # "dataPath":Ljava/lang/String;
    .restart local v13    # "internalCursor":Landroid/database/Cursor;
    .restart local v14    # "tempStrIndex":Ljava/lang/String;
    .restart local v15    # "tempStrUri":Ljava/lang/String;
    :cond_10
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_12

    .line 1030
    :try_start_1
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1042
    :catch_0
    move-exception v11

    .line 1043
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RingtoneManager"

    const-string v2, "Can\'t read ro.config value"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1045
    if-eqz v8, :cond_11

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1046
    :cond_11
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 1031
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_12
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_15

    .line 1032
    :try_start_3
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1045
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_13

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1046
    :cond_13
    if-eqz v13, :cond_14

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v1

    .line 1033
    :cond_15
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_16

    .line 1034
    :try_start_4
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 1035
    :cond_16
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 1036
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 1039
    :cond_17
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1048
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static getDefaultSoundUriField(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 918
    sparse-switch p0, :sswitch_data_0

    .line 930
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 920
    :sswitch_0
    const-string/jumbo v0, "ringtone"

    goto :goto_0

    .line 922
    :sswitch_1
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 924
    :sswitch_2
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 926
    :sswitch_3
    const-string/jumbo v0, "notification_sound_2"

    goto :goto_0

    .line 928
    :sswitch_4
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 918
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 3
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1365
    if-nez p0, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return v0

    .line 1373
    :cond_1
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1374
    goto :goto_0

    .line 1375
    :cond_2
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1376
    const/4 v0, 0x2

    goto :goto_0

    .line 1377
    :cond_3
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1378
    const/4 v0, 0x4

    goto :goto_0

    .line 1380
    :cond_4
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1381
    const/16 v0, 0x80

    goto :goto_0

    .line 1382
    :cond_5
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1383
    goto :goto_0

    .line 1384
    :cond_6
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1402
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1403
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1415
    :goto_0
    return-object v0

    .line 1404
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1405
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1406
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1407
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1409
    :cond_2
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_3

    .line 1410
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 1411
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 1412
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 1415
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 596
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 604
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    const-string v0, "RingtoneManager"

    const-string v1, "No READ_EXTERNAL_STORAGE permission, ignoring ringtones on ext storage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    :goto_0
    return-object v4

    .line 611
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public static getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSec"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 842
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 843
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p1, :cond_0

    .line 844
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setSecForSeek(I)V

    .line 846
    :cond_0
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 847
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to setUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return ringtone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v1    # "r":Landroid/media/Ringtone;
    :cond_1
    :goto_0
    return-object v1

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 749
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 764
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 765
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 766
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 769
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 770
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to setUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return ringtone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v1    # "r":Landroid/media/Ringtone;
    :cond_1
    :goto_0
    return-object v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "mSec"    # I

    .prologue
    .line 814
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 815
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 816
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 818
    :cond_0
    if-ltz p3, :cond_1

    .line 819
    invoke-virtual {v1, p3}, Landroid/media/Ringtone;->setSecForSeek(I)V

    .line 821
    :cond_1
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 822
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to setUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return ringtone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v1    # "r":Landroid/media/Ringtone;
    :cond_2
    :goto_0
    return-object v1

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1296
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1297
    const-string/jumbo v0, "ringtone"

    .line 1311
    :goto_0
    return-object v0

    .line 1298
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1299
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 1300
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1301
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 1303
    :cond_2
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_3

    .line 1304
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 1305
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 1306
    const-string/jumbo v0, "notification_sound_2"

    goto :goto_0

    .line 1311
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getStringForCurrentUser(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 1447
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1449
    :goto_0
    return-object v1

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 479
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 482
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 544
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 545
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 548
    :cond_0
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 552
    if-eqz p1, :cond_1

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 558
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 562
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1352
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 728
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1184
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V

    .line 1192
    return-void
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1207
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v8

    .line 1208
    .local v8, "setting":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    if-nez p2, :cond_2

    .line 1234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1240
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1246
    const-string/jumbo v0, "ringtone"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "recommendation_time"

    invoke-static {v0, v1, v3, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1254
    :cond_4
    :goto_1
    const/4 v6, 0x0

    .line 1255
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1257
    .local v9, "val":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1260
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1263
    const-string v0, "RingtoneManager"

    const-string v1, "RingtoneConstantPath: for internal is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1248
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "val":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "ringtone_2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "recommendation_time_2"

    invoke-static {v0, v1, v3, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 1268
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "val":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1271
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_7

    .line 1272
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1273
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1280
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "setActualDefaultRingtoneUri: SetDefaultRingtone success..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :cond_7
    if-eqz v6, :cond_0

    .line 1287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1283
    :catch_0
    move-exception v7

    .line 1284
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActualDefaultRingtoneUri : Excepiton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    if-eqz v6, :cond_0

    .line 1287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1286
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 1287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method protected static setCacheUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1079
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCacheUri uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", external path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sget-object v0, Landroid/media/RingtoneManager;->mCachedUriPath:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1081
    if-eqz p0, :cond_0

    sget-object v0, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    sget-object v0, Landroid/media/RingtoneManager;->mCachedUriPath:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 623
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 624
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1

    .line 627
    :cond_0
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_3

    .line 630
    :cond_2
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 633
    const-string/jumbo v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_4
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 428
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 437
    :goto_0
    return-object v2

    .line 434
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 435
    .local v0, "internalCursor":Landroid/database/Cursor;
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 437
    .local v1, "mediaCursor":Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v4, "title_key"

    invoke-direct {v2, v3, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 454
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtone(II)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I
    .param p2, "mSec"    # I

    .prologue
    .line 792
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 796
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 797
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 11
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, -0x1

    .line 494
    if-nez p1, :cond_1

    move v4, v7

    .line 527
    :cond_0
    :goto_0
    return v4

    .line 496
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 497
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 499
    .local v2, "cursorCount":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_2

    move v4, v7

    .line 500
    goto :goto_0

    .line 504
    :cond_2
    const/4 v0, 0x0

    .line 505
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 507
    .local v5, "previousUriString":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 508
    const/4 v8, 0x2

    :try_start_0
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 510
    :cond_3
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 513
    :cond_4
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 518
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->move(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    move-object v5, v6

    .line 507
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 522
    .end local v6    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 523
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "RingtoneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ringtone Picker index exceeded(Cursor Count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 524
    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move v4, v7

    .line 527
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 468
    :try_start_0
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-object v1

    .line 471
    :cond_1
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v2}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "ex":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 345
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 338
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 342
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 2
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .param p1, "stopPreviousRingtone"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 361
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 310
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 319
    and-int/lit16 v0, p1, 0x85

    if-eqz v0, :cond_1

    .line 320
    or-int/lit8 p1, p1, 0x5

    .line 325
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 326
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 377
    :cond_0
    return-void
.end method
