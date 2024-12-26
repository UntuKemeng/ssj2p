.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->systemBooted()V
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
    .line 818
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$500(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    .line 821
    return-void
.end method
