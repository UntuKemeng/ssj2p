.class public final Lcom/android/server/enterprise/license/LicenseLog;
.super Ljava/lang/Object;
.source "LicenseLog.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->deleteLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/enterprise/license/LicenseLogService;->log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void
.end method
