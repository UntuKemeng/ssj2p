.class Lcom/android/server/enterprise/application/ApplicationPolicy$8$1;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$8;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$8;)V
    .locals 0

    .prologue
    .line 6511
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$8$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6514
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$8$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$8;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$8;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->adjustEC()V
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3400(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 6517
    return-void
.end method
