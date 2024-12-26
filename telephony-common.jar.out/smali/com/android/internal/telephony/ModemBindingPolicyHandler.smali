.class public Lcom/android/internal/telephony/ModemBindingPolicyHandler;
.super Landroid/os/Handler;
.source "ModemBindingPolicyHandler.java"


# static fields
.field private static final EVENT_GET_PREF_MODE_DONE:I = 0x5

.field private static final EVENT_MODEM_RAT_CAPS_AVAILABLE:I = 0x1

.field private static final EVENT_SET_PREF_MODE:I = 0x3

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x4

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x2

.field private static final FAILURE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "ModemBindingPolicyHandler"

.field private static final NETWORK_MASK_CDMA:I = 0x31f0

.field private static final NETWORK_MASK_CDMA_NO_EVDO:I = 0x70

.field private static final NETWORK_MASK_EVDO_NO_CDMA:I = 0x3180

.field private static final NETWORK_MASK_GLOBAL:I = 0x1bffe

.field private static final NETWORK_MASK_GSM_ONLY:I = 0x10006

.field private static final NETWORK_MASK_GSM_UMTS:I = 0x18e0e

.field private static final NETWORK_MASK_LTE_CDMA_EVDO:I = 0x71f0

.field private static final NETWORK_MASK_LTE_CMDA_EVDO_GSM_WCDMA:I = 0x1fffe

.field private static final NETWORK_MASK_LTE_GSM_WCDMA:I = 0x1ce0e

.field private static final NETWORK_MASK_LTE_ONLY:I = 0x4000

.field private static final NETWORK_MASK_LTE_WCDMA:I = 0xce08

.field private static final NETWORK_MASK_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x3bffe

.field private static final NETWORK_MASK_TD_SCDMA_GSM:I = 0x30006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_LTE:I = 0x34006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA:I = 0x38e0e

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA_LTE:I = 0x3ce0e

.field private static final NETWORK_MASK_TD_SCDMA_LTE:I = 0x24000

.field private static final NETWORK_MASK_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x3fffe

.field private static final NETWORK_MASK_TD_SCDMA_ONLY:I = 0x20000

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA:I = 0x28e08

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA_LTE:I = 0x2ce08

.field private static final NETWORK_MASK_WCDMA_ONLY:I = 0x8e08

.field private static final NETWORK_MASK_WCDMA_PREF:I = 0x18e0e

.field private static final STATE_CTC_SLOT1:I = 0x1

.field private static final STATE_CTC_SLOT2:I = 0x2

.field private static final SUCCESS:I = 0x1

.field private static mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private static sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemRatCapabilitiesAvailable:Z

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 181
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    .line 182
    iput-boolean v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 183
    iput-boolean v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 185
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    .line 186
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    .line 187
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    .line 191
    iput-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 215
    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 217
    iput-object p3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 220
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/internal/telephony/ModemStackController;->registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v6, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v6, v0, :cond_3

    .line 230
    const-string v0, "1"

    const-string v1, "persist.radio.multisim.stackid"

    const-string v5, "0"

    invoke-static {v6, v1, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    .line 232
    .local v2, "stackId":I
    :goto_2
    if-nez v2, :cond_2

    const v3, 0x3ce0e

    .line 234
    .local v3, "netMask":I
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v2, v0, v6

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aput v2, v0, v6

    .line 236
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    sget-object v1, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v8, v6

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v2    # "stackId":I
    .end local v3    # "netMask":I
    :cond_1
    move v2, v7

    .line 230
    goto :goto_2

    .line 232
    .restart local v2    # "stackId":I
    :cond_2
    const v3, 0x10006

    goto :goto_3

    .line 240
    .end local v2    # "stackId":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 242
    const-string v0, "Constructor - Exit"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHdlr.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0
.end method

.method private getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I
    .locals 7
    .param p1, "nwMode"    # I
    .param p2, "modemCaps"    # Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .prologue
    const v6, 0x3ce0e

    const v5, 0x38e0e

    const v4, 0x28e08

    const v3, 0x18e0e

    .line 671
    const/4 v0, 0x0

    .line 673
    .local v0, "supportedRatMaskForNwMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] modemCaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 676
    packed-switch p1, :pswitch_data_0

    .line 811
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: supportedRatMaskForNwMode: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 814
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumRatSupportedInMask(I)I

    move-result v1

    return v1

    .line 678
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_0

    .line 679
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v5

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 685
    goto :goto_0

    .line 688
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x10006

    and-int v0, v1, v2

    .line 690
    goto :goto_0

    .line 693
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_1

    .line 694
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v4

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x8e08

    and-int v0, v1, v2

    .line 700
    goto :goto_0

    .line 703
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 705
    goto :goto_0

    .line 708
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x31f0

    .line 710
    goto :goto_0

    .line 713
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit8 v0, v1, 0x70

    .line 715
    goto :goto_0

    .line 718
    :pswitch_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x3180

    .line 720
    goto :goto_0

    .line 723
    :pswitch_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1bffe

    and-int v0, v1, v2

    .line 725
    goto :goto_0

    .line 728
    :pswitch_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x71f0

    .line 730
    goto :goto_0

    .line 733
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_2

    .line 734
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v6

    goto/16 :goto_0

    .line 737
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1ce0e

    and-int v0, v1, v2

    .line 740
    goto/16 :goto_0

    .line 743
    :pswitch_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1fffe

    and-int v0, v1, v2

    .line 745
    goto/16 :goto_0

    .line 748
    :pswitch_b
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x4000

    .line 750
    goto/16 :goto_0

    .line 753
    :pswitch_c
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0xce08

    and-int v0, v1, v2

    .line 755
    goto/16 :goto_0

    .line 758
    :pswitch_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const/high16 v2, 0x20000

    and-int v0, v1, v2

    .line 760
    goto/16 :goto_0

    .line 763
    :pswitch_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v4

    .line 765
    goto/16 :goto_0

    .line 768
    :pswitch_f
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x24000

    and-int v0, v1, v2

    .line 770
    goto/16 :goto_0

    .line 773
    :pswitch_10
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x30006

    and-int v0, v1, v2

    .line 775
    goto/16 :goto_0

    .line 778
    :pswitch_11
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x34006

    and-int v0, v1, v2

    .line 780
    goto/16 :goto_0

    .line 783
    :pswitch_12
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v5

    .line 785
    goto/16 :goto_0

    .line 788
    :pswitch_13
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x2ce08

    and-int v0, v1, v2

    .line 790
    goto/16 :goto_0

    .line 793
    :pswitch_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v6

    .line 795
    goto/16 :goto_0

    .line 798
    :pswitch_15
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3bffe

    and-int v0, v1, v2

    .line 800
    goto/16 :goto_0

    .line 803
    :pswitch_16
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3fffe

    and-int v0, v1, v2

    .line 805
    goto/16 :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private getNumRatSupportedInMask(I)I
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 826
    .local v0, "noOfOnes":I
    :goto_0
    if-eqz p1, :cond_0

    .line 827
    add-int/lit8 v1, p1, -0x1

    and-int/2addr p1, v1

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_0
    return v0
.end method

.method private getTdscdmaPresent()I
    .locals 3

    .prologue
    .line 874
    const-string v1, "persist.radio.tdscdma_present"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "tdscdmaPresent":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    :cond_0
    const/4 v1, 0x1

    .line 878
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleModemRatCapsAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 399
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 401
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 403
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 404
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 412
    :cond_0
    return-void

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 408
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 409
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleUpdateBindingDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 289
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v3, :cond_2

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 294
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 295
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 296
    const/4 v0, 0x2

    .line 298
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 7
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 585
    iget v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v4, v5, [I

    .line 586
    .local v4, "numRatSupported":[I
    const/4 v3, 0x0

    .line 587
    .local v3, "maxNumRatSupported":I
    const/4 v2, 0x0

    .line 590
    .local v2, "isSupported":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 592
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v5, v5, v1

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I

    move-result v5

    aput v5, v4, v1

    .line 593
    aget v5, v4, v1

    if-ge v3, v5, :cond_0

    aget v3, v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    aput v5, v4, v1

    .line 596
    const-string v5, "modemCapInfo is null until now"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 601
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    aget v5, v4, p2

    if-ne v5, v3, :cond_2

    const/4 v2, 0x1

    .line 603
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nwMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", on stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_3

    const-string v5, "Supported"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 606
    return v2

    .line 603
    :cond_3
    const-string v5, "Not Supported"

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 866
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 870
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 196
    const-string v0, "ModemBindingPolicyHandler"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    .line 202
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHandler.make() should be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onGetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 852
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPrefNwModeDone(SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): got Exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 858
    .local v0, "getNwMode":[I
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    if-eq v1, v2, :cond_0

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPrefNwModeDone(SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Not matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrefNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "retryCount"    # I

    .prologue
    .line 834
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") retryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSetPrefNwModeInProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 839
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 843
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const/4 v0, 0x3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 847
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 662
    if-eqz p1, :cond_0

    .line 663
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 665
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private setPrimaryStackForCdma()[I
    .locals 11

    .prologue
    .line 883
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v6, v9, [I

    .line 884
    .local v6, "nwMode":[I
    const/4 v2, -0x1

    .line 885
    .local v2, "cdmaSlot":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    .line 886
    .local v7, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 887
    .local v0, "PhoneId":I
    const-string v9, "persist.radio.multisim.stackid"

    const-string v10, "-1"

    invoke-static {v0, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 889
    .local v1, "StackId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v3, v9, :cond_6

    .line 890
    const/4 v9, 0x1

    aput v9, v6, v3

    .line 891
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    .line 893
    .local v8, "subIdList":[I
    if-eqz v8, :cond_0

    const/4 v9, 0x0

    aget v9, v8, v9

    if-lez v9, :cond_0

    .line 894
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subIdList[0]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 895
    const/4 v9, 0x0

    aget v9, v8, v9

    const v10, 0x7ffffffb

    add-int/2addr v10, v3

    if-ne v9, v10, :cond_1

    .line 889
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 898
    :cond_1
    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v9

    aput v9, v6, v3

    .line 899
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] nwmode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 900
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subIdList[0]: inside "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 901
    const-string v9, "ril.ICC_TYPE"

    const-string v10, "0"

    invoke-static {v3, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 904
    .local v4, "iccType":I
    const-string v9, "INU"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "INS"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 905
    :cond_2
    const/4 v9, -0x1

    if-ne v2, v9, :cond_0

    const/4 v9, 0x1

    if-eq v4, v9, :cond_3

    const/4 v9, 0x2

    if-ne v4, v9, :cond_0

    .line 907
    :cond_3
    move v2, v3

    goto :goto_1

    .line 909
    :cond_4
    const/4 v9, -0x1

    if-ne v2, v9, :cond_0

    const/4 v9, 0x3

    if-eq v4, v9, :cond_5

    const/4 v9, 0x4

    if-ne v4, v9, :cond_0

    .line 911
    :cond_5
    move v2, v3

    goto :goto_1

    .line 916
    .end local v4    # "iccType":I
    .end local v8    # "subIdList":[I
    :cond_6
    if-ltz v2, :cond_16

    .line 917
    const-string v9, "INU"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "INS"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 918
    :cond_7
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    const/4 v9, 0x0

    aget v9, v6, v9

    if-nez v9, :cond_a

    .line 919
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subCtrlr.NewRecord: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 920
    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v6, v9

    .line 921
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v6, v9

    .line 958
    :cond_8
    :goto_2
    const/4 v9, 0x0

    sput v9, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    .line 959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subCtrlr.NewRecord after reset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 968
    :goto_3
    const/4 v9, 0x1

    if-ne v1, v9, :cond_9

    .line 969
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "state"

    if-nez v2, :cond_15

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 973
    const-string v9, "[setPrimaryStackForCdma] Send Intent: com.samsung.intent.action.ACTION_CROSS_MAPPING"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 976
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] cdmaSlot:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", StackId[0]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nwMode[0]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nwMode[1]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 981
    .end local v6    # "nwMode":[I
    :goto_5
    return-object v6

    .line 922
    .restart local v6    # "nwMode":[I
    :cond_a
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 923
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subCtrlr.NewRecord : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 925
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    if-nez v9, :cond_c

    .line 926
    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b

    const/4 v9, 0x1

    aget v9, v6, v9

    if-nez v9, :cond_e

    .line 928
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] mNewSlotId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "network Mode 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 929
    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v6, v9

    .line 941
    :cond_c
    :goto_6
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 942
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d

    const/4 v9, 0x0

    aget v9, v6, v9

    if-nez v9, :cond_10

    .line 944
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] mNewSlotId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "network Mode 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 945
    const/4 v9, 0x1

    const/16 v10, 0x9

    aput v10, v6, v9

    goto/16 :goto_2

    .line 932
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 933
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v6, v9

    .line 934
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] network Mode 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 937
    :cond_f
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v6, v9

    goto/16 :goto_6

    .line 948
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 949
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v6, v9

    .line 950
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] network Mode 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 953
    :cond_11
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v6, v9

    goto/16 :goto_2

    .line 961
    :cond_12
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_13

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 963
    :cond_13
    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v6, v9

    .line 965
    :cond_14
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v6, v9

    goto/16 :goto_3

    .line 970
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_15
    const/4 v9, 0x2

    goto/16 :goto_4

    .line 981
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_5
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    sget-object v2, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v2

    aput v2, v1, v0

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ModemStackController;->getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 420
    goto :goto_1

    .line 422
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    goto :goto_1

    .line 619
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updatePreferredStackIds()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 483
    iget-boolean v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    if-nez v11, :cond_1

    .line 484
    const-string v9, "updatePreferredStackIds: Modem Capabilites are not Available. Return!!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 485
    sget-object v9, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/ModemStackController;->getModemCaps()V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    sget-object v11, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 491
    const-string v11, "updatePreferredStackIds() StatckId Error"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 492
    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v10, v11, v10

    .line 493
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v9, v10, v9

    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 500
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncCurrentStackInfo()V

    .line 502
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 503
    new-array v0, v13, [Ljava/lang/String;

    const-string v11, "IS_CTC"

    aput-object v11, v0, v10

    const-string v11, "IS_CTC2"

    aput-object v11, v0, v9

    .line 504
    .local v0, "ctcKey":[Ljava/lang/String;
    new-array v6, v13, [Ljava/lang/String;

    const-string v11, "phone1_on"

    aput-object v11, v6, v10

    const-string v11, "phone2_on"

    aput-object v11, v6, v9

    .line 505
    .local v6, "simOn":[Ljava/lang/String;
    const/4 v1, -0x1

    .local v1, "ctcSlot":I
    const/4 v2, 0x0

    .line 507
    .local v2, "ctcSlotCount":I
    const/4 v7, 0x0

    .local v7, "slot":I
    :goto_1
    iget v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v11, :cond_4

    .line 508
    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    aget-object v12, v0, v7

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    .line 509
    move v1, v7

    .line 510
    add-int/lit8 v2, v2, 0x1

    .line 513
    :cond_3
    const-string v11, "persist.sys.softsim.status"

    const-string v12, "default"

    invoke-static {v7, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "softSimState":Ljava/lang/String;
    const-string v11, "activating"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 515
    const/4 v2, 0x0

    .line 520
    .end local v8    # "softSimState":Ljava/lang/String;
    :cond_4
    if-le v2, v9, :cond_7

    .line 521
    const/4 v2, 0x0

    .line 522
    const/4 v7, 0x0

    :goto_2
    iget v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v11, :cond_7

    .line 523
    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    aget-object v12, v6, v7

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_5

    .line 524
    move v1, v7

    .line 525
    add-int/lit8 v2, v2, 0x1

    .line 522
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 507
    .restart local v8    # "softSimState":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 530
    .end local v8    # "softSimState":Ljava/lang/String;
    :cond_7
    if-le v2, v9, :cond_8

    .line 531
    const/4 v7, 0x0

    :goto_3
    iget v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v11, :cond_8

    .line 532
    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v11, v11, v7

    if-eq v11, v9, :cond_9

    .line 533
    move v1, v7

    .line 534
    const/4 v2, 0x1

    .line 540
    :cond_8
    if-ltz v1, :cond_b

    if-ne v2, v9, :cond_b

    .line 541
    if-nez v1, :cond_a

    move v5, v9

    .line 542
    .local v5, "otherSlot":I
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v10, v11, v1

    .line 543
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v9, v10, v5

    .line 547
    .end local v5    # "otherSlot":I
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferredStackIds() 7+5Mode, ctcSlot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    move v5, v10

    .line 541
    goto :goto_4

    .line 545
    :cond_b
    const/4 v1, -0x1

    goto :goto_5

    .line 551
    .end local v0    # "ctcKey":[Ljava/lang/String;
    .end local v1    # "ctcSlot":I
    .end local v2    # "ctcSlotCount":I
    .end local v6    # "simOn":[Ljava/lang/String;
    .end local v7    # "slot":I
    :cond_c
    const/4 v3, 0x0

    .local v3, "curPhoneId":I
    :goto_6
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v3, v9, :cond_0

    .line 553
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v9, v9, v3

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v10, v10, v3

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 554
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferredStackIds: current stack["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]supports NwMode["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] on phoneId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 551
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 562
    :cond_e
    const/4 v4, 0x0

    .local v4, "otherPhoneId":I
    :goto_7
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v4, v9, :cond_d

    .line 564
    if-ne v4, v3, :cond_10

    .line 562
    :cond_f
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 566
    :cond_10
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v9, v9, v3

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v10, v10, v4

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 570
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v9, v9, v4

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v10, v10, v3

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 572
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] and phoneId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 576
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v10, v10, v4

    aput v10, v9, v3

    .line 577
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v10, v10, v3

    aput v10, v9, v4

    goto :goto_8
.end method

.method private updateStackBindingIfRequired(Z)I
    .locals 7
    .param p1, "isBootUp"    # Z

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "isUpdateStackBindingRequired":Z
    const/4 v3, 0x0

    .line 436
    .local v3, "response":I
    if-eqz p1, :cond_0

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePreferredStackIds()V

    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreferredStatck["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentStackId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModemCapInfo["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_4

    .line 447
    const/4 v1, 0x1

    .line 448
    const-string v4, "isUpdateStackBindingRequired : true"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 452
    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    .line 453
    :cond_2
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 454
    .local v2, "msg":Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    invoke-virtual {v4, v5, p1, v2}, Lcom/android/internal/telephony/ModemStackController;->updateStackBinding([IZLandroid/os/Message;)I

    move-result v3

    .line 457
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    return v3

    .line 442
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "phoneId":I
    const/4 v3, 0x0

    .line 251
    .local v3, "retryCount":I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 254
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleUpdateBindingDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 258
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleModemRatCapsAvailable()V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 263
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 264
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_PREF_MODE(SUB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 266
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 267
    .local v2, "resp":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v5, v5, v1

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 271
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "resp":Landroid/os/Message;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 272
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 273
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 274
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 278
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 279
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->onGetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 624
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v2, [I

    .line 625
    .local v1, "oldPrefNwMode":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v2, :cond_1

    .line 631
    const-string v2, "setPreferredNetworkType: In Progress:"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 632
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 659
    :goto_1
    return-void

    .line 636
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 638
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 642
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 643
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 645
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 647
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 648
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_5

    .line 649
    if-ne p2, v0, :cond_4

    .line 648
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 651
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    aget v3, v1, v0

    if-eq v2, v3, :cond_3

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on otherPhoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-static {p3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 657
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    goto/16 :goto_1
.end method

.method public updatePrefNwTypeIfRequired()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 311
    const/4 v9, 0x0

    .line 312
    .local v9, "updateRequired":Z
    const/4 v0, 0x0

    .line 313
    .local v0, "hasNwGsmOnly":Z
    const/4 v5, -0x1

    .line 314
    .local v5, "secondaryStackSlot":I
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v3, v10, [I

    .line 315
    .local v3, "nwModeinSubIdTable":[I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    .line 317
    .local v6, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v10, :cond_2

    .line 318
    aput v12, v3, v1

    .line 319
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    .line 320
    .local v8, "subIdList":[I
    if-eqz v8, :cond_0

    aget v10, v8, v13

    if-lez v10, :cond_0

    .line 322
    aget v10, v8, v13

    const v11, 0x7ffffffb

    add-int/2addr v11, v1

    if-ne v10, v11, :cond_1

    .line 317
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    aget v7, v8, v13

    .line 327
    .local v7, "subId":I
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v10

    aput v10, v3, v1

    .line 328
    aget v10, v3, v1

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 329
    const/4 v9, 0x0

    .line 339
    .end local v7    # "subId":I
    .end local v8    # "subIdList":[I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 340
    const-string v10, "INU"

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "INS"

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->setPrimaryStackForCdma()[I

    move-result-object v2

    .line 342
    .local v2, "nwModeGsm":[I
    if-eqz v2, :cond_4

    .line 343
    move-object v3, v2

    .line 344
    const/4 v9, 0x1

    .line 346
    :cond_4
    aget v10, v3, v13

    aget v11, v3, v12

    and-int/2addr v10, v11

    const/16 v11, 0x8

    if-lt v10, v11, :cond_5

    .line 347
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Both LTE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 349
    aget v10, v3, v13

    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v11, v11, v13

    if-eq v10, v11, :cond_8

    .line 350
    aput v13, v3, v13

    .line 366
    .end local v2    # "nwModeGsm":[I
    :cond_5
    :goto_2
    sget-object v10, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 367
    const-string v10, "updatePrefNwTypeIfRequired() StatckId Error"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 368
    const/4 v9, 0x1

    .line 372
    :cond_6
    if-eqz v9, :cond_c

    .line 373
    const/4 v1, 0x0

    :goto_3
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v10, :cond_b

    .line 374
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating Value in DB for slot["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 375
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    aget v12, v3, v1

    invoke-static {v10, v11, v1, v12}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 332
    .restart local v7    # "subId":I
    .restart local v8    # "subIdList":[I
    :cond_7
    aget v10, v3, v1

    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v11, v11, v1

    if-eq v10, v11, :cond_0

    .line 333
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 352
    .end local v7    # "subId":I
    .end local v8    # "subIdList":[I
    .restart local v2    # "nwModeGsm":[I
    :cond_8
    aput v13, v3, v12

    goto :goto_2

    .line 355
    :cond_9
    aget v10, v3, v13

    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v11, v11, v13

    if-eq v10, v11, :cond_a

    .line 356
    aput v12, v3, v13

    goto :goto_2

    .line 358
    :cond_a
    aput v12, v3, v12

    goto :goto_2

    .line 379
    .end local v2    # "nwModeGsm":[I
    :cond_b
    invoke-direct {p0, v13}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v10

    if-nez v10, :cond_d

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 384
    const/4 v1, 0x0

    :goto_4
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v10, :cond_d

    .line 385
    const/4 v10, 0x4

    invoke-virtual {p0, v10, v1, v13}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 386
    .local v4, "resp":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v10, v10, v1

    aget v11, v3, v1

    invoke-interface {v10, v11, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 391
    .end local v4    # "resp":Landroid/os/Message;
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 392
    invoke-direct {p0, v13}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    .line 395
    :cond_d
    return-void
.end method
