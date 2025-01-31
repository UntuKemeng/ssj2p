.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RlcVaultData"
.end annotation


# instance fields
.field private mClientData:Ljava/lang/String;

.field private mFailureCount:I

.field private mNoticeMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRequesterName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "failureCount"    # I
    .param p2, "noticeMessage"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "requesterName"    # Ljava/lang/String;
    .param p5, "clientData"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mFailureCount:I

    iput-object p2, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mNoticeMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mClientData:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mRequesterName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mClientData:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mFailureCount:I

    return v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mNoticeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mRequesterName:Ljava/lang/String;

    return-object v0
.end method

.method public setClientData(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientData"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mClientData:Ljava/lang/String;

    return-void
.end method

.method public setFailureCount(I)V
    .locals 0
    .param p1, "failureCount"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mFailureCount:I

    return-void
.end method

.method public setNoticeMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "noticeMessage"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mNoticeMessage:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setRequesterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "requesterName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mRequesterName:Ljava/lang/String;

    return-void
.end method
