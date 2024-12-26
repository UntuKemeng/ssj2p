.class public Lcom/android/server/am/VirtualScreenPolicy;
.super Ljava/lang/Object;
.source "VirtualScreenPolicy.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PERMISSION_MANAGE_VIRTUAL_SCREEN:Ljava/lang/String; = "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

.field private static final TAG:Ljava/lang/String; = "VirtualScreenPolicy"

.field private static mWithBindingDisplay:Z


# instance fields
.field private mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/VirtualScreenPolicy;->mWithBindingDisplay:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenPolicy;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 42
    iput-object p1, p0, Lcom/android/server/am/VirtualScreenPolicy;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 43
    return-void
.end method

.method public static withBindingDisplay()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/server/am/VirtualScreenPolicy;->mWithBindingDisplay:Z

    return v0
.end method


# virtual methods
.method public applyVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/VirtualScreenAttrs;
    .locals 5
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 46
    new-instance v0, Lcom/android/server/am/VirtualScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/VirtualScreenAttrs;-><init>()V

    .line 48
    .local v0, "attrs":Lcom/android/server/am/VirtualScreenAttrs;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getVirtualScreenParams()Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;

    move-result-object v1

    .line 50
    .local v1, "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    if-lez v2, :cond_0

    .line 51
    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setDisplayId(I)V

    .line 52
    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseDisplayId(I)V

    .line 55
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v2

    if-lez v2, :cond_1

    .line 57
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setDisplayId(I)V

    .line 60
    :cond_1
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseActivity(Z)V

    .line 65
    .end local v1    # "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    :cond_2
    const-string v2, "VirtualScreenPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyVirtualScreenAttrs attrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v0
.end method

.method public relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 106
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 107
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v1

    .line 108
    .local v1, "baseDisplayId":I
    const/4 v2, 0x0

    .line 109
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-lez v1, :cond_1

    .line 110
    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, "activityNdx":I
    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v0, v8, :cond_2

    .line 112
    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 128
    .restart local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-ne v2, v8, :cond_1

    .line 129
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8, v1}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseDisplayId(I)V

    .line 130
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseActivity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseActivity(Z)V

    .line 135
    .end local v0    # "activityNdx":I
    :cond_1
    return-void

    .line 115
    .restart local v0    # "activityNdx":I
    :cond_2
    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 116
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 117
    .local v6, "taskNdx":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_0

    .line 118
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 119
    .local v4, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 120
    .local v3, "nextCandidate":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 123
    move-object v2, v3

    goto :goto_0
.end method

.method public updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "displayId"    # I
    .param p3, "updateBase"    # Z

    .prologue
    .line 103
    return-void
.end method
