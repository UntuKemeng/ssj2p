.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;,
        Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;,
        Landroid/sec/clipboard/ClipboardExManager$Format;
    }
.end annotation


# static fields
.field public static final DATE:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final EMAIL:I = 0x4

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_BITMAP_ID:I = 0x3

.field public static final FORMAT_HTML_FLAGMENT_ID:I = 0x4

.field public static final FORMAT_INTENT_ID:I = 0x6

.field public static final FORMAT_MULTIPLE_TYPE_ID:I = 0x8

.field public static final FORMAT_MULTIPLE_URI_ID:I = 0x7

.field public static final FORMAT_TEXT_ID:I = 0x2

.field public static final FORMAT_URI_ID:I = 0x5

.field public static final PHONE_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ClipboardExManager"

.field public static final TIME:I = 0x2

.field public static final URL:I = 0x5

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private final _UNFORMAT:I

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

.field private mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

.field private mContext:Landroid/content/Context;

.field private mFormatid:I

.field private mIsFiltered:Z

.field private mIsLogging:Z

.field private mIsMaximumSize:Z

.field private mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mSetDataHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    .line 65
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    .line 70
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 71
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 72
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .line 122
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 124
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 125
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 127
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 128
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 130
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    .line 132
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 133
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsLogging:Z

    .line 1529
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    .line 65
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    .line 70
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 71
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 72
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .line 122
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 124
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 125
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 127
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 128
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 130
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    .line 132
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 133
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsLogging:Z

    .line 181
    return-void
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sec/clipboard/ClipboardExManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    return v0
.end method

.method static synthetic access$302(Landroid/sec/clipboard/ClipboardExManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    return p1
.end method

.method static synthetic access$400(Landroid/sec/clipboard/ClipboardExManager;ZI)I
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->isClipboardAllowed(ZI)I

    move-result v0

    return v0
.end method

.method private add(Landroid/sec/clipboard/data/ClipboardData;ZZZI)Z
    .locals 8
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "withoutNoti"    # Z
    .param p3, "setPrimary"    # Z
    .param p4, "withoutSendingOrigin"    # Z
    .param p5, "callingId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1405
    const/4 v2, 0x0

    .line 1407
    .local v2, "result":Z
    :try_start_0
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1408
    const-string v5, "ClipboardExManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_0
    if-eqz p1, :cond_7

    .line 1412
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardExManager;->makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1413
    const-string v3, "ClipboardExManager"

    const-string v5, "failed making file descriptor!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/sec/clipboard/ClipboardExManager;->sendResult(ZZ)V

    .line 1437
    :goto_0
    return v4

    .line 1418
    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    .line 1419
    .local v1, "formatId":I
    if-eqz p4, :cond_4

    .line 1420
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, p1, v6, p5}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 1426
    :goto_1
    invoke-direct {p0, p2, v2}, Landroid/sec/clipboard/ClipboardExManager;->sendResult(ZZ)V

    .line 1427
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1428
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1429
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .end local v1    # "formatId":I
    :cond_2
    :goto_2
    move v4, v2

    .line 1437
    goto :goto_0

    .restart local v1    # "formatId":I
    :cond_3
    move v2, v4

    .line 1420
    goto :goto_1

    .line 1421
    :cond_4
    if-eqz p3, :cond_6

    .line 1422
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, p1, v6, p5}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :goto_3
    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_3

    .line 1424
    :cond_6
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    goto :goto_1

    .line 1432
    .end local v1    # "formatId":I
    :cond_7
    const-string v3, "ClipboardExManager"

    const-string v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "withoutNoti"    # Z
    .param p4, "setPrimary"    # Z
    .param p5, "withoutSendingOrigin"    # Z

    .prologue
    const/high16 v5, 0x20000

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1199
    const-string v1, "addData"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 1206
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_3

    .line 1207
    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1208
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addData - Fail~ Service is null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_3
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1214
    invoke-virtual {p2, v4}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1215
    .local v6, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_5

    .line 1216
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .line 1231
    .end local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :goto_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 1232
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 1283
    :cond_4
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getPersonaId()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->add(Landroid/sec/clipboard/data/ClipboardData;ZZZI)Z

    move-result v0

    goto :goto_0

    .line 1218
    .restart local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_5
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .line 1220
    .end local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_6
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 1221
    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1222
    .local v7, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, v5, :cond_7

    .line 1223
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .line 1225
    :cond_7
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .line 1228
    .end local v7    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_8
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    .line 217
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    .line 218
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 227
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 220
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 221
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 222
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    .line 223
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 224
    const-string v1, "ClipboardExManager"

    const-string v2, "Failed to get clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 208
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 209
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 211
    const-string v2, "ClipboardExManager"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return v1
.end method

.method private isClipboardAllowed(ZI)I
    .locals 10
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 842
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 861
    :goto_0
    return v0

    .line 846
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 847
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 848
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 849
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 851
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 852
    const-string v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 861
    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 859
    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 1496
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not enabled! from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 12
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v8, 0x0

    .line 1287
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 1288
    .local v3, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1401
    :cond_0
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    :pswitch_0
    move-object v7, p1

    .line 1290
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1291
    .local v7, "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1292
    .local v4, "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1293
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1295
    const/4 v5, 0x0

    .line 1297
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v9, 0x38000000

    :try_start_0
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1298
    invoke-virtual {v7, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1311
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1312
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, "extraPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1314
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1315
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1316
    const/4 v5, 0x0

    .line 1318
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v9, 0x38000000

    :try_start_1
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1319
    invoke-virtual {v7, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1299
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extraPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1300
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1304
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const-string v9, "ClipboardExManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "it\'s not file. : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1308
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    const-string v9, "ClipboardExManager"

    const-string/jumbo v10, "no bitmap file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1325
    .restart local v1    # "extraPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :cond_3
    const-string v9, "ClipboardExManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "it\'s not file. : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1330
    .end local v1    # "extraPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    const-string v8, "ClipboardExManager"

    const-string/jumbo v9, "no extra bitmap file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v7    # "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    move-object v7, p1

    .line 1336
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1337
    .local v7, "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1339
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_6

    .line 1340
    :cond_5
    invoke-virtual {v3, v7}, Landroid/sec/clipboard/util/FileHelper;->setFirstImagePathFromHtmlData(Landroid/sec/clipboard/data/list/ClipboardDataHtml;)Z

    move-result v6

    .line 1341
    .local v6, "result":Z
    if-eqz v6, :cond_6

    .line 1342
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1346
    .end local v6    # "result":Z
    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 1347
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1348
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1349
    const/4 v5, 0x0

    .line 1351
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v9, 0x38000000

    :try_start_2
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1352
    invoke-virtual {v7, v5}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1353
    :catch_2
    move-exception v0

    .line 1354
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1358
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const-string v9, "ClipboardExManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "it\'s not file. : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1362
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    const-string v8, "ClipboardExManager"

    const-string/jumbo v9, "no first image file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v7    # "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_2
    move-object v7, p1

    .line 1368
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1369
    .local v7, "target":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1371
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_9

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_a

    .line 1372
    :cond_9
    invoke-virtual {v3, v7}, Landroid/sec/clipboard/util/FileHelper;->setPreviewImagePathFromUriData(Landroid/sec/clipboard/data/list/ClipboardDataUri;)Z

    move-result v6

    .line 1373
    .restart local v6    # "result":Z
    if-eqz v6, :cond_a

    .line 1374
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1378
    .end local v6    # "result":Z
    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c

    .line 1379
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1380
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1381
    const/4 v5, 0x0

    .line 1383
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v9, 0x38000000

    :try_start_3
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1384
    invoke-virtual {v7, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1385
    :catch_3
    move-exception v0

    .line 1386
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1390
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_b
    const-string v9, "ClipboardExManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "it\'s not file. : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1394
    .end local v2    # "f":Ljava/io/File;
    :cond_c
    const-string v8, "ClipboardExManager"

    const-string/jumbo v9, "no preview image file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1288
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendLoggingForCBPT(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 1453
    iget-boolean v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsLogging:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1454
    const/4 v1, 0x0

    .line 1455
    .local v1, "format":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1475
    const-string v1, "TEXT"

    .line 1479
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1480
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "app_id"

    const-string v4, "com.android.samsung.clipboarduiservice"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v3, "feature"

    const-string v4, "CBPT"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v3, "extra"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1486
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const-string v3, "ClipboardExManager"

    const-string v4, "CBPT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1493
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1457
    .restart local v1    # "format":Ljava/lang/String;
    :pswitch_0
    const-string v1, "HTML"

    .line 1458
    goto :goto_0

    .line 1460
    :pswitch_1
    const-string v1, "BITMAP"

    .line 1461
    goto :goto_0

    .line 1463
    :pswitch_2
    const-string v1, "URI"

    .line 1464
    goto :goto_0

    .line 1466
    :pswitch_3
    const-string v1, "INTENT"

    .line 1467
    goto :goto_0

    .line 1469
    :pswitch_4
    const-string v1, "URI_LIST"

    .line 1470
    goto :goto_0

    .line 1472
    :pswitch_5
    const-string v1, "MULTIPLE_TYPE"

    .line 1473
    goto :goto_0

    .line 1491
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    const-string v3, "ClipboardExManager"

    const-string/jumbo v4, "no logging!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1455
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendResult(ZZ)V
    .locals 2
    .param p1, "withoutNoti"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 1441
    if-nez p1, :cond_0

    .line 1442
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1443
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 1444
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1448
    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1450
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1446
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    .prologue
    .line 826
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 827
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.clipboarduiservice"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 831
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    .line 683
    const-string v2, "AddClipboardFormatListener"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 688
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 689
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 690
    const-string v2, "ClipboardExManager"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 697
    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_0

    .line 694
    .end local v0    # "Result":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .restart local v0    # "Result":Z
    goto :goto_0
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 4
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 737
    const-string v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 738
    const/4 v0, 0x0

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    const/4 v0, 0x0

    .line 742
    .local v0, "Result":Z
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_3

    .line 743
    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 746
    :cond_3
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_4

    .line 747
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 748
    const-string v2, "ClipboardExManager"

    const-string v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 755
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 756
    const-string v2, "ClipboardExManager"

    const-string v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 1
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 1538
    const/4 v0, 0x0

    return v0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    .line 710
    const-string v2, "RemoveClipboardFormatListener"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 716
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 717
    const-string v2, "ClipboardExManager"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_0

    .line 722
    .end local v0    # "Result":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .restart local v0    # "Result":Z
    goto :goto_0
.end method

.method public callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 361
    const-string v1, "callPasteApplication"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_3

    .line 367
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 368
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 369
    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteApplication - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V

    .line 374
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    :cond_3
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 380
    const-string v1, "ClipboardExManager"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    .line 318
    const-string v1, "callPasteMenuFromApp"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 323
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public clearClipboardFormat()V
    .locals 2

    .prologue
    .line 955
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 960
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 962
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 963
    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFilter()V
    .locals 2

    .prologue
    .line 973
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    :goto_0
    return-void

    .line 977
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 978
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 980
    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    .line 1184
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1185
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1186
    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V

    .line 1192
    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 0

    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->dismissDialog()V

    .line 1177
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .locals 6
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 769
    const-string v4, "getClipedStrings"

    invoke-direct {p0, v4}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 784
    :goto_0
    return-object v1

    .line 772
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v1, "clipboardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_2

    .line 775
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 776
    const-string v4, "ClipboardExManager"

    const-string v5, "getClipedStrings - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v3

    .line 778
    goto :goto_0

    .line 780
    :cond_2
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/clipboard/IClipboardService;->getClipedStrings(II)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContainerID()I
    .locals 1

    .prologue
    .line 1533
    const/4 v0, 0x0

    return v0
.end method

.method public getData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "formatid"    # I

    .prologue
    .line 522
    const-string v3, "getData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    const/4 v0, 0x0

    .line 547
    :cond_0
    :goto_0
    return-object v0

    .line 525
    :cond_1
    const/4 v0, 0x0

    .line 527
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 528
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 529
    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 535
    .local v2, "myFormat":I
    :goto_1
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 537
    if-nez v0, :cond_4

    .line 538
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 539
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const v4, 0x1040807

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v2    # "myFormat":I
    :cond_3
    move v2, p1

    .line 534
    goto :goto_1

    .line 542
    .restart local v2    # "myFormat":I
    :cond_4
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->sendLoggingForCBPT(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 510
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I
    .param p3, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    const/4 v2, 0x0

    .line 643
    const-string v3, "getData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 670
    :goto_0
    return v0

    .line 646
    :cond_0
    const/4 v0, 0x1

    .line 648
    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 649
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call getData.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 653
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 654
    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 656
    goto :goto_0

    .line 659
    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_3

    .line 660
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 661
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 664
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getDataListSize()I
    .locals 4

    .prologue
    .line 609
    const-string v2, "getDataListSize"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    const/4 v1, 0x0

    .line 625
    :cond_0
    :goto_0
    return v1

    .line 613
    :cond_1
    const/4 v1, -0x1

    .line 615
    .local v1, "size":I
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 616
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 617
    const-string v2, "ClipboardExManager"

    const-string v3, "getDataListSize - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public getFrozenState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 304
    const-string v1, "getFrozenState"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_0

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPersonaId()I
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 193
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 202
    :cond_1
    :goto_0
    return v0

    .line 196
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 200
    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewIconXpos()F
    .locals 2

    .prologue
    .line 791
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconXpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewIconYpos()F
    .locals 2

    .prologue
    .line 799
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconYpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public getScrapDataSize()I
    .locals 2

    .prologue
    .line 632
    const-string v0, "ClipboardExManager"

    const-string v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public hasAppClipboardListener()Z
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v0

    return v0
.end method

.method public hasData(I)Z
    .locals 6
    .param p1, "formatid"    # I

    .prologue
    .line 558
    const-string v3, "hasData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 559
    const/4 v0, 0x0

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    const/4 v0, 0x0

    .line 564
    .local v0, "Result":Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 565
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 566
    const-string v3, "ClipboardExManager"

    const-string v4, "hasData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->loadSEClipboard()V

    .line 572
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 573
    .local v2, "myFormat":I
    :goto_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 574
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    const/4 v0, 0x1

    goto :goto_0

    .end local v2    # "myFormat":I
    :cond_3
    move v2, p1

    .line 572
    goto :goto_1
.end method

.method public hasData(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 591
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public hasDataOf(I)Z
    .locals 1
    .param p1, "formatid"    # I

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public hideUIFloatingIcon()V
    .locals 2

    .prologue
    .line 814
    const-string v0, "ClipboardExManager"

    const-string v1, "hideUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1508
    const/4 v0, 0x0

    .line 1522
    .local v0, "isEnabled":Z
    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 999
    const-string v0, "isFiltered"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 391
    const-string v2, "isShowing"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 396
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "ClipboardExManager"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public iscalledPasteMenuFromApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 338
    const-string v2, "iscalledPasteMenuFromApp"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 344
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "ClipboardExManager"

    const-string v3, "iscalledPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->iscalledPasteMenuFromApp()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public requestPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1011
    const-string/jumbo v1, "requestPaste"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    const-string v2, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPaste : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1018
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1019
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1020
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1024
    :cond_3
    if-eqz p1, :cond_5

    .line 1025
    :try_start_1
    iget v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {p1, v1}, Landroid/sec/clipboard/data/ClipboardData;->IsAlternateformatAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1026
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_0

    .line 1028
    :cond_4
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert format type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :cond_5
    const-string v1, "ClipboardExManager"

    const-string v2, "clipdata is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1037
    :cond_6
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public sendCropRect(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 821
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "sendCropRect!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void
.end method

.method public setClipboardFormat(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 872
    const-string/jumbo v0, "setClipboardFormat"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_2

    .line 877
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 880
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 881
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 882
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 884
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClipboardFormat - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v5, 0x0

    .line 479
    const/4 v2, 0x0

    .line 482
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 483
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v0, p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 485
    if-nez v2, :cond_0

    .line 488
    :goto_0
    return v5

    :cond_0
    if-eqz p3, :cond_1

    move v3, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    .line 465
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x0

    .line 501
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 3
    .param p1, "filter"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 897
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 901
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 902
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 903
    const/4 p1, 0x1

    .line 904
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 907
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilter - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 909
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 910
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    goto :goto_0
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 266
    const-string/jumbo v0, "setPasteFrozen"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_2

    .line 271
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 274
    :cond_2
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 275
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 276
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasteFrozen - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setThawPaste()V
    .locals 2

    .prologue
    .line 288
    const-string/jumbo v0, "setThawPaste"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 293
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .locals 1
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 1091
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 1151
    const-string/jumbo v1, "showDialog"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 1156
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1157
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1158
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showUIDataDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .locals 6
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    const/4 v2, 0x0

    .line 1102
    const-string/jumbo v3, "showDialog"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 1133
    :goto_0
    return v0

    .line 1106
    :cond_0
    const/4 v0, 0x1

    .line 1107
    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 1108
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1109
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1114
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1115
    const-string v3, "ClipboardExManager"

    const-string/jumbo v4, "showDialog - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v2

    .line 1117
    goto :goto_0

    .line 1121
    :cond_3
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1122
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 1123
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1124
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1131
    const/4 v0, 0x0

    goto :goto_0

    .line 1126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1127
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public showUIDataDialog()V
    .locals 0

    .prologue
    .line 1144
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->showDialog()V

    .line 1145
    return-void
.end method

.method public showUIFloatingIcon()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "showUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 240
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 253
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_4

    .line 247
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    goto :goto_0

    .line 249
    :cond_4
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "reg interface is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 1049
    const-string/jumbo v1, "updateClipboard"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1054
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_2
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->hasAppClipboardListener()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1058
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1064
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1065
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1066
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1071
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 1073
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1074
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1075
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipboard - listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 414
    const-string/jumbo v1, "updateData"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_2

    .line 419
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 420
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_2
    :try_start_0
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 427
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 428
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 435
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 436
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - clPasteEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 920
    const-string/jumbo v1, "updateFilter"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 926
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 932
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 933
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 934
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 940
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 941
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method