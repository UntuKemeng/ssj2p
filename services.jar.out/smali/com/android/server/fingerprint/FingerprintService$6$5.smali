.class Lcom/android/server/fingerprint/FingerprintService$6$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$6;->onRemoved(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$6;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$6;JII)V
    .locals 0

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$6;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->val$fingerId:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->val$groupId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$6;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->val$deviceId:J

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->val$fingerId:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$6$5;->val$groupId:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleRemoved(JII)V

    .line 1608
    return-void
.end method
