.class Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0


# instance fields
.field private AUDIO_RECORD_FOR_BARGE_IN:I

.field private AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

.field private AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

.field private AUDIO_START:I

.field public BargeinAct:[S

.field private final RECOGNITION_WAIT_TIME:I

.field public TAG:Ljava/lang/String;

.field public THscore:D

.field private aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

.field private aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public cmResult:[F

.field public consoleInitReturn:J

.field public consoleInitReturn_sub:J

.field public defaultloadNameList:Ljava/lang/String;

.field public done:Z

.field private dualThresholdFlag:I

.field public f:Ljava/io/File;

.field public handler:Landroid/os/Handler;

.field public isCameraBargeIn:Z

.field public isCancelBargeIn:Z

.field public isEnableSamsungOOVResult:Z

.field private isMakePCM:Z

.field public isSASRInitProblem:Z

.field public isSensoryBargeInEnable:Z

.field public isSensoryCameraBargeIn:Z

.field public isSensoryResult:Z

.field public isSubModelBargeInEnable:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mEmbeddedEngineLanguage:I

.field public mFileOutputStream:Ljava/io/FileOutputStream;

.field public mLanguage:I

.field public mStopHandler:Landroid/os/Handler;

.field private m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field public modelPath:Ljava/lang/String;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field public rec:Landroid/media/AudioRecord;

.field private recogAfterReadCount:I

.field public resultSASRInit:I

.field public resultSASRLoadModel:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public sensoryCMscore:F

.field public sensoryCantoneseRejectCMTH:F

.field public sensoryChineseCaptureCMTH:F

.field public sensoryChineseStopCMTH:F

.field public sensoryJapaneseShootCMTH:F

.field public sensoryKoreanCancelCMTH:F

.field public sensoryKoreanRejectCMTH:F

.field public sensoryKoreanShootCMTH:F

.field public sensoryKoreanStopCMTH:F

.field public sensoryRussianCheeseCMTH:F

.field public sensoryUKEnglishStopCMTH:F

.field public sensoryUSEnglishCaptureCMTH:F

.field public sensoryUSEnglishCheeseCMTH:F

.field public sensoryUSEnglishRecordVideoCMTH:F

.field public sensoryUSEnglishShootCMTH:F

.field public sensoryUSEnglishSnoozeCMTH:F

.field public sensoryUSEnglishStopCMTH:F

.field public speech:[S

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field public wordListPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V
    .locals 8
    .param p1, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I
    .param p5, "samsungOOVResult"    # Z

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 27
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 28
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 29
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 30
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 31
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    .line 36
    new-array v0, v4, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [S

    const/4 v1, -0x1

    aput-short v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    .line 40
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    .line 43
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 48
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    .line 50
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 51
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 53
    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    .line 56
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 57
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 60
    invoke-static {v4}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    .line 62
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    .line 63
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    .line 66
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 67
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_START:I

    .line 68
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->RECOGNITION_WAIT_TIME:I

    .line 71
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 72
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 74
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_v2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_v2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    .line 83
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    .line 85
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    .line 86
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    .line 87
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 90
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 92
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanRejectCMTH:F

    .line 93
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanCancelCMTH:F

    .line 94
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanShootCMTH:F

    .line 95
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanStopCMTH:F

    .line 97
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseCaptureCMTH:F

    .line 98
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    .line 100
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    .line 102
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    .line 103
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    .line 105
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryRussianCheeseCMTH:F

    .line 107
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCantoneseRejectCMTH:F

    .line 110
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishShootCMTH:F

    .line 111
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    .line 112
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    .line 113
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    .line 115
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    .line 117
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 118
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 120
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 122
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->dualThresholdFlag:I

    .line 756
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    .line 125
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    return-object v0
.end method

.method private getAudioRecord(I)Landroid/media/AudioRecord;
    .locals 9
    .param p1, "source"    # I

    .prologue
    const/4 v8, 0x0

    .line 940
    const/4 v7, 0x0

    .line 941
    .local v7, "retAudioRecord":Landroid/media/AudioRecord;
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "getAudioRecord modified by jy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x2000

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v0, "retAudioRecord":Landroid/media/AudioRecord;
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=false, got !initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    move-object v1, v8

    .line 969
    :goto_0
    return-object v1

    .line 952
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got AudioRecord using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 969
    goto :goto_0

    .line 954
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 955
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=false, IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got IllegalArgumentException using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move-object v1, v8

    .line 962
    goto/16 :goto_0

    .line 963
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catchall_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    :goto_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 954
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private getMMUIRecognitionResult([SI)I
    .locals 12
    .param p1, "speech"    # [S
    .param p2, "readNshorts"    # I

    .prologue
    const/16 v11, 0x5f

    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 647
    const/4 v6, 0x0

    .line 649
    .local v6, "result":I
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->RECThread([S)I

    move-result v6

    .line 653
    :cond_0
    const/4 v0, -0x2

    if-ne v6, v0, :cond_2

    .line 654
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 p2, -0x1

    move v0, p2

    .line 745
    :goto_0
    return v0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 667
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 p2, -0x1

    move v0, p2

    .line 670
    goto :goto_0

    .line 673
    :cond_3
    if-ne v6, v9, :cond_e

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_e

    .line 675
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 p2, -0x1

    move v0, p2

    .line 678
    goto :goto_0

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const-string v3, "/system/voicebargeindata/sasr/input.txt"

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 687
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    if-ne v0, v9, :cond_6

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v8

    aput-object v1, v0, v8

    .line 692
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    aget-short v0, v0, v8

    if-ne v0, v9, :cond_7

    .line 697
    const-wide v0, -0x4003333333333333L    # -1.8

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_9

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 p2, -0x1

    move v0, v7

    .line 709
    goto/16 :goto_0

    .line 698
    :cond_7
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 699
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    goto :goto_1

    .line 701
    :cond_8
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    goto :goto_1

    .line 712
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_b

    .line 713
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_a

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmbeddedEngine Recognizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iput-boolean v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = false. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_d

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 p2, -0x1

    move v0, p2

    .line 739
    goto/16 :goto_0

    .line 719
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const-string v1, "TH-Reject"

    aput-object v1, v0, v8

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    aput-short v7, v0, v8

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_2

    .line 727
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    aget v0, v0, v8

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_2

    .line 730
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const-string v1, "TH-Reject"

    aput-object v1, v0, v8

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    aput-short v7, v0, v8

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_2

    .line 741
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    :cond_e
    move v0, p2

    .line 745
    goto/16 :goto_0
.end method

.method private getSensoryRecognitionResult(J[S)Z
    .locals 13
    .param p1, "consoleInitReturn"    # J
    .param p3, "speech"    # [S

    .prologue
    .line 468
    const/4 v9, 0x0

    .line 469
    .local v9, "consoleResult":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 470
    .local v8, "sensoryResultValue":[F
    const/high16 v11, -0x40800000    # -1.0f

    .line 471
    .local v11, "sensoryCMscore":F
    const/4 v10, 0x0

    .line 472
    .local v10, "rejectFlag":Z
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    move-wide v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v9

    .line 473
    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->dualThresholdFlag:I

    .line 475
    if-eqz v9, :cond_2

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {p0, v2, v9}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 478
    const/4 v0, 0x0

    aget v11, v8, v0

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensoryCMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dualThresholdFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->dualThresholdFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-direct {p0, p1, p2, v0, v11}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSensoryOOV(JIF)Z

    move-result v10

    .line 488
    if-nez v10, :cond_2

    .line 489
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    .line 492
    :cond_0
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_2

    .line 493
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 496
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_1

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = true. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBargeInFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 995
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    const/4 v0, 0x1

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resultSensoryOOV(JIF)Z
    .locals 7
    .param p1, "consoleInitReturn"    # J
    .param p3, "action"    # I
    .param p4, "sensoryCMscore"    # F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 509
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    if-ne v2, v4, :cond_1

    .line 510
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 643
    :goto_1
    return v0

    .line 512
    :sswitch_0
    if-ne p3, v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanRejectCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Korean reject score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 518
    :sswitch_1
    if-ne p3, v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCantoneseRejectCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "HK Chinese reject score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 527
    :cond_1
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 528
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->dualThresholdFlag:I

    if-ne v2, v0, :cond_2

    .line 530
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 533
    :pswitch_0
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->DUALTHR_CAMERA:[[I

    aget-object v2, v2, v1

    add-int/lit8 v3, p3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Korean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " score is low. So rejected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 540
    :pswitch_1
    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 542
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->DUALTHR_CAMERA:[[I

    aget-object v2, v2, v0

    add-int/lit8 v3, p3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 544
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "US English "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " score is low. So rejected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 550
    :pswitch_2
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/Config;->DUALTHR_CAMERA:[[I

    aget-object v2, v2, v4

    add-int/lit8 v3, p3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 552
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chinese "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " score is low. So rejected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 562
    :cond_2
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    .line 565
    :sswitch_2
    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 566
    if-ne p3, v4, :cond_3

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_3

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Sub English cheese score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 569
    :cond_3
    if-ne p3, v5, :cond_4

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_4

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Sub English capture score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 572
    :cond_4
    if-ne p3, v6, :cond_5

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishShootCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_5

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Sub English shoot score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 575
    :cond_5
    const/4 v2, 0x5

    if-ne p3, v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 576
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Sub English record video score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 582
    :sswitch_3
    if-ne p3, v6, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 583
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Japanese shoot score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 588
    :sswitch_4
    if-ne p3, v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryRussianCheeseCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Russian cheese score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 598
    :cond_6
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    if-ne v2, v5, :cond_8

    .line 599
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    sparse-switch v2, :sswitch_data_2

    goto/16 :goto_0

    .line 601
    :sswitch_5
    if-ne p3, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanStopCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Korean stop score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 607
    :sswitch_6
    if-ne p3, v0, :cond_7

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_7

    .line 608
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "US English stop score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 610
    :cond_7
    if-ne p3, v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "US English snooze score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 616
    :sswitch_7
    if-ne p3, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Chinese stop score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 622
    :sswitch_8
    if-ne p3, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "UK English stop score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 630
    :cond_8
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 631
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 633
    :pswitch_3
    if-ne p3, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanCancelCMTH:F

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Korean cancel score is low. So rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 562
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_2
    .end sparse-switch

    .line 599
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0xa -> :sswitch_8
    .end sparse-switch

    .line 631
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static twoBytesToShort(BB)S
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 749
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public SendHandlerMessage([Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 768
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 769
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 770
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "recognition_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 771
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 774
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getSensoryBargeInAct(ILjava/lang/String;)I
    .locals 6
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 828
    packed-switch p1, :pswitch_data_0

    .line 936
    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    .line 830
    :pswitch_0
    const-string v1, "stop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 835
    :pswitch_1
    const-string v2, "next"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    const-string v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 838
    goto :goto_0

    .line 842
    :pswitch_2
    const-string v2, "answer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    const-string v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 845
    goto :goto_0

    .line 849
    :pswitch_3
    const-string v2, "stop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 851
    const-string v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 852
    goto :goto_0

    .line 858
    :pswitch_4
    const-string v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 860
    const-string v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 861
    goto :goto_0

    .line 862
    :cond_2
    const-string v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 863
    goto :goto_0

    .line 864
    :cond_3
    const-string v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 865
    goto :goto_0

    .line 866
    :cond_4
    const-string v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v4

    .line 867
    goto :goto_0

    .line 868
    :cond_6
    const-string v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    :cond_7
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 873
    :pswitch_5
    const-string v5, "smile"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 875
    const-string v0, "cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 876
    goto/16 :goto_0

    .line 877
    :cond_8
    const-string v0, "capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 878
    goto/16 :goto_0

    .line 879
    :cond_9
    const-string v0, "shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 880
    goto/16 :goto_0

    .line 881
    :cond_a
    const-string v0, "record video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "record_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "recordvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v0, v4

    .line 882
    goto/16 :goto_0

    .line 883
    :cond_c
    const-string v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 884
    :cond_d
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 885
    :cond_e
    const-string v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 886
    :cond_f
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 887
    :cond_10
    const-string v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 888
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 889
    :cond_11
    const-string v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 890
    :cond_12
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 891
    :cond_13
    const-string v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 892
    :cond_14
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 893
    :cond_15
    const-string v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 894
    :cond_16
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 895
    :cond_17
    const-string v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 896
    :cond_18
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 897
    :cond_19
    const-string v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 898
    :cond_1a
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 899
    :cond_1b
    const-string v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 904
    :pswitch_6
    const-string v5, "buddy photo share"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "buddy_photo_share"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "buddyphotoshare"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 906
    const-string v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 907
    goto/16 :goto_0

    .line 908
    :cond_1c
    const-string v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    .line 909
    goto/16 :goto_0

    .line 910
    :cond_1d
    const-string v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v3

    .line 911
    goto/16 :goto_0

    .line 912
    :cond_1e
    const-string v0, "slideshow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v4

    .line 913
    goto/16 :goto_0

    .line 914
    :cond_1f
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 915
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 916
    :cond_20
    const-string v0, "camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 921
    :pswitch_7
    const-string v1, "cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 926
    :pswitch_8
    const-string v2, "yes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 928
    const-string v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 929
    goto/16 :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V
    .locals 6
    .param p2, "block_size"    # I
    .param p3, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "command"    # I
    .param p6, "Language"    # I
    .param p7, "samsungOOVResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;I",
            "Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 134
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 135
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 136
    iput p5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 139
    invoke-virtual {p0, p6, p5}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setSensoryFilePath(II)V

    .line 140
    iput-boolean p7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSensoryBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableSamsungOOVResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_c

    .line 146
    :cond_0
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_START:I

    .line 147
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_2

    .line 160
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    iput-object p3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 165
    iput-object p4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 166
    iput p6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setEmbeddedEngineLanguage()V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v4

    .line 172
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 173
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 175
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v1, :cond_3

    .line 176
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log"

    const-string v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_3
    :goto_1
    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 187
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    .line 189
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_4

    .line 190
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 193
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    .line 197
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-nez v1, :cond_b

    .line 198
    :cond_6
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_7

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SetSRLanguage(I)I

    .line 204
    :cond_7
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1, p5}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setSamsungFilePath(II)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_8

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 210
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_8

    .line 211
    iput-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 214
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_a

    .line 226
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_9

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 230
    :cond_9
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_a

    .line 231
    iput-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 234
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_b

    .line 237
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_b

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 242
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultSASRLoadModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultSASRInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSASRInitProblem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 151
    :cond_c
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_1

    .line 152
    const/16 v1, 0x32

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_START:I

    .line 153
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 219
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public isSensoryBargeinEnabled()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    return v0
.end method

.method readByteBlock()I
    .locals 11

    .prologue
    const/16 v10, 0x140

    const/4 v5, -0x1

    .line 354
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-eqz v6, :cond_1

    .line 355
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 464
    :cond_0
    :goto_0
    return v5

    .line 360
    :cond_1
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v6, :cond_2

    .line 361
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : Section1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto :goto_0

    .line 366
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v6, :cond_3

    .line 367
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 370
    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v6, :cond_4

    .line 371
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : Section2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto :goto_0

    .line 376
    :cond_4
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-ge v6, v10, :cond_5

    .line 377
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " command = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " language : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    rem-int/lit8 v6, v6, 0x14

    if-nez v6, :cond_6

    .line 381
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nshorts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    mul-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " command = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " language : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_6
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 386
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    if-eqz v6, :cond_7

    .line 387
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 390
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v10, :cond_8

    .line 391
    div-int/lit8 v3, v1, 0x2

    .line 392
    .local v3, "sample":I
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    aget-byte v7, v7, v1

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    invoke-static {v7, v8}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->twoBytesToShort(BB)S

    move-result v7

    aput-short v7, v6, v3

    .line 390
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 401
    .end local v3    # "sample":I
    :cond_8
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v6, :cond_9

    .line 402
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : Section3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_0

    .line 408
    :cond_9
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-lez v6, :cond_12

    .line 409
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v6, :cond_a

    .line 411
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_a
    :goto_2
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v6, :cond_b

    .line 419
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : Section4"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 424
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v2, 0x0

    .line 426
    .local v2, "result":I
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v6, :cond_d

    .line 427
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v6, :cond_c

    .line 428
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : Section5"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_0

    .line 433
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    iget v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_START:I

    if-le v6, v7, :cond_d

    .line 434
    const/4 v4, 0x0

    .line 436
    .local v4, "successRecog":Z
    iget-wide v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v4

    .line 438
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v6, :cond_d

    .line 439
    iget-wide v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v4

    .line 441
    if-eqz v4, :cond_d

    .line 442
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "It is Recognized by sub Model"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v4    # "successRecog":Z
    :cond_d
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v7, 0x32

    if-le v6, v7, :cond_11

    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-nez v6, :cond_f

    :cond_e
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-nez v6, :cond_11

    .line 448
    :cond_f
    iget-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v6, :cond_10

    .line 449
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v7, "readByteBlock return -1 : Section6"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_0

    .line 454
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v6, :cond_11

    .line 455
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    iget v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getMMUIRecognitionResult([SI)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 456
    iget v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-eq v6, v5, :cond_0

    .line 464
    .end local v2    # "result":I
    :cond_11
    :goto_3
    iget v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_0

    .line 461
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readNshorts is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " So do nothing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "run start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_9

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readByteBlock()I

    .line 300
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v1, :cond_8

    .line 312
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stopBargeInAudioRecord()V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "SASRClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRClose()I

    move-result v0

    .line 318
    .local v0, "SASRCloseReturn":I
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SASRCloseReturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "SASRCloseReturn":I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "SASRClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_6

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "phrasespotClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 329
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 333
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "phrasespotClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_6
    iput-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 337
    iput-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 338
    iput-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "aMMUIRecognizer = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "aSensoryBargeInEngine = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "m_listener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "run end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v1, :cond_7

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    :cond_7
    return-void

    .line 304
    :cond_8
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    .line 309
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Bargein fail to start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setBlockSize(I)V
    .locals 0
    .param p1, "block_size"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 253
    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 973
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 975
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_1

    .line 976
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 991
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void

    .line 977
    :cond_1
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 978
    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 979
    :cond_2
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 980
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 981
    :cond_3
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 982
    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 983
    :cond_4
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 984
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 985
    :cond_5
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 986
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 987
    :cond_6
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 988
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "stopHandler"    # Landroid/os/Handler;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 754
    return-void
.end method

.method public setSamsungFilePath(II)V
    .locals 2
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    .line 782
    invoke-static {p1}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 784
    invoke-static {p2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setSensoryFilePath(II)V
    .locals 7
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    const/4 v6, 0x1

    .line 788
    invoke-static {p1, p2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "sensoryModelPath":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "sensoryGrammarPath":Ljava/lang/String;
    move-object v3, v2

    .line 791
    .local v3, "sensoryModelPath_sub":Ljava/lang/String;
    move-object v1, v0

    .line 793
    .local v1, "sensoryGrammarPath_sub":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    const-string v4, "/system/lib/libSensoryBargeInEngine.so"

    invoke-direct {p0, v4}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-direct {p0, v4}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    iput-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    .line 801
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 802
    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 804
    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 805
    iput-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    .line 806
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 807
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 809
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v5, "SUB model is loaded "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_2
    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 814
    iput-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    .line 816
    iget-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v4, :cond_3

    .line 817
    iput-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    .line 821
    :cond_3
    :goto_0
    return-void

    .line 818
    :cond_4
    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 819
    iput-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method
