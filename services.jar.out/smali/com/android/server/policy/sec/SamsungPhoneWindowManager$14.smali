.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 3377
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    if-eqz v0, :cond_0

    .line 3381
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 3383
    :cond_0
    return-void
.end method
