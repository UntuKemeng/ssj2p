.class Lcom/android/server/am/MARsPolicyManager$4;
.super Landroid/database/ContentObserver;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->registerEnabledAccessibilityServicesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$4;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$4;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)V

    .line 1898
    return-void
.end method
