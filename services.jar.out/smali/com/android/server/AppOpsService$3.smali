.class Lcom/android/server/AppOpsService$3;
.super Ljava/util/HashMap;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 2

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2237
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppOpsService$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppOpsService$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    return-void
.end method
