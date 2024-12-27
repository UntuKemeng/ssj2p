.class Lcom/android/server/accessibility/AccessibilityManagerService$14;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->onFlashNotification(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$14;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8200()Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8200()Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8300()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8200()Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8400()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8200()Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8300()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8200()Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8400()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsRunning:Z
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8502(Z)Z

    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flash blinked, bIsRunning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsRunning:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8500()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
