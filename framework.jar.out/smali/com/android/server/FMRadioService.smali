.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_BACKGROUND_PLAY:Ljava/lang/String; = "com.android.backgroung.playing"

.field private static final ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_RECORDING_SAVE:Ljava/lang/String; = "com.samsung.media.fmradio.rec_save"

.field private static final ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final FACTORY_APP_NAME:Ljava/lang/String; = "com.sec.factory.app.fm"

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PACKAGE_NAME_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final PARAMETER_AFRMSSI_SAMPLES:Ljava/lang/String; = "AFRMSSISamples"

.field private static final PARAMETER_AFRMSSI_TH:Ljava/lang/String; = "AFRMSSIThreshold"

.field private static final PARAMETER_AF_TH:Ljava/lang/String; = "AF_th"

.field private static final PARAMETER_AF_VALID_TH:Ljava/lang/String; = "AFValid_th"

.field private static final PARAMETER_BLEND_PAMD_TH:Ljava/lang/String; = "BlendPAMD_th"

.field private static final PARAMETER_BLEND_RMSSI:Ljava/lang/String; = "BlendRmssi"

.field private static final PARAMETER_BLEND_RSSI_TH:Ljava/lang/String; = "BlendRSSI_th"

.field private static final PARAMETER_BLEND_SINR:Ljava/lang/String; = "BlendSinr"

.field private static final PARAMETER_CFO_TH:Ljava/lang/String; = "CFOTh12"

.field private static final PARAMETER_CURRENT_RSSI:Ljava/lang/String; = "CurrentRSSI"

.field private static final PARAMETER_CURRENT_SNR:Ljava/lang/String; = "CurrentSNR"

.field private static final PARAMETER_DESENSE_LIST:Ljava/lang/String; = "DeSenseList"

.field private static final PARAMETER_DE_CONSTANT:Ljava/lang/String; = "DEConstant"

.field private static final PARAMETER_FAKE_CHANNEL:Ljava/lang/String; = "FakeChannel"

.field private static final PARAMETER_FIRST_CNT_TH:Ljava/lang/String; = "Cnt_th"

.field private static final PARAMETER_FIRST_RSSI_TH:Ljava/lang/String; = "RSSI_th"

.field private static final PARAMETER_FIRST_SNR_TH:Ljava/lang/String; = "SNR_th"

.field public static final PARAMETER_FREQUENCY_OFFSET_TH:Ljava/lang/String; = "FrequencyOffset_th"

.field private static final PARAMETER_GOOD_CH_RMSSI_TH:Ljava/lang/String; = "GoodChannelRMSSIThreshold"

.field private static final PARAMETER_HYBRID_SEARCH:Ljava/lang/String; = "HybridSearch"

.field public static final PARAMETER_NOISE_POWER_TH:Ljava/lang/String; = "NoisePower_th"

.field private static final PARAMETER_OFF_CHANNEL_TH:Ljava/lang/String; = "OffChannelThreshold"

.field private static final PARAMETER_ON_CHANNEL_TH:Ljava/lang/String; = "OnChannelThreshold"

.field public static final PARAMETER_PILOT_POWER_TH:Ljava/lang/String; = "PilotPower_th"

.field private static final PARAMETER_RMSSI_FIRST_STAGE:Ljava/lang/String; = "RMSSIFirstStage"

.field private static final PARAMETER_SEARCH_ALGO_TYPE:Ljava/lang/String; = "SearchAlgoType"

.field private static final PARAMETER_SECOND_CNT_TH:Ljava/lang/String; = "Cnt_th_2"

.field private static final PARAMETER_SECOND_RSSI_TH:Ljava/lang/String; = "RSSI_th_2"

.field private static final PARAMETER_SECOND_SNR_TH:Ljava/lang/String; = "SNR_th_2"

.field private static final PARAMETER_SEEK_DC:Ljava/lang/String; = "SeekDC"

.field private static final PARAMETER_SEEK_DESENSE_RSSI:Ljava/lang/String; = "SeekDesenseRSSI"

.field private static final PARAMETER_SEEK_QA:Ljava/lang/String; = "SeekQA"

.field private static final PARAMETER_SEEK_RSSI:Ljava/lang/String; = "SeekRSSI"

.field private static final PARAMETER_SEEK_SMG:Ljava/lang/String; = "SeekSMG"

.field private static final PARAMETER_SEEK_SNR:Ljava/lang/String; = "SeekSNR"

.field private static final PARAMETER_SINR_FIRST_STAGE:Ljava/lang/String; = "SINRFirstStage"

.field private static final PARAMETER_SINR_SAMPLES:Ljava/lang/String; = "SINRSamples"

.field private static final PARAMETER_SINR_TH:Ljava/lang/String; = "SINRThreshold"

.field private static final PARAMETER_SKIP_TUNNING_VALUE:Ljava/lang/String; = "SkipTuningValue"

.field private static final PARAMETER_SOFTMUTE_TH:Ljava/lang/String; = "Softmute_th"

.field public static final PARAMETER_SOFT_STEREO_BLEND_COEFF:Ljava/lang/String; = "SoftStereoBlendCoeff"

.field public static final PAUSED:I = 0xb

.field private static final RECORDING_END:I = 0x0

.field private static final RECORDING_START:I = 0x1

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static curFreq:J

.field private static final mFMRadioServiceLock:Ljava/lang/Object;

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z

.field private static mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;


# instance fields
.field private SetPropertyPermission:Ljava/lang/String;

.field private VolumePropertyname:Ljava/lang/String;

.field private alarmTTSPlay:Z

.field private bmObserver:Landroid/database/ContentObserver;

.field private fos:Ljava/io/FileOutputStream;

.field private isFMBackGroundPlaying:Z

.field private mAFEnable:Z

.field private mAfRmssisampleCnt_th:I

.field private mAfRmssith_th:I

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mBikeMode:Z

.field private mBlendPAMD_th:I

.field private mBlendRSSI_th:I

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mChipVendor:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private mDNSEnable:Z

.field private final mEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field private mFreqOffset_th:I

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsKeepRecoding:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mIsphoneCall:Z

.field private mIsphoneCallRinging:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMarvell_cmi:I

.field private mMarvell_rssi:I

.field private mMtk_blendpamd_th:I

.field private mMtk_blendrssi_th:I

.field private mMtk_rssi:I

.field private mMtk_seekdesenserssi:I

.field private mMtk_seeksmg:I

.field private mMtk_softmute_th:I

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mNoisePwr_th:I

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPilotPwr_th:I

.field private mPlayerNative:Lcom/android/server/FMPlayerNative;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_af_rmssisamplecnt:I

.field private mQualcomm_af_rmssith:I

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRichwave_rssi:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private mSeekDesenseRSSI:I

.field private mSeekSMG:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSilicon_cnt:I

.field private mSilicon_rssi:I

.field private mSilicon_snr:I

.field private mSlsi_blendcoeff:I

.field private mSlsi_ifcount1:I

.field private mSlsi_ifcount2:I

.field private mSlsi_rssi:I

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private mSoftMuteCoeff:J

.field private mSoftStereoBlendCoeff:J

.field private mSoftmute_th:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private mgoodChrmssi_th:I

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    .line 148
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    .line 157
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 285
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    return-void

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/16 v5, 0xa

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1547
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    .line 134
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    .line 145
    const-wide/16 v6, -0x2

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 156
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 163
    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    .line 164
    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    .line 166
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    .line 231
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    .line 238
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    .line 247
    const-string v2, "com.sec.android.app.fm.permission.setproperty"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    .line 248
    const-string/jumbo v2, "service.brcm.fm.volumetable"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    .line 250
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 251
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 252
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 253
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 254
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 255
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 256
    iput v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 257
    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 258
    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 259
    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 260
    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 261
    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 262
    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 263
    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    .line 264
    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    .line 265
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mSoftMuteCoeff:J

    .line 266
    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 267
    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 268
    iput v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 269
    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 270
    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    .line 272
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 273
    iput v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 274
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 279
    iput-object v10, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 280
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 281
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 282
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 283
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 288
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 290
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    .line 297
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 300
    iput v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    .line 303
    iput v4, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    .line 304
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    .line 305
    iput v3, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    .line 306
    const/16 v2, -0x71

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    .line 307
    const/16 v2, 0x6d

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    .line 308
    const/16 v2, 0x73

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    .line 309
    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    .line 310
    const/16 v2, 0x3a98

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    .line 311
    const/16 v2, 0x35

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    .line 312
    const/16 v2, 0x50

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    .line 313
    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_rssi:I

    .line 314
    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_cmi:I

    .line 315
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    .line 316
    const/16 v2, 0x92

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_rssi:I

    .line 317
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 318
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 319
    const/16 v2, 0xc64

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:I

    .line 320
    const/16 v2, -0x6f

    iput v2, p0, Lcom/android/server/FMRadioService;->mMtk_rssi:I

    .line 321
    const/16 v2, -0x60

    iput v2, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 322
    const/16 v2, 0x32c8

    iput v2, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 323
    const/16 v2, 0xf

    iput v2, p0, Lcom/android/server/FMRadioService;->mMtk_softmute_th:I

    .line 324
    const/16 v2, -0x41

    iput v2, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 325
    const/16 v2, -0x1e

    iput v2, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 327
    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 488
    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    .line 519
    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 532
    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    .line 738
    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 801
    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 824
    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 912
    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    .line 946
    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 970
    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1012
    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    .line 1085
    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1113
    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 1145
    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    .line 2438
    iput-object v10, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 3744
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 3756
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    .line 3779
    new-instance v2, Lcom/android/server/FMRadioService$17;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    .line 1548
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 1549
    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 1550
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 1551
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1553
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1555
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1558
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1559
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1562
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1565
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v1, "intentFilterVol":Landroid/content/IntentFilter;
    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1567
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1570
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.fm.volume_lock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1571
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1573
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.fm.volume_unlock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1574
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1577
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    .line 1579
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAirPlaneEnabled flag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1580
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1581
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1583
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1584
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1586
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1587
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1588
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1589
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1590
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1591
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1593
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    .line 1594
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    .line 1596
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    .line 1598
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readChipVendor()V

    .line 1599
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    .line 1600
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    .line 1603
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isBikeMode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1604
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isBikeMode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 1606
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 1607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1609
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1610
    const-string v2, "exynos4"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "msm8960"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1611
    :cond_0
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1612
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1613
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1614
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 1633
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1634
    const-string/jumbo v2, "rhea"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "capri"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "hawaii"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "java"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "sc8810"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "sc8825"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "sc6820i"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "scx15"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "u2"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1638
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    .line 1642
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 1577
    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 1604
    goto/16 :goto_1

    .line 1615
    :cond_6
    const-string/jumbo v2, "msm7627a"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "msm7k"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1616
    :cond_7
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1617
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1618
    const-string v2, "1"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1619
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_2

    .line 1620
    :cond_8
    const-string/jumbo v2, "montblanc"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1621
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1622
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1623
    const-string v2, "114,115,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1624
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_2

    .line 1625
    :cond_9
    const-string/jumbo v2, "mrvl"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1626
    const-string v2, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1627
    const-string/jumbo v2, "wakeup"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1628
    const-string v2, "enabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1629
    const-string v2, "disabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private SkipTuning_Value()V
    .locals 2

    .prologue
    .line 2884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2885
    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;ZIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/FMRadioService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/FMRadioService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    return v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/FMRadioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/FMRadioService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/FMRadioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleBikeMode()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->stopInternetStreaming()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2258
    const-string v0, "Lock is held"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2260
    :cond_0
    return-void
.end method

.method private checkForWakeLockRelease()V
    .locals 1

    .prologue
    .line 2555
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-nez v0, :cond_0

    .line 2556
    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2557
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2559
    :cond_0
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    return-void
.end method

.method private closeFile()V
    .locals 2

    .prologue
    .line 3524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 3525
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    :cond_0
    :goto_0
    return-void

    .line 3527
    :catch_0
    move-exception v0

    .line 3529
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .locals 4
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .prologue
    .line 2834
    if-eqz p1, :cond_0

    .line 2835
    array-length v2, p1

    new-array v1, v2, [J

    .line 2836
    .local v1, "longArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2837
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2842
    .end local v0    # "i":I
    .end local v1    # "longArray":[J
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private getAFRMSSISamples()I
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method private getAFRMSSIThreshold()I
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getAFValid_th()I
    .locals 1

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method private getAF_th()I
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAF_th()I

    move-result v0

    return v0
.end method

.method private getBlendPAMD_th()I
    .locals 1

    .prologue
    .line 3155
    iget v0, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    return v0
.end method

.method private getBlendRSSI_th()I
    .locals 1

    .prologue
    .line 3146
    iget v0, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    return v0
.end method

.method private getBlendRmssi()I
    .locals 1

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getBlendRmssi()I

    move-result v0

    return v0
.end method

.method private getBlendSinr()I
    .locals 1

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getBlendSinr()I

    move-result v0

    return v0
.end method

.method private getCFOTh12()I
    .locals 1

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method private getCnt_th()I
    .locals 1

    .prologue
    .line 2897
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method private getCnt_th_2()I
    .locals 1

    .prologue
    .line 2909
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method private getDeSenseList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFakeChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFrequencyOffsetThreshold()I
    .locals 1

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0
.end method

.method private getGoodChannelRMSSIThreshold()I
    .locals 1

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getHybridSearch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNoisePowerThreshold()I
    .locals 1

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getNoisePowerThreshold()I

    move-result v0

    return v0
.end method

.method private getOffChannelThreshold()I
    .locals 1

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getOnChannelThreshold()I
    .locals 1

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getPilotPowerThreshold()I
    .locals 1

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getPilotPowerThreshold()I

    move-result v0

    return v0
.end method

.method private getPropertyProductName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3765
    const/4 v0, 0x0

    .line 3766
    .local v0, "productName":Ljava/lang/String;
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3767
    return-object v0
.end method

.method private getRMSSIFirstStage()I
    .locals 1

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method private getRSSI_th()I
    .locals 1

    .prologue
    .line 2889
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method private getRSSI_th_2()I
    .locals 1

    .prologue
    .line 2901
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method private getSINRFirstStage()I
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method private getSINRSamples()I
    .locals 1

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method private getSINRThreshold()I
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method private getSNR_th()I
    .locals 1

    .prologue
    .line 2893
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method private getSNR_th_2()I
    .locals 1

    .prologue
    .line 2905
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method private getSearchAlgoType()I
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method private getSeekDC()I
    .locals 1

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSeekDC()I

    move-result v0

    return v0
.end method

.method private getSeekDesenseRSSI()I
    .locals 1

    .prologue
    .line 3119
    iget v0, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    return v0
.end method

.method private getSeekQA()I
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSeekQA()I

    move-result v0

    return v0
.end method

.method private getSeekSMG()I
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    return v0
.end method

.method private getSoftStereoBlendCoeff()J
    .locals 2

    .prologue
    .line 3108
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    return-wide v0
.end method

.method private getSoftmute_th()I
    .locals 1

    .prologue
    .line 3137
    iget v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    return v0
.end method

.method private handleBikeMode()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3770
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isBikeMode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 3771
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    if-eqz v0, :cond_1

    .line 3772
    const-string v0, "bike mode enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3773
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 3778
    :goto_0
    return-void

    .line 3775
    :cond_1
    const-string v0, "bike mode disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isValidPackage()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1970
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1971
    .local v2, "pkgName":[Ljava/lang/String;
    aget-object v1, v2, v3

    .line 1973
    .local v1, "mPackageName":Ljava/lang/String;
    const-string v4, "com.sec.android.app.fm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.nextradioapp.nextradio"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.factory.app.fm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown App is trying to turn on Radio. So just return. mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1978
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1540
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .locals 12
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2273
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: reasonCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2276
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v6, :cond_1

    .line 2278
    if-eqz p3, :cond_0

    .line 2279
    const-string/jumbo v5, "offInternal :: remove audiofocus "

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2280
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 2287
    :cond_1
    if-nez p3, :cond_a

    move v6, v4

    :goto_1
    :try_start_1
    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 2288
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2289
    if-eqz p1, :cond_b

    .line 2290
    iget v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    if-eq v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: mReturnBackVolume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2292
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v7

    iget v8, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2294
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 2296
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v6, :cond_3

    .line 2297
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 2300
    :cond_3
    const-string v2, "fmradio_turnon=false"

    .line 2301
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2303
    iget v6, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v6, v10, :cond_4

    .line 2304
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/FMPlayerNative;->setVolume(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2307
    const-wide/16 v6, 0xfa

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2313
    :cond_4
    :goto_2
    :try_start_3
    const-string/jumbo v6, "offInternal Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2319
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :goto_3
    if-nez p3, :cond_c

    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 2321
    iget v6, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v6, v10, :cond_5

    iget v6, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v6, v11, :cond_d

    :cond_5
    const/4 v6, 0x3

    if-ne p2, v6, :cond_d

    .line 2322
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->offFMService()V

    .line 2327
    :goto_5
    const-string/jumbo v6, "off returned from native"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2328
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2329
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2330
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2331
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 2333
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2335
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-nez v6, :cond_7

    .line 2336
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    .line 2337
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    .line 2343
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v6, :cond_6

    .line 2344
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    .line 2346
    :cond_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    .line 2347
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2348
    if-eqz p3, :cond_7

    .line 2349
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterEmegencyStateChangedListener()V

    .line 2351
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 2353
    if-eqz p3, :cond_8

    .line 2354
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2356
    :cond_8
    const/4 v6, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2359
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V

    .line 2363
    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "mrvl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2364
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 2365
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v6}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 2366
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2386
    :cond_9
    :goto_6
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2273
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_a
    move v6, v5

    .line 2287
    goto/16 :goto_1

    .line 2308
    .restart local v2    # "keyValuePairs":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 2382
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2386
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v4, v5

    .line 2388
    goto/16 :goto_0

    .line 2316
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_8
    const-string/jumbo v6, "offInternal NOT Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 2386
    :catchall_1
    move-exception v4

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_c
    move v6, v5

    .line 2319
    goto/16 :goto_4

    .line 2324
    :cond_d
    :try_start_a
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->off()V

    goto/16 :goto_5

    .line 2368
    :cond_e
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v7, "input"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2370
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v7, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eq v6, v7, :cond_9

    if-eqz v1, :cond_9

    .line 2372
    :try_start_b
    const-string v6, "com.sec.android.app.fm"

    iget-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v8, "114,115"

    invoke-virtual {v1, v6, v7, v8}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2376
    :goto_7
    :try_start_c
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    goto :goto_6

    .line 2373
    :catch_2
    move-exception v3

    .line 2374
    .local v3, "se":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7
.end method

.method private declared-synchronized on(Z)Z
    .locals 11
    .param p1, "isAudioFocusNeeded"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1982
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 2134
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 1985
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    if-nez v5, :cond_0

    .line 1988
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-nez v5, :cond_0

    .line 1991
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    .line 1993
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    if-nez v5, :cond_0

    .line 1997
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "zen_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2001
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v5, :cond_0

    .line 2005
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    move v3, v4

    .line 2006
    goto :goto_0

    .line 2009
    :cond_3
    if-nez p1, :cond_4

    :try_start_2
    sget-boolean v5, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v5, :cond_5

    .line 2010
    :cond_4
    const-string v5, "AudioFocusListener registered"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2011
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2017
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2018
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_12

    .line 2019
    const-string/jumbo v5, "on returned from native"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2021
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2022
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2023
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 2024
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v5, :cond_6

    .line 2025
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2125
    :catch_0
    move-exception v0

    .line 2126
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2127
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2128
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2129
    const-string/jumbo v4, "on is failed by exception :: remove audiofocus "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2130
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2131
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2132
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1982
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2014
    :cond_5
    :try_start_4
    const-string v5, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2027
    :cond_6
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 2028
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 2029
    const-string/jumbo v5, "setRadioSpeakerOn() is called."

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2031
    :cond_7
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2033
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v5, v4, :cond_8

    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v5, v10, :cond_9

    .line 2034
    :cond_8
    const-string v5, "ON"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2035
    const-string/jumbo v5, "set softmute : true"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2036
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 2044
    :cond_9
    :goto_2
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v5, v10, :cond_d

    .line 2046
    iget v5, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    .line 2047
    iget v5, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    .line 2048
    iget v5, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    .line 2049
    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    .line 2050
    iget v5, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    .line 2051
    iget v5, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    .line 2052
    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    .line 2053
    iget v5, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    .line 2054
    iget v5, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    .line 2055
    iget v5, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    .line 2056
    iget v5, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    .line 2080
    :cond_a
    :goto_3
    iget v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setBand(I)V

    .line 2081
    iget v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    .line 2082
    iget v5, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v6, v5

    invoke-direct {p0, v6, v7}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    .line 2084
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    .line 2086
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    .line 2087
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    .line 2091
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.backgroung.playing"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2093
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerEmergencyStateChangedListener()V

    .line 2097
    iget-object v5, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v6, "mrvl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2098
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 2099
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 2100
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    .line 2114
    :cond_b
    :goto_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    move v3, v4

    .line 2116
    goto/16 :goto_0

    .line 2037
    :cond_c
    const-string v5, "OFF"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2038
    const-string/jumbo v5, "set softmute : false"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2039
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    goto/16 :goto_2

    .line 2057
    :cond_d
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_e

    .line 2058
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    .line 2059
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setFrequencyOffsetThreshold(I)V

    .line 2060
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setNoisePowerThreshold(I)V

    .line 2061
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setPilotPowerThreshold(I)V

    goto/16 :goto_3

    .line 2062
    :cond_e
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_f

    .line 2063
    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v7, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    .line 2064
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNative;->setStereo()V

    .line 2065
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/FMPlayerNative;->setSoftStereoBlendCoeff(J)V

    .line 2066
    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mSoftMuteCoeff:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_a

    .line 2067
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mSoftMuteCoeff:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/FMPlayerNative;->setSoftMuteCoeff(J)V

    goto/16 :goto_3

    .line 2068
    :cond_f
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_10

    .line 2069
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    .line 2070
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setSeekDesenseRSSI(I)V

    .line 2071
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setSeekSMG(I)V

    .line 2072
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setSoftmute_th(I)V

    .line 2073
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setBlendRSSI_th(I)V

    .line 2074
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setBlendPAMD_th(I)V

    goto/16 :goto_3

    .line 2076
    :cond_10
    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v7, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto/16 :goto_3

    .line 2102
    :cond_11
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v6, "input"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2104
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v6, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v5, v6, :cond_b

    if-eqz v1, :cond_b

    .line 2106
    :try_start_5
    const-string v5, "com.sec.android.app.fm"

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v7, "114,115"

    invoke-virtual {v1, v5, v6, v7}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2110
    :goto_5
    :try_start_6
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v5, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    goto/16 :goto_4

    .line 2107
    :catch_1
    move-exception v2

    .line 2108
    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 2118
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_12
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2119
    const-string/jumbo v4, "on is failed :: remove audiofocus "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2122
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private openFile()V
    .locals 4

    .prologue
    .line 3503
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3505
    .local v1, "fileFMRadio":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3507
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3515
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3520
    :goto_1
    return-void

    .line 3508
    :catch_0
    move-exception v0

    .line 3510
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3516
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3518
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private queueUpdate(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1521
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1522
    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1526
    return-void
.end method

.method private readChipVendor()V
    .locals 2

    .prologue
    .line 1175
    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChipVendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method private readParametersForCurrentRegion()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1466
    :try_start_0
    const-string v1, "87500_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1479
    :goto_0
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v1, :sswitch_data_0

    .line 1489
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1495
    :goto_1
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sparse-switch v1, :sswitch_data_1

    .line 1505
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 1517
    :goto_2
    return-void

    .line 1469
    :cond_0
    const-string v1, "76000_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1471
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1513
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1514
    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1515
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    .line 1472
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "76000_90000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1474
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    .line 1476
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    .line 1481
    :sswitch_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    .line 1485
    :sswitch_1
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    .line 1497
    :sswitch_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    .line 1501
    :sswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1479
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 1495
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_2
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1181
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_0

    .line 1182
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPropertyProductName()Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, "productName":Ljava/lang/String;
    const-string/jumbo v4, "zerolte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1184
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    .end local v1    # "productName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, ""

    .line 1195
    .local v2, "start_mute":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1196
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_1
    const-string v3, ""

    .line 1201
    .local v3, "start_snr":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1202
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_2
    const-string v4, ""

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1207
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_6

    .line 1208
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1210
    const-string v4, "2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1212
    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1462
    :cond_3
    :goto_1
    return-void

    .line 1186
    .end local v2    # "start_mute":Ljava/lang/String;
    .end local v3    # "start_snr":Ljava/lang/String;
    .restart local v1    # "productName":Ljava/lang/String;
    :cond_4
    const-string v4, "j2lte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1187
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_5
    const-string/jumbo v4, "on7x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1189
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1214
    .end local v1    # "productName":Ljava/lang/String;
    .restart local v2    # "start_mute":Ljava/lang/String;
    .restart local v3    # "start_snr":Ljava/lang/String;
    :cond_6
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_7

    .line 1215
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1217
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1219
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1

    .line 1221
    :cond_7
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_8

    .line 1222
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1223
    iput v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1224
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1

    .line 1225
    :cond_8
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_9

    .line 1226
    const-string v4, "3"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1228
    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1230
    const-string v4, "-2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1232
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1233
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1234
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1235
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1236
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1237
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1238
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1239
    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1240
    :cond_9
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    .line 1241
    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    goto/16 :goto_1

    .line 1242
    :cond_a
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b

    .line 1243
    const-string v4, "103"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1245
    const-string v4, "1500"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1247
    const-string v4, "176"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1249
    const-string v4, "400"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    .line 1251
    :cond_b
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_c

    .line 1252
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_rssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1253
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1254
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1255
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    goto/16 :goto_1

    .line 1256
    :cond_c
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 1257
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_rssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1258
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 1259
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 1260
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_softmute_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1261
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 1262
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    goto/16 :goto_1

    .line 1265
    :cond_d
    sget-object v4, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuning value size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1268
    array-length v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuning value size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1271
    :pswitch_0
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_e

    .line 1272
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1277
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1279
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1281
    :cond_e
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_f

    .line 1282
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1283
    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1285
    const-string v4, "-2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1287
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1288
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1289
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1290
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1291
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1292
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1293
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1294
    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1295
    :cond_f
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_10

    .line 1296
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v4, "103"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1301
    const-string v4, "1500"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1303
    const-string v4, "176"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1305
    const-string v4, "400"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    .line 1307
    :cond_10
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_11

    .line 1308
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1309
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1310
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1311
    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    goto/16 :goto_1

    .line 1312
    :cond_11
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_12

    .line 1313
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1314
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 1315
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 1316
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_softmute_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1317
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 1318
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    goto/16 :goto_1

    .line 1321
    :cond_12
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1322
    iput v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1323
    iput v6, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1329
    :pswitch_1
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_3

    .line 1330
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1331
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1332
    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1334
    const-string v4, "-2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1336
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1337
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1338
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1339
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1340
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1341
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1342
    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1348
    :pswitch_2
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_13

    .line 1349
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1350
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 1351
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 1352
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_softmute_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1353
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 1354
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    goto/16 :goto_1

    .line 1356
    :cond_13
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1357
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1358
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1364
    :pswitch_3
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_14

    .line 1365
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1366
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1367
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1368
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1369
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1370
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1371
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1372
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1373
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1374
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1375
    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1376
    :cond_14
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_15

    .line 1377
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1378
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1379
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1380
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    .line 1381
    :cond_15
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    .line 1382
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1383
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1384
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1385
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSoftMuteCoeff:J

    goto/16 :goto_1

    .line 1386
    :cond_16
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    .line 1387
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1388
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 1389
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 1390
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1391
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 1392
    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    goto/16 :goto_1

    .line 1394
    :cond_17
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1395
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1396
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1397
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_3

    .line 1398
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1406
    :pswitch_4
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_18

    .line 1407
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1408
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1409
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1410
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1411
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 1412
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1413
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1414
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1415
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1416
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1417
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    goto/16 :goto_1

    .line 1418
    :cond_18
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_19

    .line 1419
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1420
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1421
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1422
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    .line 1423
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v10

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1426
    :cond_19
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1427
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1428
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1429
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_3

    .line 1430
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    aget-object v5, v0, v9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string/jumbo v4, "service.brcm.fm.stop_snr"

    aget-object v5, v0, v10

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1439
    :pswitch_5
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1a

    .line 1440
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1441
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 1442
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 1443
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1444
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 1445
    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    goto/16 :goto_1

    .line 1447
    :cond_1a
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1448
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1449
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1450
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1451
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1452
    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    goto/16 :goto_1

    .line 1268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1136
    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method private registerAllSoundOffListener()V
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1103
    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1105
    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1106
    return-void
.end method

.method private registerBatteryListener()V
    .locals 3

    .prologue
    .line 1645
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1648
    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1649
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1650
    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1651
    return-void
.end method

.method private registerEmergencyStateChangedListener()V
    .locals 3

    .prologue
    .line 1164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1165
    .local v0, "intentEmergencyFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1167
    const-string/jumbo v1, "registering Emergency State Changed Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private registerMusicCommandRec()V
    .locals 3

    .prologue
    .line 2140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2141
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2142
    const-string/jumbo v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2149
    return-void
.end method

.method private registerSetPropertyListener()V
    .locals 5

    .prologue
    .line 1676
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1677
    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1678
    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1679
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1680
    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1681
    return-void
.end method

.method private registerSystemListener()V
    .locals 3

    .prologue
    .line 1659
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1660
    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1661
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1663
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1664
    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1665
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1666
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1668
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1669
    return-void
.end method

.method private registerTelephonyListener()V
    .locals 5

    .prologue
    .line 2160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2162
    .local v0, "id":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2171
    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2172
    return-void

    .line 2164
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2250
    const-string v0, "Lock is released"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2252
    :cond_0
    return-void
.end method

.method private remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 2423
    sget-object v4, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2424
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2425
    :cond_0
    monitor-exit v4

    .line 2436
    :goto_0
    return-void

    .line 2427
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2428
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2429
    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 2430
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2431
    .local v0, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2432
    monitor-exit v4

    goto :goto_0

    .line 2435
    .end local v0    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2427
    .restart local v1    # "i":I
    .restart local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2435
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private respondAudioFocusChangeForDns(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 584
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x0

    .line 587
    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 601
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 589
    :pswitch_1
    const-string v0, "com.sec.android.app.dns.action.stop_internet_stream"

    .line 590
    goto :goto_1

    .line 593
    :pswitch_2
    const-string v0, "com.sec.android.app.dns.action.pause_internet_stream"

    .line 594
    goto :goto_1

    .line 596
    :pswitch_3
    const-string v0, "com.sec.android.app.dns.action.resume_internet_stream"

    .line 597
    goto :goto_1

    .line 587
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .locals 12
    .param p1, "focusEvent"    # I

    .prologue
    const-wide/16 v10, -0x2

    const/16 v8, 0xc8

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 606
    packed-switch p1, :pswitch_data_0

    .line 734
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 609
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 610
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_1

    .line 611
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 616
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_2

    .line 617
    const-string v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 618
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 624
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 625
    invoke-direct {p0, v6, v4, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1

    .line 622
    :cond_2
    const-string v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 626
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_0

    .line 627
    const-string/jumbo v1, "still in progress"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 635
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 636
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_4

    .line 637
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 649
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_6

    .line 650
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    if-eqz v1, :cond_5

    .line 651
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O - call Ringing"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_3

    .line 653
    :cond_5
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 655
    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_0

    .line 658
    :cond_6
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 660
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_0

    .line 663
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 670
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_8

    .line 672
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_8
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 675
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_9

    .line 676
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 680
    :goto_4
    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 681
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_0

    .line 678
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_4

    .line 688
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v1, :cond_0

    .line 689
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 690
    invoke-direct {p0, v7}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 696
    sget-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v1, :cond_c

    .line 697
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 699
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 700
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    .line 701
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 702
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 709
    :goto_5
    sput-boolean v7, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 718
    :goto_6
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 719
    const-wide/32 v2, 0x155cc

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 721
    :cond_a
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 722
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    iput-wide v10, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_0

    .line 705
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_5

    .line 711
    :cond_c
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_6

    .line 728
    :cond_d
    const-string v1, "Not able to resume FM player"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .locals 2

    .prologue
    .line 2394
    const-string v1, "Sending broadcast FM is in OFF state"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2396
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2397
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2398
    return-void
.end method

.method private sendStopMusicCommandBroadcast()V
    .locals 3

    .prologue
    .line 2152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2154
    const-string v1, "from"

    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2155
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2156
    const-string/jumbo v1, "music command stop sent .."

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2157
    return-void
.end method

.method private setAFRMSSISamples(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSISamples(I)V

    .line 3019
    return-void
.end method

.method private setAFRMSSIThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSIThreshold(I)V

    .line 3011
    return-void
.end method

.method private setAFValid_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFValid_th(I)V

    .line 2922
    return-void
.end method

.method private setAF_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAF_th(I)V

    .line 2914
    return-void
.end method

.method private setBlendPAMD_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3150
    iput p1, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    .line 3151
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBlendPAMD_th(I)V

    .line 3152
    return-void
.end method

.method private setBlendRSSI_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3141
    iput p1, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    .line 3142
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBlendRSSI_th(I)V

    .line 3143
    return-void
.end method

.method private setBlendRmssi(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBlendRmssi(I)V

    .line 3043
    return-void
.end method

.method private setBlendSinr(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBlendSinr(I)V

    .line 3051
    return-void
.end method

.method private setCFOTh12(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setCFOTh12(I)V

    .line 2987
    return-void
.end method

.method private setCnt_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2868
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 2869
    return-void
.end method

.method private setCnt_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2880
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 2881
    return-void
.end method

.method private setDEConstant(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setDEConstant(J)V

    .line 2847
    return-void
.end method

.method private setDeSenseList(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setDeSenseList(Ljava/lang/String;)V

    .line 3168
    return-void
.end method

.method private setFakeChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFakeChannel(Ljava/lang/String;)V

    .line 3160
    return-void
.end method

.method private setFrequencyOffsetThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFrequencyOffsetThreshold(I)V

    .line 3061
    return-void
.end method

.method private setGoodChannelRMSSIThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setGoodChannelRMSSIThreshold(I)V

    .line 3027
    return-void
.end method

.method private setHybridSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setHybridSearch(Ljava/lang/String;)V

    .line 3035
    return-void
.end method

.method private setNoisePowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setNoisePowerThreshold(I)V

    .line 3077
    return-void
.end method

.method private setOffChannelThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    .line 2971
    return-void
.end method

.method private setOnChannelThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOnChannelThreshold(I)V

    .line 2963
    return-void
.end method

.method private setPilotPowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setPilotPowerThreshold(I)V

    .line 3069
    return-void
.end method

.method private setRMSSIFirstStage(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRMSSIFirstStage(I)V

    .line 2995
    return-void
.end method

.method private setRSSI_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2860
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 2861
    return-void
.end method

.method private setRSSI_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2872
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 2873
    return-void
.end method

.method private setSINRFirstStage(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRFirstStage(I)V

    .line 3003
    return-void
.end method

.method private setSINRSamples(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRSamples(I)V

    .line 2955
    return-void
.end method

.method private setSINRThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRThreshold(I)V

    .line 2979
    return-void
.end method

.method private setSNR_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2864
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 2865
    return-void
.end method

.method private setSNR_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2876
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 2877
    return-void
.end method

.method private setSearchAlgoType(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSearchAlgoType(I)V

    .line 2947
    return-void
.end method

.method private setSeekDC(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekDC(I)V

    .line 3086
    return-void
.end method

.method private setSeekDesenseRSSI(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3114
    iput p1, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    .line 3115
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekDesenseRSSI(I)V

    .line 3116
    return-void
.end method

.method private setSeekQA(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekQA(I)V

    .line 3094
    return-void
.end method

.method private setSeekRSSI(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    .line 2853
    return-void
.end method

.method private setSeekSMG(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3123
    iput p1, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    .line 3124
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekSMG(I)V

    .line 3125
    return-void
.end method

.method private setSeekSNR(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekSNR(J)V

    .line 2857
    return-void
.end method

.method private setSignalSetting(III)V
    .locals 1
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    .line 3584
    :goto_0
    return-void

    .line 3581
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    .line 3582
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    .line 3583
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    goto :goto_0
.end method

.method private setSoftStereoBlendCoeff(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3103
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    .line 3104
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSoftStereoBlendCoeff(J)V

    .line 3105
    return-void
.end method

.method private setSoftmute_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3132
    iput p1, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 3133
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSoftmute_th(I)V

    .line 3134
    return-void
.end method

.method private stopInternetStreaming()V
    .locals 4

    .prologue
    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 571
    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-eqz v1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 574
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dns.action.stop_internet_stream"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 575
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterBatteryListener()V
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1655
    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2418
    const-string/jumbo v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2419
    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1685
    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1686
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .locals 5

    .prologue
    .line 2175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2177
    .local v0, "id":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2183
    const-string/jumbo v2, "unregistering telephony listener"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2184
    return-void

    .line 2179
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterAlarmListener()V
    .locals 2

    .prologue
    .line 1142
    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1144
    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1111
    return-void
.end method

.method private unregisterEmegencyStateChangedListener()V
    .locals 2

    .prologue
    .line 1171
    const-string v0, "Unregistering Emergency State Changed Listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1173
    return-void
.end method

.method private unregisterSystemListener()V
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1673
    return-void
.end method

.method private writeFile(Z)V
    .locals 5
    .param p1, "isFmRadioOn"    # Z

    .prologue
    .line 3534
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 3536
    .local v2, "value":Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 3537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3540
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 3541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3543
    .local v0, "bvalue":[B
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3548
    .end local v0    # "bvalue":[B
    :cond_1
    :goto_1
    return-void

    .line 3534
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_0

    .line 3545
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3546
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public SetIsOn(Z)V
    .locals 0
    .param p1, "IsOn"    # Z

    .prologue
    .line 2267
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2268
    return-void
.end method

.method public cancelAFSwitching()V
    .locals 1

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelAFSwitching()V

    .line 2580
    return-void
.end method

.method public cancelScan()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2466
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_1

    .line 2467
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2468
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 2470
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2471
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2473
    :cond_0
    const/4 v1, 0x1

    .line 2479
    :cond_1
    :goto_0
    return v1

    .line 2476
    :catch_0
    move-exception v0

    .line 2477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelSeek()V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 1828
    return-void
.end method

.method public disableAF()V
    .locals 1

    .prologue
    .line 2549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2550
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableAF()V

    .line 2551
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2552
    return-void
.end method

.method public disableDNS()V
    .locals 1

    .prologue
    .line 2529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2530
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableDNS()V

    .line 2531
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2532
    return-void
.end method

.method public disableRDS()V
    .locals 2

    .prologue
    .line 2512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2513
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableRDS()V

    .line 2514
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2515
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2516
    return-void
.end method

.method public enableAF()V
    .locals 1

    .prologue
    .line 2539
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_0

    .line 2540
    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2546
    :goto_0
    return-void

    .line 2543
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableAF()V

    .line 2544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2545
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method public enableDNS()V
    .locals 1

    .prologue
    .line 2519
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-eqz v0, :cond_0

    .line 2520
    const-string v0, "DNS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2526
    :goto_0
    return-void

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableDNS()V

    .line 2524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2525
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 2

    .prologue
    .line 2501
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_0

    .line 2502
    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2509
    :goto_0
    return-void

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableRDS()V

    .line 2506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2507
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2508
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3552
    invoke-super {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->finalize()V

    .line 3554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3555
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3558
    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    .line 3559
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    .line 3561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 3562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 3564
    sget-object v1, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 3565
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3566
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3567
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 3568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    .line 3570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 3575
    :goto_0
    return-void

    .line 3566
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 3572
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .locals 2

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .locals 2

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntegerTunningParameter(Ljava/lang/String;I)I
    .locals 7
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerTunningParameter: parameterName- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3307
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 3315
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 3316
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 3322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3399
    .end local p2    # "defaultValue":I
    :goto_2
    return p2

    .line 3307
    .restart local p2    # "defaultValue":I
    :sswitch_0
    const-string v5, "RSSI_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "SNR_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "Cnt_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    .line 3309
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th()I

    move-result p2

    goto :goto_2

    .line 3311
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th()I

    move-result p2

    goto :goto_2

    .line 3313
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th()I

    move-result p2

    goto :goto_2

    .line 3316
    :sswitch_3
    const-string v2, "SeekDC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_4
    const-string v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 3318
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekDC()I

    move-result p2

    goto :goto_2

    .line 3320
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekQA()I

    move-result p2

    goto :goto_2

    .line 3324
    :cond_2
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v5, v4, :cond_4

    .line 3325
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_3
    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3325
    :sswitch_5
    const-string v2, "SearchAlgoType"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_3

    :sswitch_6
    const-string v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_3

    :sswitch_7
    const-string v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_3

    :sswitch_8
    const-string v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_9
    const-string v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_3

    :sswitch_a
    const-string v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_b
    const-string v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_c
    const-string v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_d
    const-string v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_e
    const-string v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_f
    const-string v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_10
    const-string v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_11
    const-string v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_12
    const-string v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_13
    const-string v0, "BlendRmssi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_14
    const-string v0, "BlendSinr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xf

    goto/16 :goto_3

    .line 3327
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSearchAlgoType()I

    move-result p2

    goto/16 :goto_2

    .line 3329
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRSamples()I

    move-result p2

    goto/16 :goto_2

    .line 3331
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOnChannelThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3333
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOffChannelThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3335
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3337
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCFOTh12()I

    move-result p2

    goto/16 :goto_2

    .line 3339
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRMSSIFirstStage()I

    move-result p2

    goto/16 :goto_2

    .line 3341
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRFirstStage()I

    move-result p2

    goto/16 :goto_2

    .line 3343
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSIThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3345
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSISamples()I

    move-result p2

    goto/16 :goto_2

    .line 3347
    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getGoodChannelRMSSIThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3349
    :pswitch_10
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th_2()I

    move-result p2

    goto/16 :goto_2

    .line 3351
    :pswitch_11
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th_2()I

    move-result p2

    goto/16 :goto_2

    .line 3353
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th_2()I

    move-result p2

    goto/16 :goto_2

    .line 3355
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendRmssi()I

    move-result p2

    goto/16 :goto_2

    .line 3357
    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendSinr()I

    move-result p2

    goto/16 :goto_2

    .line 3361
    :cond_4
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v5, v3, :cond_6

    .line 3362
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :cond_5
    :goto_4
    packed-switch v1, :pswitch_data_3

    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3362
    :sswitch_15
    const-string v2, "AF_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_4

    :sswitch_16
    const-string v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_4

    .line 3364
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAF_th()I

    move-result p2

    goto/16 :goto_2

    .line 3366
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFValid_th()I

    move-result p2

    goto/16 :goto_2

    .line 3370
    :cond_6
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 3371
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    :cond_7
    :goto_5
    packed-switch v1, :pswitch_data_4

    .line 3379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3371
    :sswitch_17
    const-string v2, "FrequencyOffset_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v0

    goto :goto_5

    :sswitch_18
    const-string v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_5

    :sswitch_19
    const-string v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v3

    goto :goto_5

    .line 3373
    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFrequencyOffsetThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3375
    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getNoisePowerThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3377
    :pswitch_19
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPilotPowerThreshold()I

    move-result p2

    goto/16 :goto_2

    .line 3381
    :cond_8
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a

    .line 3382
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5

    :cond_9
    move v0, v1

    :goto_6
    packed-switch v0, :pswitch_data_5

    .line 3394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3382
    :sswitch_1a
    const-string v2, "SeekDesenseRSSI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :sswitch_1b
    const-string v0, "SeekSMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_6

    :sswitch_1c
    const-string v0, "Softmute_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_6

    :sswitch_1d
    const-string v0, "BlendRSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_6

    :sswitch_1e
    const-string v0, "BlendPAMD_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_6

    .line 3384
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekDesenseRSSI()I

    move-result p2

    goto/16 :goto_2

    .line 3386
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekSMG()I

    move-result p2

    goto/16 :goto_2

    .line 3388
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftmute_th()I

    move-result p2

    goto/16 :goto_2

    .line 3390
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendRSSI_th()I

    move-result p2

    goto/16 :goto_2

    .line 3392
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendPAMD_th()I

    move-result p2

    goto/16 :goto_2

    .line 3397
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3307
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bea88a4 -> :sswitch_0
        -0x6debe1a4 -> :sswitch_1
        0x7898f92a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3316
    :sswitch_data_1
    .sparse-switch
        -0x6c9efae9 -> :sswitch_3
        -0x6c9ef958 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3325
    :sswitch_data_2
    .sparse-switch
        -0x7795fd00 -> :sswitch_e
        -0x6097aadd -> :sswitch_f
        -0x57b635eb -> :sswitch_5
        -0x53297d95 -> :sswitch_14
        -0x4bc61798 -> :sswitch_c
        -0x49c09da3 -> :sswitch_12
        -0x401789e9 -> :sswitch_8
        -0x2b6ae3f1 -> :sswitch_10
        -0x121267c3 -> :sswitch_13
        0x2487eac7 -> :sswitch_7
        0x3471400f -> :sswitch_6
        0x3eabfaf1 -> :sswitch_9
        0x5435ba01 -> :sswitch_a
        0x5d86030f -> :sswitch_11
        0x6cdb6a9c -> :sswitch_b
        0x777fc5a2 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch

    .line 3362
    :sswitch_data_3
    .sparse-switch
        0x3b53cce -> :sswitch_15
        0x407f88dc -> :sswitch_16
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 3371
    :sswitch_data_4
    .sparse-switch
        -0x793b6ef8 -> :sswitch_18
        -0x2cd46d5a -> :sswitch_19
        0x40effc4 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 3382
    :sswitch_data_5
    .sparse-switch
        -0x673c1014 -> :sswitch_1a
        -0x54753130 -> :sswitch_1c
        -0x2740286b -> :sswitch_1b
        -0x54ba1f5 -> :sswitch_1d
        0x71d9d97a -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public getLastScanResult()[J
    .locals 3

    .prologue
    .line 1763
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1766
    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    .line 1769
    .end local v0    # "arryL":[Ljava/lang/Long;
    :goto_0
    return-object v1

    .line 1768
    :cond_0
    const-string v1, "getLastScanResult - mScanChannelList null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1769
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongTunningParameter(Ljava/lang/String;J)J
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long getLongTunningParameter: parameterName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for chip vendor - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3440
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 3441
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_1
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_2

    .line 3445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3448
    .end local p2    # "defaultValue":J
    :cond_2
    :goto_2
    return-wide p2

    .line 3431
    .restart local p2    # "defaultValue":J
    :sswitch_0
    const-string v2, "CurrentSNR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "CurrentRSSI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 3433
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentSNR()J

    move-result-wide p2

    goto :goto_2

    .line 3435
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentRSSI()J

    move-result-wide p2

    goto :goto_2

    .line 3441
    :pswitch_2
    const-string v2, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3443
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendCoeff()J

    move-result-wide p2

    goto :goto_2

    .line 3431
    :sswitch_data_0
    .sparse-switch
        -0x78c176d0 -> :sswitch_1
        0x35e9415e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3441
    :pswitch_data_1
    .packed-switch -0x28a33b56
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayedFreq()J
    .locals 2

    .prologue
    .line 2849
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    return-wide v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringTunningParameter: parameterName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3479
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 3480
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 3484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3498
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 3480
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :pswitch_0
    const-string v2, "HybridSearch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 3482
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getHybridSearch()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 3486
    :cond_1
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 3487
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 3493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3487
    :sswitch_0
    const-string v2, "FakeChannel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 3489
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFakeChannel()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 3491
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getDeSenseList()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 3496
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3480
    :pswitch_data_0
    .packed-switch -0x12b0651c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 3487
    :sswitch_data_0
    .sparse-switch
        -0x7f620235 -> :sswitch_1
        -0x35ee1432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getVolume()J
    .locals 2

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .locals 1

    .prologue
    .line 2575
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .locals 1

    .prologue
    .line 1872
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .locals 1

    .prologue
    .line 1848
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .locals 1

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    .line 1833
    const/4 v0, 0x1

    .line 1835
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isDNSEnable()Z
    .locals 1

    .prologue
    .line 2535
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1839
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 2263
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .locals 1

    .prologue
    .line 2571
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 2449
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 2453
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .locals 1

    .prologue
    .line 1843
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1748
    if-eqz p1, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 1760
    :goto_0
    return-void

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1755
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_0
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .locals 23
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2614
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 2615
    const-string v16, "fmradio_turnon=true"

    .line 2616
    .local v16, "keyValuePairs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2617
    const-string/jumbo v2, "notifyEvent Turning on FM radio"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2621
    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    .line 2622
    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/FMRadioService;->sendFMStatusBroadcast(Ljava/lang/Long;)V

    .line 2625
    .end local v16    # "keyValuePairs":Ljava/lang/String;
    :cond_0
    sget-object v22, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v22

    .line 2626
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2628
    :cond_1
    monitor-exit v22

    .line 2831
    :goto_0
    return-void

    .line 2630
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v21

    .line 2632
    .local v21, "size":I
    add-int/lit8 v15, v21, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_11

    .line 2633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    packed-switch p1, :pswitch_data_0

    .line 2632
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 2638
    :pswitch_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioEnabled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2821
    :catch_0
    move-exception v11

    .line 2822
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2823
    const-string v3, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we loose "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " listener--ignore it :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 2827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove done go for next i\'s value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2830
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v21    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2644
    .restart local v15    # "i":I
    .restart local v21    # "size":I
    :pswitch_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2646
    const/16 v19, -0x1

    .line 2647
    .local v19, "reasonCode":I
    if-eqz p2, :cond_4

    .line 2648
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 2649
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDisabled(I)V

    goto/16 :goto_2

    .line 2654
    .end local v19    # "reasonCode":I
    :pswitch_2
    const-wide/16 v12, 0x0

    .line 2655
    .local v12, "freq":J
    if-eqz p2, :cond_5

    .line 2656
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2658
    :cond_5
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_6

    .line 2659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2662
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_2

    .line 2666
    .end local v12    # "freq":J
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_2

    .line 2675
    :pswitch_4
    if-eqz p2, :cond_8

    .line 2676
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2677
    .local v9, "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v14

    .line 2678
    .local v14, "freqArry":[J
    const/4 v10, 0x0

    .line 2679
    .local v10, "count":I
    if-eqz v14, :cond_7

    .line 2680
    array-length v10, v14

    .line 2683
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v14}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_2

    .line 2688
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v10    # "count":I
    .end local v14    # "freqArry":[J
    :cond_8
    const-string/jumbo v2, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2693
    :pswitch_5
    if-eqz p2, :cond_a

    .line 2694
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2695
    .restart local v9    # "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v14

    .line 2696
    .restart local v14    # "freqArry":[J
    const/4 v10, 0x0

    .line 2697
    .restart local v10    # "count":I
    if-eqz v14, :cond_9

    .line 2698
    array-length v10, v14

    .line 2701
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v14}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_2

    .line 2706
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v10    # "count":I
    .end local v14    # "freqArry":[J
    :cond_a
    const-string/jumbo v2, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2711
    :pswitch_6
    if-eqz p2, :cond_c

    .line 2712
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2713
    .restart local v12    # "freq":J
    sput-wide v12, Lcom/android/server/FMRadioService;->curFreq:J

    .line 2714
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_b

    .line 2715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2718
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onTuned(J)V

    goto/16 :goto_2

    .line 2720
    .end local v12    # "freq":J
    :cond_c
    const-string/jumbo v2, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2725
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetConnected()V

    goto/16 :goto_2

    .line 2731
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetDisconnected()V

    goto/16 :goto_2

    .line 2737
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2739
    if-eqz p2, :cond_d

    .line 2740
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RDSData;

    move-object/from16 v18, v0

    .line 2741
    .local v18, "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2744
    .end local v18    # "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    :cond_d
    const-string/jumbo v2, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2749
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2751
    if-eqz p2, :cond_e

    .line 2752
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RTPlusData;

    move-object/from16 v20, v0

    .line 2753
    .local v20, "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_2

    .line 2758
    .end local v20    # "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    :cond_e
    const-string/jumbo v2, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2763
    :pswitch_b
    if-eqz p2, :cond_f

    .line 2764
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$PIECCData;

    move-object/from16 v17, v0

    .line 2765
    .local v17, "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mPI:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mECC:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    .line 2766
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 2768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2769
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2770
    monitor-exit v3

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 2773
    .end local v17    # "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    :cond_f
    const-string/jumbo v2, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2778
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_2

    .line 2784
    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_2

    .line 2790
    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_2

    .line 2796
    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2798
    if-eqz p2, :cond_10

    .line 2799
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2800
    .restart local v12    # "freq":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_2

    .line 2802
    .end local v12    # "freq":J
    :cond_10
    const-string/jumbo v2, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2807
    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onVolumeLocked()V

    goto/16 :goto_2

    .line 2813
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRecordingFinished()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 2830
    :cond_11
    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public notifyRecFinish()V
    .locals 3

    .prologue
    .line 3758
    const-string/jumbo v1, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3759
    const-string v0, "fmradio_recoding=off"

    .line 3760
    .local v0, "keyValuePairs":Ljava/lang/String;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3761
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3762
    return-void
.end method

.method public off()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2413
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .locals 1

    .prologue
    .line 1961
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1962
    const/4 v0, 0x0

    .line 1963
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized on_in_testmode()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1905
    monitor-enter p0

    :try_start_0
    const-string v5, "factory"

    const-string/jumbo v6, "ro.factory.factory_binary"

    const-string v7, "Unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1906
    .local v1, "isFactoryBinary":Z
    if-nez v1, :cond_1

    .line 1907
    const-string/jumbo v4, "on_in_testmode is called with normal binary. This function is only for Factory binary. So just return"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 1912
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-nez v5, :cond_0

    .line 1915
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1919
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    move v3, v4

    .line 1920
    goto :goto_0

    .line 1927
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 1929
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 1930
    iget v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setBand(I)V

    .line 1933
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 1934
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1935
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 1936
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1938
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1940
    const-string v2, "fmradio_turnon=true"

    .line 1941
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1942
    const-string/jumbo v5, "on_in_testmode Turning on FM radio"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move v3, v4

    .line 1947
    goto :goto_0

    .line 1950
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1955
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1905
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isFactoryBinary":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1895
    if-nez p1, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1897
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 1

    .prologue
    .line 2441
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    .line 2446
    :goto_0
    return-void

    .line 2443
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2444
    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 2445
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public searchAll()J
    .locals 2

    .prologue
    .line 2490
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchAll()J

    move-result-wide v0

    .line 2492
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public searchDown()J
    .locals 2

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    .line 2483
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchUp()J

    move-result-wide v0

    .line 2485
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public seekDown()J
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1800
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1803
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_2

    .line 1804
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1805
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v3, v7, :cond_0

    .line 1806
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1812
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    .line 1815
    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 1817
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1820
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1821
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1822
    return-wide v0

    .line 1808
    .end local v0    # "freq":J
    :cond_2
    const-string v2, "fmradio_turnon=false"

    .line 1809
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekUp()J
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1774
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1777
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_2

    .line 1778
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1779
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v3, v7, :cond_0

    .line 1780
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1786
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    .line 1789
    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 1791
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1794
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1795
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1796
    return-wide v0

    .line 1782
    .end local v0    # "freq":J
    :cond_2
    const-string v2, "fmradio_turnon=false"

    .line 1783
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendFMStatusBroadcast(Ljava/lang/Long;)V
    .locals 5
    .param p1, "freq"    # Ljava/lang/Long;

    .prologue
    .line 2401
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 2402
    .local v0, "currentFreq":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 2403
    const/high16 v0, 0x42af0000    # 87.5f

    .line 2404
    :cond_0
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 2405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast tune currentFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2406
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.fm.player_lock.tune.channel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2408
    const-string v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2409
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2410
    return-void
.end method

.method public setBand(I)V
    .locals 1
    .param p1, "band"    # I

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBand(I)V

    .line 2563
    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 2564
    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setChannelSpacing(I)V

    .line 2568
    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 1
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFMIntenna(Z)V

    .line 2930
    return-void
.end method

.method public setIntegerTunningParameter(Ljava/lang/String;I)V
    .locals 7
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setIntegerTunningParameter:  parameterName- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value:- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 3191
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 3192
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 3200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3303
    :goto_2
    return-void

    .line 3177
    :sswitch_0
    const-string v5, "RSSI_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "SNR_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "Cnt_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v5, "SkipTuningValue"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    .line 3179
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th(I)V

    goto :goto_2

    .line 3182
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th(I)V

    goto :goto_2

    .line 3185
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th(I)V

    goto :goto_2

    .line 3188
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->SkipTuning_Value()V

    goto :goto_2

    .line 3192
    :sswitch_4
    const-string v2, "SeekDC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 3194
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekDC(I)V

    goto :goto_2

    .line 3197
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekQA(I)V

    goto :goto_2

    .line 3202
    :cond_2
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 3203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_3
    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3203
    :sswitch_6
    const-string v2, "SearchAlgoType"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_3

    :sswitch_7
    const-string v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_3

    :sswitch_8
    const-string v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_3

    :sswitch_9
    const-string v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_3

    :sswitch_a
    const-string v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_b
    const-string v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_c
    const-string v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_d
    const-string v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_e
    const-string v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_f
    const-string v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_10
    const-string v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_11
    const-string v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_12
    const-string v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_13
    const-string v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_14
    const-string v0, "BlendRmssi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_15
    const-string v0, "BlendSinr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xf

    goto/16 :goto_3

    .line 3205
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    goto/16 :goto_2

    .line 3208
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    goto/16 :goto_2

    .line 3211
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    goto/16 :goto_2

    .line 3214
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    goto/16 :goto_2

    .line 3217
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    goto/16 :goto_2

    .line 3220
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    goto/16 :goto_2

    .line 3223
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    goto/16 :goto_2

    .line 3226
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    goto/16 :goto_2

    .line 3229
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    goto/16 :goto_2

    .line 3232
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    goto/16 :goto_2

    .line 3235
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    goto/16 :goto_2

    .line 3238
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th_2(I)V

    goto/16 :goto_2

    .line 3241
    :pswitch_12
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th_2(I)V

    goto/16 :goto_2

    .line 3244
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th_2(I)V

    goto/16 :goto_2

    .line 3247
    :pswitch_14
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendRmssi(I)V

    goto/16 :goto_2

    .line 3250
    :pswitch_15
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendSinr(I)V

    goto/16 :goto_2

    .line 3255
    :cond_4
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v5, v3, :cond_6

    .line 3256
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :cond_5
    :goto_4
    packed-switch v1, :pswitch_data_3

    .line 3264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3256
    :sswitch_16
    const-string v2, "AF_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_4

    :sswitch_17
    const-string v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_4

    .line 3258
    :pswitch_16
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAF_th(I)V

    goto/16 :goto_2

    .line 3261
    :pswitch_17
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFValid_th(I)V

    goto/16 :goto_2

    .line 3266
    :cond_6
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 3267
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    :cond_7
    :goto_5
    packed-switch v1, :pswitch_data_4

    .line 3278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3267
    :sswitch_18
    const-string v2, "FrequencyOffset_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v0

    goto :goto_5

    :sswitch_19
    const-string v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_5

    :sswitch_1a
    const-string v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v3

    goto :goto_5

    .line 3269
    :pswitch_18
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFrequencyOffsetThreshold(I)V

    goto/16 :goto_2

    .line 3272
    :pswitch_19
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setNoisePowerThreshold(I)V

    goto/16 :goto_2

    .line 3275
    :pswitch_1a
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setPilotPowerThreshold(I)V

    goto/16 :goto_2

    .line 3280
    :cond_8
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a

    .line 3281
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5

    :cond_9
    move v0, v1

    :goto_6
    packed-switch v0, :pswitch_data_5

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3281
    :sswitch_1b
    const-string v2, "SeekDesenseRSSI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :sswitch_1c
    const-string v0, "SeekSMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_6

    :sswitch_1d
    const-string v0, "Softmute_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_6

    :sswitch_1e
    const-string v0, "BlendRSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_6

    :sswitch_1f
    const-string v0, "BlendPAMD_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_6

    .line 3283
    :pswitch_1b
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekDesenseRSSI(I)V

    goto/16 :goto_2

    .line 3286
    :pswitch_1c
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekSMG(I)V

    goto/16 :goto_2

    .line 3289
    :pswitch_1d
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSoftmute_th(I)V

    goto/16 :goto_2

    .line 3292
    :pswitch_1e
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendRSSI_th(I)V

    goto/16 :goto_2

    .line 3295
    :pswitch_1f
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendPAMD_th(I)V

    goto/16 :goto_2

    .line 3301
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3177
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bea88a4 -> :sswitch_0
        -0x6debe1a4 -> :sswitch_1
        -0x3ba8f63 -> :sswitch_3
        0x7898f92a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3192
    :sswitch_data_1
    .sparse-switch
        -0x6c9efae9 -> :sswitch_4
        -0x6c9ef958 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3203
    :sswitch_data_2
    .sparse-switch
        -0x7795fd00 -> :sswitch_f
        -0x6097aadd -> :sswitch_10
        -0x57b635eb -> :sswitch_6
        -0x53297d95 -> :sswitch_15
        -0x4bc61798 -> :sswitch_d
        -0x49c09da3 -> :sswitch_13
        -0x401789e9 -> :sswitch_9
        -0x2b6ae3f1 -> :sswitch_11
        -0x121267c3 -> :sswitch_14
        0x2487eac7 -> :sswitch_8
        0x3471400f -> :sswitch_7
        0x3eabfaf1 -> :sswitch_a
        0x5435ba01 -> :sswitch_b
        0x5d86030f -> :sswitch_12
        0x6cdb6a9c -> :sswitch_c
        0x777fc5a2 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch

    .line 3256
    :sswitch_data_3
    .sparse-switch
        0x3b53cce -> :sswitch_16
        0x407f88dc -> :sswitch_17
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 3267
    :sswitch_data_4
    .sparse-switch
        -0x793b6ef8 -> :sswitch_19
        -0x2cd46d5a -> :sswitch_1a
        0x40effc4 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 3281
    :sswitch_data_5
    .sparse-switch
        -0x673c1014 -> :sswitch_1b
        -0x54753130 -> :sswitch_1d
        -0x2740286b -> :sswitch_1c
        -0x54ba1f5 -> :sswitch_1e
        0x71d9d97a -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public setInternetStreamingMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 3747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3748
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 3749
    if-eqz p1, :cond_0

    .line 3750
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 3754
    :goto_0
    return-void

    .line 3752
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1881
    if-eqz p1, :cond_1

    .line 1882
    sget-object v2, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1883
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 1884
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 1886
    :cond_0
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .line 1887
    .local v0, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no of listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1889
    monitor-exit v2

    .line 1891
    .end local v0    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_1
    return-void

    .line 1889
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLongTunningParameter(Ljava/lang/String;J)V
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long setLongTunningParameter: parameterName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for chip vendor - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3418
    :goto_1
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 3419
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_1
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 3424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3427
    :cond_2
    :goto_3
    return-void

    .line 3404
    :sswitch_0
    const-string v2, "SeekRSSI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "SeekSNR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "DEConstant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 3406
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekRSSI(J)V

    goto :goto_1

    .line 3409
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekSNR(J)V

    goto :goto_1

    .line 3412
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    goto :goto_1

    .line 3419
    :pswitch_3
    const-string v2, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 3421
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendCoeff(J)V

    goto :goto_3

    .line 3404
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4409c0bb -> :sswitch_2
        -0x27402841 -> :sswitch_1
        0x3f3abeef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3419
    :pswitch_data_1
    .packed-switch -0x28a33b56
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public setMono()V
    .locals 1

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setMono()V

    .line 2588
    return-void
.end method

.method public setRecordMode(Z)V
    .locals 2
    .param p1, "isRecord"    # Z

    .prologue
    .line 2237
    const/4 v0, 0x0

    .line 2238
    .local v0, "value":I
    if-eqz p1, :cond_0

    .line 2239
    const/4 v0, 0x1

    .line 2240
    :cond_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, v0}, Lcom/android/server/FMPlayerNative;->setRecordMode(I)V

    .line 2241
    return-void
.end method

.method public setSoftMuteControl(III)V
    .locals 1
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/FMPlayerNative;->setSoftMuteControl(III)V

    .line 2942
    return-void
.end method

.method public setSoftmute(Z)V
    .locals 1
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSoftmute(Z)V

    .line 2934
    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 1
    .param p1, "bSpeakerOn"    # Z

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSpeakerOn(Z)V

    .line 2234
    return-void
.end method

.method public setStereo()V
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setStereo()V

    .line 2584
    return-void
.end method

.method public setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStringTunningParameter: parameterName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3453
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 3454
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 3459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3475
    :goto_1
    return-void

    .line 3454
    :pswitch_0
    const-string v2, "HybridSearch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 3456
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setHybridSearch(Ljava/lang/String;)V

    goto :goto_1

    .line 3461
    :cond_1
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 3462
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 3470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3462
    :sswitch_0
    const-string v2, "FakeChannel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 3464
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFakeChannel(Ljava/lang/String;)V

    goto :goto_1

    .line 3467
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setDeSenseList(Ljava/lang/String;)V

    goto :goto_1

    .line 3473
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3454
    nop

    :pswitch_data_0
    .packed-switch -0x12b0651c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 3462
    :sswitch_data_0
    .sparse-switch
        -0x7f620235 -> :sswitch_1
        -0x35ee1432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setVolume(J)V
    .locals 9
    .param p1, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 2187
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v2, :cond_1

    .line 2226
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_2

    .line 2191
    const-string/jumbo v2, "setVolume :: unset on ScanProgress"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2196
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v2, :cond_5

    .line 2197
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 2198
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 2200
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2203
    .local v0, "IsEnabledAllSoundOff":I
    if-ne v0, v5, :cond_3

    .line 2204
    const-string/jumbo v2, "setVolume :: AllSoundOff is enabled. So FMRadio is muted."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2205
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_0

    .line 2206
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2222
    .end local v0    # "IsEnabledAllSoundOff":I
    :catch_0
    move-exception v1

    .line 2223
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2208
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2209
    cmp-long v2, p1, v6

    if-gtz v2, :cond_4

    .line 2210
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_0

    .line 2211
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v2, :cond_0

    .line 2212
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 2213
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    goto :goto_0

    .line 2217
    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_0

    .line 2218
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 2219
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public tune(J)V
    .locals 7
    .param p1, "freq"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1722
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v1, v5, :cond_1

    .line 1723
    const-string/jumbo v1, "tune mute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1730
    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 1733
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 1735
    const-string/jumbo v1, "tune unmute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1737
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v5, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1742
    :cond_0
    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1743
    return-void

    .line 1726
    :cond_1
    const-string v0, "fmradio_turnon=false"

    .line 1727
    .local v0, "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
