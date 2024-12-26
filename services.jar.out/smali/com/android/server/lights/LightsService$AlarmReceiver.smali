.class final Lcom/android/server/lights/LightsService$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x1

    .line 904
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 908
    .local v1, "mode":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    :cond_0
    if-ne v1, v4, :cond_3

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v2, v5

    monitor-enter v3

    .line 910
    :try_start_1
    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$700()I

    move-result v2

    # setter for: Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$4302(I)I

    .line 911
    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$700()I

    move-result v2

    shl-int/2addr v4, v1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    # setter for: Lcom/android/server/lights/LightsService;->mSmartGlowState:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$702(I)I

    .line 912
    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->setSmartGlowLocked()V
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)V

    .line 913
    monitor-exit v3

    .line 923
    .end local v1    # "mode":I
    :cond_2
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 913
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mode":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 914
    :cond_3
    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 915
    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v2, v5

    monitor-enter v3

    .line 916
    add-int/lit8 v1, v1, -0x7

    .line 917
    :try_start_2
    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$700()I

    move-result v2

    # setter for: Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$4302(I)I

    .line 918
    shl-int v2, v4, v1

    # |= operator for: Lcom/android/server/lights/LightsService;->mSmartGlowState:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$776(I)I

    .line 919
    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v1

    # operator-- for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1210(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    .line 920
    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->setSmartGlowLocked()V
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)V

    .line 921
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
