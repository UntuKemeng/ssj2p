.class final Lcom/android/server/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field protected static final CMD_LED_FACTORY_MODE:I = 0x70

.field private static final INTENT_RETURN_VALUE_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

.field private static final INTENT_RETURN_VALUE_EXTRA_COMMAND_DATA:Ljava/lang/String; = "command_data"

.field private static final INTENT_RETURN_VALUE_EXTRA_START_RESULT:Ljava/lang/String; = "start_result"

.field private static final INTENT_RETURN_VALUE_EXTRA_START_SUCCESS:Ljava/lang/String; = "start_success"

.field private static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_RESULT:Ljava/lang/String; = "transceive_result"

.field private static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_SUCCESS:Ljava/lang/String; = "transceive_success"

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_COVER_VERSION_CHECK:I = 0xa

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xb

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final SETTING_SECURE_FIRMWARE_VERSION:Ljava/lang/String; = "led_cover_firmware_version"

.field private static final TAG:Ljava/lang/String; = "CoverManager.GracefulNfcLedCoverController"

.field private static TEST:I = 0x0

.field private static final VERSION_CHECK_COMMAND:[B

.field private static final WC_CONTROL_RESET_INTERVAL:J = 0x7530L


# instance fields
.field private mCallTimerLock:Ljava/lang/Object;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLastWcControlResetTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x7t
        0x7t
        0x71t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 96
    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 97
    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 117
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "version check ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverVersionCheck()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/GracefulNfcLedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cover/GracefulNfcLedCoverController;)Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/GracefulNfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/GracefulNfcLedCoverController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 721
    if-nez p2, :cond_0

    .line 722
    new-array p2, v7, [B

    .end local p2    # "data":[B
    fill-array-data p2, :array_0

    .line 726
    .restart local p2    # "data":[B
    :cond_0
    array-length v6, p2

    if-ge v6, v7, :cond_1

    .line 727
    new-array v0, v7, [B

    aput-byte v8, v0, v8

    aget-byte v6, p2, v8

    aput-byte v6, v0, v9

    .end local p2    # "data":[B
    .local v0, "data":[B
    move-object p2, v0

    .line 729
    .end local v0    # "data":[B
    .restart local p2    # "data":[B
    :cond_1
    const/4 v2, 0x0

    .line 732
    .local v2, "isPayloadData":Z
    array-length v6, p2

    if-le v6, v10, :cond_2

    .line 733
    const/4 v2, 0x1

    .line 735
    :cond_2
    const/4 v4, 0x5

    .line 736
    .local v4, "nfcCommandLength":I
    invoke-direct {p0, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getLenByteValue([B)I

    move-result v3

    .line 737
    .local v3, "ledPacketLength":I
    if-eqz v2, :cond_3

    .line 738
    aget-byte v6, p2, v8

    and-int/lit16 v3, v6, 0xff

    .line 740
    :cond_3
    add-int v5, v4, v3

    .line 741
    .local v5, "size":I
    add-int v6, v4, v3

    new-array v1, v6, [B

    .line 744
    .local v1, "genData":[B
    aput-byte v8, v1, v8

    .line 745
    const/16 v6, -0x5e

    aput-byte v6, v1, v9

    .line 746
    aput-byte v8, v1, v7

    .line 747
    aput-byte v8, v1, v10

    .line 749
    const/4 v6, 0x4

    int-to-byte v7, v3

    aput-byte v7, v1, v6

    .line 751
    if-eqz v2, :cond_4

    .line 752
    array-length v6, p2

    invoke-static {p2, v8, v1, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 763
    :goto_0
    const-string v6, "CoverManager.GracefulNfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byte data to send to cover: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-object v1

    .line 755
    :cond_4
    int-to-byte v6, v3

    aput-byte v6, v1, v11

    .line 756
    const/4 v6, 0x6

    int-to-byte v7, p1

    aput-byte v7, v1, v6

    .line 759
    const/4 v6, 0x7

    array-length v7, p2

    invoke-static {p2, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 760
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x2

    const/4 v8, -0x1

    aput-byte v8, v1, v7

    aput-byte v8, v1, v6

    goto :goto_0

    .line 722
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 956
    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 958
    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 960
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 963
    :cond_0
    return-void
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 772
    const/4 v0, 0x4

    .line 773
    .local v0, "len":I
    if-eqz p1, :cond_0

    .line 774
    array-length v1, p1

    add-int/2addr v0, v1

    .line 780
    :goto_0
    return v0

    .line 777
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 3
    .param p1, "command"    # I
    .param p2, "genData"    # [B

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 1120
    sparse-switch p1, :sswitch_data_0

    .line 1144
    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1124
    :sswitch_1
    if-eqz p2, :cond_0

    array-length v1, p2

    if-le v1, v2, :cond_0

    .line 1125
    aget-byte v1, p2, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1133
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, v2, :cond_0

    .line 1134
    aget-byte v0, p2, v2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1136
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1138
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1140
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_1

    .line 1120
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0x70 -> :sswitch_1
    .end sparse-switch

    .line 1125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1134
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 380
    const/4 v0, 0x2

    .line 382
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 383
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 384
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 385
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 388
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 3

    .prologue
    .line 227
    const-string v0, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 243
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 244
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleCoverVersionCheck()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 1018
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1019
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firmware version already retrieved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1024
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1030
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_2

    .line 1031
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Led is on, try checking version later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1036
    :catch_1
    move-exception v1

    .line 1037
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1042
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .line 1044
    .local v0, "coverStartData":[B
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version check start result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1047
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    .line 1049
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1050
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v5}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 1053
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1056
    :catch_2
    move-exception v1

    .line 1057
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1063
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->transceiveVersionCheck()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1064
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firmware version retrieved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_cover_firmware_version"

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1067
    :cond_5
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    .line 1069
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1070
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v5}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 1074
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1077
    :catch_3
    move-exception v1

    .line 1078
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleEventResponse(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 919
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleEventResponse: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 922
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 925
    .local v2, "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    .line 926
    invoke-virtual {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_0

    .line 929
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 944
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 949
    :cond_2
    :goto_2
    return-void

    .line 930
    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 931
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 933
    :try_start_3
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 934
    .restart local v2    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    .line 935
    invoke-virtual {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_3

    .line 938
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 940
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v6, 0x0

    .line 656
    if-eqz p3, :cond_0

    const/16 v3, 0x12

    if-eq p1, v3, :cond_0

    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 657
    aget-byte v3, p3, v6

    sparse-switch v3, :sswitch_data_0

    .line 694
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transceive error - unknown error value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    :goto_0
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Sent done intent, fail transceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 703
    iput-boolean v6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 704
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 706
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_1
    :goto_1
    return-void

    .line 668
    :sswitch_0
    iget v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v4, 0xd

    if-ge v3, v4, :cond_2

    .line 669
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeat command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iput-boolean v6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 677
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v2

    .line 679
    .local v2, "stopCoverResult":Z
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 682
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 683
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 684
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 685
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 686
    iget v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    goto :goto_1

    .line 689
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "stopCoverResult":Z
    :cond_2
    iput v6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 690
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Could not transceive command to cover so turn off led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 657
    nop

    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_0
        -0x4f -> :sswitch_0
        -0x4e -> :sswitch_0
        -0x20 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 404
    const/4 v0, 0x4

    .line 406
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 407
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 408
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 409
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 412
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 788
    iget-boolean v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_1

    .line 790
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 802
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_2

    .line 803
    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    .line 807
    :cond_2
    const/16 v4, 0x11

    new-array v5, v7, [B

    fill-array-data v5, :array_0

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 808
    .local v2, "pollData":[B
    const/4 v3, 0x0

    .line 810
    .local v3, "returnData":[B
    :try_start_1
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    .line 811
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    .line 812
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 819
    :cond_3
    :goto_1
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    .line 820
    const/4 v4, 0x6

    new-array v3, v4, [B

    .line 821
    const/4 v4, 0x6

    aput-byte v4, v3, v10

    .line 822
    const/16 v4, 0x11

    aput-byte v4, v3, v9

    .line 823
    aput-byte v10, v3, v7

    .line 824
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v7, :cond_6

    .line 825
    aput-byte v9, v3, v8

    .line 832
    :goto_2
    const/4 v4, 0x4

    aput-byte v11, v3, v4

    .line 833
    const/4 v4, 0x5

    aput-byte v11, v3, v4

    .line 837
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 839
    const-string v5, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v8

    if-ne v4, v9, :cond_8

    const-string v4, "accept"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_5

    .line 844
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 849
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 850
    .local v1, "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 852
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 854
    aget-byte v4, v3, v8

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 855
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 856
    iput-boolean v10, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 858
    :try_start_3
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 859
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 861
    :catch_1
    move-exception v0

    .line 862
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 814
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_7

    .line 827
    aput-byte v7, v3, v8

    goto :goto_2

    .line 829
    :cond_7
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    aput-byte v7, v3, v8

    goto/16 :goto_2

    .line 839
    :cond_8
    const-string/jumbo v4, "reject"

    goto :goto_3

    .line 846
    :catch_3
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 866
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 868
    .restart local v1    # "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 869
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 870
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 807
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 392
    const/4 v0, 0x3

    .line 394
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 396
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 397
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 400
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 474
    iget-object v9, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 475
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v5, "resultIntent":Landroid/content/Intent;
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Firmware version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 484
    .local v2, "genData":[B
    const/16 v8, 0x12

    if-ne p1, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v8, :cond_0

    .line 486
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 489
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Led cover already off"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    monitor-exit v9

    .line 627
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "coverStarted":Z
    invoke-direct {p0, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->tryStartLedCover(Landroid/content/Intent;)Z

    move-result v0

    .line 497
    const-string v8, "command_data"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 498
    const-string/jumbo v8, "start_success"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    if-nez v0, :cond_2

    .line 501
    iget v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v8, v10, :cond_1

    .line 502
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 505
    .local v4, "msg":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    .line 506
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 507
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 509
    iget v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 515
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v7

    .line 517
    .local v7, "stopCoverResult":Z
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v4    # "msg":Landroid/os/Message;
    .end local v7    # "stopCoverResult":Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 527
    monitor-exit v9

    goto :goto_0

    .line 626
    .end local v0    # "coverStarted":Z
    .end local v2    # "genData":[B
    .end local v5    # "resultIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 520
    .restart local v0    # "coverStarted":Z
    .restart local v2    # "genData":[B
    .restart local v5    # "resultIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Could not start NFC LED Cover"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 523
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto :goto_1

    .line 529
    :cond_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    const/4 v6, 0x0

    .line 534
    .local v6, "returnValue":[B
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    .line 535
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v6

    .line 536
    if-eqz v6, :cond_3

    .line 537
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    :cond_3
    :goto_2
    :try_start_3
    const-string/jumbo v8, "transceive_result"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 544
    invoke-direct {p0, v2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidResponse([B[B)Z

    move-result v8

    if-nez v8, :cond_6

    .line 545
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 548
    const-string/jumbo v8, "transceive_success"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 550
    sget v8, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v8, :cond_4

    .line 551
    monitor-exit v9

    goto/16 :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Error in trancieve command"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 553
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_3
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Done, sucess"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 566
    sparse-switch p1, :sswitch_data_0

    .line 615
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 616
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    :try_start_4
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 619
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 626
    :cond_5
    :goto_5
    :try_start_5
    monitor-exit v9

    goto/16 :goto_0

    .line 556
    :cond_6
    const-string/jumbo v8, "transceive_success"

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 571
    :sswitch_0
    sget v8, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v8, :cond_7

    .line 572
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    .line 576
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 577
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v4, Landroid/os/Message;->what:I

    .line 578
    invoke-direct {p0, p1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getListenerTypeForCommand(I[B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    .line 579
    .local v3, "listenerType":I
    if-ltz v3, :cond_a

    .line 581
    :try_start_6
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_8

    .line 582
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 587
    :cond_8
    :goto_6
    :try_start_7
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 590
    iget-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v8, :cond_9

    .line 591
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Already polling for touch events"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 596
    :goto_7
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 584
    :catch_1
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .line 594
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_7

    .line 601
    :cond_a
    const/16 v8, 0x70

    if-ne p1, v8, :cond_b

    if-eqz v2, :cond_b

    array-length v8, v2

    const/16 v10, 0x8

    if-le v8, v10, :cond_b

    const/16 v8, 0x8

    aget-byte v8, v2, v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_b

    .line 603
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Factory Mode Full LED off was sent, so turn off LedCover"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v3    # "listenerType":I
    .end local v4    # "msg":Landroid/os/Message;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto/16 :goto_4

    .line 605
    .restart local v3    # "listenerType":I
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_b
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    monitor-exit v9

    goto/16 :goto_0

    .line 621
    .end local v3    # "listenerType":I
    .end local v4    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v1

    .line 622
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
        0x12 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 428
    return-void
.end method

.method private isFinishedTouchReply([B)Z
    .locals 4
    .param p1, "returnData"    # [B

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 913
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    if-eq v1, v0, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 2
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 639
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResponse([B[B)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # [B

    .prologue
    const/4 v1, 0x0

    .line 884
    if-nez p2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v1

    .line 888
    :cond_1
    array-length v2, p2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x5

    if-lt v2, v3, :cond_0

    .line 896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x5

    if-ge v0, v2, :cond_2

    .line 897
    aget-byte v2, p2, v0

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_0

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 901
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 1001
    const/4 v0, 0x1

    .line 1003
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1004
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1005
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 1006
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1009
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    return-void
.end method

.method private resetWcControlTimer()V
    .locals 6

    .prologue
    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1155
    .local v0, "currTime":J
    iget-wide v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1156
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 1157
    iput-wide v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 1159
    :cond_0
    return-void
.end method

.method private stopLedCover()V
    .locals 6

    .prologue
    .line 970
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v1

    .line 972
    .local v1, "stopCoverResult":Z
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop LedCover, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 976
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "LED_OFF, Start wireless charger"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 982
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 984
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v3, 0xa

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 992
    :cond_1
    return-void

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private transceiveVersionCheck()Z
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1089
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    invoke-virtual {v4, v5}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v0

    .line 1090
    .local v0, "response":[B
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verison check response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-eqz v0, :cond_1

    array-length v4, v0

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x5

    if-lt v4, v5, :cond_1

    aget-byte v4, v0, v3

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    aget-byte v5, v5, v8

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v2

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    aget-byte v5, v5, v9

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v7

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/4 v6, 0x7

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v8

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/16 v6, 0xa

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v9

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/16 v6, 0xb

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 1098
    .local v1, "validResponse":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1099
    const-string v4, "%02X %02X"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 1102
    :cond_0
    return v1

    .end local v1    # "validResponse":Z
    :cond_1
    move v1, v3

    .line 1092
    goto :goto_0
.end method

.method private tryStartLedCover(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 437
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-boolean v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_2

    .line 442
    iget v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v3, :cond_0

    .line 444
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Disable Wireless Charger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 447
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .line 451
    .local v0, "coverStartData":[B
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string/jumbo v3, "start_result"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 454
    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 457
    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .end local v0    # "coverStartData":[B
    :goto_0
    move v1, v2

    .line 466
    :goto_1
    return v1

    .line 459
    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "NFC LED Cover already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 344
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1241
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1243
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1244
    const-string v2, "  TEST="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    sget v2, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1246
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1251
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1253
    .local v1, "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1259
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1258
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 292
    :cond_0
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 298
    .local v0, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    .line 299
    iget-object v1, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v8

    goto :goto_0

    .line 312
    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 306
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    .line 307
    .restart local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 309
    .restart local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 310
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCoverUIBinderAlive:Z

    .line 312
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 351
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 251
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataToNfcLedCover: command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 271
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 272
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 278
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 279
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 266
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 358
    const-string v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 361
    :pswitch_0
    const-string/jumbo v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 362
    .local v4, "touchListenerType":I
    const-string/jumbo v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 363
    .local v3, "response":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 364
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    .line 366
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 368
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 369
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 372
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    .end local v4    # "touchListenerType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 373
    .local v2, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 322
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 323
    .local v1, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 324
    iget-object v5, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 328
    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 330
    :cond_1
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v5, "no listeners registered CoverUI dies??"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCoverUIBinderAlive:Z

    .line 334
    :cond_2
    monitor-exit v4

    .line 340
    .end local v1    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :goto_0
    return v2

    .line 338
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 340
    goto :goto_0

    .line 338
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 8
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v7, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 190
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v5

    if-ne v5, v7, :cond_1

    move v1, v3

    .line 191
    .local v1, "isCoverAttached":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v5, v1, :cond_0

    .line 192
    iput-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 193
    iget-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v5, :cond_3

    .line 198
    const-string v5, "CoverManager.GracefulNfcLedCoverController"

    const-string v6, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 200
    .local v2, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    :goto_1
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 201
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 217
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "nfc_led_cover_test"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    .line 219
    return-void

    .end local v1    # "isCoverAttached":Z
    :cond_1
    move v1, v4

    .line 190
    goto :goto_0

    .restart local v1    # "isCoverAttached":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_2
    move v3, v4

    .line 200
    goto :goto_1

    .line 202
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 207
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3
.end method
