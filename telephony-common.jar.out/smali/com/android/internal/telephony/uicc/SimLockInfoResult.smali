.class public Lcom/android/internal/telephony/uicc/SimLockInfoResult;
.super Ljava/lang/Object;
.source "SimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "SimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field public static final PIN:I = 0x1

.field public static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field public static final PUK:I = 0x2

.field public static final PUK2:I = 0x4

.field static Pin2_Retry:I

.field static Pin_Retry:I

.field static Puk2_Retry:I

.field static Puk_Retry:I

.field static isPermBlocked:I

.field static lockPin2Key:I

.field static lockPinKey:I


# instance fields
.field lockKey:I

.field lockType:I

.field numRetry:I

.field num_lock_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->isPermBlocked:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "num_lock_type"    # I
    .param p2, "lockType"    # I
    .param p3, "lockKey"    # I
    .param p4, "numRetry"    # I

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    iput p1, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    :goto_0
    return-void

    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->isPermBlocked:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    :cond_1
    :goto_1
    const-string v0, "SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    :pswitch_3
    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLockPin2Key()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPinKey()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getNumRetry()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    return v0
.end method

.method public getPin2Retry()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    return v0
.end method

.method public getPinRetry()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    return v0
.end method

.method public getPuk2Retry()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    return v0
.end method

.method public getPukRetry()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    return v0
.end method

.method public isSimBlocked()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->isPermBlocked:I

    return v0
.end method

.method public setLockInfoResult(IIII)V
    .locals 4
    .param p1, "Pin_Retry"    # I
    .param p2, "Puk_Retry"    # I
    .param p3, "Pin2_Retry"    # I
    .param p4, "Puk2_Retry"    # I

    .prologue
    const/4 v3, -0x1

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v3, :cond_0

    sput p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    :cond_0
    if-eq p2, v3, :cond_1

    sput p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    :cond_1
    if-eq p3, v3, :cond_2

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    :cond_2
    if-eq p4, v3, :cond_3

    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    :cond_3
    return-void
.end method

.method public setLockInfoResult(IIIIII)V
    .locals 4
    .param p1, "Pin_Retry"    # I
    .param p2, "Puk_Retry"    # I
    .param p3, "Pin2_Retry"    # I
    .param p4, "Puk2_Retry"    # I
    .param p5, "lockKey"    # I
    .param p6, "lockKey2"    # I

    .prologue
    const/4 v3, -0x1

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v3, :cond_0

    sput p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    :cond_0
    if-eq p2, v3, :cond_1

    sput p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    :cond_1
    if-eq p3, v3, :cond_2

    sput p3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    :cond_2
    if-eq p4, v3, :cond_3

    sput p4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    :cond_3
    sput p5, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    sput p6, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    return-void
.end method

.method setLockInfoResult(Lcom/android/internal/telephony/uicc/SimLockInfoResult;)V
    .locals 4
    .param p1, "simLockInfoResult"    # Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .prologue
    const/4 v3, 0x0

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->isPermBlocked:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    :cond_1
    :goto_1
    const-string v0, "SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    sput v3, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    :pswitch_3
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
