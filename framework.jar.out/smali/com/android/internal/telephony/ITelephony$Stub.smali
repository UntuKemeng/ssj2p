.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0xa2

.field static final TRANSACTION_IsInternationalRoaming:I = 0xa1

.field static final TRANSACTION_NSRI_requestProc:I = 0xcd

.field static final TRANSACTION_SimSlotActivation:I = 0xb6

.field static final TRANSACTION_SimSlotOnOff:I = 0xb5

.field static final TRANSACTION_answerRingingCall:I = 0x8

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x9

.field static final TRANSACTION_calculateAkaResponse:I = 0xbb

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0xbc

.field static final TRANSACTION_calculateNafExternalKey:I = 0xbd

.field static final TRANSACTION_call:I = 0x4

.field static final TRANSACTION_callForSubscriber:I = 0x5

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x7a

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x6a

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x6b

.field static final TRANSACTION_checkNSRIUSIMstate_int:I = 0xcc

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_dialForSubscriber:I = 0x3

.field static final TRANSACTION_disableDataConnectivity:I = 0x2b

.field static final TRANSACTION_disableLocationUpdates:I = 0x28

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x29

.field static final TRANSACTION_enableDataConnectivity:I = 0x2a

.field static final TRANSACTION_enableLocationUpdates:I = 0x26

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x27

.field static final TRANSACTION_enableVideoCalling:I = 0x78

.field static final TRANSACTION_endCall:I = 0x6

.field static final TRANSACTION_endCallForSubscriber:I = 0x7

.field static final TRANSACTION_factoryReset:I = 0x85

.field static final TRANSACTION_getActiveFgCallState:I = 0xd5

.field static final TRANSACTION_getActivePhoneType:I = 0x35

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x36

.field static final TRANSACTION_getAllCellInfo:I = 0x4a

.field static final TRANSACTION_getAtr:I = 0x96

.field static final TRANSACTION_getAtrUsingSlotId:I = 0x97

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x5c

.field static final TRANSACTION_getCallState:I = 0x30

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x31

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x6c

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x69

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x37

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x38

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x39

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x3a

.field static final TRANSACTION_getCdmaEriText:I = 0x3b

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x3c

.field static final TRANSACTION_getCdmaMdn:I = 0x67

.field static final TRANSACTION_getCdmaMin:I = 0x68

.field static final TRANSACTION_getCellLocation:I = 0x2d

.field static final TRANSACTION_getCellLocationBySubId:I = 0x2e

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x60

.field static final TRANSACTION_getCurrentUATI:I = 0xab

.field static final TRANSACTION_getDataActivity:I = 0x32

.field static final TRANSACTION_getDataEnabled:I = 0x64

.field static final TRANSACTION_getDataNetworkType:I = 0x43

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x44

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x8b

.field static final TRANSACTION_getDataRoamingEnabledUsingSubID:I = 0x8c

.field static final TRANSACTION_getDataServiceState:I = 0x94

.field static final TRANSACTION_getDataServiceStateUsingSubId:I = 0x95

.field static final TRANSACTION_getDataState:I = 0x33

.field static final TRANSACTION_getDataStateSimSlot:I = 0x34

.field static final TRANSACTION_getDefaultSim:I = 0x4c

.field static final TRANSACTION_getDeviceId:I = 0x83

.field static final TRANSACTION_getDeviceUAField:I = 0xd3

.field static final TRANSACTION_getDisable2g:I = 0xd7

.field static final TRANSACTION_getEuimid:I = 0xd0

.field static final TRANSACTION_getFeliCaUimLockStatus:I = 0x9d

.field static final TRANSACTION_getHandsetInfo:I = 0xad

.field static final TRANSACTION_getImei:I = 0x9a

.field static final TRANSACTION_getIpAddressFromLinkProp:I = 0xa5

.field static final TRANSACTION_getLgt3GDataStatus:I = 0xaf

.field static final TRANSACTION_getLgtOzStartPage:I = 0xb0

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x6f

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x6e

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x86

.field static final TRANSACTION_getLteCellInfo:I = 0xaa

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x48

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x49

.field static final TRANSACTION_getMeid:I = 0x99

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x70

.field static final TRANSACTION_getMobileQualityInformation:I = 0xa4

.field static final TRANSACTION_getModemActivityInfo:I = 0x87

.field static final TRANSACTION_getMultiSimForegroundPhoneId:I = 0xc3

.field static final TRANSACTION_getMultiSimLastRejectIncomingCallPhoneId:I = 0xc1

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2f

.field static final TRANSACTION_getNetworkType:I = 0x41

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x42

.field static final TRANSACTION_getPcscfAddress:I = 0x65

.field static final TRANSACTION_getPhoneServiceState:I = 0xae

.field static final TRANSACTION_getPreferredNetworkType:I = 0x5d

.field static final TRANSACTION_getRadioAccessFamily:I = 0x77

.field static final TRANSACTION_getSdnAvailable:I = 0xa0

.field static final TRANSACTION_getSelectedApn:I = 0x8e

.field static final TRANSACTION_getServiceState:I = 0x92

.field static final TRANSACTION_getServiceStateUsingSubId:I = 0x93

.field static final TRANSACTION_getSimPinRetry:I = 0x9b

.field static final TRANSACTION_getSimPinRetryForSubscriber:I = 0xb2

.field static final TRANSACTION_getSimPukRetry:I = 0x9f

.field static final TRANSACTION_getSimPukRetryForSubscriber:I = 0xb3

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x84

.field static final TRANSACTION_getTetherApnRequired:I = 0x5e

.field static final TRANSACTION_getTimeInfo:I = 0xa8

.field static final TRANSACTION_getUaUap:I = 0xf

.field static final TRANSACTION_getVoiceMessageCount:I = 0x3f

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x40

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x45

.field static final TRANSACTION_getVoicePhoneServiceState:I = 0x90

.field static final TRANSACTION_getVoicePhoneServiceStateUsingSubId:I = 0x91

.field static final TRANSACTION_getWipiSysInfo:I = 0xa9

.field static final TRANSACTION_handlePinMmi:I = 0x1d

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1e

.field static final TRANSACTION_hasIccCard:I = 0x46

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x47

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4f

.field static final TRANSACTION_iccCloseLogicalChannelUsingSlotId:I = 0x50

.field static final TRANSACTION_iccExchangeSimIO:I = 0x55

.field static final TRANSACTION_iccExchangeSimIOUsingSlotId:I = 0x56

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccOpenLogicalChannelUsingSlotId:I = 0x4e

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x53

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSlotId:I = 0x54

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x51

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSlotId:I = 0x52

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x73

.field static final TRANSACTION_invokeOemRilRequestRawForSubscriber:I = 0xd6

.field static final TRANSACTION_isApnTypeAvailable:I = 0xce

.field static final TRANSACTION_isApnTypeAvailableUsingSubId:I = 0xcf

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x2c

.field static final TRANSACTION_isDualBTConnection:I = 0xc8

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x7d

.field static final TRANSACTION_isIdle:I = 0x10

.field static final TRANSACTION_isIdleForSubscriber:I = 0x11

.field static final TRANSACTION_isImsCall:I = 0xc4

.field static final TRANSACTION_isImsRegistered:I = 0x7e

.field static final TRANSACTION_isOffhook:I = 0xb

.field static final TRANSACTION_isOffhookForSubscriber:I = 0xc

.field static final TRANSACTION_isRadioOn:I = 0x12

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0x13

.field static final TRANSACTION_isRinging:I = 0xe

.field static final TRANSACTION_isRingingForSubscriber:I = 0xd

.field static final TRANSACTION_isSimFDNEnabled:I = 0x89

.field static final TRANSACTION_isSimFDNEnabledForSubscriber:I = 0x8a

.field static final TRANSACTION_isSimPinEnabled:I = 0x14

.field static final TRANSACTION_isTtyModeSupported:I = 0x7c

.field static final TRANSACTION_isVideoCall:I = 0x88

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x79

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x81

.field static final TRANSACTION_isVolteAvailable:I = 0x80

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x7f

.field static final TRANSACTION_isWorldPhone:I = 0x7b

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x74

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x3d

.field static final TRANSACTION_notifyMissedCall:I = 0x1

.field static final TRANSACTION_notifyVoIPCallStateChangeIntoBT:I = 0xc7

.field static final TRANSACTION_nvReadItem:I = 0x58

.field static final TRANSACTION_nvResetConfig:I = 0x5b

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x5a

.field static final TRANSACTION_nvWriteItem:I = 0x59

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x57

.field static final TRANSACTION_sendRequestRawToRIL:I = 0xac

.field static final TRANSACTION_sendRequestToRIL:I = 0xa3

.field static final TRANSACTION_setAirplaneMode:I = 0xd2

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0xc5

.field static final TRANSACTION_setBTUserWantsSwitchAudio:I = 0xc6

.field static final TRANSACTION_setCellInfoListRate:I = 0x4b

.field static final TRANSACTION_setDataEnabled:I = 0x63

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x8d

.field static final TRANSACTION_setDisable2g:I = 0xd8

.field static final TRANSACTION_setDmCmd:I = 0xb1

.field static final TRANSACTION_setEPSLOCI:I = 0xbf

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0xbe

.field static final TRANSACTION_setImsRegistrationState:I = 0x66

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x6d

.field static final TRANSACTION_setMultiSimForegroundPhoneId:I = 0xc2

.field static final TRANSACTION_setMultiSimLastRejectIncomingCallPhoneId:I = 0xc0

.field static final TRANSACTION_setNetworkBand:I = 0xd1

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x5f

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x61

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x71

.field static final TRANSACTION_setPreferredNetworkType:I = 0x62

.field static final TRANSACTION_setRadio:I = 0x21

.field static final TRANSACTION_setRadioCapability:I = 0x76

.field static final TRANSACTION_setRadioForSubscriber:I = 0x22

.field static final TRANSACTION_setRadioPower:I = 0x23

.field static final TRANSACTION_setRoamingOverride:I = 0x72

.field static final TRANSACTION_setSelectedApn:I = 0x8f

.field static final TRANSACTION_setTransmitPower:I = 0x98

.field static final TRANSACTION_setUimRemoteLockStatus:I = 0x9e

.field static final TRANSACTION_setVoiceMailNumber:I = 0x3e

.field static final TRANSACTION_shutdownMobileRadios:I = 0x75

.field static final TRANSACTION_silenceRinger:I = 0xa

.field static final TRANSACTION_sms_NSRI_decryptsms:I = 0xca

.field static final TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0xcb

.field static final TRANSACTION_sms_NSRI_encryptsms:I = 0xc9

.field static final TRANSACTION_startGlobalNetworkSearchTimer:I = 0xb7

.field static final TRANSACTION_startGlobalNoSvcChkTimer:I = 0xb9

.field static final TRANSACTION_startMobileQualityInformation:I = 0xa6

.field static final TRANSACTION_startVoiceLessOtaProvisioning:I = 0x82

.field static final TRANSACTION_stopGlobalNetworkSearchTimer:I = 0xb8

.field static final TRANSACTION_stopGlobalNoSvcChkTimer:I = 0xba

.field static final TRANSACTION_stopMobileQualityInformation:I = 0xa7

.field static final TRANSACTION_supplyPerso:I = 0xb4

.field static final TRANSACTION_supplyPin:I = 0x15

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x16

.field static final TRANSACTION_supplyPinReportResult:I = 0x19

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x1a

.field static final TRANSACTION_supplyPuk:I = 0x17

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x18

.field static final TRANSACTION_supplyPukReportResult:I = 0x1b

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x1c

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1f

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x20

.field static final TRANSACTION_transmitIccAPDU:I = 0x9c

.field static final TRANSACTION_updateServiceLocation:I = 0x24

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x25

.field static final TRANSACTION_validateMsisdn:I = 0xd4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 2331
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 50
    :sswitch_0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v6, 0x1

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg3":J
    move-object/from16 v6, p0

    .line 64
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v6, 0x1

    goto :goto_0

    .line 70
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":J
    :sswitch_2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v6, 0x1

    goto :goto_0

    .line 79
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 83
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->dialForSubscriber(ILjava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v6, 0x1

    goto :goto_0

    .line 90
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 95
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v6, 0x1

    goto :goto_0

    .line 101
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 105
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 107
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 108
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 114
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v27

    .line 116
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v27, :cond_0

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 117
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 122
    .end local v27    # "_result":Z
    :sswitch_7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 125
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v27

    .line 126
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v27, :cond_1

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 127
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 132
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 139
    :sswitch_9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 148
    .end local v7    # "_arg0":I
    :sswitch_a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 155
    :sswitch_b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    move-result v27

    .line 159
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v27, :cond_2

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 160
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 165
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 169
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 170
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 171
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v27, :cond_3

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 172
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 177
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 181
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 182
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 183
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v27, :cond_4

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 184
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 189
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v27

    .line 193
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v27, :cond_5

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 194
    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    .line 199
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getUaUap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 203
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 209
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    move-result v27

    .line 213
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v27, :cond_6

    const/4 v6, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 214
    :cond_6
    const/4 v6, 0x0

    goto :goto_7

    .line 219
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_11
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 223
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 224
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 225
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v27, :cond_7

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 226
    :cond_7
    const/4 v6, 0x0

    goto :goto_8

    .line 231
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_12
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v27

    .line 235
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v27, :cond_8

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 236
    :cond_8
    const/4 v6, 0x0

    goto :goto_9

    .line 241
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_13
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 245
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 246
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 247
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v27, :cond_9

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 248
    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    .line 253
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_14
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled(Ljava/lang/String;)Z

    move-result v27

    .line 257
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v27, :cond_a

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 258
    :cond_a
    const/4 v6, 0x0

    goto :goto_b

    .line 263
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_15
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 266
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v27

    .line 267
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v27, :cond_b

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 268
    :cond_b
    const/4 v6, 0x0

    goto :goto_c

    .line 273
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_16
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 277
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 278
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 279
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v27, :cond_c

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 280
    :cond_c
    const/4 v6, 0x0

    goto :goto_d

    .line 285
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_17
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 290
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 291
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v27, :cond_d

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 292
    :cond_d
    const/4 v6, 0x0

    goto :goto_e

    .line 297
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_18
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 301
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 303
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 304
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 305
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v27, :cond_e

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 306
    :cond_e
    const/4 v6, 0x0

    goto :goto_f

    .line 311
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_19
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v27

    .line 315
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 317
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 321
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_1a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 325
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 326
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v27

    .line 327
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 329
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 333
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_1b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 338
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v27

    .line 339
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 341
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 345
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_1c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 349
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 351
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 352
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v27

    .line 353
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 355
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 359
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_1d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v27

    .line 363
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v27, :cond_f

    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 364
    :cond_f
    const/4 v6, 0x0

    goto :goto_10

    .line 369
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 373
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 374
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 375
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v27, :cond_10

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 376
    :cond_10
    const/4 v6, 0x0

    goto :goto_11

    .line 381
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 388
    :sswitch_20
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 391
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 397
    .end local v7    # "_arg0":I
    :sswitch_21
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v7, 0x1

    .line 400
    .local v7, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v27

    .line 401
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v27, :cond_12

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 399
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :cond_11
    const/4 v7, 0x0

    goto :goto_12

    .line 402
    .restart local v7    # "_arg0":Z
    .restart local v27    # "_result":Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_13

    .line 407
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :sswitch_22
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 411
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/4 v8, 0x1

    .line 412
    .local v8, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v27

    .line 413
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v27, :cond_14

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 411
    .end local v8    # "_arg1":Z
    .end local v27    # "_result":Z
    :cond_13
    const/4 v8, 0x0

    goto :goto_14

    .line 414
    .restart local v8    # "_arg1":Z
    .restart local v27    # "_result":Z
    :cond_14
    const/4 v6, 0x0

    goto :goto_15

    .line 419
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v27    # "_result":Z
    :sswitch_23
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v7, 0x1

    .line 422
    .local v7, "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v27

    .line 423
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v27, :cond_16

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 421
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_16

    .line 424
    .restart local v7    # "_arg0":Z
    .restart local v27    # "_result":Z
    :cond_16
    const/4 v6, 0x0

    goto :goto_17

    .line 429
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :sswitch_24
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 436
    :sswitch_25
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 439
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 445
    .end local v7    # "_arg0":I
    :sswitch_26
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 452
    :sswitch_27
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 455
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 461
    .end local v7    # "_arg0":I
    :sswitch_28
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 468
    :sswitch_29
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 471
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 477
    .end local v7    # "_arg0":I
    :sswitch_2a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v27

    .line 479
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v27, :cond_17

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 480
    :cond_17
    const/4 v6, 0x0

    goto :goto_18

    .line 485
    .end local v27    # "_result":Z
    :sswitch_2b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v27

    .line 487
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v27, :cond_18

    const/4 v6, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 488
    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    .line 493
    .end local v27    # "_result":Z
    :sswitch_2c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v27

    .line 495
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v27, :cond_19

    const/4 v6, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 496
    :cond_19
    const/4 v6, 0x0

    goto :goto_1a

    .line 501
    .end local v27    # "_result":Z
    :sswitch_2d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 505
    .local v27, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v27, :cond_1a

    .line 507
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 513
    :goto_1b
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 511
    :cond_1a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 517
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Landroid/os/Bundle;
    :sswitch_2e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 520
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationBySubId(I)Landroid/os/Bundle;

    move-result-object v27

    .line 521
    .restart local v27    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v27, :cond_1b

    .line 523
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 529
    :goto_1c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 527
    :cond_1b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 533
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Landroid/os/Bundle;
    :sswitch_2f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 537
    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 539
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 543
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_30
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v27

    .line 545
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 551
    .end local v27    # "_result":I
    :sswitch_31
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 554
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(I)I

    move-result v27

    .line 555
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 561
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_32
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v27

    .line 563
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 569
    .end local v27    # "_result":I
    :sswitch_33
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v27

    .line 571
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 577
    .end local v27    # "_result":I
    :sswitch_34
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 580
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateSimSlot(I)I

    move-result v27

    .line 581
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 587
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_35
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v27

    .line 589
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 595
    .end local v27    # "_result":I
    :sswitch_36
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 598
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(I)I

    move-result v27

    .line 599
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 605
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_37
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 608
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v27

    .line 609
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 615
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_38
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 619
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 620
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 621
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 627
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_39
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 630
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v27

    .line 631
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 637
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_3a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 641
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 642
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 643
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 649
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_3b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 652
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 653
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 659
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 663
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 664
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 665
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 671
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_3d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v27

    .line 673
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    if-eqz v27, :cond_1c

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 674
    :cond_1c
    const/4 v6, 0x0

    goto :goto_1d

    .line 679
    .end local v27    # "_result":Z
    :sswitch_3e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 683
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 685
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 686
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 687
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    if-eqz v27, :cond_1d

    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 688
    :cond_1d
    const/4 v6, 0x0

    goto :goto_1e

    .line 693
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_3f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v27

    .line 695
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 701
    .end local v27    # "_result":I
    :sswitch_40
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 704
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v27

    .line 705
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 711
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_41
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v27

    .line 713
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 719
    .end local v27    # "_result":I
    :sswitch_42
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 723
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 724
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 725
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 731
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_43
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    move-result v27

    .line 735
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 741
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_44
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 745
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 746
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 747
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 753
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_45
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 757
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 758
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 759
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 765
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_46
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v27

    .line 767
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v27, :cond_1e

    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 768
    :cond_1e
    const/4 v6, 0x0

    goto :goto_1f

    .line 773
    .end local v27    # "_result":Z
    :sswitch_47
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 776
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v27

    .line 777
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    if-eqz v27, :cond_1f

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 778
    :cond_1f
    const/4 v6, 0x0

    goto :goto_20

    .line 783
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_48
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 786
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v27

    .line 787
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 793
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_49
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 797
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 798
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 799
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 805
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_4a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    .line 809
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 811
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 815
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 818
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 824
    .end local v7    # "_arg0":I
    :sswitch_4c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v27

    .line 826
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 832
    .end local v27    # "_result":I
    :sswitch_4d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 835
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v27

    .line 836
    .local v27, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    if-eqz v27, :cond_20

    .line 838
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 844
    :goto_21
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 842
    :cond_20
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 848
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 852
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 853
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSlotId(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v27

    .line 854
    .restart local v27    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v27, :cond_21

    .line 856
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 862
    :goto_22
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 860
    :cond_21
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 866
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 869
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v27

    .line 870
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v27, :cond_22

    const/4 v6, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 871
    :cond_22
    const/4 v6, 0x0

    goto :goto_23

    .line 876
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_50
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 880
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 881
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannelUsingSlotId(II)Z

    move-result v27

    .line 882
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    if-eqz v27, :cond_23

    const/4 v6, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 883
    :cond_23
    const/4 v6, 0x0

    goto :goto_24

    .line 888
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_51
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 892
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 894
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 896
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 898
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 900
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 902
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 903
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 904
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 910
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 914
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 916
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 918
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 920
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 922
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 924
    .restart local v18    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 926
    .restart local v19    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg7":I
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 927
    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelUsingSlotId(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 928
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 934
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v20    # "_arg7":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 938
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 940
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 942
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 944
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 946
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 947
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 948
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 954
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 958
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 960
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 962
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 964
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 966
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 968
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 969
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelUsingSlotId(IIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 970
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 976
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_55
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 980
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 982
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 984
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 986
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 988
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 989
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v27

    .line 990
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 992
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 996
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v27    # "_result":[B
    :sswitch_56
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1000
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1002
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1004
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1006
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1008
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1010
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg6":I
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 1011
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOUsingSlotId(IIIIILjava/lang/String;I)[B

    move-result-object v27

    .line 1012
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1014
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1018
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    .end local v27    # "_result":[B
    :sswitch_57
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1021
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1022
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1028
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1031
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v27

    .line 1032
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1034
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1038
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1042
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1043
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v27

    .line 1044
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    if-eqz v27, :cond_24

    const/4 v6, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1045
    :cond_24
    const/4 v6, 0x0

    goto :goto_25

    .line 1050
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_5a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1053
    .local v7, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v27

    .line 1054
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    if-eqz v27, :cond_25

    const/4 v6, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1055
    :cond_25
    const/4 v6, 0x0

    goto :goto_26

    .line 1060
    .end local v7    # "_arg0":[B
    .end local v27    # "_result":Z
    :sswitch_5b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1063
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v27

    .line 1064
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    if-eqz v27, :cond_26

    const/4 v6, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1065
    :cond_26
    const/4 v6, 0x0

    goto :goto_27

    .line 1070
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_5c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1073
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v27

    .line 1074
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1080
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_5d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1083
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    move-result v27

    .line 1084
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1090
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_5e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v27

    .line 1092
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1098
    .end local v27    # "_result":I
    :sswitch_5f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1101
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v7    # "_arg0":I
    :sswitch_60
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1110
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v27

    .line 1111
    .local v27, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    if-eqz v27, :cond_27

    .line 1113
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1119
    :goto_28
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1117
    :cond_27
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 1123
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_61
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1127
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    .line 1128
    sget-object v6, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 1134
    .local v8, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    const/4 v9, 0x1

    .line 1135
    .local v9, "_arg2":Z
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v27

    .line 1136
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    if-eqz v27, :cond_2a

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1131
    .end local v8    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .end local v9    # "_arg2":Z
    .end local v27    # "_result":Z
    :cond_28
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_29

    .line 1134
    :cond_29
    const/4 v9, 0x0

    goto :goto_2a

    .line 1137
    .restart local v9    # "_arg2":Z
    .restart local v27    # "_result":Z
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2b

    .line 1142
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .end local v9    # "_arg2":Z
    .end local v27    # "_result":Z
    :sswitch_62
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1146
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1147
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    move-result v27

    .line 1148
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    if-eqz v27, :cond_2b

    const/4 v6, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1149
    :cond_2b
    const/4 v6, 0x0

    goto :goto_2c

    .line 1154
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_63
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1158
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v8, 0x1

    .line 1159
    .local v8, "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1158
    .end local v8    # "_arg1":Z
    :cond_2c
    const/4 v8, 0x0

    goto :goto_2d

    .line 1165
    .end local v7    # "_arg0":I
    :sswitch_64
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1168
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v27

    .line 1169
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    if-eqz v27, :cond_2d

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1170
    :cond_2d
    const/4 v6, 0x0

    goto :goto_2e

    .line 1175
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_65
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1179
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1180
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1181
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1183
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1187
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_66
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v7, 0x1

    .line 1190
    .local v7, "_arg0":Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1189
    .end local v7    # "_arg0":Z
    :cond_2e
    const/4 v7, 0x0

    goto :goto_2f

    .line 1196
    :sswitch_67
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1199
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v27

    .line 1200
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1202
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1206
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_68
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1209
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v27

    .line 1210
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus()I

    move-result v27

    .line 1218
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1224
    .end local v27    # "_result":I
    :sswitch_6a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1227
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v27

    .line 1228
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1234
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_6b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1237
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v27

    .line 1238
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1244
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_6c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 1247
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1253
    .local v7, "_arg0":Landroid/content/Intent;
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1254
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v30

    .line 1255
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1257
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1250
    .end local v7    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_arg1":I
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/Intent;
    goto :goto_30

    .line 1261
    .end local v7    # "_arg0":Landroid/content/Intent;
    :sswitch_6d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1265
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1267
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1268
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 1269
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    if-eqz v27, :cond_30

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1270
    :cond_30
    const/4 v6, 0x0

    goto :goto_31

    .line 1275
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_6e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1279
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1280
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1281
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1283
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1287
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_6f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1291
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1292
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1293
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1295
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1299
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1302
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1303
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1305
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1309
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_71
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1312
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v27

    .line 1313
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    if-eqz v27, :cond_31

    const/4 v6, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1314
    :cond_31
    const/4 v6, 0x0

    goto :goto_32

    .line 1319
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_72
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1323
    .local v21, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1325
    .local v22, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 1327
    .local v24, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 1328
    .local v26, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v27

    .line 1329
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    if-eqz v27, :cond_32

    const/4 v6, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1330
    :cond_32
    const/4 v6, 0x0

    goto :goto_33

    .line 1335
    .end local v21    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "_result":Z
    :sswitch_73
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1339
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1340
    .local v23, "_arg1_length":I
    if-gez v23, :cond_33

    .line 1341
    const/4 v8, 0x0

    .line 1346
    .local v8, "_arg1":[B
    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v27

    .line 1347
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1350
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1344
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":I
    :cond_33
    move/from16 v0, v23

    new-array v8, v0, [B

    .restart local v8    # "_arg1":[B
    goto :goto_34

    .line 1354
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v23    # "_arg1_length":I
    :sswitch_74
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v27

    .line 1356
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    if-eqz v27, :cond_34

    const/4 v6, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1357
    :cond_34
    const/4 v6, 0x0

    goto :goto_35

    .line 1362
    .end local v27    # "_result":Z
    :sswitch_75
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1369
    :sswitch_76
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    sget-object v6, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/RadioAccessFamily;

    .line 1372
    .local v7, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1378
    .end local v7    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_77
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1382
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1383
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v27

    .line 1384
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1390
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_78
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/4 v7, 0x1

    .line 1393
    .local v7, "_arg0":Z
    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v7    # "_arg0":Z
    :cond_35
    const/4 v7, 0x0

    goto :goto_36

    .line 1399
    :sswitch_79
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1402
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v27

    .line 1403
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    if-eqz v27, :cond_36

    const/4 v6, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1404
    :cond_36
    const/4 v6, 0x0

    goto :goto_37

    .line 1409
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_7a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    move-result v27

    .line 1411
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    if-eqz v27, :cond_37

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1412
    :cond_37
    const/4 v6, 0x0

    goto :goto_38

    .line 1417
    .end local v27    # "_result":Z
    :sswitch_7b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    move-result v27

    .line 1419
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    if-eqz v27, :cond_38

    const/4 v6, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1420
    :cond_38
    const/4 v6, 0x0

    goto :goto_39

    .line 1425
    .end local v27    # "_result":Z
    :sswitch_7c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v27

    .line 1427
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    if-eqz v27, :cond_39

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1428
    :cond_39
    const/4 v6, 0x0

    goto :goto_3a

    .line 1433
    .end local v27    # "_result":Z
    :sswitch_7d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v27

    .line 1435
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    if-eqz v27, :cond_3a

    const/4 v6, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1436
    :cond_3a
    const/4 v6, 0x0

    goto :goto_3b

    .line 1441
    .end local v27    # "_result":Z
    :sswitch_7e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v27

    .line 1443
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    if-eqz v27, :cond_3b

    const/4 v6, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1444
    :cond_3b
    const/4 v6, 0x0

    goto :goto_3c

    .line 1449
    .end local v27    # "_result":Z
    :sswitch_7f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    move-result v27

    .line 1451
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    if-eqz v27, :cond_3c

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1452
    :cond_3c
    const/4 v6, 0x0

    goto :goto_3d

    .line 1457
    .end local v27    # "_result":Z
    :sswitch_80
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    move-result v27

    .line 1459
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    if-eqz v27, :cond_3d

    const/4 v6, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1460
    :cond_3d
    const/4 v6, 0x0

    goto :goto_3e

    .line 1465
    .end local v27    # "_result":Z
    :sswitch_81
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    move-result v27

    .line 1467
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    if-eqz v27, :cond_3e

    const/4 v6, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1468
    :cond_3e
    const/4 v6, 0x0

    goto :goto_3f

    .line 1473
    .end local v27    # "_result":Z
    :sswitch_82
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1477
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1478
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->startVoiceLessOtaProvisioning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1484
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_83
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1487
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1488
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1490
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1494
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_84
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 1497
    sget-object v6, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccount;

    .line 1502
    .local v7, "_arg0":Landroid/telecom/PhoneAccount;
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v27

    .line 1503
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1500
    .end local v7    # "_arg0":Landroid/telecom/PhoneAccount;
    .end local v27    # "_result":I
    :cond_3f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_40

    .line 1509
    .end local v7    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_85
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1512
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    .line 1513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1518
    .end local v7    # "_arg0":I
    :sswitch_86
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v27

    .line 1520
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1522
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1526
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_87
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v27

    .line 1528
    .local v27, "_result":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    if-eqz v27, :cond_40

    .line 1530
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/ModemActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1536
    :goto_41
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1534
    :cond_40
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 1540
    .end local v27    # "_result":Landroid/telephony/ModemActivityInfo;
    :sswitch_88
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v27

    .line 1542
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    if-eqz v27, :cond_41

    const/4 v6, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1543
    :cond_41
    const/4 v6, 0x0

    goto :goto_42

    .line 1548
    .end local v27    # "_result":Z
    :sswitch_89
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimFDNEnabled()Z

    move-result v27

    .line 1550
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    if-eqz v27, :cond_42

    const/4 v6, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1551
    :cond_42
    const/4 v6, 0x0

    goto :goto_43

    .line 1556
    .end local v27    # "_result":Z
    :sswitch_8a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1559
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimFDNEnabledForSubscriber(I)Z

    move-result v27

    .line 1560
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    if-eqz v27, :cond_43

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1561
    :cond_43
    const/4 v6, 0x0

    goto :goto_44

    .line 1566
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_8b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v27

    .line 1568
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    if-eqz v27, :cond_44

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1569
    :cond_44
    const/4 v6, 0x0

    goto :goto_45

    .line 1574
    .end local v27    # "_result":Z
    :sswitch_8c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1577
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabledUsingSubID(I)Z

    move-result v27

    .line 1578
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    if-eqz v27, :cond_45

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1579
    :cond_45
    const/4 v6, 0x0

    goto :goto_46

    .line 1584
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_8d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/4 v7, 0x1

    .line 1587
    .local v7, "_arg0":Z
    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 1588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1586
    .end local v7    # "_arg0":Z
    :cond_46
    const/4 v7, 0x0

    goto :goto_47

    .line 1593
    :sswitch_8e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSelectedApn()Ljava/lang/String;

    move-result-object v27

    .line 1595
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1596
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1597
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1601
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_8f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setSelectedApn()V

    .line 1603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1608
    :sswitch_90
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicePhoneServiceState()Landroid/telephony/ServiceState;

    move-result-object v27

    .line 1610
    .local v27, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    if-eqz v27, :cond_47

    .line 1612
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1618
    :goto_48
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1616
    :cond_47
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 1622
    .end local v27    # "_result":Landroid/telephony/ServiceState;
    :sswitch_91
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1625
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicePhoneServiceStateUsingSubId(I)Landroid/telephony/ServiceState;

    move-result-object v27

    .line 1626
    .restart local v27    # "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    if-eqz v27, :cond_48

    .line 1628
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1634
    :goto_49
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1632
    :cond_48
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 1638
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Landroid/telephony/ServiceState;
    :sswitch_92
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v27

    .line 1640
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1646
    .end local v27    # "_result":I
    :sswitch_93
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1649
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateUsingSubId(I)I

    move-result v27

    .line 1650
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1656
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_94
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceState()I

    move-result v27

    .line 1658
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1664
    .end local v27    # "_result":I
    :sswitch_95
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1667
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceStateUsingSubId(I)I

    move-result v27

    .line 1668
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1674
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_96
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v27

    .line 1676
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1678
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1682
    .end local v27    # "_result":[B
    :sswitch_97
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1685
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtrUsingSlotId(I)[B

    move-result-object v27

    .line 1686
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1688
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1692
    .end local v7    # "_arg0":I
    .end local v27    # "_result":[B
    :sswitch_98
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1695
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setTransmitPower(I)Z

    move-result v27

    .line 1696
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    if-eqz v27, :cond_49

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1697
    :cond_49
    const/4 v6, 0x0

    goto :goto_4a

    .line 1702
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_99
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeid()Ljava/lang/String;

    move-result-object v27

    .line 1704
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1710
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_9a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getImei()Ljava/lang/String;

    move-result-object v27

    .line 1712
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1714
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1718
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_9b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetry()I

    move-result v27

    .line 1720
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1726
    .end local v27    # "_result":I
    :sswitch_9c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1730
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1732
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1734
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1736
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1738
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 1739
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1740
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1742
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1746
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_9d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1749
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getFeliCaUimLockStatus(I)I

    move-result v27

    .line 1750
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1756
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_9e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1759
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setUimRemoteLockStatus(I)I

    move-result v27

    .line 1760
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1761
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1766
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_9f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetry()I

    move-result v27

    .line 1768
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1774
    .end local v27    # "_result":I
    :sswitch_a0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSdnAvailable()Z

    move-result v27

    .line 1776
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    if-eqz v27, :cond_4a

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1777
    :cond_4a
    const/4 v6, 0x0

    goto :goto_4b

    .line 1782
    .end local v27    # "_result":Z
    :sswitch_a1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsInternationalRoaming()Z

    move-result v27

    .line 1784
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    if-eqz v27, :cond_4b

    const/4 v6, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1785
    :cond_4b
    const/4 v6, 0x0

    goto :goto_4c

    .line 1790
    .end local v27    # "_result":Z
    :sswitch_a2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsDomesticRoaming()Z

    move-result v27

    .line 1792
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    if-eqz v27, :cond_4c

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1793
    :cond_4c
    const/4 v6, 0x0

    goto :goto_4d

    .line 1798
    .end local v27    # "_result":Z
    :sswitch_a3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1802
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 1804
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1805
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestToRIL([B[BI)I

    move-result v27

    .line 1806
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1809
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":I
    .end local v27    # "_result":I
    :sswitch_a4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v27

    .line 1815
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1817
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1821
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_a5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1824
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1825
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1827
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1831
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_a6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startMobileQualityInformation()V

    .line 1833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1838
    :sswitch_a7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopMobileQualityInformation()V

    .line 1840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1845
    :sswitch_a8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v27

    .line 1847
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1848
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1849
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_a9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getWipiSysInfo()Ljava/lang/String;

    move-result-object v27

    .line 1855
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1857
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1861
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_aa
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteCellInfo()Ljava/lang/String;

    move-result-object v27

    .line 1863
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1864
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1865
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1869
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_ab
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1870
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentUATI()[B

    move-result-object v27

    .line 1871
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1873
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1877
    .end local v27    # "_result":[B
    :sswitch_ac
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1881
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 1882
    sget-object v6, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 1887
    .local v8, "_arg1":Landroid/os/Message;
    :goto_4e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestRawToRIL([BLandroid/os/Message;)I

    move-result v27

    .line 1888
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1885
    .end local v8    # "_arg1":Landroid/os/Message;
    .end local v27    # "_result":I
    :cond_4d
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Message;
    goto :goto_4e

    .line 1894
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":Landroid/os/Message;
    :sswitch_ad
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1897
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1898
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1900
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1904
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_ae
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v27

    .line 1906
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1912
    .end local v27    # "_result":I
    :sswitch_af
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1915
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v27

    .line 1916
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1918
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1922
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_b0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v27

    .line 1924
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1926
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1930
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_b1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1934
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 1935
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->setDmCmd(I[B)[I

    move-result-object v27

    .line 1936
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1938
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1942
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":[I
    :sswitch_b2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1945
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetryForSubscriber(I)I

    move-result v27

    .line 1946
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1948
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1952
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_b3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1955
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetryForSubscriber(I)I

    move-result v27

    .line 1956
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1962
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_b4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1965
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v27

    .line 1966
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    if-eqz v27, :cond_4e

    const/4 v6, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1967
    :cond_4e
    const/4 v6, 0x0

    goto :goto_4f

    .line 1972
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_b5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1975
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotOnOff(I)V

    .line 1976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1977
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1981
    .end local v7    # "_arg0":I
    :sswitch_b6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v7, 0x1

    .line 1984
    .local v7, "_arg0":Z
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotActivation(Z)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1983
    .end local v7    # "_arg0":Z
    :cond_4f
    const/4 v7, 0x0

    goto :goto_50

    .line 1990
    :sswitch_b7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1991
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNetworkSearchTimer()V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1997
    :sswitch_b8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNetworkSearchTimer()V

    .line 1999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2000
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2004
    :sswitch_b9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2005
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNoSvcChkTimer()V

    .line 2006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2011
    :sswitch_ba
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNoSvcChkTimer()V

    .line 2013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2018
    :sswitch_bb
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2022
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2023
    .restart local v8    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateAkaResponse([B[B)Ljava/lang/String;

    move-result-object v27

    .line 2024
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2026
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2030
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_bc
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2034
    .restart local v7    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2035
    .restart local v8    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v27

    .line 2036
    .local v27, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    if-eqz v27, :cond_50

    .line 2038
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2044
    :goto_51
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2042
    :cond_50
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_51

    .line 2048
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":Landroid/os/Bundle;
    :sswitch_bd
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2051
    .restart local v7    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v27

    .line 2052
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2054
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2058
    .end local v7    # "_arg0":[B
    .end local v27    # "_result":[B
    :sswitch_be
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2062
    .restart local v7    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2064
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2065
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 2066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2067
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2071
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_bf
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2074
    .restart local v7    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setEPSLOCI([B)V

    .line 2075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2080
    .end local v7    # "_arg0":[B
    :sswitch_c0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2083
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    .line 2084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2085
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2089
    .end local v7    # "_arg0":I
    :sswitch_c1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v27

    .line 2091
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2097
    .end local v27    # "_result":I
    :sswitch_c2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2100
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimForegroundPhoneId(I)V

    .line 2101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2106
    .end local v7    # "_arg0":I
    :sswitch_c3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMultiSimForegroundPhoneId()I

    move-result v27

    .line 2108
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2109
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2114
    .end local v27    # "_result":I
    :sswitch_c4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsCall()Z

    move-result v27

    .line 2116
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    if-eqz v27, :cond_51

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2117
    :cond_51
    const/4 v6, 0x0

    goto :goto_52

    .line 2122
    .end local v27    # "_result":Z
    :sswitch_c5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/4 v7, 0x1

    .line 2125
    .local v7, "_arg0":Z
    :goto_53
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setBTUserWantsAudioOn(Z)V

    .line 2126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2124
    .end local v7    # "_arg0":Z
    :cond_52
    const/4 v7, 0x0

    goto :goto_53

    .line 2131
    :sswitch_c6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setBTUserWantsSwitchAudio()V

    .line 2133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2138
    :sswitch_c7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyVoIPCallStateChangeIntoBT()V

    .line 2140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2145
    :sswitch_c8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2146
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualBTConnection()Z

    move-result v27

    .line 2147
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    if-eqz v27, :cond_53

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2149
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2148
    :cond_53
    const/4 v6, 0x0

    goto :goto_54

    .line 2153
    .end local v27    # "_result":Z
    :sswitch_c9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2157
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2159
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 2160
    .local v9, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v27

    .line 2161
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2163
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2167
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v27    # "_result":[B
    :sswitch_ca
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2171
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2172
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_decryptsms(I[B)[B

    move-result-object v27

    .line 2173
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2174
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2175
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2179
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":[B
    :sswitch_cb
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2183
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2185
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 2186
    .restart local v9    # "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v27

    .line 2187
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2189
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2193
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v27    # "_result":[B
    :sswitch_cc
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->checkNSRIUSIMstate_int()I

    move-result v27

    .line 2195
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2196
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2197
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2201
    .end local v27    # "_result":I
    :sswitch_cd
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2205
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2206
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->NSRI_requestProc(I[B)[B

    move-result-object v27

    .line 2207
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2209
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2213
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":[B
    :sswitch_ce
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2216
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v27

    .line 2217
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    if-eqz v27, :cond_54

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2218
    :cond_54
    const/4 v6, 0x0

    goto :goto_55

    .line 2223
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_cf
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2227
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2228
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnTypeAvailableUsingSubId(Ljava/lang/String;I)Z

    move-result v27

    .line 2229
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2230
    if-eqz v27, :cond_55

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2231
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2230
    :cond_55
    const/4 v6, 0x0

    goto :goto_56

    .line 2235
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_d0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEuimid()Ljava/lang/String;

    move-result-object v27

    .line 2237
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2239
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2243
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_d1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2247
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2249
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2250
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    .line 2251
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2252
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2257
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_result":I
    :sswitch_d2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2261
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/4 v8, 0x1

    .line 2262
    .local v8, "_arg1":Z
    :goto_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/ITelephony$Stub;->setAirplaneMode(Ljava/lang/String;Z)I

    move-result v27

    .line 2263
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2261
    .end local v8    # "_arg1":Z
    .end local v27    # "_result":I
    :cond_56
    const/4 v8, 0x0

    goto :goto_57

    .line 2269
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_d3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUAField()Ljava/lang/String;

    move-result-object v27

    .line 2271
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2273
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2277
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_d4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2278
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->validateMsisdn()I

    move-result v27

    .line 2279
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2280
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2285
    .end local v27    # "_result":I
    :sswitch_d5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveFgCallState()Z

    move-result v27

    .line 2287
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    if-eqz v27, :cond_57

    const/4 v6, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2289
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2288
    :cond_57
    const/4 v6, 0x0

    goto :goto_58

    .line 2293
    .end local v27    # "_result":Z
    :sswitch_d6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2297
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2299
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 2300
    .local v25, "_arg2_length":I
    if-gez v25, :cond_58

    .line 2301
    const/4 v9, 0x0

    .line 2306
    .local v9, "_arg2":[B
    :goto_59
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v27

    .line 2307
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2308
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2310
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2304
    .end local v9    # "_arg2":[B
    .end local v27    # "_result":I
    :cond_58
    move/from16 v0, v25

    new-array v9, v0, [B

    .restart local v9    # "_arg2":[B
    goto :goto_59

    .line 2314
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":[B
    .end local v25    # "_arg2_length":I
    :sswitch_d7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDisable2g()I

    move-result v27

    .line 2316
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2322
    .end local v27    # "_result":I
    :sswitch_d8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2325
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setDisable2g(I)Z

    move-result v27

    .line 2326
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    if-eqz v27, :cond_59

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2327
    :cond_59
    const/4 v6, 0x0

    goto :goto_5a

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0xd7 -> :sswitch_d7
        0xd8 -> :sswitch_d8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
