.class public Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;
.super Ljava/lang/Object;
.source "OTPSecProdFeatureMonitor.java"


# static fields
.field public static final FEATURE_NOT_ENABLED:Ljava/lang/String; = "OTP Sec Feature not enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOTPFeatureSupported()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method
