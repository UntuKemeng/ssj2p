.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;,
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$EffectPolicy;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$FineVolumeState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$MyWindowOrientationListener;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;
    }
.end annotation


# static fields
.field private static final ACTION_EFFECT_POLICY:Ljava/lang/String; = "sec.app.policy.UPDATE.audio"

.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field private static final DOCK_DEVICE_NAME:[Ljava/lang/String;

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final ENCRYPTED_ALL_SOUND_MUTE:I = 0x1

.field private static final ENCRYPTED_RINGER_SILENT_MODE:I = 0x10

.field private static final FINE_VOLUME_OFFSET:I = 0x3e8

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final FLAG_ERROR:I = 0x8000

.field private static final FLAG_STREAM_ACCESSIBILITY:I = 0x4000

.field private static final FLAG_STREAM_ALARM:I = 0x10

.field private static final FLAG_STREAM_BLUETOOTH_SCO:I = 0x40

.field private static final FLAG_STREAM_DTMF:I = 0x100

.field private static final FLAG_STREAM_FM_RADIO:I = 0x400

.field private static final FLAG_STREAM_MUSIC:I = 0x8

.field private static final FLAG_STREAM_NOTIFICATION:I = 0x20

.field private static final FLAG_STREAM_RING:I = 0x4

.field private static final FLAG_STREAM_SEC_VOICE_COMMUNICATION:I = 0x1000

.field private static final FLAG_STREAM_SYSTEM:I = 0x2

.field private static final FLAG_STREAM_SYSTEM_ENFORCED:I = 0x80

.field private static final FLAG_STREAM_TTS:I = 0x200

.field private static final FLAG_STREAM_VIDEO_CALL:I = 0x800

.field private static final FLAG_STREAM_VOICENOTE:I = 0x2000

.field private static final FLAG_STREAM_VOICE_CALL:I = 0x1

.field private static final FOLDER_OPENED:Ljava/lang/String; = "com.samsung.flipfolder.OPEN"

.field private static final GLOBAL_EFFECT_ENABLED:Z = true

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static final LIMITER_MAXIMUM_LEVEL:I = 0xf

.field private static MAX_STREAM_VOLUME:[I = null

.field private static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY_PERSONA:I = 0x6e

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x68

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x6c

.field private static final MSG_GAMEPAD_EARJACK_STATE:I = 0x72

.field private static final MSG_GOOGLE_MAX:I = 0x66

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x69

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x6a

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_AOBLE_SINK_CONNECTION_STATE:I = 0x71

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FINE_VOLUME:I = 0x70

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_SYSTEMPROPERTY:I = 0x6f

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MSG_USB_CHECK_RELEASE:I = 0x67

.field private static final MSG_VIBRATE_CALL:I = 0x6d

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x6b

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_K2HD_CHECKED:Ljava/lang/String; = "k2hd_effect"

.field private static final SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String; = "sound_alive_effect"

.field private static final SETTING_TUBEAMP_CHECKED:Ljava/lang/String; = "tube_amp_effect"

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field public static mCallVolumeSteps:I

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final ConfigVolumeKey:Ljava/lang/String;

.field private FINE_VOLUME_LEVEL:I

.field private FINE_VOLUME_MAX:I

.field private FINE_VOLUME_MIN:I

.field private final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String;

.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final PHONE_PACKAGE_NAME:Ljava/lang/String;

.field private SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private final VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

.field private emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private isEarBackOff:Z

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAllSoundMute:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothA2dpOndump:[I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothScoOndump:[I

.field private mBtNxpShareIF_LSI:Z

.field private mCPUBoostForComm:Z

.field private mCallingRingerMode:[Ljava/lang/String;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCpuHelper:Landroid/os/DVFSHelper;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private mDualMicMode:I

.field private mDualSpk:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForceSpeaker:I

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field mFullVolumeDevices:I

.field public mHMTstate:Z

.field mHallSensorListener:Landroid/hardware/scontext/SContextListener;

.field private mHallSensorType:S

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mIsCoverSafetyVolume:Z

.field private mIsDefaultStreamNotification:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field public mIsExceptionalDevice:Z

.field private mIsExternalRingerMode:[Z

.field private mIsFactoryMode:Z

.field private mIsFactorySim:Z

.field private mIsFolderOpen:Z

.field private mIsMediaVolumeBackup:Z

.field private mIsPlaySilentModeOff:Z

.field private mIsScreenOffMusicOn:I

.field private mIsSetupwizardFinish:Ljava/lang/String;

.field private mIsTogether:Z

.field private mIsVibrate:Z

.field private mK2HDEnabled:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

.field private mLateBootCompleted_WiredDevice:I

.field private final mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

.field private final mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMediaLastAudibleIndex:I

.field private mMediaSilentMode:Z

.field private mMediaVolumeBackup:[I

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMonoMode:I

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mMySoundEnabled:I

.field private mNaturalSound:I

.field private mNbQualityMode:I

.field private mOldIsSmartdock:Z

.field private mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevRingerMode:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private final mSafeMediaVolumeDevices:I

.field private final mSafeMediaVolumeDevicesForA2DP:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeOndump:I

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundAliveEnabled:I

.field private mSoundBalance:I

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mSpeakerOndump:[I

.field public mSplitSound:Z

.field private mStatusbarExpanded:Z

.field private mStreamMutePackagedump:[Ljava/lang/String;

.field private mStreamMutedump:[I

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mStreamToggleMutePackagedump:[Ljava/lang/String;

.field private mStreamToggleMutedump:[I

.field private mStreamUnMutePackagedump:[Ljava/lang/String;

.field private mStreamUnMutedump:[I

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private mTubeAmpEnabled:I

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUhqBtSampleRate:I

.field private final mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

.field private mUsbSupportedFormat:I

.field private final mUseFixedVolume:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumeLimitValue:I

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mWindowOrientationListener:Lcom/android/server/audio/AudioService$MyWindowOrientationListener;

.field private mbAobleState:Z

.field private mbVolumeLimitOn:Z

.field private pIdOfadjustVolume:[I

.field private pIdOfadjustVolumeIndex:[I

.field private pIdOfsetVolume:[I

.field private pIdOfsetVolumeIndex:[I

.field private uIdOfadjustVolume:[I

.field private uIdOfsetVolume:[I

.field private final volumeDownToSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v1, 0xe

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 229
    const-string v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/SamsungAudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    .line 232
    const-string v0, "AudioService.AP"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    .line 235
    const-string v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/SamsungAudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    .line 238
    const-string v0, "AudioService.DEVICES"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 385
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 405
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 539
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 782
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 915
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Smart Dock with TA"

    aput-object v1, v0, v4

    const-string v1, "Smart Dock+TA"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/audio/AudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    .line 9035
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v4

    const-string v1, "VIBRATE"

    aput-object v1, v0, v6

    const-string v1, "NORMAL"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 385
    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 405
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 539
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 946
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 268
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 269
    new-instance v0, Lcom/android/server/audio/AudioService$ControllerService;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    .line 272
    new-instance v0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    .line 345
    const-string/jumbo v0, "h2w"

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

    .line 346
    const-string/jumbo v0, "h2w-before-boot-completed"

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 368
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 382
    const/16 v0, 0x10

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 436
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    .line 453
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME_DOUBLE:[I

    .line 479
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 497
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 515
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 554
    new-instance v0, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 598
    new-instance v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 710
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 711
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    .line 723
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 726
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 727
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 740
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 748
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_LEVEL:I

    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_MIN:I

    .line 750
    iget v0, p0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_LEVEL:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_MAX:I

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 777
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->isEarBackOff:Z

    .line 789
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Audio_ConfigActionVolumeKey"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->ConfigVolumeKey:Ljava/lang/String;

    .line 790
    const-string v0, "Silent"

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->ConfigVolumeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->volumeDownToSilent:Z

    .line 791
    new-instance v0, Landroid/media/VolumePolicy;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->volumeDownToSilent:Z

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x190

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    .line 822
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    .line 824
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDevice:I

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsTogether:Z

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsExceptionalDevice:Z

    .line 852
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String;

    .line 853
    const-string v0, "com.android.server.telecom"

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->PHONE_PACKAGE_NAME:Ljava/lang/String;

    .line 854
    const-string v0, "com.sec.android.app.voicenote"

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    .line 857
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mIsSetupwizardFinish:Ljava/lang/String;

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsEarCareEnabled:Z

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    .line 878
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mUsbSupportedFormat:I

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactoryMode:Z

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactorySim:Z

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 928
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/android/server/audio/AudioService;->mHallSensorType:S

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mbAobleState:Z

    .line 932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    .line 934
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mIsScreenOffMusicOn:I

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    .line 938
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    .line 3054
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 4626
    new-instance v0, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 7423
    const v0, 0x2102ff8c

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    .line 8773
    const v0, 0x20000180

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevicesForA2DP:I

    .line 8777
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 8781
    const v0, 0x2000018c

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 8935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8946
    new-instance v0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 9525
    new-instance v0, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 9614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 9616
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 9976
    new-instance v0, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    .line 10580
    new-instance v0, Lcom/android/server/audio/AudioService$6;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$6;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHallSensorListener:Landroid/hardware/scontext/SContextListener;

    .line 10604
    new-instance v0, Lcom/android/server/audio/AudioService$7;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$7;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    .line 947
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 948
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 949
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 951
    invoke-static {p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 953
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 954
    .local v12, "pm":Landroid/os/PowerManager;
    const/4 v0, 0x1

    const-string/jumbo v1, "handleAudioEvent"

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 956
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 957
    .local v13, "vibrator":Landroid/os/Vibrator;
    if-nez v13, :cond_8

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 976
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 979
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Audio_ConfigCallVolumeSteps"

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/audio/AudioService;->mCallVolumeSteps:I

    .line 980
    sget v0, Lcom/android/server/audio/AudioService;->mCallVolumeSteps:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 981
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    sget v1, Lcom/android/server/audio/AudioService;->mCallVolumeSteps:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.config.vc_call_vol_steps"

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 986
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    aput v2, v0, v1

    .line 987
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    aput v2, v0, v1

    .line 999
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    .line 1002
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 1008
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    .line 1011
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUSBDetected:Z

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mFakeState:Z

    .line 1017
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string v1, "USB_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 1021
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    const-string v0, "emergency_mode=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1027
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 1029
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1042
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    .line 1045
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->ChangeDefaultVolume()V

    .line 1047
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 1049
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v10

    .line 1050
    .local v10, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 1051
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v10, :cond_a

    const/16 v4, 0xb

    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1060
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio_safe_volume_state"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 1070
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 1072
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 1077
    const/4 v0, 0x0

    const-string v1, "AudioService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 1078
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 1079
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 1080
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 1082
    new-instance v0, Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$FineVolumeState;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    .line 1084
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 1087
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1091
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1095
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    .line 1097
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setDualSpk(I)V

    .line 1100
    const-string v0, "ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigDefSoundEffects"

    const-string v4, "OFF"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    .line 1102
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sound_alive_effect"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1103
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    .line 1104
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "k2hd_effect"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    .line 1106
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tube_amp_effect"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1108
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    .line 1109
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setGlobalSoundAlive(I)V

    .line 1110
    iget v0, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setGlobalK2HD(I)V

    .line 1111
    iget v0, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setGlobalTubeAmp(I)V

    .line 1114
    iget v0, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    .line 1116
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    .line 1118
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1119
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    .line 1121
    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    .line 1123
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setSoundBalance()V

    .line 1125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    .line 1127
    const-string/jumbo v0, "persist.audio.btnxpshareif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    .line 1131
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1134
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1140
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1141
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1143
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1144
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1146
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    const-string v0, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1148
    const-string v0, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1150
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1152
    const-string v0, "com.sec.tms.audio.server"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1155
    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1160
    const-string v0, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    const-string v0, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    const-string v0, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1170
    const-string v0, "com.samsung.android.intent.action.AUDIO_DUAL_SPEAKER_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    const-string v0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1174
    const-string v0, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    const-string v0, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    const-string v0, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string v0, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1180
    const-string v0, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1181
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1188
    const-string v0, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1190
    const-string v0, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v0, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    .line 1198
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_5

    .line 1199
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 1203
    :cond_5
    const-string/jumbo v0, "ro.audio.monitorRotation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 1204
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_6

    .line 1205
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v0, v1}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1208
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1210
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v7, "knoxModeIntentFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.container.OBSERVER"

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1215
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1218
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    .line 1219
    .local v11, "numStreamTypes":I
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamMutedump:[I

    .line 1220
    new-array v0, v11, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamMutePackagedump:[Ljava/lang/String;

    .line 1221
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamUnMutedump:[I

    .line 1222
    new-array v0, v11, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamUnMutePackagedump:[Ljava/lang/String;

    .line 1223
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamToggleMutedump:[I

    .line 1224
    new-array v0, v11, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    .line 1225
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    .line 1226
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    .line 1227
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    .line 1228
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[I

    .line 1229
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[I

    .line 1230
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->uIdOfsetVolume:[I

    .line 1231
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolumeIndex:[I

    .line 1232
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolume:[I

    .line 1233
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->uIdOfadjustVolume:[I

    .line 1234
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    .line 1235
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    .line 1246
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "folder_open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/4 v4, 0x2

    const-string v5, "Speaker"

    const-string v6, ""

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volumelimit_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    .line 1261
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_limiter_value"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    .line 1263
    return-void

    .line 790
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "knoxModeIntentFilter":Landroid/content/IntentFilter;
    .end local v10    # "cameraSoundForced":Z
    .end local v11    # "numStreamTypes":I
    .end local v12    # "pm":Landroid/os/PowerManager;
    .end local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 957
    .restart local v12    # "pm":Landroid/os/PowerManager;
    .restart local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_8
    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_1

    .line 999
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1051
    .restart local v10    # "cameraSoundForced":Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1246
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v7    # "knoxModeIntentFilter":Landroid/content/IntentFilter;
    .restart local v11    # "numStreamTypes":I
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 1260
    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    .line 436
    nop

    :array_0
    .array-data 4
        0x5
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 453
    :array_1
    .array-data 4
        0x5
        0xf
        0xf
        0x1e
        0xf
        0xf
        0xf
        0xf
        0xf
        0x1e
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    .line 479
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x2
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 497
    :array_3
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 515
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x2
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 857
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private ChangeDefaultVolume()V
    .locals 0

    .prologue
    .line 10131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 224
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    return v0
.end method

.method static synthetic access$10102(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    return p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setGlobalSoundAlive(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    return v0
.end method

.method static synthetic access$10302(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    return p1
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setGlobalK2HD(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    return v0
.end method

.method static synthetic access$10502(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    return p1
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setGlobalTubeAmp(I)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$10702(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z

    return v0
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->stopCPUBoost()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->startCPUBoost(Z)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11902(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/audio/AudioService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12200(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic access$12302(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic access$12400(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    return v0
.end method

.method static synthetic access$12502(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    return p1
.end method

.method static synthetic access$12600(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setDualSpk(I)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    return v0
.end method

.method static synthetic access$12702(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    return p1
.end method

.method static synthetic access$12800(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    return v0
.end method

.method static synthetic access$12902(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    return v0
.end method

.method static synthetic access$13102(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    return p1
.end method

.method static synthetic access$13200(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    return-void
.end method

.method static synthetic access$13402(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic access$13500(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    return v0
.end method

.method static synthetic access$13502(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    return p1
.end method

.method static synthetic access$13600(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->reloadWhitelist()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$14200(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$14302(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$14400(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$15002(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 224
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 224
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$15300(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 224
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$15400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    return-object v0
.end method

.method static synthetic access$15508(Lcom/android/server/audio/AudioService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$15600(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15800(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUSBDetected:Z

    return v0
.end method

.method static synthetic access$15902(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUSBDetected:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 224
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100()[I
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurOutDevice()I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$6700()Ljava/util/List;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7502(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDevice:I

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mFakeState:Z

    return v0
.end method

.method static synthetic access$8502(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mFakeState:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->performSoftReset()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->playSilentModeSound()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->vibrateCall()V

    return-void
.end method

.method static synthetic access$9002(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic access$9102(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(II)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    return v0
.end method

.method static synthetic access$9302(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    return p1
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    return p1
.end method

.method private adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 33
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 2052
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_1

    .line 2388
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    const/16 v5, 0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    move/from16 v0, p1

    if-ne v0, v5, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 2061
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t unmute "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2066
    :cond_3
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v5, :cond_4

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() stream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 2071
    new-instance v20, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.SOUND_OFF_TOAST"

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2072
    .local v20, "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 2076
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 2077
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2079
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v22

    .line 2081
    .local v22, "isMuteAdjust":Z
    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2088
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v12, v5, p1

    .line 2091
    .local v12, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_7

    if-nez p2, :cond_8

    :cond_7
    const/4 v5, 0x3

    if-eq v12, v5, :cond_8

    .line 2093
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v5, :cond_0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip volume increase action for stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when Ear safety pop-up is visible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2097
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v31, v5, v12

    .line 2099
    .local v31, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 2101
    .local v8, "device":I
    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isRadioSpeakerOn()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2102
    const/4 v8, 0x2

    .line 2105
    :cond_9
    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 2106
    .local v17, "aliasIndex":I
    const/16 v16, 0x1

    .line 2110
    .local v16, "adjustVolume":Z
    sparse-switch p2, :sswitch_data_0

    .line 2134
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMRadioRecording()Z

    move-result v21

    .line 2135
    .local v21, "isFMRadioRecording":Z
    if-eqz v21, :cond_c

    .line 2136
    const/16 v16, 0x0

    .line 2137
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v5, :cond_a

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume - FM Recording... change adjustVolume value("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_a
    const/high16 v5, 0x2000000

    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1011

    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    if-nez p3, :cond_b

    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 2144
    :cond_b
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_c

    const/4 v5, 0x3

    if-ne v12, v5, :cond_c

    .line 2145
    and-int/lit8 p3, p3, -0x2

    .line 2146
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v5, :cond_c

    const-string v5, "AudioService"

    const-string v6, "adjustStreamVolume - FM Recording... block Media volume bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_c
    const v5, 0x20000380

    and-int/2addr v5, v8

    if-nez v5, :cond_d

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_0

    .line 2159
    :cond_d
    const/16 v5, 0x3e8

    move/from16 v0, p6

    if-ne v0, v5, :cond_e

    .line 2160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    .line 2162
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v6, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v6, v6, v12

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v5, v6, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2167
    const/high16 v5, 0x2000000

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mMode:I

    if-eqz v5, :cond_0

    .line 2172
    :cond_f
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v32

    .line 2174
    .local v32, "volumeLimiterdevice":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_11

    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v6, v6, 0xa

    if-lt v5, v6, :cond_11

    const v5, 0x2000018c

    and-int v5, v5, v32

    if-eqz v5, :cond_11

    .line 2177
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    const/16 v6, 0x96

    if-eq v5, v6, :cond_10

    .line 2178
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->displayVolumeLimiterToast()V

    .line 2179
    :cond_10
    const-string v5, "AudioService"

    const-string v6, "Volume index is already reached at volume limit value"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    mul-int/lit8 v5, v32, 0xa

    mul-int/lit8 v6, v32, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 2113
    .end local v21    # "isFMRadioRecording":Z
    .end local v32    # "volumeLimiterdevice":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    aput v6, v5, p1

    .line 2114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolumeIndex:[I

    div-int/lit8 v6, v17, 0xa

    add-int v6, v6, p2

    aput v6, v5, p1

    .line 2115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->uIdOfadjustVolume:[I

    aput p6, v5, p1

    goto/16 :goto_1

    .line 2118
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    aput v6, v5, p1

    .line 2119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamMutePackagedump:[Ljava/lang/String;

    aput-object p4, v5, p1

    goto/16 :goto_1

    .line 2122
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamUnMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    aput v6, v5, p1

    .line 2123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamUnMutePackagedump:[Ljava/lang/String;

    aput-object p4, v5, p1

    goto/16 :goto_1

    .line 2126
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamToggleMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    aput v6, v5, p1

    .line 2127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    aput-object p4, v5, p1

    goto/16 :goto_1

    .line 2185
    .restart local v21    # "isFMRadioRecording":Z
    .restart local v32    # "volumeLimiterdevice":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2186
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2189
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2191
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2193
    and-int/lit8 p3, p3, -0x21

    .line 2194
    const/4 v5, 0x3

    if-ne v12, v5, :cond_1e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_1e

    .line 2196
    or-int/lit8 p3, p3, 0x20

    .line 2201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1d

    const v5, 0x2000018c

    and-int/2addr v5, v8

    if-eqz v5, :cond_1d

    .line 2203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v29, v0

    .line 2207
    .local v29, "step":I
    :goto_2
    if-eqz v17, :cond_12

    .line 2208
    move/from16 v17, v29

    .line 2217
    :cond_12
    :goto_3
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v5

    if-ne v12, v5, :cond_16

    .line 2219
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v27

    .line 2221
    .local v27, "ringerMode":I
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_14

    .line 2222
    and-int/lit8 p3, p3, -0x11

    .line 2226
    :cond_14
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v31 .. v31}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZ)I

    move-result v26

    .line 2228
    .local v26, "result":I
    and-int/lit8 v5, v26, 0x1

    if-eqz v5, :cond_1f

    const/16 v16, 0x1

    .line 2230
    :goto_4
    move/from16 v0, v26

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_15

    .line 2231
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 2234
    :cond_15
    move/from16 v0, v26

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_16

    .line 2235
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 2239
    .end local v26    # "result":I
    .end local v27    # "ringerMode":I
    :cond_16
    const/4 v5, 0x3

    if-ne v12, v5, :cond_17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_17

    .line 2241
    const/16 v16, 0x0

    .line 2244
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v25

    .line 2246
    .local v25, "oldIndex":I
    if-eqz v16, :cond_35

    if-eqz p2, :cond_35

    .line 2247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 2250
    const/4 v5, 0x3

    if-ne v12, v5, :cond_19

    const v5, 0x20000380

    and-int/2addr v5, v8

    if-eqz v5, :cond_19

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_19

    .line 2253
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2254
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_18

    .line 2255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 2257
    :cond_18
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2260
    :cond_19
    if-eqz v22, :cond_23

    .line 2262
    const/16 v5, 0x65

    move/from16 v0, p2

    if-ne v0, v5, :cond_21

    .line 2263
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v31 .. v31}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-nez v5, :cond_20

    const/16 v28, 0x1

    .line 2267
    .local v28, "state":Z
    :goto_5
    const/4 v5, 0x3

    if-ne v12, v5, :cond_1a

    .line 2268
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2270
    :cond_1a
    const/16 v30, 0x0

    .local v30, "stream":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v5, v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_25

    .line 2271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v30

    if-ne v12, v5, :cond_1c

    .line 2272
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v30

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1c

    .line 2275
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v30

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2270
    :cond_1c
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 2191
    .end local v25    # "oldIndex":I
    .end local v28    # "state":Z
    .end local v29    # "step":I
    .end local v30    # "stream":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2205
    :cond_1d
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v29

    .restart local v29    # "step":I
    goto/16 :goto_2

    .line 2212
    .end local v29    # "step":I
    :cond_1e
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v12}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v29

    .restart local v29    # "step":I
    goto/16 :goto_3

    .line 2228
    .restart local v26    # "result":I
    .restart local v27    # "ringerMode":I
    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 2257
    .end local v26    # "result":I
    .end local v27    # "ringerMode":I
    .restart local v25    # "oldIndex":I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 2263
    :cond_20
    const/16 v28, 0x0

    goto :goto_5

    .line 2265
    :cond_21
    const/16 v5, -0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_22

    const/16 v28, 0x1

    .restart local v28    # "state":Z
    :goto_7
    goto :goto_5

    .end local v28    # "state":Z
    :cond_22
    const/16 v28, 0x0

    goto :goto_7

    .line 2280
    :cond_23
    if-nez v21, :cond_29

    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_29

    add-int v5, v17, v29

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v8}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v5

    if-nez v5, :cond_29

    .line 2282
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isCoverOpen()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2285
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    .line 2288
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2362
    :cond_25
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v24

    .line 2363
    .local v24, "newIndex":I
    const/4 v5, 0x3

    if-ne v12, v5, :cond_26

    .line 2364
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2366
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v5, :cond_28

    .line 2367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v6

    .line 2369
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v5, :cond_27

    const/4 v5, 0x3

    if-ne v12, v5, :cond_27

    move/from16 v0, v25

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    .line 2372
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2373
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_34

    const/16 v23, 0x19

    .line 2375
    .local v23, "keyCode":I
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2377
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2379
    .end local v23    # "keyCode":I
    :cond_27
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2386
    .end local v24    # "newIndex":I
    :cond_28
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v19

    .line 2387
    .local v19, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 2290
    .end local v19    # "index":I
    :cond_29
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2292
    and-int/lit8 p3, p3, -0x2

    goto/16 :goto_8

    .line 2295
    :cond_2a
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2b

    add-int/lit8 v5, v25, 0x5

    div-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2b

    .line 2297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v5

    if-eqz v5, :cond_25

    .line 2299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x70

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2309
    :cond_2b
    mul-int v5, p2, v29

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v8, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v31 .. v31}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2313
    :cond_2c
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v31 .. v31}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2315
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_33

    .line 2317
    const/4 v5, 0x5

    move/from16 v0, p1

    if-eq v0, v5, :cond_2f

    .line 2318
    const/4 v5, 0x3

    if-ne v12, v5, :cond_2e

    .line 2319
    const/16 v18, 0x0

    .local v18, "current_stream":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v5, v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_2f

    .line 2320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v18

    if-ne v12, v5, :cond_2d

    .line 2321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v18

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2319
    :cond_2d
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 2324
    .end local v18    # "current_stream":I
    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2335
    :cond_2f
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    if-eqz v5, :cond_30

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_30

    .line 2336
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v0, v25

    if-ne v0, v5, :cond_30

    .line 2337
    const-string v5, "AudioService"

    const-string v6, "adjustStreamVolume() Remove the safeVolumeWarning pop-up on S cover."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2339
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    .line 2344
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_32

    .line 2345
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_32

    add-int/lit8 v5, v25, 0x5

    div-int/lit8 v5, v5, 0xa

    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_31

    add-int/lit8 v5, v25, 0x5

    div-int/lit8 v5, v5, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_32

    .line 2348
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2352
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, v31

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2327
    :cond_33
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2f

    .line 2328
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2f

    .line 2329
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x18

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/16 v15, 0x15e

    move/from16 v13, p3

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_c

    .line 2373
    .restart local v24    # "newIndex":I
    :cond_34
    const/16 v23, 0x18

    goto/16 :goto_9

    .line 2377
    .restart local v23    # "keyCode":I
    :catchall_2
    move-exception v5

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v5

    .line 2379
    .end local v23    # "keyCode":I
    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5

    .line 2381
    .end local v24    # "newIndex":I
    :cond_35
    if-nez v16, :cond_28

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2384
    and-int/lit8 p3, p3, -0x2

    goto/16 :goto_a

    .line 2110
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1975
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v7

    .line 1979
    .local v7, "isMute":Z
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1980
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1984
    .local v1, "streamType":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1987
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 1989
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip volume increase action for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when Ear safety pop-up is visible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_2
    :goto_1
    return-void

    .line 1982
    .end local v1    # "streamType":I
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_0

    .line 1994
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v9, v0, v1

    .line 2004
    .local v9, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_5

    .line 2005
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v0, :cond_6

    .line 2006
    const/4 v0, 0x5

    if-eq v9, v0, :cond_5

    .line 2007
    and-int/lit8 p3, p3, -0x5

    .line 2032
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 2033
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2034
    const-string v0, "AudioService"

    const-string v2, "Volume change disabled : cover closed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2009
    :cond_6
    const/4 v0, 0x2

    if-eq v9, v0, :cond_7

    .line 2010
    and-int/lit8 p3, p3, -0x5

    goto :goto_2

    .line 2011
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isTalkBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2012
    :cond_8
    and-int/lit8 p3, p3, -0x5

    goto :goto_2

    .line 2014
    :cond_9
    const-string/jumbo v0, "isRecordActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2015
    .local v8, "isRecordActive":Ljava/lang/String;
    const-string v0, "TRUE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2016
    and-int/lit8 p3, p3, -0x5

    goto :goto_2

    .end local v8    # "isRecordActive":Ljava/lang/String;
    :cond_a
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 2040
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 2924
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2925
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2926
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2928
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2929
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 5369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5370
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5371
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5373
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5374
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 4540
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4542
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 5378
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5380
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5381
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5382
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5384
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private callLcdOn()V
    .locals 4

    .prologue
    .line 10481
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 10482
    .local v0, "pm":Landroid/os/PowerManager;
    const v2, 0x3000000a

    const-string v3, "AudioService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 10485
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10486
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 10488
    :cond_0
    return-void
.end method

.method private callVibrateMsg()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10473
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    if-eq v0, v2, :cond_0

    .line 10474
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->vibrateCall()V

    .line 10475
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 10477
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6d

    const/4 v5, 0x0

    const/16 v6, 0x258

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10479
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 7051
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 7052
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    .prologue
    .line 1530
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1531
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1532
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1533
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 1534
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    const-string v5, "AudioService"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1539
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1540
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1532
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1543
    :cond_2
    monitor-exit v3

    .line 1544
    return-void

    .line 1543
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .prologue
    .line 1548
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1549
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1550
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1552
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1556
    return-void
.end method

.method private checkAndSendEarCareInfo()V
    .locals 14

    .prologue
    const/16 v1, 0x68

    const/4 v3, 0x0

    .line 10052
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 10096
    :cond_0
    :goto_0
    return-void

    .line 10054
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.audio.epinforesponse"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10057
    .local v7, "broadcast":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 10058
    .local v8, "extras":Landroid/os/Bundle;
    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v9

    .line 10059
    .local v9, "isConnected":Z
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    .line 10060
    const/4 v11, 0x0

    .line 10061
    .local v11, "nState":I
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getActiveStreamCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 10062
    const-string v0, "earcare=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10063
    const/4 v11, 0x1

    .line 10068
    :goto_1
    const-string v0, "earcare_percent"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10069
    .local v13, "strState":Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10070
    const-string v12, "earcare_percent="

    .line 10071
    .local v12, "strKey":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 10072
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 10075
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 10076
    .local v10, "nPercent":I
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - send intent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10077
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10078
    const-string/jumbo v0, "percent"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10079
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10080
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10081
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndSendEarCareInfo() state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " percent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10093
    .end local v10    # "nPercent":I
    .end local v12    # "strKey":Ljava/lang/String;
    :cond_2
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - Loop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10095
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const v6, 0xea60

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 10065
    .end local v13    # "strState":Ljava/lang/String;
    :cond_3
    const-string v0, "earcare=noActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10066
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 10085
    .end local v11    # "nState":I
    :cond_4
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - send off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10086
    const-string v0, "earcare=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10087
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10088
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10089
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10090
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method private checkAndSetSplitSound(Landroid/media/AudioAttributes;Ljava/lang/String;I)V
    .locals 3
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "durationHint"    # I

    .prologue
    const/4 v2, 0x0

    .line 10554
    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 10556
    :cond_0
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsExceptionalDevice:Z

    .line 10561
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsExceptionalDevice:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    .line 10567
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;SplitSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10569
    :cond_1
    return-void

    .line 10565
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    goto :goto_0
.end method

.method private checkAndSetThemeSound(Z)V
    .locals 2
    .param p1, "userSwitch"    # Z

    .prologue
    .line 10533
    if-eqz p1, :cond_1

    .line 10534
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 10535
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->unloadSoundEffects()V

    .line 10536
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->loadSoundEffects()Z

    .line 10551
    :cond_0
    :goto_0
    return-void

    .line 10538
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10540
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 10541
    const-string v0, "AudioService"

    const-string v1, "Theme is changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10542
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->unloadSoundEffects()V

    .line 10543
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->loadSoundEffects()Z

    goto :goto_0

    .line 10544
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 10546
    const-string v0, "AudioService"

    const-string v1, "Theme is released."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10547
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->unloadSoundEffects()V

    .line 10548
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->loadSoundEffects()Z

    goto :goto_0
.end method

.method private checkAobleDeviceConnected()V
    .locals 0

    .prologue
    .line 1960
    return-void
.end method

.method private checkDeviceConnected(I)Z
    .locals 7
    .param p1, "checkDevices"    # I

    .prologue
    const v5, 0x8000

    const/high16 v6, -0x80000000

    const/4 v2, 0x1

    .line 10623
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 10624
    and-int v4, p1, v6

    if-nez v4, :cond_2

    .line 10625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 10626
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 10627
    .local v0, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 10628
    monitor-exit v3

    .line 10647
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :goto_1
    return v2

    .line 10625
    .restart local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10631
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_1
    if-ne p1, v5, :cond_4

    .line 10632
    const v4, 0x8000

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    .line 10633
    monitor-exit v3

    goto :goto_1

    .line 10646
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 10637
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 10638
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 10639
    .restart local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    .line 10640
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v4, p1

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 10641
    monitor-exit v3

    goto :goto_1

    .line 10637
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10646
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10647
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkFactoryMode()Z
    .locals 5

    .prologue
    .line 10141
    const/4 v1, 0x0

    .line 10143
    .local v1, "userMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 10148
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10149
    const/4 v2, 0x0

    .line 10152
    :goto_1
    return v2

    .line 10144
    :catch_0
    move-exception v0

    .line 10145
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 10146
    const-string v2, "AudioService"

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10151
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    const-string v2, "AudioService"

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10152
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkFactorySim()Z
    .locals 7

    .prologue
    .line 10157
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 10158
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 10159
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 10160
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10161
    const-string v4, "AudioService"

    const-string v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10162
    const/4 v4, 0x1

    .line 10167
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v4

    .line 10164
    :catch_0
    move-exception v1

    .line 10165
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10167
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkForRingerModeChange(IIIZ)I
    .locals 10
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z

    .prologue
    .line 4896
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    .line 4897
    .local v2, "isTv":Z
    :goto_0
    const/4 v3, 0x1

    .line 4898
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    .line 4900
    .local v4, "ringerMode":I
    packed-switch v4, :pswitch_data_0

    .line 4999
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    :cond_0
    :goto_1
    const-string v5, "AudioService.checkForRingerModeChange"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 5005
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 5007
    return v3

    .line 4896
    .end local v2    # "isTv":Z
    .end local v3    # "result":I
    .end local v4    # "ringerMode":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4902
    .restart local v2    # "isTv":Z
    .restart local v3    # "result":I
    .restart local v4    # "ringerMode":I
    :pswitch_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_6

    .line 4903
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_5

    .line 4913
    if-gt p3, p1, :cond_2

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_3

    :cond_2
    if-ge p1, p3, :cond_4

    .line 4915
    :cond_3
    const/4 v4, 0x1

    .line 4916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    .line 4928
    :cond_4
    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_1

    .line 4923
    :cond_5
    if-ne p1, p3, :cond_4

    .line 4925
    const/4 v4, 0x0

    goto :goto_2

    .line 4929
    :cond_6
    const/16 v5, 0x65

    if-eq p2, v5, :cond_7

    if-eqz v2, :cond_0

    const/16 v5, -0x64

    if-ne p2, v5, :cond_0

    .line 4931
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_8

    .line 4932
    const/4 v4, 0x1

    .line 4937
    :goto_3
    and-int/lit8 v3, v3, -0x2

    goto :goto_1

    .line 4934
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 4941
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_9

    .line 4942
    const-string v5, "AudioService"

    const-string v6, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4946
    :cond_9
    const/4 v5, -0x1

    if-ne p2, v5, :cond_d

    .line 4948
    if-eqz v2, :cond_b

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_b

    if-eqz p4, :cond_b

    .line 4949
    const/4 v4, 0x2

    .line 4970
    :cond_a
    :goto_4
    and-int/lit8 v3, v3, -0x2

    .line 4971
    goto :goto_1

    .line 4950
    :cond_b
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 4951
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v5, :cond_c

    .line 4952
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long v0, v6, v8

    .line 4954
    .local v0, "diff":J
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_a

    .line 4956
    const/4 v4, 0x0

    goto :goto_4

    .line 4959
    .end local v0    # "diff":J
    :cond_c
    or-int/lit16 v3, v3, 0x800

    goto :goto_4

    .line 4962
    :cond_d
    const/4 v5, 0x1

    if-eq p2, v5, :cond_e

    const/16 v5, 0x65

    if-eq p2, v5, :cond_e

    const/16 v5, 0x64

    if-ne p2, v5, :cond_a

    .line 4965
    :cond_e
    const/4 v4, 0x2

    .line 4966
    const/4 v5, 0x1

    if-eq p2, v5, :cond_f

    const/16 v5, 0x64

    if-ne p2, v5, :cond_a

    .line 4967
    :cond_f
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_4

    .line 4973
    :pswitch_2
    if-eqz v2, :cond_11

    const/4 v5, -0x1

    if-ne p2, v5, :cond_11

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_11

    if-eqz p4, :cond_11

    .line 4975
    const/4 v4, 0x2

    .line 4996
    :cond_10
    :goto_5
    and-int/lit8 v3, v3, -0x2

    .line 4997
    goto/16 :goto_1

    .line 4976
    :cond_11
    const/4 v5, 0x1

    if-eq p2, v5, :cond_12

    const/16 v5, 0x65

    if-eq p2, v5, :cond_12

    const/16 v5, 0x64

    if-ne p2, v5, :cond_10

    .line 4979
    :cond_12
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v5, :cond_13

    .line 4980
    or-int/lit16 v3, v3, 0x80

    goto :goto_5

    .line 4982
    :cond_13
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    if-ne p2, v5, :cond_14

    .line 4983
    const/4 v4, 0x1

    goto :goto_5

    .line 4987
    :cond_14
    const/4 v4, 0x2

    .line 4989
    const/4 v5, 0x1

    if-eq p2, v5, :cond_15

    const/16 v5, 0x64

    if-ne p2, v5, :cond_10

    .line 4990
    :cond_15
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_5

    .line 4900
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    .prologue
    .line 1560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1561
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v2, v0

    .line 1562
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1563
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v3, 0x1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1566
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 8848
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 8850
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8851
    monitor-exit v2

    .line 8873
    :goto_0
    return v1

    .line 8853
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    if-ne v3, v4, :cond_3

    const v3, 0x2000018c

    and-int/2addr v3, p3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-lt p2, v3, :cond_3

    .line 8861
    iget v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v3, p3}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 8862
    monitor-exit v2

    goto :goto_0

    .line 8874
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8865
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 8866
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8867
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callLcdOn()V

    .line 8868
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callVibrateMsg()V

    .line 8871
    :cond_2
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 8873
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 4442
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 4446
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 4448
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 12
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 7436
    const/4 v7, 0x0

    .line 7437
    .local v7, "delay":I
    if-nez p2, :cond_3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 7459
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurOutDevice()I

    move-result v8

    .line 7460
    .local v8, "outDevice":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    .line 7462
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 7463
    move v8, p1

    .line 7465
    :cond_1
    and-int v0, v8, p1

    if-nez v0, :cond_2

    const v0, 0x20000380

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 7483
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7491
    const/16 v0, 0x400

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7492
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hdmi delay in Factorymode  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7505
    .end local v8    # "outDevice":I
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7511
    :cond_4
    sget-object v1, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    .line 7512
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 7513
    .local v10, "time":J
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-lez v0, :cond_5

    .line 7514
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v10

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    .line 7516
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7518
    .end local v10    # "time":J
    :cond_6
    return v7

    .line 7493
    .restart local v8    # "outDevice":I
    :cond_7
    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    :cond_8
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 7495
    :cond_9
    const/4 v7, 0x0

    .line 7496
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in call wired headset/headphone delay ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7498
    :cond_a
    const/16 v7, 0x1f4

    goto :goto_0

    .line 7516
    .end local v8    # "outDevice":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 7725
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7726
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7727
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 7728
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 7729
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 7730
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 7731
    .local v19, "status":I
    if-nez v19, :cond_8

    .line 7732
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 7733
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v5, v16

    .line 7734
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 7735
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/high16 v21, 0x40000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 7738
    :cond_1
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 7739
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 7740
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7741
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget v8, v3, v12

    .line 7743
    .local v8, "format":I
    if-eqz v8, :cond_2

    .line 7744
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7741
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 7747
    .end local v8    # "format":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 7748
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 7749
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 7748
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 7751
    :cond_4
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 7754
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    const/4 v15, 0x0

    .line 7755
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_7

    aget v14, v3, v12

    .line 7756
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 7757
    .local v4, "channelCount":I
    if-le v4, v15, :cond_6

    .line 7758
    move v15, v4

    .line 7755
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 7761
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_7
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 7767
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 1510
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1511
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1512
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1513
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 1569
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1570
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1572
    .local v2, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1573
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v2, v0

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1577
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1578
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1579
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3031
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3032
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3033
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 3034
    .local v0, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3035
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 3036
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3037
    const/4 v2, 0x1

    .line 3040
    .end local v0    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 4503
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 4504
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    .line 4505
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 4507
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 4508
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 4509
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4511
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4522
    :cond_1
    :goto_0
    monitor-exit v7

    .line 4523
    return-void

    .line 4514
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4516
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 4522
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4520
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9514
    const-string v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9515
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 9516
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9517
    .local v1, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 9519
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9520
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9042
    const-string v1, "\nRinger mode: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mode (internal) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mode (external) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9045
    const-string v1, "affected"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 9046
    const-string/jumbo v1, "muted"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 9047
    const-string v1, "- delegate = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 9049
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 9050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MODE : Caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IsExternal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9053
    :cond_1
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .prologue
    const/16 v4, 0x2c

    .line 9056
    const-string v3, "- ringer mode "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " streams = 0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9057
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9058
    if-eqz p3, :cond_5

    .line 9059
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9060
    const/4 v0, 0x1

    .line 9061
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 9062
    const/4 v3, 0x1

    shl-int v2, v3, v1

    .line 9063
    .local v2, "stream":I
    and-int v3, p3, v2

    if-eqz v3, :cond_1

    .line 9064
    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 9065
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9066
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr p3, v3

    .line 9067
    const/4 v0, 0x0

    .line 9061
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9070
    .end local v2    # "stream":I
    :cond_2
    if-eqz p3, :cond_4

    .line 9071
    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 9072
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 9074
    :cond_4
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 9076
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9077
    return-void
.end method

.method private dumpScoClients(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9080
    const-string v3, "\nSco Client list entries: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9081
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 9082
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 9083
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 9084
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    .line 9085
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9083
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9087
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_0
    monitor-exit v4

    .line 9088
    return-void

    .line 9087
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1582
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1584
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1587
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1590
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->dump(Ljava/io/PrintWriter;)V

    .line 1592
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    const-string v2, "\nMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamMutePackagedump:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1600
    :cond_1
    const-string v2, "\nUnMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 1602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamUnMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamUnMutePackagedump:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1604
    :cond_2
    const-string v2, "\nToggleMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    .line 1606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamToggleMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1608
    :cond_3
    const-string v2, "\nVolume change calling pid\'s by set"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    .line 1610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INDEX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->uIdOfsetVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1612
    :cond_4
    const-string v2, "\nVolume change calling pid\'s by adjust"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_5

    .line 1614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INDEX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolumeIndex:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->uIdOfadjustVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1616
    :cond_5
    const-string v2, "\nBT A2DP on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- A2DP NONE is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- NO_A2DP is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    const-string v2, "\nBT SCO on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    const-string v2, "\nSpeaker on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 8819
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 8820
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const v7, 0x2000018c

    .line 8821
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 8823
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    .line 8824
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 8825
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 8826
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 8828
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 8829
    .local v10, "index":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    .line 8830
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 8833
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 8835
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8843
    :cond_1
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 8844
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 8845
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 9161
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->access$14800(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$ControllerService;->access$14800(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9166
    :goto_0
    return-void

    .line 9164
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 5083
    sparse-switch p1, :sswitch_data_0

    .line 5092
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5094
    :sswitch_0
    return-void

    .line 5083
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 3293
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3296
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 5097
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 5098
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5100
    :cond_1
    return-void
.end method

.method private getActiveStreamCount()I
    .locals 3

    .prologue
    .line 10099
    const/4 v0, 0x0

    .line 10100
    .local v0, "nReturn":I
    const/4 v1, 0x0

    .local v1, "nStreamNum":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10101
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10102
    add-int/lit8 v0, v0, 0x1

    .line 10100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10105
    :cond_1
    return v0
.end method

.method private getActiveStreams()I
    .locals 6

    .prologue
    .line 5166
    const-string v3, "audioParam;activeStream"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5167
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 5169
    .local v0, "activeStream":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5170
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "active stream is 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 5175
    :goto_0
    return v3

    .line 5171
    :catch_0
    move-exception v1

    .line 5172
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "AudioService"

    const-string v4, "Can\'t get active stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5173
    const v3, 0x8000

    goto :goto_0
.end method

.method private getAddressForDevice(I)Ljava/lang/String;
    .locals 9
    .param p1, "device"    # I

    .prologue
    .line 5682
    const-string v1, ""

    .line 5686
    .local v1, "addr":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 5687
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v7, :cond_0

    .line 5688
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5689
    .local v0, "activeBT":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 5690
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 5729
    .end local v0    # "activeBT":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v7

    .line 5696
    :cond_0
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    .line 5697
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v7, :cond_2

    .line 5698
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 5699
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_2

    .line 5700
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 5701
    .local v2, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5702
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5713
    .end local v2    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const v7, 0x8000

    if-ne p1, v7, :cond_3

    .line 5714
    const-string v7, "0"

    invoke-direct {p0, p1, v7}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5715
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5716
    .local v6, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v6, :cond_3

    .line 5717
    const-string v7, "0"

    goto :goto_0

    .line 5723
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_3
    const-string v7, ""

    invoke-direct {p0, p1, v7}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5724
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5725
    .restart local v6    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v6, :cond_4

    .line 5726
    iget-object v1, v6, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    :cond_4
    move-object v7, v1

    .line 5729
    goto :goto_0
.end method

.method private getAvailableDeviceMaskForQuickSoundPath()I
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 10720
    const/high16 v0, 0x2000000

    .line 10721
    .local v0, "alwaysBlockedDevices":I
    const/4 v1, 0x0

    .line 10722
    .local v1, "blockDevices":I
    const v2, 0x7fffffff

    .line 10724
    .local v2, "mask":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 10726
    const/high16 v3, 0x2000000

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10727
    or-int/2addr v1, v6

    .line 10730
    :cond_0
    const/high16 v3, -0x7ffe0000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10731
    const v3, 0x20000380

    or-int/2addr v1, v3

    .line 10734
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 10735
    or-int/2addr v1, v6

    .line 10738
    :cond_2
    const v3, 0x8000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10739
    const/high16 v3, 0x1000000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10740
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 10750
    :cond_3
    :goto_0
    const/16 v3, 0xa

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10751
    or-int/2addr v1, v6

    .line 10754
    :cond_4
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_5

    .line 10755
    or-int/2addr v1, v6

    .line 10757
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10759
    or-int v3, v0, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 10760
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quick sound path is available with bit mask ==> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10761
    return v2

    .line 10745
    :cond_6
    or-int/2addr v1, v6

    goto :goto_0

    .line 10757
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 4487
    const/4 v8, 0x0

    .line 4488
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 4489
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 4490
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 4497
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4499
    return v8

    :cond_1
    move v6, v2

    .line 4497
    goto :goto_0
.end method

.method private getCurOutDevice()I
    .locals 3

    .prologue
    .line 10171
    const-string v1, "audioParam;outDevice;audioservice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10172
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10173
    :cond_0
    const-string v1, "AudioService"

    const-string/jumbo v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10174
    const/4 v1, -0x1

    .line 10176
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getCurrentUserId()I
    .locals 4

    .prologue
    .line 2849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2851
    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2852
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2856
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2858
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    .line 2853
    :catch_0
    move-exception v1

    .line 2856
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2858
    const/4 v1, 0x0

    goto :goto_0

    .line 2856
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 5433
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 5434
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 5441
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 5442
    const/4 v0, 0x2

    .line 5453
    :cond_0
    :goto_0
    return v0

    .line 5443
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 5444
    const/high16 v0, 0x40000

    goto :goto_0

    .line 5445
    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 5446
    const/high16 v0, 0x80000

    goto :goto_0

    .line 5447
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 5448
    const/high16 v0, 0x200000

    goto :goto_0

    .line 5450
    :cond_4
    const v1, 0x20000380

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private getDevicesForStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 5457
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .prologue
    .line 5461
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 5462
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v0

    monitor-exit v1

    return v0

    .line 5464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFineVolume()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2538
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v2

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 2539
    .local v0, "index":I
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2538
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method private getFlagsForDeviceConnect(I)I
    .locals 1
    .param p1, "connected"    # I

    .prologue
    .line 7716
    const/high16 v0, 0x2000000

    .line 7717
    .local v0, "flags":I
    if-nez p1, :cond_0

    .line 7718
    const/high16 v0, 0x42000000    # 32.0f

    .line 7720
    .end local v0    # "flags":I
    :cond_0
    return v0
.end method

.method private getNewWhiteListVersion()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 8283
    const/4 v12, 0x0

    .line 8284
    .local v12, "versionCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 8286
    .local v11, "strNewVersion":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8287
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->VERION_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13700()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->VERSION_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13800()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "audio"

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 8290
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 8291
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8292
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 8297
    :cond_0
    if-eqz v12, :cond_1

    .line 8298
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 8299
    const/4 v12, 0x0

    .line 8303
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectPolicy new version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8304
    if-nez v11, :cond_4

    .line 8305
    const-string v1, "AudioService"

    const-string v2, "EffectPolicy version value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v13

    .line 8334
    .end local v11    # "strNewVersion":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v11

    .line 8294
    .restart local v11    # "strNewVersion":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 8295
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8297
    if-eqz v12, :cond_1

    .line 8298
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 8299
    const/4 v12, 0x0

    goto :goto_0

    .line 8297
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_3

    .line 8298
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 8299
    const/4 v12, 0x0

    :cond_3
    throw v1

    .line 8309
    :cond_4
    const-string/jumbo v1, "whitelistVersion"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8310
    .local v10, "strCurVersion":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectPolicy current version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8311
    if-eqz v10, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8315
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8316
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 8317
    .local v9, "newVersion":Ljava/util/Date;
    const/4 v6, 0x0

    .line 8319
    .local v6, "curVersion":Ljava/util/Date;
    :try_start_2
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 8320
    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 8326
    if-nez v9, :cond_5

    move-object v11, v13

    .line 8327
    goto :goto_1

    .line 8321
    :catch_1
    move-exception v8

    .line 8322
    .local v8, "e":Ljava/text/ParseException;
    const-string v1, "AudioService"

    const-string/jumbo v2, "version parsing error"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v11, v13

    .line 8323
    goto :goto_1

    .line 8328
    .end local v8    # "e":Ljava/text/ParseException;
    :cond_5
    if-eqz v6, :cond_2

    .line 8331
    invoke-virtual {v9, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_2

    move-object v11, v13

    .line 8334
    goto :goto_1
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 4451
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 4452
    const/4 v0, 0x0

    .line 4453
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 4454
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4455
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4456
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 4457
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 4463
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 4454
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_0

    .line 4459
    :cond_1
    if-eqz p2, :cond_2

    .line 4460
    :try_start_3
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4461
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4463
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1

    .line 4464
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_3

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_2
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8589
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 8591
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 8592
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 8593
    .local v11, "newOrientation":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    .line 8594
    iput v11, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    .line 8595
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 8598
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "AudioService"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8606
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    .line 8607
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8608
    const/4 v8, 0x0

    .line 8609
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8610
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_1

    .line 8611
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 8612
    const/4 v8, 0x1

    .line 8614
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8615
    if-eqz v8, :cond_3

    .line 8616
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8617
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 8618
    .local v12, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    .line 8619
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 8620
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 8628
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 8631
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_5

    const/16 v4, 0xb

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8640
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8647
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8648
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8652
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    .line 8614
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 8647
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 8649
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 8650
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 8623
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "AudioService"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 8624
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 8631
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 7330
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_0

    .line 7331
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDeviceConnection("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7334
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 7335
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7336
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_1

    .line 7337
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7339
    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7340
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 7341
    .local v2, "isConnected":Z
    :goto_0
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_2

    .line 7342
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSpec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is(already)Connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7345
    :cond_2
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7346
    if-nez p1, :cond_4

    if-nez v2, :cond_4

    .line 7347
    const-string v5, "AudioService"

    const-string/jumbo v7, "handleDeviceConnection no more unavailable device, return false"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7348
    const/4 v5, 0x0

    monitor-exit v6

    .line 7417
    :goto_1
    return v5

    .line 7340
    .end local v2    # "isConnected":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 7350
    .restart local v2    # "isConnected":Z
    :cond_4
    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    const/16 v5, 0x1000

    if-eq p2, v5, :cond_5

    const/16 v5, 0x400

    if-ne p2, v5, :cond_7

    .line 7353
    :cond_5
    const/4 v5, 0x0

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7357
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7359
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7360
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7363
    :cond_6
    const/4 v2, 0x0

    .line 7366
    :cond_7
    if-eqz p1, :cond_d

    if-nez v2, :cond_d

    .line 7368
    const/4 v5, 0x4

    if-eq p2, v5, :cond_8

    const/16 v5, 0x8

    if-ne p2, v5, :cond_a

    .line 7370
    :cond_8
    const-string v5, "AudioService"

    const-string/jumbo v7, "onReceive set Screen power on for Contextual Awareness."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7371
    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "c7ltezc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "c5pltezc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 7373
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isScreenOffMusicOn()I

    move-result v5

    iput v5, p0, Lcom/android/server/audio/AudioService;->mIsScreenOffMusicOn:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 7374
    const-string v5, "AudioService"

    const-string/jumbo v7, "lcd on will be handled by screen off music"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7384
    :cond_9
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->setEarphoneStateForSARTest(Z)V

    .line 7387
    :cond_a
    const/4 v5, 0x1

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 7389
    .local v4, "res":I
    if-eqz v4, :cond_c

    .line 7390
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not connecting device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " due to command error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7392
    const/4 v5, 0x0

    monitor-exit v6

    goto/16 :goto_1

    .line 7416
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v4    # "res":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 7377
    .restart local v0    # "deviceKey":Ljava/lang/String;
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v2    # "isConnected":Z
    :cond_b
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 7378
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v5, 0xc

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 7379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_2

    .line 7394
    .end local v3    # "pm":Landroid/os/PowerManager;
    .restart local v4    # "res":I
    :cond_c
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v7, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7396
    new-instance v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v5, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7398
    const/4 v5, 0x1

    monitor-exit v6

    goto/16 :goto_1

    .line 7399
    .end local v4    # "res":I
    :cond_d
    if-nez p1, :cond_11

    if-eqz v2, :cond_11

    .line 7401
    const/4 v5, 0x4

    if-eq p2, v5, :cond_e

    const/16 v5, 0x8

    if-ne p2, v5, :cond_f

    .line 7403
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->setEarphoneStateForSARTest(Z)V

    .line 7406
    :cond_f
    const/4 v5, 0x0

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7408
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7410
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 7411
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7414
    :cond_10
    const/4 v5, 0x1

    monitor-exit v6

    goto/16 :goto_1

    .line 7416
    :cond_11
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7417
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3046
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3047
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3048
    const/4 v1, 0x1

    .line 3051
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 7056
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private hasVibrator()Z
    .locals 1

    .prologue
    .line 9783
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    return v0
.end method

.method private increaseEARCount()V
    .locals 8

    .prologue
    .line 10181
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/earjack_count"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10182
    .local v1, "strEARCount":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10183
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 10184
    .local v2, "earjack_count":J
    const-string v4, "/efs/FactoryApp/earjack_count"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 10193
    .end local v1    # "strEARCount":Ljava/lang/String;
    .end local v2    # "earjack_count":J
    :goto_0
    return-void

    .line 10186
    .restart local v1    # "strEARCount":Ljava/lang/String;
    :cond_0
    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 10188
    .end local v1    # "strEARCount":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 10189
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10190
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 10191
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initCPUBoost(Z)V
    .locals 9
    .param p1, "voipon"    # Z

    .prologue
    const/4 v8, 0x0

    .line 10014
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 10015
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 10019
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 10020
    if-eqz p1, :cond_2

    .line 10021
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string/jumbo v3, "persist.audio.voipcpufreq"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 10032
    :cond_1
    :goto_0
    return-void

    .line 10023
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    .line 10024
    .local v7, "supportedCPUFreqTable":[I
    const-string/jumbo v0, "persist.audio.cpufreq"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 10025
    .local v6, "cpufreq":I
    if-eqz v7, :cond_1

    .line 10026
    if-nez v6, :cond_3

    .line 10027
    aget v6, v7, v8

    .line 10028
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 5137
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCoverOpen()Z
    .locals 2

    .prologue
    .line 10197
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 10198
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10199
    const/4 v1, 0x0

    .line 10200
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFMRadioRecording()Z
    .locals 2

    .prologue
    .line 10572
    const-string v1, "audioParam;isFMRadioRecording"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10573
    .local v0, "isFMRadioRecordingMode":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10574
    const/4 v1, 0x1

    .line 10577
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10134
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsFactoryMode:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsFactorySim:Z

    if-ne v1, v0, :cond_1

    .line 10137
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5108
    const/4 v0, 0x0

    .line 5110
    .local v0, "IsInCall":Z
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "telecom"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 5113
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5118
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 5119
    :goto_0
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 5122
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    or-int/2addr v0, v6

    .line 5125
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5127
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    return v5

    :cond_4
    move v0, v5

    .line 5118
    goto :goto_0
.end method

.method private isMuteAdjust(I)Z
    .locals 1
    .param p1, "adjust"    # I

    .prologue
    .line 5103
    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 260
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestrictionHeadphone()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 10456
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 10457
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isHeadPhoneEnabled"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 10458
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 10460
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10461
    const-string/jumbo v0, "isHeadPhoneEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10462
    const-string v0, "AudioService"

    const-string v2, "Headset disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 10469
    :goto_0
    return v0

    .line 10466
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 10469
    goto :goto_0

    .line 10466
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isScreenOffMusicOn()I
    .locals 15

    .prologue
    .line 7281
    const-string v13, "com.sec.android.app.music.shared"

    .line 7282
    .local v13, "secMusicPackageName":Ljava/lang/String;
    const-string v11, "com.samsung.android.app.music.chn.shared"

    .line 7283
    .local v11, "onlineMusicPackageName":Ljava/lang/String;
    const-string/jumbo v14, "setting/ready_screen_off_music"

    .line 7284
    .local v14, "tableName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 7286
    .local v8, "isScreenOffMusicOn":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    .line 7288
    .local v9, "isSecMusicScreenOffProviderExist":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    .line 7291
    .local v7, "isOnlineMusicScreenOffProviderExist":Z
    :goto_1
    if-nez v9, :cond_3

    if-nez v7, :cond_3

    .line 7292
    const-string v2, "AudioService"

    const-string v3, "ScreenOffMusicProvider does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7293
    const/4 v8, 0x0

    .line 7325
    :cond_0
    :goto_2
    return v8

    .line 7286
    .end local v7    # "isOnlineMusicScreenOffProviderExist":Z
    .end local v9    # "isSecMusicScreenOffProviderExist":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 7288
    .restart local v9    # "isSecMusicScreenOffProviderExist":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 7296
    .restart local v7    # "isOnlineMusicScreenOffProviderExist":Z
    :cond_3
    const/4 v10, 0x0

    .line 7297
    .local v10, "itemCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7300
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    if-ne v9, v2, :cond_5

    .line 7301
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7306
    .local v1, "uri":Landroid/net/Uri;
    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7307
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_6

    .line 7308
    :cond_4
    const-string v2, "AudioService"

    const-string/jumbo v3, "screen off music query failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7318
    :goto_4
    if-eqz v10, :cond_0

    .line 7319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7320
    const/4 v10, 0x0

    goto :goto_2

    .line 7304
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 7311
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7312
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 7313
    .local v12, "result":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    :goto_5
    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 7315
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v12    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 7316
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7318
    if-eqz v10, :cond_0

    .line 7319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7320
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 7318
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 7319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7320
    const/4 v10, 0x0

    :cond_8
    throw v2
.end method

.method private isSmartDockConnected()Z
    .locals 20

    .prologue
    .line 10376
    const-wide/16 v18, 0x64

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10380
    :goto_0
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v4, v0, [C

    .line 10381
    .local v4, "buffer":[C
    const-string v3, "/sys/class/sec/switch/device"

    .line 10382
    .local v3, "SmartDockFile":Ljava/lang/String;
    const-string v2, "/sys/class/sec/switch/adc"

    .line 10383
    .local v2, "SmartDName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 10384
    .local v9, "file":Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 10385
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 10386
    .local v15, "isSmartDockString":Z
    const/4 v14, 0x0

    .line 10387
    .local v14, "isSmartDockADC":Z
    const/4 v6, 0x0

    .line 10388
    .local v6, "deviceValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 10393
    .local v5, "deviceVal":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10394
    .end local v9    # "file":Ljava/io/FileReader;
    .local v10, "file":Ljava/io/FileReader;
    const/16 v17, 0x0

    const/16 v18, 0x8

    :try_start_2
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v16

    .line 10395
    .local v16, "len":I
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 10396
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 10397
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    add-int/lit8 v18, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .end local v6    # "deviceValue":Ljava/lang/String;
    .local v7, "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .line 10401
    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    :goto_1
    const-string v17, "10"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 10402
    const/4 v14, 0x1

    .line 10407
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10408
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v13, "in":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 10409
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 10411
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v17

    if-nez v17, :cond_4

    .line 10412
    :cond_0
    const/16 v17, 0x0

    .line 10439
    if-eqz v10, :cond_1

    .line 10440
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 10442
    :cond_1
    if-eqz v13, :cond_2

    .line 10443
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 10451
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :goto_3
    return v17

    .line 10377
    .end local v2    # "SmartDName":Ljava/lang/String;
    .end local v3    # "SmartDockFile":Ljava/lang/String;
    .end local v4    # "buffer":[C
    .end local v5    # "deviceVal":Ljava/lang/String;
    .end local v6    # "deviceValue":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v14    # "isSmartDockADC":Z
    .end local v15    # "isSmartDockString":Z
    :catch_0
    move-exception v8

    .line 10378
    .local v8, "e":Ljava/lang/Exception;
    const-string v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Thread.sleep() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10399
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "SmartDName":Ljava/lang/String;
    .restart local v3    # "SmartDockFile":Ljava/lang/String;
    .restart local v4    # "buffer":[C
    .restart local v5    # "deviceVal":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "isSmartDockADC":Z
    .restart local v15    # "isSmartDockString":Z
    .restart local v16    # "len":I
    :cond_3
    :try_start_5
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v6    # "deviceValue":Ljava/lang/String;
    .restart local v7    # "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    goto :goto_1

    .line 10445
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    .line 10447
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 10414
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 10415
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    sget-object v17, Lcom/android/server/audio/AudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    if-nez v15, :cond_6

    .line 10416
    sget-object v17, Lcom/android/server/audio/AudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 10417
    const/4 v15, 0x1

    .line 10415
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 10420
    :cond_6
    const-string v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSmartDockString = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 10424
    if-eqz v15, :cond_9

    .line 10425
    const/16 v17, 0x1

    .line 10439
    if-eqz v10, :cond_7

    .line 10440
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 10442
    :cond_7
    if-eqz v13, :cond_8

    .line 10443
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    :goto_5
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 10448
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 10445
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    .line 10447
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    move-object v12, v13

    .line 10439
    .end local v11    # "i":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :cond_a
    if-eqz v10, :cond_b

    .line 10440
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 10442
    :cond_b
    if-eqz v12, :cond_c

    .line 10443
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_c
    move-object v9, v10

    .line 10451
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :cond_d
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 10445
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v16    # "len":I
    :catch_3
    move-exception v8

    .line 10447
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 10449
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_6

    .line 10428
    .end local v8    # "e":Ljava/io/IOException;
    .end local v16    # "len":I
    :catch_4
    move-exception v8

    .line 10429
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_9
    const-string v17, "AudioService"

    const-string v18, "checkSmartDock This kernel does not have wired headset support "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 10439
    if-eqz v9, :cond_e

    .line 10440
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 10442
    :cond_e
    if-eqz v12, :cond_f

    .line 10443
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_f
    :goto_8
    move/from16 v17, v14

    .line 10448
    goto/16 :goto_3

    .line 10445
    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    .line 10447
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 10435
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 10436
    .local v8, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    const-string v17, "AudioService"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 10439
    if-eqz v9, :cond_10

    .line 10440
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 10442
    :cond_10
    if-eqz v12, :cond_d

    .line 10443
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_6

    .line 10445
    :catch_7
    move-exception v8

    .line 10447
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 10438
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 10439
    :goto_a
    if-eqz v9, :cond_11

    .line 10440
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 10442
    :cond_11
    if-eqz v12, :cond_12

    .line 10443
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 10448
    :cond_12
    :goto_b
    throw v17

    .line 10445
    :catch_8
    move-exception v8

    .line 10447
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 10438
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_a

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_a

    .line 10435
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_9
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_9

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_a
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_9

    .line 10428
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_b
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_7

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_c
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_7
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 5016
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUSBCheckStreamActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9971
    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 12
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v10, 0x0

    .line 8438
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 8441
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 8442
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 8443
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 8446
    :cond_0
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v4, v10

    .line 8449
    .local v4, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v8, v4, v9, v10}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 8454
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_4

    .line 8455
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 8457
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_2

    .line 8454
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8451
    .end local v2    # "j":I
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 8452
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 8461
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "j":I
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_1

    .line 8465
    const-string v8, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 8469
    if-eqz v1, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 8475
    :cond_3
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8476
    .local v7, "uid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string/jumbo v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 8479
    .end local v7    # "uid":I
    :catch_1
    move-exception v0

    .line 8480
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "AudioService"

    const-string v9, "Error calling killUid"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 8483
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_4
    return-void
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3744
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 3746
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 3747
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 3745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3749
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 14

    .prologue
    .line 3752
    const/4 v9, 0x0

    .line 3755
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3829
    :cond_0
    :goto_0
    return-void

    .line 3759
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 3762
    :try_start_0
    iget-object v11, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 3764
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3765
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3766
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3768
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3770
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3771
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3772
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 3783
    :goto_1
    if-eqz v7, :cond_3

    .line 3784
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3785
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3786
    if-nez v1, :cond_5

    .line 3825
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 3826
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 3775
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3776
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3777
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3778
    const/4 v7, 0x1

    .line 3779
    goto :goto_1

    .line 3789
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3790
    const/4 v11, 0x0

    const-string/jumbo v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3791
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 3795
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3796
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 3803
    .local v4, "fx":I
    const/16 v11, 0x64

    if-lt v4, v11, :cond_6

    .line 3804
    add-int/lit8 v11, v4, -0x64

    add-int/lit8 v4, v11, 0xa

    .line 3807
    :cond_6
    :try_start_3
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3808
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_7

    .line 3809
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 3810
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3812
    :cond_7
    iget-object v11, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3818
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3819
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3825
    if-eqz v9, :cond_0

    .line 3826
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 3797
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 3798
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 3820
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 3821
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3825
    if-eqz v9, :cond_0

    .line 3826
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 3822
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 3823
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3825
    if-eqz v9, :cond_0

    .line 3826
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 3825
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_8

    .line 3826
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x80

    .line 6950
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 6951
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6953
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 6954
    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6957
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6958
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6963
    new-instance v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v0, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6965
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .prologue
    .line 7021
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7023
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/16 v2, 0x80

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7026
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7027
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7029
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 6987
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6988
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 6989
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6990
    const-string v0, ""

    invoke-static {v3, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6992
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6995
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v0, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6996
    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7005
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7006
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 7008
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 7009
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7010
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7013
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7015
    :cond_2
    return-void

    .line 6989
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7013
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x7ffe0000

    .line 7033
    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v4, v0, p1, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7035
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string v3, ""

    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7039
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 7043
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v2, v0, p1, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7045
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7047
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    .prologue
    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private muteRingerModeStreams()V
    .locals 18

    .prologue
    .line 3373
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    .line 3374
    .local v11, "numStreamTypes":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v12, 0x1

    .line 3376
    .local v12, "ringerModeMute":Z
    :goto_0
    add-int/lit8 v14, v11, -0x1

    .local v14, "streamType":I
    :goto_1
    if-ltz v14, :cond_9

    .line 3377
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v10

    .line 3378
    .local v10, "isMuted":Z
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    .line 3379
    .local v13, "shouldMute":Z
    :goto_2
    if-ne v10, v13, :cond_3

    .line 3376
    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 3374
    .end local v10    # "isMuted":Z
    .end local v12    # "ringerModeMute":Z
    .end local v13    # "shouldMute":Z
    .end local v14    # "streamType":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 3378
    .restart local v10    # "isMuted":Z
    .restart local v12    # "ringerModeMute":Z
    .restart local v14    # "streamType":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 3380
    .restart local v13    # "shouldMute":Z
    :cond_3
    if-nez v13, :cond_8

    .line 3384
    const/4 v8, 0x2

    .line 3385
    .local v8, "checkStream":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_4

    .line 3386
    const/4 v8, 0x5

    .line 3390
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v14

    if-ne v1, v8, :cond_7

    .line 3391
    const-class v17, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v17

    .line 3392
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v16, v1, v14

    .line 3393
    .local v16, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_6

    .line 3394
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3395
    .local v4, "device":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 3396
    .local v15, "value":I
    if-nez v15, :cond_5

    .line 3397
    const/16 v1, 0xa

    const-string v2, "AudioService"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 3398
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 3393
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3402
    .end local v4    # "device":I
    .end local v15    # "value":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    .line 3403
    .restart local v4    # "device":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v14

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3410
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3412
    .end local v4    # "device":I
    .end local v9    # "i":I
    .end local v16    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v14

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3413
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    .line 3410
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3416
    .end local v8    # "checkStream":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v14

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3417
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    .line 3420
    .end local v10    # "isMuted":Z
    .end local v13    # "shouldMute":Z
    :cond_9
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    .prologue
    .line 5468
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 5469
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5470
    if-eq v0, p1, :cond_0

    .line 5471
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 5469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5474
    :cond_1
    monitor-exit v2

    .line 5475
    return-void

    .line 5474
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 4545
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 4546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4547
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4548
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4550
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4551
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 4553
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const v10, 0xea60

    .line 4791
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 4792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4793
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 4795
    .local v7, "device":I
    const v0, 0x2000018c

    and-int/2addr v0, v7

    if-eqz v0, :cond_0

    .line 4796
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4803
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 4804
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_0

    .line 4807
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4808
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 4809
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 4810
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4818
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_0
    monitor-exit v9

    .line 4819
    return-void

    .line 4818
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 11
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 4826
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 4827
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 4828
    .local v7, "mcc":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 4838
    :cond_0
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 4839
    const/4 v9, 0x1

    .line 4841
    .local v9, "safeMediaVolumeEnabled":Z
    const-string v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4847
    .local v8, "safeMediaVolumeBypass":Z
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v8

    .line 4850
    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    .line 4851
    const/4 v3, 0x3

    .line 4855
    .local v3, "persistedState":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 4866
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4867
    const-string v0, "AudioService"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 4874
    :cond_1
    :goto_0
    iput v7, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 4875
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4883
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeBypass":Z
    .end local v9    # "safeMediaVolumeEnabled":Z
    :cond_2
    monitor-exit v10

    .line 4884
    return-void

    .line 4871
    .restart local v8    # "safeMediaVolumeBypass":Z
    .restart local v9    # "safeMediaVolumeEnabled":Z
    :cond_3
    const/4 v3, 0x1

    .line 4872
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 4883
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeBypass":Z
    .end local v9    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 9
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 9536
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9537
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    .line 9538
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9539
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 9540
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 9542
    :try_start_1
    iget-object v5, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v5, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9547
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 9553
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :goto_1
    return-void

    .line 9543
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v0

    .line 9544
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 9551
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private onSendBecomingNoisyIntent(I)V
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 6975
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6976
    .local v1, "noisySecIntent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6978
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6979
    .local v0, "noisyIntent":Landroid/content/Intent;
    const v2, 0x20000380

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 6980
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6981
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6982
    return-void
.end method

.method private onSendBecomingNoisyIntent(II)V
    .locals 4
    .param p1, "device"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 10491
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10492
    .local v1, "noisySecIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10494
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10495
    .local v0, "noisyIntent":Landroid/content/Intent;
    const v2, 0x20000380

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 10496
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10497
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10498
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 17
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 7061
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_0

    .line 7062
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7064
    :cond_0
    if-nez p1, :cond_1

    .line 7145
    :goto_0
    return-void

    .line 7067
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 7068
    .local v9, "address":Ljava/lang/String;
    invoke-static {v9}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7069
    const-string v9, ""

    .line 7072
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v15

    .line 7074
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    .line 7076
    .local v14, "preVolIndex":I
    const/16 v2, 0x80

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7078
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7079
    .local v10, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v10, :cond_6

    const/4 v11, 0x1

    .line 7081
    .local v11, "isConnected":Z
    :goto_1
    if-eqz v11, :cond_8

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_8

    .line 7082
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7083
    if-nez p2, :cond_3

    .line 7087
    const/16 v2, 0x1f40

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 7101
    :cond_3
    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7103
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 7104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7108
    :cond_4
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7134
    :cond_5
    :goto_3
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V

    .line 7137
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMRadioRecording()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7138
    monitor-exit v15

    goto/16 :goto_0

    .line 7144
    .end local v10    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v11    # "isConnected":Z
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "preVolIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 7079
    .restart local v10    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v14    # "preVolIndex":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 7091
    .restart local v11    # "isConnected":Z
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 7108
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 7110
    :cond_8
    if-nez v11, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 7111
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7113
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 7114
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    .line 7123
    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 7124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7125
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v13

    .line 7126
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 7127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v13, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7131
    :cond_a
    monitor-exit v16

    goto :goto_3

    .end local v13    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v2

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2

    .line 7118
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7119
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 7120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_4

    .line 7140
    :cond_c
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getFlagsForDeviceConnect(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 7144
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    .line 7226
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_0

    .line 7227
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7229
    :cond_0
    if-nez p1, :cond_1

    .line 7248
    :goto_0
    return-void

    .line 7232
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7233
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7234
    const-string v0, ""

    .line 7237
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 7238
    const/high16 v4, -0x7ffe0000

    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7239
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7240
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 7242
    .local v2, "isConnected":Z
    :goto_1
    if-eqz v2, :cond_5

    if-eq p2, v7, :cond_5

    .line 7243
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 7247
    :cond_3
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 7240
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 7244
    .restart local v2    # "isConnected":Z
    :cond_5
    if-nez v2, :cond_3

    if-ne p2, v7, :cond_3

    .line 7245
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onSetAoBleSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 22
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 7151
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_0

    .line 7152
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetAoBleSinkConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    :cond_0
    if-nez p1, :cond_1

    .line 7221
    :goto_0
    return-void

    .line 7158
    :cond_1
    const-string v15, ""

    .line 7160
    .local v15, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 7162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v20

    .line 7163
    .local v20, "preVolIndex":I
    const/high16 v2, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 7165
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7166
    .local v16, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v16, :cond_3

    const/16 v17, 0x1

    .line 7168
    .local v17, "isConnected":Z
    :goto_1
    if-eqz v17, :cond_7

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_7

    .line 7169
    const/high16 v2, 0x20000000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v15, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v3, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7176
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7179
    :cond_2
    const/16 v2, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7180
    const-string v2, "AudioService"

    const-string/jumbo v3, "onSetAoBleSinkConnectionState changing to A2DP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7181
    monitor-exit v21

    goto/16 :goto_0

    .line 7220
    .end local v16    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v17    # "isConnected":Z
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "preVolIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7166
    .restart local v16    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "preVolIndex":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 7183
    .restart local v17    # "isConnected":Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7184
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 7185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7189
    :cond_5
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7217
    :cond_6
    :goto_2
    const/4 v2, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getFlagsForDeviceConnect(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 7220
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 7189
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 7190
    :cond_7
    if-nez v17, :cond_6

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 7193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v7, v2, v3

    .line 7194
    .local v7, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x20000000

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7196
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 7197
    const/high16 v2, 0x20000000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v15, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v3, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/high16 v5, 0x20000000

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v15}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7205
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/high16 v3, 0x20000000

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v15}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7208
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v19

    .line 7209
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 7210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7211
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xc

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7214
    :cond_8
    monitor-exit v3

    goto/16 :goto_2

    .end local v19    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2457
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    .local v1, "stream":I
    move-object v0, p0

    move v2, p2

    move v3, p4

    move-object v5, p5

    .line 2458
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2459
    const/high16 v0, 0x4000000

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 2461
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 2464
    :cond_0
    if-nez p2, :cond_5

    .line 2465
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 2471
    .local v7, "newRingerMode":I
    :goto_0
    const-string v0, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v7, v0, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2476
    .end local v7    # "newRingerMode":I
    :cond_1
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    .line 2477
    const/4 v6, 0x0

    .local v6, "current_stream":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge v6, v0, :cond_6

    .line 2478
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v6

    if-ne v1, v0, :cond_2

    .line 2479
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v6

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2477
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2465
    .end local v6    # "current_stream":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_4

    move v7, v4

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    goto :goto_0

    .line 2469
    :cond_5
    const/4 v7, 0x2

    .restart local v7    # "newRingerMode":I
    goto :goto_0

    .line 2483
    .end local v7    # "newRingerMode":I
    :cond_6
    return-void
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 7599
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_0

    .line 7600
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7607
    :cond_0
    iget-object v12, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 7609
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 7610
    .local v11, "preVolIndex":I
    const-string v10, ""

    .line 7612
    .local v10, "params":Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_2

    .line 7615
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 7616
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z

    if-nez v1, :cond_2

    .line 7617
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->stopCPUBoost()V

    .line 7621
    :cond_2
    const/16 v1, 0x1000

    if-eq p1, v1, :cond_3

    const v1, -0x7ffffc00

    if-ne p1, v1, :cond_4

    .line 7623
    :cond_3
    move-object/from16 v10, p3

    .line 7627
    :cond_4
    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 7629
    :cond_5
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    const/16 v2, 0x9

    if-le v1, v2, :cond_6

    .line 7633
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 7635
    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 7636
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v2, 0x3

    aget v2, v1, v2

    const/16 v1, 0x5a

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v3

    const/4 v5, 0x0

    const-string v6, "AudioService"

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 7643
    :cond_6
    and-int/lit16 v1, p1, -0x6001

    if-eqz v1, :cond_7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_a

    const v1, 0x7fffe7ff

    and-int/2addr v1, p1

    if-nez v1, :cond_a

    :cond_7
    const/4 v9, 0x1

    .line 7647
    .local v9, "isUsb":Z
    :goto_0
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_b

    const/4 v8, 0x1

    .line 7656
    .local v8, "isHdmi":Z
    :goto_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    const/4 v1, 0x1

    :goto_2
    if-nez v9, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    move-object/from16 v10, p3

    .end local v10    # "params":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p4

    invoke-direct {p0, v1, p1, v10, v0}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 7658
    monitor-exit v12

    .line 7712
    :goto_3
    return-void

    .line 7643
    .end local v8    # "isHdmi":Z
    .end local v9    # "isUsb":Z
    .restart local v10    # "params":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    goto :goto_0

    .line 7647
    .restart local v9    # "isUsb":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_1

    .line 7656
    .restart local v8    # "isHdmi":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 7661
    .end local v10    # "params":Ljava/lang/String;
    :cond_d
    if-eqz p2, :cond_14

    .line 7662
    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v1, 0x8

    if-eq p1, v1, :cond_e

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_f

    .line 7666
    :cond_e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->increaseEARCount()V

    .line 7668
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 7670
    :cond_f
    const v1, 0x2000018c

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    .line 7671
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7680
    :cond_10
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_12

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_12

    .line 7681
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 7682
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 7683
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_12

    .line 7684
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7685
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v1, :cond_11

    .line 7686
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 7687
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 7689
    :cond_11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7702
    :cond_12
    :goto_4
    if-nez v9, :cond_13

    const v1, -0x7ffffff0

    if-eq p1, v1, :cond_13

    .line 7703
    :try_start_2
    invoke-direct/range {p0 .. p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 7707
    :cond_13
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getFlagsForDeviceConnect(I)I

    move-result v3

    invoke-direct {p0, v1, v11, v2, v3}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 7711
    monitor-exit v12

    goto :goto_3

    .end local v8    # "isHdmi":Z
    .end local v9    # "isUsb":Z
    .end local v11    # "preVolIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 7689
    .restart local v8    # "isHdmi":Z
    .restart local v9    # "isUsb":Z
    .restart local v11    # "preVolIndex":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 7693
    :cond_14
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_12

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_12

    .line 7694
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_12

    .line 7695
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7696
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 7697
    monitor-exit v2

    goto :goto_4

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private onUnmuteStream(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2392
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, p1

    .line 2393
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2395
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2396
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2397
    .local v1, "index":I
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2398
    return-void
.end method

.method private performSoftReset()V
    .locals 19

    .prologue
    .line 1832
    const-string v2, "AudioService"

    const-string v3, "Perform soft reset start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mono_audio_db"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1836
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    .line 1838
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    .line 1839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "pseudo_stereo_sound_settings"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setDualSpk(I)V

    .line 1844
    const/4 v9, 0x0

    .line 1845
    .local v9, "default_value":I
    const-string v2, "ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigDefSoundEffects"

    const-string v6, "OFF"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1846
    const/4 v9, 0x1

    .line 1848
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "hearing_musiccheck"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    .line 1851
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sound_alive_effect"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1853
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalSoundAlive(I)V

    .line 1854
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "k2hd_effect"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1856
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalK2HD(I)V

    .line 1857
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tube_amp_effect"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalTubeAmp(I)V

    .line 1862
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "personalise_call_sound_soft"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1864
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    .line 1871
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "call_noise_reduction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1874
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    .line 1876
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    .line 1877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "all_sound_off"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1878
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    .line 1880
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "call_natural_sound"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1882
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    .line 1886
    const/4 v2, 0x2

    const-string v3, "AudioService.performSoftReset"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1888
    const/4 v10, 0x0

    .line 1889
    .local v10, "deletedRows":I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    .line 1890
    .local v14, "numStreamTypes":I
    const/16 v17, 0x0

    .local v17, "streamType":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v14, :cond_7

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v2, v17

    .line 1892
    .local v7, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const-string/jumbo v16, "name LIKE ?"

    .line 1893
    .local v16, "selectionClause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1894
    .local v13, "makeString":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v15, v2

    .line 1898
    .local v15, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v17

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 1890
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1901
    :cond_1
    monitor-enter v7

    .line 1902
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    :try_start_0
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_6

    .line 1903
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1904
    .local v5, "device":I
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v2, v17

    .line 1907
    .local v12, "index":I
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    and-int/lit16 v2, v5, 0x8c

    if-eqz v2, :cond_2

    .line 1909
    const/16 v12, 0x8

    .line 1912
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const v2, 0x8000

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 1914
    const/16 v12, 0xf

    .line 1916
    :cond_3
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    mul-int/lit8 v3, v12, 0xa

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1918
    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 1920
    add-int/lit8 v18, v14, -0x1

    .local v18, "streamType2":I
    :goto_3
    if-ltz v18, :cond_5

    .line 1921
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    move/from16 v0, v18

    if-eq v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v18

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 1920
    :cond_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 1927
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1902
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1935
    .end local v5    # "device":I
    .end local v12    # "index":I
    .end local v18    # "streamType2":I
    :cond_6
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1937
    .end local v7    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v11    # "i":I
    .end local v13    # "makeString":Ljava/lang/String;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "selectionClause":Ljava/lang/String;
    :cond_7
    const-string v2, "AudioService"

    const-string v3, "Perform soft reset end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return-void
.end method

.method private playSilentModeSound()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 10262
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    if-eqz v0, :cond_0

    .line 10263
    const-string v0, "AudioService"

    const-string/jumbo v1, "mSilentModeOff TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10273
    :goto_0
    return-void

    .line 10266
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 10267
    const-string v0, "AudioService"

    const-string/jumbo v1, "sikp playSilentModeSound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10270
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    .line 10271
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->playSoundEffect(I)V

    .line 10272
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6c

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private porcessUsbAudioDevicePlug(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9929
    const/4 v3, 0x0

    .line 9930
    .local v3, "outDevice":I
    const/16 v18, 0x0

    .line 9931
    .local v18, "inDevice":I
    const-string/jumbo v2, "state"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 9932
    .local v4, "state":I
    const-string v2, "card"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 9933
    .local v12, "alsaCard":I
    const-string v2, "device"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 9934
    .local v13, "alsaDevice":I
    const-string/jumbo v2, "hasPlayback"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 9935
    .local v17, "hasPlayback":Z
    const-string/jumbo v2, "hasCapture"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 9936
    .local v15, "hasCapture":Z
    const-string/jumbo v2, "hasMIDI"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 9937
    .local v16, "hasMIDI":Z
    const/4 v2, -0x1

    if-ne v12, v2, :cond_0

    const/4 v2, -0x1

    if-ne v13, v2, :cond_0

    const-string v5, ""

    .line 9940
    .local v5, "params":Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isSmartDockConnected()Z

    move-result v19

    .line 9941
    .local v19, "isSmartdock":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "cradle_enable"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v2, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 9942
    .local v14, "cradleEnabled":I
    if-eqz v19, :cond_3

    .line 9943
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 9944
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    .line 9945
    const/4 v2, 0x1

    if-ne v4, v2, :cond_1

    move-object v2, v5

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 9946
    const/4 v2, 0x1

    if-ne v14, v2, :cond_2

    .line 9947
    const-string v2, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cradleEnabled change path, state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9949
    const/16 v3, 0x4000

    .line 9950
    const-string v6, ""

    const-string v7, "AudioService"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v7, v18

    .line 9968
    .end local v18    # "inDevice":I
    .local v7, "inDevice":I
    :goto_2
    return-void

    .line 9937
    .end local v5    # "params":Ljava/lang/String;
    .end local v7    # "inDevice":I
    .end local v14    # "cradleEnabled":I
    .end local v19    # "isSmartdock":Z
    .restart local v18    # "inDevice":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ";device="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 9945
    .restart local v5    # "params":Ljava/lang/String;
    .restart local v14    # "cradleEnabled":I
    .restart local v19    # "isSmartdock":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 9952
    :cond_2
    const-string v2, "AudioService"

    const-string v6, "cradle disabled no any action"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v18

    .end local v18    # "inDevice":I
    .restart local v7    # "inDevice":I
    goto :goto_2

    .line 9956
    .end local v7    # "inDevice":I
    .restart local v18    # "inDevice":I
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    .line 9958
    if-eqz v17, :cond_4

    .line 9959
    const/16 v3, 0x4000

    .line 9960
    const-string v6, ""

    const-string v7, "AudioService"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9963
    :cond_4
    if-eqz v15, :cond_5

    .line 9964
    const v7, -0x7ffff000

    .line 9965
    .end local v18    # "inDevice":I
    .restart local v7    # "inDevice":I
    const-string v10, ""

    const-string v11, "AudioService"

    move-object/from16 v6, p0

    move v8, v4

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v7    # "inDevice":I
    .restart local v18    # "inDevice":I
    :cond_5
    move/from16 v7, v18

    .end local v18    # "inDevice":I
    .restart local v7    # "inDevice":I
    goto :goto_2
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 5393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5396
    .local v8, "ident":J
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5397
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5398
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5399
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 9154
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 9155
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 9156
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9158
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 7
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 3939
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 3941
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    .line 3944
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3945
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    .local v2, "streamType":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 3946
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 3948
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v3, v6, :cond_0

    .line 3945
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3952
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3953
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 3955
    :try_start_0
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3

    .line 3957
    :cond_2
    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$502(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 3959
    :cond_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3964
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3966
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 3967
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 3968
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 3970
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 3976
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 3977
    const-string v3, "AudioService"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3979
    :cond_5
    monitor-exit v4

    .line 3980
    return-void

    .line 3979
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method private readCameraSoundForced()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8567
    const-string v1, "audio.camerasound.force"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1684
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1687
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_1

    move v4, v1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1695
    return-void

    :cond_0
    move v0, v6

    .line 1684
    goto :goto_0

    :cond_1
    move v4, v6

    .line 1687
    goto :goto_1
.end method

.method private readPersistedSettings()V
    .locals 13

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1700
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "mode_ringer"

    const/4 v9, 0x2

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1703
    .local v7, "ringerModeFromSettings":I
    move v6, v7

    .line 1706
    .local v6, "ringerMode":I
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1707
    const/4 v6, 0x2

    .line 1709
    :cond_0
    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v8, :cond_1

    .line 1710
    const/4 v6, 0x0

    .line 1712
    :cond_1
    if-eq v6, v7, :cond_2

    .line 1713
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1715
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1716
    :cond_3
    const/4 v6, 0x2

    .line 1718
    :cond_4
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1719
    :try_start_0
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1720
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 1721
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1727
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x2

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1731
    iget v10, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    const/4 v11, 0x0

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    :goto_1
    invoke-static {v10, v11, v8}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1737
    const-string/jumbo v8, "mono_audio_db"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    .line 1739
    const-string/jumbo v8, "pseudo_stereo_sound_settings"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    .line 1742
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "hearing_musiccheck"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v8, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    .line 1743
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "sound_alive_effect"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v8, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    .line 1744
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "k2hd_effect"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v8, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    .line 1745
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "tube_amp_effect"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v8, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    .line 1747
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "personalise_call_sound_soft"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    .line 1749
    const-string v8, "call_noise_reduction"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v0, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    .line 1751
    const-string v8, "all_sound_off"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    .line 1753
    const-string v8, "call_natural_sound"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    .line 1754
    const-string/jumbo v8, "theme_touch_sound"

    invoke-static {v0, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 1759
    const-string v8, "encrypted"

    const-string/jumbo v10, "ro.crypto.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "default"

    const-string/jumbo v10, "vold.crypt.type"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "trigger_restart_min_framework"

    const-string/jumbo v10, "vold.decrypt"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1762
    const-string v8, "AudioService"

    const-string/jumbo v10, "need to check tmpfs property with device encryption"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    :try_start_1
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 1765
    .local v5, "mountService":Landroid/os/storage/IMountService;
    if-eqz v5, :cond_7

    .line 1766
    const-string v8, "FooterAudioInfo"

    invoke-interface {v5, v8}, Landroid/os/storage/IMountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "encryptedAudioInfo":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_6

    .line 1768
    const-string v8, "AudioService"

    const-string/jumbo v10, "ringer mode is silent state"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1772
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 1773
    const-string v8, "AudioService"

    const-string v10, "all sound mute is enabled"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    .end local v2    # "encryptedAudioInfo":Ljava/lang/String;
    .end local v5    # "mountService":Landroid/os/storage/IMountService;
    :cond_7
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    .line 1784
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1785
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1787
    const-string/jumbo v8, "mute_streams_affected"

    const/16 v9, 0x2e

    const/4 v10, -0x2

    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1793
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v8, :cond_8

    .line 1794
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const/4 v9, 0x2

    const/4 v10, 0x5

    aput v10, v8, v9

    .line 1795
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const/4 v9, 0x5

    const/4 v10, 0x5

    aput v10, v8, v9

    .line 1798
    :cond_8
    const-string/jumbo v8, "volume_master_mute"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    const/4 v3, 0x1

    .line 1800
    .local v3, "masterMute":Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v8, :cond_9

    .line 1801
    const/4 v3, 0x0

    .line 1802
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1804
    :cond_9
    invoke-static {v3}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1805
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1807
    const-string/jumbo v8, "microphone_mute"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v4, 0x1

    .line 1809
    .local v4, "microphoneMute":Z
    :goto_4
    invoke-static {v4}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1814
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    iget v9, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1815
    const-string v8, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v9, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1818
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1819
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1822
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1823
    return-void

    .line 1727
    .end local v3    # "masterMute":Z
    .end local v4    # "microphoneMute":Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1731
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1777
    :catch_0
    move-exception v1

    .line 1778
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error calling mount service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1785
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 1798
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 1807
    .restart local v3    # "masterMute":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private reloadWhitelist()V
    .locals 19

    .prologue
    .line 8338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.sm.policy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    .line 8340
    .local v13, "isSCPMClientExist":Z
    :goto_0
    if-nez v13, :cond_1

    .line 8341
    const-string v2, "AudioService"

    const-string v3, "SCPMClient is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8396
    :goto_1
    return-void

    .line 8338
    .end local v13    # "isSCPMClientExist":Z
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 8345
    .restart local v13    # "isSCPMClientExist":Z
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getNewWhiteListVersion()Ljava/lang/String;

    move-result-object v15

    .line 8346
    .local v15, "newVersion":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 8347
    const-string v2, "AudioService"

    const-string v3, "EffectPolicy server version is not latest or incorrect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8351
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8353
    .local v9, "effectPolicyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/audio/AudioService$EffectPolicy;>;"
    const/4 v14, 0x0

    .line 8354
    .local v14, "itemCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8356
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13900()Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$14000()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 8357
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 8358
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8359
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 8360
    .local v16, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 8361
    .local v7, "category":Ljava/lang/String;
    new-instance v2, Lcom/android/server/audio/AudioService$EffectPolicy;

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v7}, Lcom/android/server/audio/AudioService$EffectPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 8364
    .end local v7    # "category":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 8365
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8367
    if-eqz v14, :cond_3

    .line 8368
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 8369
    const/4 v14, 0x0

    .line 8373
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    new-instance v18, Ljava/io/StringWriter;

    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    .line 8374
    .local v18, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 8375
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->allEffectType:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$14100()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v11, v2, :cond_8

    .line 8376
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->allEffectType:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$14100()[Ljava/lang/String;

    move-result-object v2

    aget-object v10, v2, v11

    .line 8377
    .local v10, "effectType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 8378
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/audio/AudioService$EffectPolicy;

    .line 8379
    .local v17, "policy":Lcom/android/server/audio/AudioService$EffectPolicy;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/audio/AudioService$EffectPolicy;->getEffectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/audio/AudioService$EffectPolicy;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 8367
    .end local v10    # "effectType":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "policy":Lcom/android/server/audio/AudioService$EffectPolicy;
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    :cond_5
    if-eqz v14, :cond_3

    .line 8368
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 8369
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 8367
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_6

    .line 8368
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 8369
    const/4 v14, 0x0

    :cond_6
    throw v2

    .line 8383
    .restart local v10    # "effectType":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "stringWriter":Ljava/io/StringWriter;
    :cond_7
    const-string/jumbo v2, "}\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 8375
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 8387
    .end local v10    # "effectType":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_2
    const-string v2, "/data/snd/effect_policy.conf"

    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 8388
    const-string v2, "/data/snd/effect_policy.conf"

    const/16 v3, 0x1a0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 8394
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 8395
    const-string/jumbo v2, "reloadWhitelist"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8389
    :catch_1
    move-exception v8

    .line 8391
    .local v8, "e":Ljava/io/IOException;
    const-string v2, "AudioService"

    const-string v3, "Failed update effectpolicy"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4526
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4527
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 4528
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 4529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    .line 4530
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4534
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4536
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    .line 4537
    return-void

    .line 4530
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 9142
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9148
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 9143
    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_0

    .line 9144
    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_0

    .line 9145
    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_0

    .line 9146
    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_0

    .line 9142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4823
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2816
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 2826
    :goto_0
    return-void

    .line 2818
    :cond_0
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2819
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2822
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 2829
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 2836
    :goto_0
    return-void

    .line 2830
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2832
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 7523
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v2, :cond_0

    .line 7524
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7529
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v2, :cond_2

    .line 7595
    :cond_1
    :goto_0
    return-void

    .line 7531
    :cond_2
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 7533
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7534
    const-string v2, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7535
    const-string/jumbo v2, "portName"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7537
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7539
    const/4 v9, 0x0

    .line 7541
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 7542
    const/4 v9, 0x1

    .line 7543
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7544
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7559
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15

    .line 7560
    if-eqz v9, :cond_4

    .line 7561
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v14, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7562
    .local v14, "newConn":I
    if-eqz p2, :cond_b

    .line 7563
    or-int/2addr v14, v9

    .line 7567
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v14, v2, :cond_4

    .line 7568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v14, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7573
    .end local v14    # "newConn":I
    :cond_4
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 7577
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7579
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7582
    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 7583
    :cond_5
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7584
    .local v13, "intentForCA":Landroid/content/Intent;
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 7585
    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7586
    const-string v2, "AudioService"

    const-string/jumbo v3, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7587
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 7589
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 7545
    .end local v10    # "ident":J
    .end local v13    # "intentForCA":Landroid/content/Intent;
    :cond_6
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 7548
    :cond_7
    const/4 v9, 0x2

    .line 7549
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7550
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 7551
    :cond_8
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 7553
    :cond_9
    const/16 v9, 0x8

    .line 7554
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 7555
    :cond_a
    const/16 v2, 0x4000

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 7556
    const/16 v9, 0x10

    goto/16 :goto_1

    .line 7565
    .restart local v14    # "newConn":I
    :cond_b
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v14, v2

    goto/16 :goto_2

    .line 7573
    .end local v14    # "newConn":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 7579
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2920
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2921
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 5404
    if-nez p2, :cond_3

    .line 5405
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5409
    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 5410
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 5411
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5412
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 5415
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5417
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5418
    .end local v0    # "time":J
    :goto_0
    return-void

    .line 5406
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5417
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2839
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2842
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2846
    return-void

    .line 2844
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v4, 0x3

    .line 2863
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v1, p1

    .line 2866
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2868
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforce to FLAG_PLAY_SOUND volume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    or-int/lit8 p4, p4, 0x4

    .line 2873
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v4, :cond_1

    .line 2874
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2875
    const/16 p3, 0xa

    .line 2880
    :cond_1
    if-ne p1, v4, :cond_2

    .line 2881
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 2883
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2885
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_5

    .line 2886
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 2887
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 2888
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p3, 0x0

    .line 2889
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2890
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2891
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2892
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2894
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p4

    if-eqz v1, :cond_4

    .line 2895
    const-string v1, "AudioService"

    const-string v2, "Do not play volume index information through Voice Assistant"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const-string/jumbo v1, "voice_assistant_bypass"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2899
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2901
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private setAllSoundMute()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 10360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10361
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const-string/jumbo v5, "persist.audio.allsoundmute"

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10363
    return-void
.end method

.method private setDualMicMode(I)V
    .locals 0
    .param p1, "dualmicMode"    # I

    .prologue
    .line 10344
    return-void
.end method

.method private setDualSpk(I)V
    .locals 2
    .param p1, "dualSpk"    # I

    .prologue
    .line 10292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dualspk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10293
    return-void
.end method

.method private setFineVolume(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    .line 2544
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 2545
    .local v5, "device":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 2547
    .local v10, "streamVolume":I
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", streamVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    add-int/lit8 v0, v10, 0x5

    div-int/lit8 v0, v0, 0xa

    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    .line 2550
    iget p1, p0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_MIN:I

    .line 2556
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 2557
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    const v0, 0x2000018c

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-ne v10, v0, :cond_2

    if-eqz p1, :cond_2

    .line 2563
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 2564
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2565
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callLcdOn()V

    .line 2566
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callVibrateMsg()V

    .line 2568
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2569
    const-string v0, "AudioService"

    const-string/jumbo v1, "setFineVolume mPendingFineVolumeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2571
    monitor-exit v7

    .line 2591
    .end local v9    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 2574
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2576
    :cond_3
    const-string v0, "AudioService"

    const-string/jumbo v1, "setFineVolume mPendingFineVolumeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2578
    monitor-exit v7

    goto :goto_0

    .line 2580
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2582
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fineVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2584
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x70

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move v8, v6

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private setForceUseInt_SyncDevices(II)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 8718
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8726
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 8727
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    .line 8728
    :cond_0
    return-void
.end method

.method private setGlobalK2HD(I)V
    .locals 1
    .param p1, "isEnable"    # I

    .prologue
    .line 10318
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 10319
    const-string/jumbo v0, "k2hd=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10322
    :goto_0
    return-void

    .line 10321
    :cond_0
    const-string/jumbo v0, "k2hd=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGlobalMySound(I)V
    .locals 7
    .param p1, "globalMySound"    # I

    .prologue
    const/4 v6, 0x0

    .line 10298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioEffectParam;setGlobalMSEffect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10300
    const-string v2, "0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    .line 10301
    .local v2, "dhaParam":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_diagnosis"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 10302
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_revision"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 10303
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_direction"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 10304
    .local v1, "SelectEar":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_parameters"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10305
    .local v0, "Param":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10307
    .end local v0    # "Param":Ljava/lang/String;
    .end local v1    # "SelectEar":I
    .end local v3    # "state":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioEffectParam;dha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10308
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGlobalMySoundGain dha Parameter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10311
    return-void
.end method

.method private setGlobalSoundAlive(I)V
    .locals 2
    .param p1, "isEnable"    # I

    .prologue
    .line 10314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGlobalSoundAliveEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10315
    return-void
.end method

.method private setGlobalTubeAmp(I)V
    .locals 2
    .param p1, "isEnable"    # I

    .prologue
    .line 10325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGlobalTubeAmpEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10326
    return-void
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 8
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    const/16 v1, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3101
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    .line 3102
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 3104
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x21

    invoke-virtual {v0, v4, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3133
    :cond_1
    :goto_0
    return-void

    .line 3108
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3114
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p5, :cond_5

    .line 3115
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 3116
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 3117
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 3119
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_4

    :goto_1
    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3121
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 3123
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3124
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3125
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    move v3, v2

    .line 3119
    goto :goto_1

    .line 3130
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_6

    :goto_2
    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_2
.end method

.method private setMediaVolumeBackup(III)I
    .locals 12
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v5, 0x1

    .line 2487
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2488
    .local v0, "device":I
    const/4 v2, 0x0

    .line 2489
    .local v2, "idx":I
    const-string v4, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMediaVolumeBackup() device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " streamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    if-ne p3, v10, :cond_0

    .line 2492
    if-ne p2, v5, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    .line 2494
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x80

    if-gt v1, v4, :cond_2

    .line 2495
    if-eq v1, v11, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_1

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 2501
    :cond_1
    if-ne v0, v1, :cond_4

    .line 2502
    move v2, v3

    .line 2503
    if-eq p3, v10, :cond_4

    .line 2520
    :cond_2
    if-eq p3, v10, :cond_8

    .line 2521
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    mul-int/lit8 v7, p2, 0xa

    aput v7, v4, v2

    .line 2525
    :goto_2
    const-string v4, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMediaVolumeBackup() device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", BackupVolIdxs=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    return p2

    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_3
    move v4, v6

    .line 2492
    goto/16 :goto_0

    .line 2505
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_4
    if-ne p3, v10, :cond_5

    .line 2506
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    if-eqz v4, :cond_7

    .line 2507
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v7, v9

    invoke-virtual {v7, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    aput v7, v4, v3

    .line 2508
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v3

    if-lez v4, :cond_5

    .line 2509
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v9

    const-string v7, "AudioService"

    invoke-virtual {v4, v5, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2510
    invoke-static {v9, v5, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 2517
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 2494
    :cond_6
    shl-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2513
    :cond_7
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v9

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v7, v7, v3

    const-string v8, "AudioService"

    invoke-virtual {v4, v7, v1, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2514
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-static {v9, v4, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_3

    .line 2523
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v2

    if-lez v4, :cond_9

    move p2, v5

    :goto_4
    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v2

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 p2, v4, 0xa

    goto :goto_4
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 18
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 3596
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_0

    .line 3597
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", caller="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    :goto_0
    const/4 v14, 0x0

    .line 3602
    .local v14, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 3603
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 3714
    .end local v14    # "newModeOwnerPid":I
    .local v15, "newModeOwnerPid":I
    :goto_1
    return v15

    .line 3599
    .end local v15    # "newModeOwnerPid":I
    :cond_0
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3607
    .restart local v14    # "newModeOwnerPid":I
    :cond_1
    const/4 v11, 0x0

    .line 3608
    .local v11, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 3609
    .local v13, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3610
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3611
    .local v10, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_2

    .line 3612
    move-object v11, v10

    .line 3614
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 3616
    :try_start_0
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3626
    .end local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_3
    :goto_2
    const/16 v16, 0x0

    .line 3628
    .local v16, "status":I
    :cond_4
    if-nez p1, :cond_c

    .line 3630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    check-cast v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3632
    .restart local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 3633
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 3634
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_5

    .line 3635
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " using mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " instead due to death hdlr at pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$1800(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_12

    .line 3658
    if-nez p1, :cond_6

    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called setPhoneState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v16

    .line 3660
    if-nez v16, :cond_f

    .line 3662
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 3663
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->startCPUBoost(Z)V

    .line 3664
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z

    .line 3670
    :cond_7
    :goto_4
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_8

    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mode successfully set to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3672
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    .line 3692
    :goto_5
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3694
    :cond_9
    if-nez v16, :cond_b

    .line 3695
    if-eqz p1, :cond_a

    .line 3696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3697
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :cond_a
    :goto_6
    const/high16 v3, -0x80000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v17

    .line 3703
    .local v17, "streamType":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 3704
    .local v6, "device":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v17

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    .line 3705
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v17

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3707
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3709
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.samsung.media.action.AUDIO_MODE"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3710
    .local v12, "intent":Landroid/content/Intent;
    const-string v3, "android.samsung.media.extra.AUDIO_MODE"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3711
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .end local v5    # "index":I
    .end local v6    # "device":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v17    # "streamType":I
    :cond_b
    move v15, v14

    .line 3714
    .end local v14    # "newModeOwnerPid":I
    .restart local v15    # "newModeOwnerPid":I
    goto/16 :goto_1

    .line 3619
    .end local v15    # "newModeOwnerPid":I
    .end local v16    # "status":I
    .restart local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v14    # "newModeOwnerPid":I
    :catch_0
    move-exception v9

    .line 3620
    .local v9, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AudioService"

    const-string v4, "SetModeDeathHandler not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3640
    .end local v9    # "e":Ljava/util/NoSuchElementException;
    .end local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v16    # "status":I
    :cond_c
    if-nez v11, :cond_d

    .line 3641
    new-instance v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .end local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    .line 3645
    .restart local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_d
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3653
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3654
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_3

    .line 3646
    :catch_1
    move-exception v9

    .line 3648
    .local v9, "e":Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3665
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z

    if-eqz v3, :cond_7

    .line 3666
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->stopCPUBoost()V

    .line 3667
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z

    goto/16 :goto_4

    .line 3674
    :cond_f
    if-eqz v11, :cond_10

    .line 3675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3677
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3686
    :cond_10
    :goto_8
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_11

    const-string v3, "AudioService"

    const-string v4, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    :cond_11
    const/16 p1, 0x0

    goto/16 :goto_5

    .line 3680
    :catch_2
    move-exception v9

    .line 3681
    .local v9, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AudioService"

    const-string v4, "SetModeDeathHandler not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3690
    .end local v9    # "e":Ljava/util/NoSuchElementException;
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 3699
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v14

    goto/16 :goto_6
.end method

.method private setMonoMode(I)V
    .locals 2
    .param p1, "monoMode"    # I

    .prologue
    .line 10287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10288
    return-void
.end method

.method private setNaturalSoundMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 10349
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10350
    if-lez p1, :cond_0

    .line 10351
    const-string v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10355
    :goto_0
    return-void

    .line 10353
    :cond_0
    const-string v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNbQualityMode(I)V
    .locals 1
    .param p1, "nbQualityMode"    # I

    .prologue
    .line 10329
    if-lez p1, :cond_0

    .line 10330
    const-string/jumbo v0, "nb_quality=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10334
    :goto_0
    return-void

    .line 10332
    :cond_0
    const-string/jumbo v0, "nb_quality=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 8656
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 8674
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8676
    :goto_0
    return-void

    .line 8659
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 8663
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 8667
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 8671
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 8656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 12
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3313
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3357
    :cond_0
    :goto_0
    return-void

    .line 3316
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 3317
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3319
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 3320
    if-ne p1, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_4

    .line 3321
    const/4 p1, 0x0

    .line 3323
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3325
    .local v10, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3326
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    .line 3327
    .local v4, "ringerModeInternal":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v1

    .line 3328
    .local v1, "ringerModeExternal":I
    if-eqz p3, :cond_7

    .line 3329
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3330
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_5

    .line 3331
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 3334
    :cond_5
    if-eq p1, v4, :cond_6

    .line 3335
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 3336
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    aput-boolean p3, v0, p1

    .line 3337
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3338
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt_sub(ILjava/lang/String;)V

    .line 3353
    :cond_6
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3355
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3341
    :cond_7
    if-eq p1, v4, :cond_8

    .line 3342
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 3343
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    aput-boolean p3, v0, p1

    .line 3344
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3345
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt_sub(ILjava/lang/String;)V

    .line 3347
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_9

    .line 3348
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, p1

    move-object v6, p2

    move v7, v1

    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 3351
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    goto :goto_1

    .line 3353
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3355
    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 3360
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3361
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 3366
    :goto_0
    return-void

    .line 3362
    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 3363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3365
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    goto :goto_0

    .line 3363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 9
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3424
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3425
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, p1, :cond_2

    const/4 v7, 0x1

    .line 3426
    .local v7, "change":Z
    :goto_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    .line 3427
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRingerModeInt is called by pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3431
    .local v8, "msg":Ljava/lang/String;
    const-string v0, "AudioService"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 3437
    if-eqz p2, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3441
    :cond_0
    if-eqz v7, :cond_1

    .line 3443
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3445
    :cond_1
    return-void

    .end local v7    # "change":Z
    .end local v8    # "msg":Ljava/lang/String;
    :cond_2
    move v7, v2

    .line 3425
    goto :goto_0

    .line 3428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRingerModeInt_sub(ILjava/lang/String;)V
    .locals 8
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 10225
    const-string v0, "com.drivemode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 10226
    .local v7, "skipPlaySound":Z
    packed-switch p1, :pswitch_data_0

    .line 10243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.audio.ringermode"

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10245
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 10246
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.sys.silent"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10253
    :goto_1
    return-void

    .line 10228
    :pswitch_0
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_0

    .line 10232
    :pswitch_1
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    .line 10234
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 10237
    :pswitch_2
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10238
    if-nez v7, :cond_0

    .line 10239
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 10249
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.sys.silent"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1

    .line 10226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 8793
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 8794
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 8796
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 8797
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8798
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 8815
    :cond_0
    :goto_0
    monitor-exit v7

    .line 8816
    return-void

    .line 8799
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 8800
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8805
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 8806
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 8815
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSoundBalance()V
    .locals 5

    .prologue
    .line 10368
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_balance"

    const/16 v3, 0x32

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 10369
    .local v0, "soundBalance":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10370
    return-void
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 27
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 2596
    const/4 v13, 0x0

    .line 2597
    .local v13, "fineIndex":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2598
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    const-string v6, "FINE_VOLUME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2599
    rem-int/lit8 v13, p2, 0xa

    .line 2600
    div-int/lit8 p2, p2, 0xa

    .line 2604
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v6, :cond_2

    .line 2761
    :cond_0
    :goto_1
    return-void

    .line 2603
    :cond_1
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStreamVolume:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "flags:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2608
    :cond_2
    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v25

    .line 2610
    .local v25, "volumeLimiterdevice":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    mul-int/lit8 v6, p2, 0xa

    add-int/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v7, v7, 0xa

    if-le v6, v7, :cond_3

    const v6, 0x2000018c

    and-int v6, v6, v25

    if-eqz v6, :cond_3

    .line 2611
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeController;->displayVolumeLimiterToast()V

    .line 2612
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v7, v7, 0xa

    const/4 v8, 0x0

    const-string v9, "FINE_VOLUME"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 2614
    const-string v6, "AudioService"

    const-string v7, "SetStreamVolume : already reached at volume limit value"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v16

    .line 2618
    .local v16, "indexTemp":I
    new-instance v17, Landroid/content/Intent;

    const-string v6, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2619
    .local v17, "intent":Landroid/content/Intent;
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2620
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2621
    const-string v6, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2622
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2631
    .end local v16    # "indexTemp":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v6, -0x1

    move/from16 v0, p3

    if-eq v0, v6, :cond_4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isTalkBackEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2632
    invoke-direct/range {p0 .. p3}, Lcom/android/server/audio/AudioService;->setMediaVolumeBackup(III)I

    move-result p2

    .line 2633
    const/16 p3, 0x0

    .line 2636
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v23, v6, p1

    .line 2637
    .local v23, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v22, v6, v23

    .line 2640
    .local v22, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMRadioRecording()Z

    move-result v19

    .line 2642
    .local v19, "isFMRadioRecording":Z
    if-eqz v19, :cond_7

    .line 2643
    const/16 v6, 0xa

    move/from16 v0, p1

    if-eq v0, v6, :cond_6

    .line 2644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "telecom"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/TelecomManager;

    .line 2645
    .local v24, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2646
    .local v14, "ident":J
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v18

    .line 2647
    .local v18, "isCallActive":Z
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2649
    if-eqz v18, :cond_6

    .line 2650
    const-string v6, "AudioService"

    const-string v7, "Block Volume change during FM recording when incoming call is active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v21

    .line 2652
    .local v21, "previous_index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_1

    .line 2656
    .end local v14    # "ident":J
    .end local v18    # "isCallActive":Z
    .end local v21    # "previous_index":I
    .end local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_6
    const/high16 v6, 0x2000000

    move/from16 v0, p3

    if-eq v0, v6, :cond_0

    const/16 v6, 0x11

    move/from16 v0, p3

    if-eq v0, v6, :cond_0

    if-nez p3, :cond_7

    const/16 v6, 0xa

    move/from16 v0, p1

    if-ne v0, v6, :cond_0

    .line 2663
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v11

    .line 2666
    .local v11, "device":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    aput v7, v6, p1

    .line 2667
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[I

    aput p2, v6, p1

    .line 2668
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->uIdOfsetVolume:[I

    aput p6, v6, p1

    .line 2671
    const/16 v6, 0xa

    move/from16 v0, p1

    if-ne v0, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isRadioSpeakerOn()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    const-string v6, "com.sec.android.app.voicenote"

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2673
    :cond_9
    const/4 v11, 0x2

    .line 2681
    :cond_a
    const v6, 0x20000380

    and-int/2addr v6, v11

    if-nez v6, :cond_b

    and-int/lit8 v6, p3, 0x40

    if-nez v6, :cond_0

    .line 2698
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2700
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2703
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2705
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v20

    .line 2707
    .local v20, "oldIndex":I
    mul-int/lit8 v6, p2, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 2709
    const/4 v6, 0x3

    move/from16 v0, v23

    if-ne v0, v6, :cond_d

    const v6, 0x20000380

    and-int/2addr v6, v11

    if-eqz v6, :cond_d

    and-int/lit8 v6, p3, 0x40

    if-nez v6, :cond_d

    .line 2712
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2713
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v6, :cond_c

    .line 2714
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v8, p2, 0xa

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 2716
    :cond_c
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2719
    :cond_d
    const/4 v6, 0x3

    move/from16 v0, v23

    if-ne v0, v6, :cond_e

    .line 2720
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2723
    :cond_e
    and-int/lit8 p3, p3, -0x21

    .line 2724
    const/4 v6, 0x3

    move/from16 v0, v23

    if-ne v0, v6, :cond_f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v6, v11

    if-eqz v6, :cond_f

    .line 2726
    or-int/lit8 p3, p3, 0x20

    .line 2729
    if-eqz p2, :cond_f

    .line 2730
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    const v6, 0x2000018c

    and-int/2addr v6, v11

    if-eqz v6, :cond_11

    .line 2732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 p2, v0

    .line 2739
    :cond_f
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10

    .line 2741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v6, v13, v11}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2744
    :cond_10
    if-nez v19, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2745
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2746
    new-instance v6, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2758
    :goto_3
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2760
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_1

    .line 2716
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 2758
    .end local v20    # "oldIndex":I
    :catchall_1
    move-exception v6

    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 2734
    .restart local v20    # "oldIndex":I
    :cond_11
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_2

    .line 2750
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2751
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2752
    and-int/lit8 p3, p3, -0x2

    :cond_13
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p5

    .line 2755
    invoke-direct/range {v7 .. v12}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, p1

    invoke-virtual {v6, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p2

    goto :goto_3
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 16
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 2946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v8, v3, p1

    .line 2948
    .local v8, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p4, :cond_2

    .line 2951
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v6, p3

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2970
    :cond_1
    :goto_0
    return-void

    .line 2960
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_3

    if-nez p2, :cond_1

    .line 2961
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x70

    const/4 v11, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v15, 0x0

    move/from16 v12, p3

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 2973
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    .line 2985
    :cond_0
    :goto_0
    return-void

    .line 2974
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 2975
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2984
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2976
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2977
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 2979
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2981
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2983
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2984
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2981
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2983
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 5
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2401
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return-void

    .line 2408
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 2409
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2410
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2411
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 2413
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2415
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2417
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2418
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2415
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2417
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setWiredDeviceConnectionStateBeforeBoot()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 9750
    const/4 v7, -0x1

    .line 9751
    .local v7, "device_id":I
    const/4 v8, 0x0

    .line 9753
    .local v8, "file_reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    const-string v0, "/sys/class/switch/h2w/state"

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9754
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .local v9, "file_reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9755
    const/16 v0, 0x400

    new-array v6, v0, [C

    .line 9756
    .local v6, "buffer":[C
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v10

    .line 9757
    .local v10, "len":I
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 9762
    .end local v6    # "buffer":[C
    .end local v10    # "len":I
    :cond_0
    if-eqz v9, :cond_3

    .line 9763
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 9764
    const/4 v8, 0x0

    .line 9769
    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 9781
    :goto_1
    return-void

    .line 9766
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    move-object v8, v9

    .line 9768
    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_0

    .line 9759
    :catch_1
    move-exception v0

    .line 9762
    :goto_2
    if-eqz v8, :cond_1

    .line 9763
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 9764
    const/4 v8, 0x0

    goto :goto_0

    .line 9761
    :catchall_0
    move-exception v0

    .line 9762
    :goto_3
    if-eqz v8, :cond_2

    .line 9763
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 9764
    const/4 v8, 0x0

    .line 9767
    :cond_2
    :goto_4
    throw v0

    .line 9771
    :pswitch_0
    const/4 v1, 0x4

    const-string v3, ""

    const-string/jumbo v4, "h2w-before-boot-completed"

    const-string v5, "AudioService"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9775
    :pswitch_1
    const/16 v1, 0x8

    const-string v3, ""

    const-string/jumbo v4, "h2w-before-boot-completed"

    const-string v5, "AudioService"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9766
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 9761
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_3

    .line 9759
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :catch_4
    move-exception v0

    move-object v8, v9

    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_2

    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :cond_3
    move-object v8, v9

    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_0

    .line 9769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 5546
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 5547
    const/4 v7, 0x0

    .line 5548
    .local v7, "delay":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5554
    monitor-exit v8

    .line 5555
    return-void

    .line 5554
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startCPUBoost(Z)V
    .locals 2
    .param p1, "voipon"    # Z

    .prologue
    .line 10035
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->initCPUBoost(Z)V

    .line 10036
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 10037
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 10038
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "acquire() cpu min lock for audio "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10039
    return-void
.end method

.method private stopCPUBoost()V
    .locals 2

    .prologue
    .line 10042
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 10043
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 10044
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 10045
    const-string v0, "AudioService"

    const-string/jumbo v1, "release() cpu min lock for audio "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10047
    :cond_0
    return-void
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 2907
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 2908
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 2910
    and-int/lit8 p1, p1, -0x2

    .line 2912
    :cond_0
    monitor-exit v1

    .line 2914
    :cond_1
    return p1

    .line 2912
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateRingerModeAffectedStreams()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 5020
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5028
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit16 v0, v0, 0x126

    .line 5034
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v5, :cond_0

    .line 5035
    const/4 v0, 0x0

    .line 5053
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 5054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5055
    and-int/lit16 v0, v0, -0x81

    .line 5059
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5060
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v5, :cond_5

    .line 5061
    or-int/lit16 v0, v0, 0x100

    .line 5066
    :goto_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_6

    .line 5067
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5071
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 5072
    const/4 v1, 0x1

    .line 5074
    :goto_3
    return v1

    .line 5037
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v1, :cond_1

    .line 5038
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v0

    .line 5042
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_2

    .line 5043
    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    .line 5045
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5046
    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    .line 5048
    :cond_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 5057
    :cond_4
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 5059
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5063
    :cond_5
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 5074
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 8
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1632
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 1642
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1647
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v0, :cond_1

    .line 1648
    const/4 v7, 0x5

    .line 1655
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1656
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1667
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1668
    if-eqz p1, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1672
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1673
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1680
    :cond_0
    return-void

    .line 1634
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1635
    const/4 v7, 0x2

    .line 1636
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1638
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1639
    const/4 v7, 0x3

    .line 1640
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1650
    .end local v7    # "dtmfStreamAlias":I
    :cond_1
    const/4 v7, 0x3

    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1658
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1660
    :cond_3
    const/4 v7, 0x0

    .line 1661
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1663
    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private vibrateCall()V
    .locals 6

    .prologue
    .line 10277
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    if-eqz v1, :cond_0

    .line 10278
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    const v2, 0xc35c

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Vibrator$MagnitudeTypes;->CallMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10283
    :cond_0
    :goto_0
    return-void

    .line 10280
    :catch_0
    move-exception v0

    .line 10281
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string v2, "Vibrator error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 1517
    monitor-enter p0

    .line 1518
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1521
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1526
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1527
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 8555
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2046
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2048
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1971
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 7252
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 7253
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 7254
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7257
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7263
    monitor-exit v7

    .line 7264
    return-void

    .line 7263
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 5421
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5423
    const/4 v1, 0x1

    .line 5429
    :goto_0
    return v1

    .line 5425
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5428
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 4468
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 4469
    const/4 v2, 0x0

    .line 4470
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4471
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 4472
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4473
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 4474
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 4471
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4476
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 4479
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4480
    if-eqz v2, :cond_2

    .line 4481
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4483
    :cond_2
    monitor-exit v5

    .line 4484
    return-void

    .line 4483
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 8879
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8880
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v8

    .line 8881
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 8882
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_0

    .line 8883
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 8889
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8890
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8891
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8892
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 8894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8897
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_1

    .line 8899
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 8900
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x70

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v3, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8910
    :cond_1
    monitor-exit v8

    .line 8911
    return-void

    .line 8910
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismissVolumePanel()V
    .locals 1

    .prologue
    .line 9747
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 9748
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 9092
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9094
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 9096
    const-string v0, "  mMySoundEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9097
    const-string v0, "  mSoundAliveEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9098
    const-string v0, "  mK2HDEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9099
    const-string v0, "  mTubeAmpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9100
    const-string v0, "  mAllSoundMute="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9101
    const-string v0, "  mNbQualityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9102
    const-string v0, "  mDualMicMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9103
    const-string v0, "  mNaturalSound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9104
    const-string v0, "  mUhqBtSampleRate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9105
    const-string v0, "  mSoundBalance="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9106
    const-string v0, "  isTalkBackEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isTalkBackEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9107
    const-string v0, "  isFactoryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9108
    const-string v0, "  mGamepadEarjackState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    # getter for: Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->access$14600(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9109
    const-string v0, "  mGamepadState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    # getter for: Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->access$14700(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9111
    const-string v0, "  mIsScreenOffMusicOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mIsScreenOffMusicOn:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9113
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpScoClients(Ljava/io/PrintWriter;)V

    .line 9115
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 9116
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 9117
    const-string v0, "\nAudio Mode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9118
    const-string v0, "- mMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9119
    const-string v0, "- setMode is called by PID:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9121
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9122
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9123
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9125
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9126
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9127
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9128
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9129
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9130
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9131
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9132
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9133
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9134
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9135
    const-string v0, "  mControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9136
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9138
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 9139
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 3059
    if-nez p2, :cond_0

    .line 3095
    :goto_0
    return-void

    .line 3062
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3064
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3067
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3068
    const/4 v0, 0x0

    .line 3069
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    .line 3070
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3071
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3072
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    .line 3073
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 3074
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 3075
    const/4 v0, 0x1

    .line 3077
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3089
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 3091
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 3092
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3094
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3080
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    .line 3081
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3082
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    .line 3083
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 3084
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3085
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2765
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2766
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 2767
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2768
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2775
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2776
    return-void

    .line 2773
    :cond_1
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 2775
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveStreamType(I)I
    .locals 8
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v2, 0x2

    const/high16 v7, -0x80000000

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v3, 0x3

    .line 5181
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCustomDeviceManagerProxy()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v1

    .line 5182
    .local v1, "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    if-eqz v1, :cond_0

    .line 5183
    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getVolumeControlStream()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 5197
    :cond_0
    iget v6, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v6, :pswitch_data_1

    .line 5243
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 5244
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v3, :cond_f

    .line 5246
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_1

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    :cond_1
    const/4 p1, 0x6

    .line 5294
    .end local p1    # "suggestedStreamType":I
    :cond_2
    :goto_0
    return p1

    .line 5185
    .restart local p1    # "suggestedStreamType":I
    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    move p1, v2

    .line 5187
    goto :goto_0

    :pswitch_2
    move p1, v3

    .line 5189
    goto :goto_0

    :pswitch_3
    move p1, v4

    .line 5191
    goto :goto_0

    .line 5199
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5200
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 5203
    const/4 p1, 0x6

    goto :goto_0

    :cond_3
    move p1, v5

    .line 5206
    goto :goto_0

    .line 5208
    :cond_4
    if-ne p1, v7, :cond_d

    .line 5209
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getActiveStreams()I

    move-result v0

    .line 5210
    .local v0, "activeStream":I
    and-int/lit16 v6, v0, 0x4208

    if-nez v6, :cond_5

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5212
    :cond_5
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_6

    .line 5213
    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move p1, v3

    .line 5214
    goto :goto_0

    .line 5215
    :cond_7
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_8

    .line 5216
    const/4 p1, 0x4

    goto :goto_0

    .line 5217
    :cond_8
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_9

    move p1, v4

    .line 5219
    goto :goto_0

    .line 5220
    :cond_9
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_a

    move p1, v5

    .line 5221
    goto :goto_0

    .line 5222
    :cond_a
    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_b

    .line 5224
    const/16 p1, 0xa

    goto :goto_0

    .line 5226
    :cond_b
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_c

    .line 5227
    const-string v3, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move p1, v2

    .line 5228
    goto :goto_0

    .line 5230
    .end local v0    # "activeStream":I
    :cond_d
    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5231
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_e

    .line 5232
    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move p1, v3

    .line 5233
    goto :goto_0

    .line 5237
    :pswitch_5
    if-ne p1, v7, :cond_1f

    move p1, v3

    .line 5239
    goto :goto_0

    .line 5249
    :cond_f
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_10

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move p1, v5

    .line 5250
    goto/16 :goto_0

    .line 5252
    :cond_11
    sget v6, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v4, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-nez v6, :cond_12

    sget v6, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    if-nez v2, :cond_14

    .line 5257
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_13

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move p1, v4

    .line 5258
    goto/16 :goto_0

    .line 5259
    :cond_14
    if-ne p1, v7, :cond_1f

    .line 5260
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getActiveStreams()I

    move-result v0

    .line 5261
    .restart local v0    # "activeStream":I
    and-int/lit16 v2, v0, 0x4208

    if-nez v2, :cond_15

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5263
    :cond_15
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_16

    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move p1, v3

    .line 5264
    goto/16 :goto_0

    .line 5265
    :cond_17
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_18

    .line 5266
    const/4 p1, 0x4

    goto/16 :goto_0

    .line 5267
    :cond_18
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_19

    move p1, v4

    .line 5269
    goto/16 :goto_0

    .line 5270
    :cond_19
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1a

    move p1, v5

    .line 5271
    goto/16 :goto_0

    .line 5272
    :cond_1a
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_1b

    .line 5274
    const/16 p1, 0xa

    goto/16 :goto_0

    .line 5281
    :cond_1b
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v2, :cond_1d

    .line 5282
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_1c

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move p1, v4

    .line 5283
    goto/16 :goto_0

    .line 5285
    :cond_1d
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_1e

    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: using STREAM_MUSIC as default"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move p1, v3

    .line 5286
    goto/16 :goto_0

    .line 5292
    .end local v0    # "activeStream":I
    :cond_1f
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_2

    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5197
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    .line 9870
    const/4 v2, 0x0

    .line 9872
    .local v2, "result":Ljava/lang/String;
    const-string v3, "SplitSound"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9873
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v3, :cond_1

    .line 9874
    const-string/jumbo v2, "true"

    .line 9923
    :cond_0
    :goto_0
    return-object v2

    .line 9876
    :cond_1
    const-string/jumbo v2, "false"

    goto :goto_0

    .line 9878
    :cond_2
    const-string v3, "HMTstate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9879
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    if-eqz v3, :cond_3

    .line 9880
    const-string/jumbo v2, "true"

    goto :goto_0

    .line 9882
    :cond_3
    const-string/jumbo v2, "false"

    goto :goto_0

    .line 9884
    :cond_4
    const-string v3, "SafeMediaVolumeDevice"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9885
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 9886
    .local v0, "device":I
    const v3, 0x2000018c

    and-int/2addr v3, v0

    if-eqz v3, :cond_5

    .line 9887
    const-string/jumbo v2, "true"

    goto :goto_0

    .line 9889
    :cond_5
    const-string/jumbo v2, "false"

    goto :goto_0

    .line 9893
    .end local v0    # "device":I
    :cond_6
    const-string/jumbo v3, "fine_volume"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 9894
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getFineVolume()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 9896
    :cond_7
    const-string/jumbo v3, "fine_volume_v2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 9897
    const/16 v3, 0x3eb

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v4

    add-int v1, v3, v4

    .line 9898
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v6

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9899
    const/4 v1, 0x0

    .line 9900
    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 9901
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFineVolume, index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9905
    .end local v1    # "index":I
    :cond_9
    const-string v3, "active_addr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9906
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 9908
    :cond_a
    const-string v3, "device_mask_QSP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 9909
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAvailableDeviceMaskForQuickSoundPath()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 9913
    :cond_b
    const-string/jumbo v3, "volumelimit_on"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 9914
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    if-eqz v3, :cond_c

    .line 9915
    const-string/jumbo v2, "true"

    goto/16 :goto_0

    .line 9917
    :cond_c
    const-string/jumbo v2, "false"

    goto/16 :goto_0

    .line 9919
    :cond_d
    const-string/jumbo v3, "volumelimit_value"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9920
    iget v3, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 8563
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8573
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 3204
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3205
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3206
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 3719
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    .prologue
    .line 3280
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3281
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v1

    return v0

    .line 3282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 3287
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3288
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 3289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 8738
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 3192
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3193
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 3198
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 9
    .param p1, "streamType"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    .line 3149
    const/4 v2, 0x0

    .line 3150
    .local v2, "mCalledByFineVolume":Z
    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_0

    .line 3151
    add-int/lit16 p1, p1, -0x3e8

    .line 3152
    const/4 v2, 0x1

    .line 3155
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3156
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3157
    .local v0, "device":I
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 3158
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 3159
    .local v1, "index":I
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStreamVolume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    if-ne p1, v8, :cond_5

    .line 3162
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3163
    const/4 v1, 0x0

    .line 3172
    :cond_1
    :goto_0
    if-ne p1, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isRadioSpeakerOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3173
    const/4 v0, 0x2

    .line 3176
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    if-ne v3, v7, :cond_3

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 3178
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 3181
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    if-ne v3, v7, :cond_4

    if-nez v2, :cond_4

    .line 3182
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 3183
    const/16 v1, 0xa

    .line 3186
    :cond_4
    add-int/lit8 v3, v1, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v4

    return v3

    .line 3167
    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3168
    const/4 v1, 0x0

    goto :goto_0

    .line 3187
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTogether()Z
    .locals 1

    .prologue
    .line 7271
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsTogether:Z

    return v0
.end method

.method public getUiSoundsStreamType()I
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x3

    .line 3215
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCustomDeviceManagerProxy()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v0

    .line 3216
    .local v0, "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    if-eqz v0, :cond_0

    .line 3217
    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getVolumeControlStream()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3231
    :cond_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v3, :cond_1

    .line 3239
    :goto_0
    :pswitch_1
    return v1

    .line 3219
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 3234
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3235
    const/4 v1, 0x2

    goto :goto_0

    .line 3236
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 3237
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3239
    goto :goto_0

    .line 3217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 3470
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3471
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 4190
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4191
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 4192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 4160
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 9030
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 9031
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 9032
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFMPlayerActive()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4082
    :try_start_0
    const-string/jumbo v4, "persist.audio.isfmactive"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4083
    .local v1, "fmPlayer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4089
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v1    # "fmPlayer":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 4086
    goto :goto_0

    .line 4088
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 4089
    goto :goto_0
.end method

.method public isForceSpeakerOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4036
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .prologue
    .line 8974
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 3137
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMediaSilentMode()Z
    .locals 3

    .prologue
    .line 3507
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMediaSilentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4071
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    if-ne v1, v0, :cond_0

    .line 4074
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4021
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 5079
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 5012
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 2989
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2990
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 2992
    :cond_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 2993
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2994
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTalkBackEnabled()Z
    .locals 5

    .prologue
    .line 10210
    const/4 v1, 0x0

    .line 10211
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 10213
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 10216
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 10219
    :cond_1
    :goto_0
    return v1

    .line 10216
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    .line 3300
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3852
    const/4 v7, 0x3

    .line 3853
    .local v7, "attempts":I
    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3855
    .local v5, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 3856
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 3857
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 3859
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 3862
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .line 3860
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_0
    move-exception v9

    .line 3861
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "AudioService"

    const-string/jumbo v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 3862
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v7, v8

    .line 3864
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3865
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    return v0

    .line 3864
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v11

    .line 3865
    goto :goto_1

    .line 3864
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_2
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 9201
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 9204
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9210
    :cond_0
    :goto_0
    return-void

    .line 9208
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 9209
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onIndicateSystemReady()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1329
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1a

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onMediaServerDied()V
    .locals 18

    .prologue
    .line 1342
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1344
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1507
    :goto_0
    return-void

    .line 1349
    :cond_1
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1359
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallState=2 in case of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string v1, "CallState=2"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1363
    :cond_3
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1365
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UHQ_BT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1372
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 1373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 1377
    .local v13, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v3, 0x1000000

    if-ne v1, v3, :cond_4

    .line 1378
    iget-object v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1382
    :cond_4
    iget v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/4 v3, 0x1

    iget-object v4, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1372
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1389
    .end local v13    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v1, :cond_6

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v1, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v4, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v5, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1401
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 1412
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1413
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1414
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xb

    :goto_3
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1417
    const/4 v1, 0x6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1420
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    .line 1421
    .local v11, "numStreamTypes":I
    add-int/lit8 v15, v11, -0x1

    .local v15, "streamType":I
    :goto_4
    if-ltz v15, :cond_8

    .line 1422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v1, v15

    .line 1423
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$400(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v15, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1425
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1421
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 1395
    .end local v11    # "numStreamTypes":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamType":I
    :cond_6
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x1

    :try_start_1
    const-string/jumbo v4, "mediaserver_died"

    const-string v5, ""

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const-string/jumbo v4, "mediaserver_died"

    const-string v5, ""

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1401
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1414
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1428
    .restart local v11    # "numStreamTypes":I
    .restart local v15    # "streamType":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMPlayerActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1429
    const v1, -0x7fffe000

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1436
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v1, :cond_a

    .line 1437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 1439
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_b

    .line 1440
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1443
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1444
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_5
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1447
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1450
    const/4 v3, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x8

    :goto_6
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1453
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_d

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    .line 1456
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_c

    .line 1457
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1459
    :cond_c
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1462
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 1463
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1464
    .local v12, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    goto :goto_7

    .line 1466
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1444
    :cond_e
    const/16 v1, 0xa

    goto :goto_5

    .line 1447
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 1450
    :cond_f
    const/4 v1, 0x0

    goto :goto_6

    .line 1453
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 1459
    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 1466
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_10
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1471
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    .line 1473
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mDualSpk:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setDualSpk(I)V

    .line 1476
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    .line 1477
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalSoundAlive(I)V

    .line 1478
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mK2HDEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalK2HD(I)V

    .line 1479
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalTubeAmp(I)V

    .line 1482
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MEDIA_SERVER_REBOOTED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v10, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1484
    const-string v1, "AudioService"

    const-string/jumbo v2, "mediaServer Restart Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    .line 1488
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    .line 1490
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    .line 1492
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    .line 1494
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setSoundBalance()V

    .line 1496
    const-string/jumbo v1, "persist.audio.voicetrig"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1497
    .local v16, "voicetrig":Ljava/lang/String;
    if-eqz v16, :cond_11

    .line 1498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_trig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1500
    :cond_11
    const-string/jumbo v1, "persist.audio.voicewakeup"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1501
    .local v17, "voicewakeup":Ljava/lang/String;
    if-eqz v17, :cond_13

    const-string/jumbo v1, "on"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "off"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1502
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_wakeup_mic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1506
    :cond_13
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSystemReady()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1272
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1273
    const-string/jumbo v0, "system_ready=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1274
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkFactoryMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactoryMode:Z

    .line 1275
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkFactorySim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactorySim:Z

    .line 1278
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateBeforeBoot()V

    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 1281
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1286
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 1287
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 1288
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    .line 1291
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v9, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1294
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1296
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 1297
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1302
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1304
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_3

    .line 1305
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 1307
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_2

    .line 1308
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 1310
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1312
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x11

    const-string v6, "AudioService"

    const/16 v7, 0x7530

    move v4, v3

    move v5, v3

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1326
    return-void

    .line 1312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 3833
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 3834
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 3838
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3839
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    :goto_0
    return-void

    .line 3842
    :cond_1
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService playSoundEffect Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 9426
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v5}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 9428
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerAudioPolicy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9430
    :cond_0
    const/4 v3, 0x0

    .line 9432
    .local v3, "regId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 9435
    .local v2, "hasPermissionForPolicy":Z
    :cond_1
    if-nez v2, :cond_2

    .line 9436
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t register audio policy for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9458
    :goto_0
    return-object v4

    .line 9441
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 9443
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9444
    const-string v6, "AudioService"

    const-string v7, "Cannot re-register policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9445
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 9457
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 9447
    :cond_3
    :try_start_2
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 9448
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 9449
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 9450
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9457
    :try_start_3
    monitor-exit v5

    move-object v4, v3

    .line 9458
    goto :goto_0

    .line 9451
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v1

    .line 9453
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio policy registration failed, could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9455
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 8494
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 8490
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 3934
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 3935
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 8502
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 8503
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 8507
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 8508
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 8523
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8524
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8525
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 8527
    const-string v0, "AudioService"

    const-string v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8528
    const/4 v0, 0x0

    .line 8550
    :goto_0
    return v0

    .line 8532
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 8538
    if-eqz p8, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8540
    :cond_1
    const-string v0, "AudioService"

    const-string v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8541
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 8543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8550
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .locals 14
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x72

    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 9787
    new-instance v7, Landroid/media/AudioParameter;

    invoke-direct {v7, p1}, Landroid/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 9788
    .local v7, "audioParam":Landroid/media/AudioParameter;
    const/4 v12, 0x0

    .line 9791
    .local v12, "strVal":Ljava/lang/String;
    const-string/jumbo v0, "fine_volume"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 9792
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 9793
    .local v11, "index":I
    invoke-direct {p0, v11}, Lcom/android/server/audio/AudioService;->setFineVolume(I)V

    .line 9866
    .end local v11    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 9795
    :cond_1
    const-string/jumbo v0, "fine_volume_v2"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 9796
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 9797
    .restart local v11    # "index":I
    const-string/jumbo v0, "fine_volume_v2_flag"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 9798
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 9800
    .local v9, "flags":I
    const-string v0, "FINE_VOLUME"

    invoke-virtual {p0, v4, v11, v9, v0}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_0

    .line 9805
    .end local v9    # "flags":I
    .end local v11    # "index":I
    :cond_2
    const-string v0, "bt_aoble_mode"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 9806
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAobleDeviceConnected()V

    goto :goto_0

    .line 9810
    :cond_3
    const-string/jumbo v0, "setForceUseForMedia"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 9811
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 9812
    .local v10, "forced_config":I
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService;->setForceUseForMedia(I)V

    goto :goto_0

    .line 9816
    .end local v10    # "forced_config":I
    :cond_4
    const-string v0, "UHQ_BT"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 9817
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 9818
    .local v13, "uhqBtSampleRate":I
    if-nez v13, :cond_5

    .line 9819
    invoke-direct {p0, v4, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    goto :goto_0

    .line 9821
    :cond_5
    iput v13, p0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    .line 9822
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 9827
    .end local v13    # "uhqBtSampleRate":I
    :cond_6
    const-string v0, "Gamepad_earjack"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 9828
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 9829
    .local v3, "gamepadEarjackState":I
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[gamepad] setAudioServiceConfig() gamepadEarjackState "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9830
    const/4 v0, -0x1

    if-ne v3, v0, :cond_7

    .line 9831
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x5dc

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 9833
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 9838
    .end local v3    # "gamepadEarjackState":I
    :cond_8
    const-string v0, "audioHDR"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 9839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;audioHDR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9841
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioEffectParam;audioHDR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9846
    :cond_9
    const-string/jumbo v0, "volumelimit_value"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 9847
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    .line 9849
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 9851
    .local v8, "device":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v1, v1, 0xa

    if-le v0, v1, :cond_0

    const v0, 0x2000018c

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 9852
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v0, v0, 0xa

    const-string v1, "FINE_VOLUME"

    invoke-virtual {p0, v4, v0, v2, v1}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 9855
    .end local v8    # "device":I
    :cond_a
    const-string/jumbo v0, "volumelimit_on"

    invoke-virtual {v7, v0}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 9856
    const-string/jumbo v0, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    .line 9858
    const-string v0, "AudioService"

    const-string v1, "Volume Limit on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9861
    :cond_b
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    .line 9862
    const-string v0, "AudioService"

    const-string v1, "Volume Limit off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x2

    .line 5559
    const/4 v6, 0x0

    .line 5560
    .local v6, "delay":I
    if-eq p3, v4, :cond_0

    const/16 v2, 0xb

    if-eq p3, v2, :cond_0

    const/4 v2, 0x7

    if-eq p3, v2, :cond_0

    .line 5565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5567
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 5568
    if-ne p3, v4, :cond_a

    .line 5569
    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    .line 5570
    const/4 p2, 0x0

    .line 5572
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 5573
    :cond_1
    const/16 v2, 0x80

    if-ne p2, v4, :cond_3

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 5598
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-ne p3, v4, :cond_b

    const/16 v2, 0x66

    :goto_2
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5610
    monitor-exit v8

    move v7, v6

    .line 5611
    .end local v6    # "delay":I
    .local v7, "delay":I
    :goto_3
    return v7

    .end local v7    # "delay":I
    .restart local v6    # "delay":I
    :cond_3
    move v1, v0

    .line 5573
    goto :goto_0

    .line 5576
    :cond_4
    if-ne p2, v1, :cond_5

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5578
    monitor-exit v8

    move v7, v6

    .end local v6    # "delay":I
    .restart local v7    # "delay":I
    goto :goto_3

    .line 5579
    .end local v7    # "delay":I
    .restart local v6    # "delay":I
    :cond_5
    if-ne p2, v3, :cond_6

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5581
    monitor-exit v8

    move v7, v6

    .end local v6    # "delay":I
    .restart local v7    # "delay":I
    goto :goto_3

    .line 5582
    .end local v7    # "delay":I
    .restart local v6    # "delay":I
    :cond_6
    if-nez p2, :cond_7

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    if-ne v2, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 5583
    const-string v0, "AudioService"

    const-string v1, "Don\'t send becoming noisy intent when disconnecting a2dp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5610
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5585
    :cond_7
    const/16 v2, 0x80

    if-eq p2, v1, :cond_8

    if-ne p2, v4, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    :try_start_1
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_1

    .line 5596
    :cond_a
    const/4 v6, 0x0

    goto :goto_1

    .line 5598
    :cond_b
    const/4 v0, 0x7

    if-ne p3, v0, :cond_c

    const/16 v2, 0x71

    goto :goto_2

    :cond_c
    const/16 v2, 0x65

    goto :goto_2
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 9
    .param p1, "on"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 4165
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4166
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 4167
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4172
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    if-ne v0, v8, :cond_0

    if-nez p1, :cond_0

    .line 4173
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4177
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothA2dpOn() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_2

    .line 4179
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    aput v2, v0, v1

    .line 4184
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4185
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V

    .line 4186
    return-void

    .line 4167
    :cond_1
    const/16 v4, 0xa

    goto :goto_0

    .line 4181
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    aput v2, v0, v1

    goto :goto_1

    .line 4184
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 8681
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8682
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 8683
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 8684
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    .line 8687
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_1

    .line 8688
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v2

    .line 8693
    :goto_1
    monitor-exit v1

    .line 8694
    return-void

    .line 8684
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 8690
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v2

    goto :goto_1

    .line 8693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 4096
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4100
    :goto_0
    return-void

    .line 4099
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    goto :goto_0
.end method

.method public setBluetoothScoOnInt(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 4111
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v11

    .line 4116
    .local v11, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4117
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 4118
    .local v12, "scoState":I
    const/16 v0, 0xb

    if-eq v12, v0, :cond_0

    const/16 v0, 0xc

    if-eq v12, v0, :cond_0

    .line 4120
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScoAudioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    .end local v11    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v12    # "scoState":I
    :goto_0
    return-void

    .line 4126
    :cond_0
    if-eqz p1, :cond_3

    .line 4127
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v3

    .line 4128
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    aput v3, v0, v5

    .line 4134
    :goto_1
    if-eqz p1, :cond_4

    .line 4136
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v5, :cond_1

    .line 4137
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->setSpeakerphoneOn(Z)V

    .line 4140
    :cond_1
    iput v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 4152
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4154
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v8, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v9, 0x0

    move v5, v1

    move v6, v2

    move v7, v2

    move v10, v3

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 4130
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v5

    goto :goto_1

    .line 4141
    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v6, :cond_2

    .line 4142
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 4144
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    if-eqz v0, :cond_2

    .line 4146
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 4147
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    .line 4112
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4556
    if-nez p1, :cond_1

    .line 4624
    :cond_0
    :goto_0
    return-void

    .line 4560
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4561
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 4562
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v5, 0x10

    .line 4563
    .local v5, "outDevice":I
    const v4, -0x7ffffff8

    .line 4564
    .local v4, "inDevice":I
    if-eqz v1, :cond_2

    .line 4565
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 4582
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 4583
    const-string v0, ""

    .line 4586
    :cond_3
    const/4 v9, 0x2

    if-ne p2, v9, :cond_5

    move v3, v7

    .line 4588
    .local v3, "connected":Z
    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4590
    .local v2, "btDeviceName":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 4591
    const-string v2, ""

    .line 4594
    :cond_4
    invoke-direct {p0, v3, v5, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v6, v7

    .line 4597
    .local v6, "success":Z
    :goto_3
    if-eqz v6, :cond_0

    .line 4598
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 4599
    if-eqz v3, :cond_7

    .line 4607
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4622
    :goto_4
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4568
    .end local v2    # "btDeviceName":Ljava/lang/String;
    .end local v3    # "connected":Z
    .end local v6    # "success":Z
    :sswitch_0
    const/16 v5, 0x20

    .line 4569
    goto :goto_1

    .line 4571
    :sswitch_1
    const/16 v5, 0x40

    goto :goto_1

    :cond_5
    move v3, v8

    .line 4586
    goto :goto_2

    .restart local v2    # "btDeviceName":Ljava/lang/String;
    .restart local v3    # "connected":Z
    :cond_6
    move v6, v8

    .line 4594
    goto :goto_3

    .line 4618
    .restart local v6    # "success":Z
    :cond_7
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4619
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 4565
    nop

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDeviceToForceByUser(ILjava/lang/String;)I
    .locals 18
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 10653
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDeviceToForceByUser("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 10655
    const/4 v15, 0x0

    .line 10656
    .local v15, "status":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 10657
    .local v14, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    const/4 v11, 0x0

    .line 10658
    .local v11, "btName":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 10660
    invoke-static/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 10661
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 10662
    .local v9, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v9, :cond_0

    .line 10663
    const-string v2, "AudioService"

    const-string v3, "BluetoothAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10664
    const/4 v2, -0x1

    monitor-exit v16

    .line 10715
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return v2

    .line 10667
    .restart local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_2

    .line 10668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v12

    .line 10669
    .local v12, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 10681
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 10682
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10683
    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    .line 10684
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v11

    .line 10696
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 10701
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    const/4 v2, 0x2

    const-string v3, ""

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 10702
    if-nez v15, :cond_4

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 10703
    const-string v2, "AudioService"

    const-string v3, "Device is changed successfully by force"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10705
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10706
    :try_start_1
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send NEW_ROUTES MSG, BT Name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v11, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 10708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10710
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10715
    :goto_2
    :try_start_2
    monitor-exit v16

    move v2, v15

    goto/16 :goto_0

    .line 10690
    .restart local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 10691
    .restart local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_2

    .line 10692
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    goto :goto_1

    .line 10710
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 10716
    .end local v11    # "btName":Ljava/lang/String;
    .end local v14    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :catchall_1
    move-exception v2

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 10712
    .restart local v11    # "btName":Ljava/lang/String;
    .restart local v14    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_6
    :try_start_5
    const-string v2, "AudioService"

    const-string v3, "There is no device spec in connected devices"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10713
    const/4 v15, -0x1

    goto :goto_2
.end method

.method public setEarphoneStateForSARTest(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 10503
    const/4 v1, 0x0

    .line 10504
    .local v1, "TRANSMIT_POWER_DEFAULT":I
    const/16 v0, 0x200

    .line 10530
    .local v0, "EARJECK_STATE":I
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 9478
    sget-boolean v7, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v7, :cond_0

    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9481
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v1, v6

    .line 9484
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    .line 9485
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9510
    :goto_1
    return v4

    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    move v1, v5

    .line 9481
    goto :goto_0

    .line 9491
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_2
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v7

    .line 9492
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 9493
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9494
    monitor-exit v7

    goto :goto_1

    .line 9509
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 9496
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9497
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-ne p1, v6, :cond_5

    .line 9499
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9500
    .local v3, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v8, v6, :cond_4

    .line 9501
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9502
    monitor-exit v7

    goto :goto_1

    .line 9506
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_5
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 9507
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-ne p1, v6, :cond_6

    move v4, v6

    :goto_2
    invoke-virtual {v8, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 9509
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 9510
    goto :goto_1

    :cond_6
    move v4, v5

    .line 9507
    goto :goto_2
.end method

.method public setForceSpeakerOn(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4029
    if-eqz p1, :cond_1

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    .line 4030
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const v1, 0x20000380

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4031
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4033
    :cond_0
    return-void

    :cond_1
    move v0, v6

    .line 4029
    goto :goto_0
.end method

.method public setForceUseForMedia(I)V
    .locals 7
    .param p1, "forced_config"    # I

    .prologue
    const/16 v1, 0xe

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4041
    const-string/jumbo v0, "setForceUseForMedia()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4053
    :goto_0
    return-void

    .line 4044
    :cond_0
    if-ne p1, v1, :cond_1

    .line 4045
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4046
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForMedia:I

    .line 4051
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForMedia:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 4048
    :cond_1
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4049
    iput v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForMedia:I

    goto :goto_1
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 8950
    const/4 v0, 0x0

    .line 8951
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2

    .line 8952
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 8953
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    .line 8954
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8955
    monitor-exit v3

    move v1, v0

    .line 8969
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_0
    return v1

    .line 8958
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8959
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_1

    .line 8960
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8961
    const/4 v5, 0x5

    if-eqz p1, :cond_3

    const/16 v2, 0xc

    :goto_1
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8965
    :cond_1
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 8966
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8967
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v1, v0

    .line 8969
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_0

    .line 8961
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 8966
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 8967
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 3141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 3143
    return-void
.end method

.method public setMediaSilentMode(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/high16 v6, 0x2000000

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 3490
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    if-eq p1, v1, :cond_1

    .line 3491
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 3492
    .local v0, "musicLev":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaSilentMode musicLev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    if-eqz p1, :cond_2

    .line 3494
    if-eqz v0, :cond_0

    .line 3495
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    .line 3496
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 3502
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    .line 3504
    .end local v0    # "musicLev":I
    :cond_1
    return-void

    .line 3499
    .restart local v0    # "musicLev":I
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v6, v2}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 3500
    iput v5, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    goto :goto_0
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3251
    .local v7, "uid":I
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_0

    .line 3252
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 3254
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3276
    :cond_1
    :goto_0
    return-void

    .line 3258
    :cond_2
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3261
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3270
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_4

    .line 3271
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 3274
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3560
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    :cond_0
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3590
    :cond_1
    :goto_0
    return-void

    .line 3565
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 3569
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3574
    :cond_3
    if-lt p1, v4, :cond_1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    .line 3578
    const/4 v0, 0x0

    .line 3579
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3580
    if-ne p1, v4, :cond_4

    .line 3581
    :try_start_0
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3583
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 3584
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3587
    if-eqz v0, :cond_1

    .line 3588
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 3584
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRadioSpeakerOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4058
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4068
    :goto_0
    return-void

    .line 4061
    :cond_0
    if-eqz p1, :cond_1

    .line 4062
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4063
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    goto :goto_0

    .line 4065
    :cond_1
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4066
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    goto :goto_0
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8512
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8513
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 8514
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 3304
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3305
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 3308
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 3309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3310
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 8732
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8733
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 8734
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3984
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4017
    :goto_0
    return-void

    .line 3989
    :cond_0
    if-eqz p1, :cond_4

    .line 3990
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v4

    .line 3991
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    aput v4, v0, v7

    .line 3997
    :goto_1
    if-eqz p1, :cond_5

    .line 3998
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 4000
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    if-eqz v0, :cond_1

    .line 4001
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 4003
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 4004
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 4007
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4010
    :cond_2
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 4015
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 3993
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v7

    goto :goto_1

    .line 4011
    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_3

    .line 4012
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_2
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2531
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2533
    return-void
.end method

.method public setTogether(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 7268
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsTogether:Z

    .line 7269
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 3477
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 3485
    :goto_0
    return-void

    .line 3479
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 3483
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 9170
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 9173
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9197
    :cond_0
    :goto_0
    return-void

    .line 9178
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 9179
    if-eqz p1, :cond_2

    .line 9182
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9195
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 9196
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9191
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 9214
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 9215
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 9217
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9219
    :cond_0
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 5499
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 5500
    :try_start_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_0

    .line 5501
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWiredDeviceConnectionState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    :cond_0
    const/16 v1, 0x4000

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 5506
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    # getter for: Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->access$4000(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5507
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_1

    .line 5508
    const-string v1, "AudioService"

    const-string v2, "[gamepad] setWiredDeviceConnectionState() GamapadEarjackRouting"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->access$4002(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;Z)Z

    .line 5523
    :cond_2
    if-eqz p2, :cond_4

    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    move/from16 v0, p1

    if-eq v0, v1, :cond_3

    const v1, -0x7ffffff0

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isRestrictionHeadphone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5528
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5529
    const/16 p2, 0x0

    .line 5534
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v8

    .line 5535
    .local v8, "delay":I
    iget-object v11, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v12, 0x64

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5541
    monitor-exit v10

    .line 5542
    .end local v8    # "delay":I
    :goto_0
    return-void

    .line 5513
    :cond_5
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUsbGamepadConnectionState:Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->setGamepadState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 5514
    .local v9, "routing":Z
    if-nez v9, :cond_2

    .line 5515
    monitor-exit v10

    goto :goto_0

    .line 5541
    .end local v9    # "routing":Z
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5531
    :cond_6
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3449
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 3464
    :goto_0
    :pswitch_0
    return v1

    .line 3451
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3454
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 3457
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 3451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 4197
    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    const/4 v0, 0x0

    .line 4200
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 4201
    return-void

    .line 4197
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 4209
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 4222
    :cond_0
    :goto_0
    return-void

    .line 4213
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 4219
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4220
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 4221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 4205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 4206
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 8743
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 8744
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 8745
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 8746
    monitor-exit v2

    return-object v0

    .line 8747
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 4226
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 4239
    :cond_0
    :goto_0
    return-void

    .line 4230
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 4234
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4235
    .local v2, "ident":J
    if-eqz v0, :cond_2

    .line 4236
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 4238
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1266
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1268
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3874
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3875
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 8559
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 8560
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 9462
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9463
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 9464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9465
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    .line 9466
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9468
    monitor-exit v2

    .line 9475
    :goto_0
    return-void

    .line 9470
    :cond_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9472
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 9473
    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 8498
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 8499
    return-void
.end method
