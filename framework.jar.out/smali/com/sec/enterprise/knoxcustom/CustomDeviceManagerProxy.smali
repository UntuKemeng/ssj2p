.class public Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
.super Ljava/lang/Object;
.source "CustomDeviceManagerProxy.java"


# static fields
.field public static final KEYBOARD_MODE_NORMAL:I = 0x0

.field public static final KEYBOARD_MODE_PREDICTION_OFF:I = 0x1

.field public static final KEYBOARD_MODE_SETTINGS_OFF:I = 0x2

.field public static final NOTIFICATIONS_ALL:I = 0x1f

.field public static final NOTIFICATIONS_BATTERY_FULL:I = 0x2

.field public static final NOTIFICATIONS_BATTERY_LOW:I = 0x1

.field public static final NOTIFICATIONS_NITZ_SET_TIME:I = 0x10

.field public static final NOTIFICATIONS_SAFE_VOLUME:I = 0x4

.field public static final NOTIFICATIONS_STATUS_BAR:I = 0x8

.field public static final SENSOR_ACCELEROMETER:I = 0x2

.field public static final SENSOR_ALL:I = 0x7f

.field public static final SENSOR_GYROSCOPE:I = 0x1

.field public static final SENSOR_LIGHT:I = 0x4

.field public static final SENSOR_MAGNETIC:I = 0x20

.field public static final SENSOR_ORIENTATION:I = 0x8

.field public static final SENSOR_PRESSURE:I = 0x40

.field public static final SENSOR_PROXIMITY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "CustomDeviceManagerProxy"

.field public static final VOLUME_CONTROL_STREAM_DEFAULT:I = 0x0

.field public static final VOLUME_CONTROL_STREAM_MUSIC:I = 0x3

.field public static final VOLUME_CONTROL_STREAM_NOTIFICATION:I = 0x4

.field public static final VOLUME_CONTROL_STREAM_RING:I = 0x2

.field public static final VOLUME_CONTROL_STREAM_SYSTEM:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyboardMode()I
    .locals 4

    .prologue
    .line 626
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 627
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 628
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getKeyboardMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 633
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getKeyboardMode returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProKioskHideNotificationMessages()I
    .locals 4

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 248
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getProKioskHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 254
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getProKioskHideNotificationMessages returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProKioskNotificationMessagesState()Z
    .locals 4

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 220
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getProKioskNotificationMessagesState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 226
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getProKioskNotificationMessagesState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getProKioskState()Z
    .locals 4

    .prologue
    .line 191
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 192
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getProKioskState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 198
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getProKioskState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSensorDisabled()I
    .locals 4

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 363
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 364
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getSensorDisabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 369
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getSensorDisabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToastEnabledState()Z
    .locals 4

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 305
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 306
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastEnabledState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 311
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getToastEnabledState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getToastGravity()I
    .locals 4

    .prologue
    .line 549
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 550
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 551
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 556
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getToastGravity returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToastGravityEnabledState()Z
    .locals 4

    .prologue
    .line 522
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 523
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 524
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityEnabledState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 529
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getToastGravityEnabledState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToastGravityXOffset()I
    .locals 4

    .prologue
    .line 574
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 575
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 576
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityXOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 581
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getToastGravityXOffset returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToastGravityYOffset()I
    .locals 4

    .prologue
    .line 599
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 600
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 601
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityYOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 606
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getToastGravityYOffset returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToastShowPackageNameState()Z
    .locals 4

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 333
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 334
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastShowPackageNameState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 339
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getToastShowPackageNameState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVolumeButtonRotationState()Z
    .locals 4

    .prologue
    .line 417
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 418
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 419
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getVolumeButtonRotationState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 424
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getVolumeButtonRotationState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVolumeControlStream()I
    .locals 4

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 277
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getVolumeControlStream()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 283
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getVolumeControlStream returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVolumePanelEnabledState()Z
    .locals 4

    .prologue
    .line 390
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 391
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getVolumePanelEnabledState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 397
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getVolumePanelEnabledState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 4

    .prologue
    .line 494
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 495
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 496
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiAutoSwitchDelay()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 501
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getWifiAutoSwitchDelay returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v2, 0x14

    goto :goto_0
.end method

.method public getWifiAutoSwitchState()Z
    .locals 4

    .prologue
    .line 444
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 445
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 446
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiAutoSwitchState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 451
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getWifiAutoSwitchState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 4

    .prologue
    .line 469
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 470
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 471
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiAutoSwitchThreshold()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 476
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getWifiAutoSwitchThreshold returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v2, -0xc8

    goto :goto_0
.end method

.method public getWifiState()Z
    .locals 4

    .prologue
    .line 642
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 643
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 649
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDeviceManagerProxy"

    const-string v3, "PXY-getWifiState() FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
