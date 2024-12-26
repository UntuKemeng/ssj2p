.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field rtcPowerOffWakeupCount:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field wakeupCount:I


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 459
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 460
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 462
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->rtcPowerOffWakeupCount:I

    .line 463
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->wakeupCount:I

    .line 465
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 3
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v2, 0x0

    .line 467
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 468
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 469
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 470
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 471
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iput-object p0, p2, Lcom/android/server/AlarmManagerService$Alarm;->batch:Lcom/android/server/AlarmManagerService$Batch;

    .line 474
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->rtcPowerOffWakeupCount:I

    .line 475
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->wakeupCount:I

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/server/AlarmManagerService$Batch;->checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 478
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 515
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 516
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 517
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 523
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 524
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 525
    const/4 v1, 0x1

    .line 527
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 528
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 530
    :cond_2
    iget v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 537
    iput-object p0, p1, Lcom/android/server/AlarmManagerService$Alarm;->batch:Lcom/android/server/AlarmManagerService$Batch;

    .line 538
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/AlarmManagerService$Batch;->checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 541
    return v1
.end method

.method canHold(JJ)Z
    .locals 3
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "add"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 502
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 503
    iget v3, p0, Lcom/android/server/AlarmManagerService$Batch;->rtcPowerOffWakeupCount:I

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->rtcPowerOffWakeupCount:I

    .line 506
    :cond_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 507
    iget v0, p0, Lcom/android/server/AlarmManagerService$Batch;->wakeupCount:I

    if-eqz p2, :cond_3

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->wakeupCount:I

    .line 509
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 503
    goto :goto_0

    :cond_3
    move v1, v2

    .line 507
    goto :goto_1
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method getWhenByElapsedTime(J)J
    .locals 5
    .param p1, "whenElapsed"    # J

    .prologue
    .line 489
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 493
    :goto_1
    return-wide v2

    .line 489
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 684
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 685
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 686
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    const/4 v3, 0x1

    .line 690
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 684
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasWakeups()Z
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/android/server/AlarmManagerService$Batch;->wakeupCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRtcPowerOffWakeup()Z
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/android/server/AlarmManagerService$Batch;->rtcPowerOffWakeupCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 652
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 653
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 654
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 655
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 657
    const/4 v1, 0x1

    .line 659
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AlarmManagerService$Batch;->checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 661
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 662
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 665
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 666
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 668
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 669
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 671
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 676
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 677
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 679
    :cond_5
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .locals 10
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 579
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 580
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 581
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 582
    .local v3, "newFlags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 583
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 584
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 585
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 586
    const/4 v1, 0x1

    .line 588
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Lcom/android/server/AlarmManagerService$Batch;->checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 590
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_0

    .line 591
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 594
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_2

    .line 595
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 597
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_3

    .line 598
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 600
    :cond_3
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 606
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 607
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 608
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 610
    :cond_5
    return v1
.end method

.method remove(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 10
    .param p1, "target"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 548
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 549
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 550
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 551
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    const/4 v1, 0x1

    .line 554
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AlarmManagerService$Batch;->checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 555
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 559
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 560
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 562
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 563
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 565
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 570
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 571
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 573
    :cond_5
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 616
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 617
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 618
    .local v3, "newFlags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 619
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 620
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 621
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    const/4 v1, 0x1

    .line 624
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Lcom/android/server/AlarmManagerService$Batch;->checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 626
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_0

    .line 627
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 630
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_2

    .line 631
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 633
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_3

    .line 634
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 636
    :cond_3
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 642
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 643
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 644
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 646
    :cond_5
    return v1
.end method

.method size()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 731
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 735
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v1, :cond_0

    .line 736
    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
