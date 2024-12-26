.class public final Lcom/android/internal/telephony/ImsRegistrationState;
.super Ljava/lang/Object;
.source "ImsRegistrationState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegi"


# instance fields
.field private mEcmpStatus:I

.field private mEpdgState:I

.field private mFeatureMask:[I

.field private mFeatureTag:I

.field private mNetworkType:I

.field private mRegState:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mNetworkType:I

    .line 15
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureMask:[I

    .line 16
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mRegState:[I

    .line 17
    iput v1, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEpdgState:I

    .line 18
    iput v1, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEcmpStatus:I

    .line 19
    iput v1, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureTag:I

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const-string v0, "ImsRegi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile - RegState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mRegState:[I

    aget v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FeatureMask: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureMask:[I

    aget v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "ImsRegi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi - RegState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mRegState:[I

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FeatureMask: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureMask:[I

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "ImsRegi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mNetworkType:I

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", EpdgState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEpdgState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", EcmpStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEcmpStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FeatureTag: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureTag:I

    invoke-static {v2}, Lcom/android/internal/telephony/LegacyIms;->featureTagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public getFeatureTag()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureTag:I

    return v0
.end method

.method public setImsRegistration(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const-string v3, "ImsRegi"

    const-string v4, "setImsRegistration - AsyncResult is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 28
    .local v2, "responseArray":[I
    array-length v3, v2

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 29
    const-string v3, "ImsRegi"

    const-string v4, "setImsRegistration - result has wrong value"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, -0x1

    .line 34
    .local v0, "networkType":I
    const/4 v1, 0x0

    .line 36
    .local v1, "regIndex":I
    const/4 v3, 0x3

    aget v0, v2, v3

    .line 37
    invoke-static {v0}, Lcom/android/internal/telephony/LegacyIms;->convertNetworkType(I)I

    move-result v1

    .line 38
    iget-object v3, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mRegState:[I

    const/4 v4, 0x0

    aget v4, v2, v4

    aput v4, v3, v1

    .line 39
    iget-object v3, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureMask:[I

    const/4 v4, 0x2

    aget v4, v2, v4

    aput v4, v3, v1

    .line 40
    const/4 v3, 0x4

    aget v3, v2, v3

    iput v3, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEcmpStatus:I

    .line 41
    const/4 v3, 0x5

    aget v3, v2, v3

    iput v3, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEpdgState:I

    .line 42
    const/4 v3, 0x6

    aget v3, v2, v3

    iput v3, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureTag:I

    .line 44
    const-string v3, "ImsRegi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/LegacyIms;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RegIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RegiState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mRegState:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/android/internal/telephony/LegacyIms;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FeatureMask: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureMask:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/android/internal/telephony/LegacyIms;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EpdgState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEpdgState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EcmpStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mEcmpStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FeatureTag: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ImsRegistrationState;->mFeatureTag:I

    invoke-static {v5}, Lcom/android/internal/telephony/LegacyIms;->featureTagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
