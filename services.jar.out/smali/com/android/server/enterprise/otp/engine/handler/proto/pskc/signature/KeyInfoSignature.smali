.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;
.super Ljava/lang/Object;
.source "KeyInfoSignature.java"


# instance fields
.field private mDsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

.field private mId:Ljava/lang/String;

.field private mKeyName:Ljava/lang/String;

.field private mMgmtData:Ljava/lang/String;

.field private mPgpData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

.field private mRetrievalMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

.field private mRsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

.field private mSpkiSexp:[B

.field private mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDsaKeyValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mDsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public getMgmtData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mMgmtData:Ljava/lang/String;

    return-object v0
.end method

.method public getPgpData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mPgpData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

    return-object v0
.end method

.method public getRetrievalMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mRetrievalMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

    return-object v0
.end method

.method public getRsaKeyValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mRsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

    return-object v0
.end method

.method public getSpkiSexp()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mSpkiSexp:[B

    return-object v0
.end method

.method public getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-object v0
.end method

.method public setDsaKeyValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;)V
    .locals 0
    .param p1, "mDsaKeyValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mDsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mId:Ljava/lang/String;

    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKeyName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mKeyName:Ljava/lang/String;

    return-void
.end method

.method public setMgmtData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMgmtData"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mMgmtData:Ljava/lang/String;

    return-void
.end method

.method public setPgpData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;)V
    .locals 0
    .param p1, "mPgpData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mPgpData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

    return-void
.end method

.method public setRetrievalMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;)V
    .locals 0
    .param p1, "mRetrievalMethod"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mRetrievalMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

    return-void
.end method

.method public setRsaKeyValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;)V
    .locals 0
    .param p1, "mRsaKeyValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mRsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

    return-void
.end method

.method public setSpkiSexp([B)V
    .locals 0
    .param p1, "mSpkiSexp"    # [B

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mSpkiSexp:[B

    return-void
.end method

.method public setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V
    .locals 0
    .param p1, "mX509Data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-void
.end method
