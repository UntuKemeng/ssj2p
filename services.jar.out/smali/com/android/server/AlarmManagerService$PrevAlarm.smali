.class Lcom/android/server/AlarmManagerService$PrevAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrevAlarm"
.end annotation


# instance fields
.field public mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

.field public mIsStandalone:Z

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .locals 0
    .param p2, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p3, "isStandalone"    # Z

    .prologue
    .line 3785
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3786
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3787
    iput-boolean p3, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mIsStandalone:Z

    .line 3788
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3793
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3794
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PrevAlarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    const-string/jumbo v1, "windowLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3797
    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3799
    const-string v1, ", whenElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3801
    const-string v1, ", isStandalone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3802
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mIsStandalone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3803
    const-string v1, ", oper/action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3804
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
