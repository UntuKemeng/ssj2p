.class final Lcom/android/server/enterprise/application/ApplicationPolicy$1;
.super Ljava/util/ArrayList;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    const-string v0, "android.permission-group.CONTACTS"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v0, "android.permission-group.CALENDAR"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v0, "android.permission-group.SMS"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v0, "android.permission-group.STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v0, "android.permission-group.LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 411
    const-string v0, "android.permission-group.PHONE"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v0, "android.permission-group.MICROPHONE"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 413
    const-string v0, "android.permission-group.CAMERA"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v0, "android.permission-group.SENSORS"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method
