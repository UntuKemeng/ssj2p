.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final LAST_SUMMARY:Ljava/lang/String; = "/proc/reset_summary"

.field private static final LAST_SUMMARY_SAVE:Ljava/lang/String; = "/data/log/dump_summary.xml"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BootReceiver$1;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>()V

    return-void
.end method

.method private logLastKmsg()V
    .locals 25

    .prologue
    .line 206
    new-instance v13, Ljava/io/File;

    const-string v22, "/proc/last_kmsg"

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v13, "lk_proc":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    const-string v22, "/proc/reset_summary"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v16, "summary_proc":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    const-string v22, "/proc/version"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v21, "version_proc":Ljava/io/File;
    const/16 v22, 0x800

    move/from16 v0, v22

    new-array v2, v0, [B

    .line 210
    .local v2, "buffer":[B
    const/4 v5, 0x0

    .line 211
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 212
    .local v15, "summary_fin":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    .line 213
    .local v19, "ver_fin":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 214
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 215
    .local v9, "gout":Ljava/util/zip/ZipOutputStream;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 217
    .local v18, "time":Landroid/text/format/Time;
    const-string v22, "BootReceiver"

    const-string v23, "logLastKmsg - Start"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v22

    if-nez v22, :cond_0

    .line 292
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 223
    const-string v22, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "date":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".log.gz"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v14, "lk_save":Ljava/io/File;
    const/4 v11, 0x0

    .line 229
    .local v11, "len":I
    :try_start_0
    const-string v22, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    const-string v12, "========================================================\n"

    .line 232
    .local v12, "line":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "== dumpstate lastkmsg : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, "text":Ljava/lang/String;
    const-string v22, "BootReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "logLastKmsg - New filename is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .local v6, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .local v8, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v10, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .local v10, "gout":Ljava/util/zip/ZipOutputStream;
    :try_start_3
    new-instance v22, Ljava/util/zip/ZipEntry;

    const-string v23, "dumpstate_lastkmsg"

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 242
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 243
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 244
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 246
    const-string v17, "\n[Kernel version]: "

    .line 247
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 249
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 250
    new-instance v20, Ljava/io/FileInputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 251
    .end local v19    # "ver_fin":Ljava/io/FileInputStream;
    .local v20, "ver_fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_11

    .line 252
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    .line 283
    :catch_0
    move-exception v4

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v19    # "ver_fin":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 284
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "text":Ljava/lang/String;
    .local v4, "e":Ljava/io/IOException;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v22, "BootReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "logLastKmsg - File copy error"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 287
    :cond_1
    :goto_3
    if-eqz v19, :cond_2

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 288
    :cond_2
    :goto_4
    if-eqz v9, :cond_3

    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 289
    :cond_3
    :goto_5
    if-eqz v7, :cond_4

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 291
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    const-string v22, "BootReceiver"

    const-string v23, "logLastKmsg - Save Complete"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string/jumbo v17, "unknown"

    .line 256
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 259
    :goto_7
    const-string v17, "[Build Fingerprint]: "

    .line 260
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 262
    const-string/jumbo v22, "ro.build.fingerprint"

    const-string/jumbo v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 263
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 264
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 266
    :goto_8
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_6

    .line 267
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_8

    .line 283
    :catch_1
    move-exception v4

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 269
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_6
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 270
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 272
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 273
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 274
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v22, Ljava/util/zip/ZipEntry;

    const-string/jumbo v23, "reset_summary.html"

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 276
    const/4 v11, 0x0

    .line 277
    :goto_9
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_7

    .line 278
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_9

    .line 283
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 280
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_7
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 286
    :goto_a
    if-eqz v5, :cond_8

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 287
    :cond_8
    :goto_b
    if-eqz v19, :cond_9

    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 288
    :cond_9
    :goto_c
    if-eqz v10, :cond_a

    :try_start_e
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 289
    :cond_a
    :goto_d
    if-eqz v8, :cond_b

    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    :cond_b
    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v22

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .line 290
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 286
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v22

    :goto_e
    if-eqz v5, :cond_c

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 287
    :cond_c
    :goto_f
    if-eqz v19, :cond_d

    :try_start_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 288
    :cond_d
    :goto_10
    if-eqz v9, :cond_e

    :try_start_12
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 289
    :cond_e
    :goto_11
    if-eqz v7, :cond_f

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_f
    :goto_12
    throw v22

    .line 286
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :catch_4
    move-exception v22

    goto :goto_b

    .line 287
    :catch_5
    move-exception v22

    goto :goto_c

    .line 288
    :catch_6
    move-exception v22

    goto :goto_d

    .line 286
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "text":Ljava/lang/String;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    :catch_7
    move-exception v22

    goto/16 :goto_3

    .line 287
    :catch_8
    move-exception v22

    goto/16 :goto_4

    .line 288
    :catch_9
    move-exception v22

    goto/16 :goto_5

    .line 289
    :catch_a
    move-exception v22

    goto/16 :goto_6

    .line 286
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v23

    goto :goto_f

    .line 287
    :catch_c
    move-exception v23

    goto :goto_10

    .line 288
    :catch_d
    move-exception v23

    goto :goto_11

    .line 289
    :catch_e
    move-exception v23

    goto :goto_12

    .line 286
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :catchall_1
    move-exception v22

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v22

    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v22

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v19    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v20    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v22

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v19    # "ver_fin":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    :catchall_5
    move-exception v22

    move-object v9, v10

    .end local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    goto :goto_e

    .line 283
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "text":Ljava/lang/String;
    :catch_f
    move-exception v4

    goto/16 :goto_2

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :catch_10
    move-exception v4

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v4

    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_10
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v19    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v20    # "ver_fin":Ljava/io/FileInputStream;
    :cond_11
    move-object/from16 v19, v20

    .end local v20    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v19    # "ver_fin":Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method private trimLastKmsg()V
    .locals 12

    .prologue
    .line 169
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v8, "logFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 171
    .local v6, "listOfAllFiles":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v7, "listOfLastkmsg":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 175
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 180
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 182
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 186
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v9, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_0

    .line 196
    const-string v10, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Delete file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 198
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 200
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastKmsg()V

    .line 297
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 298
    return-void
.end method
