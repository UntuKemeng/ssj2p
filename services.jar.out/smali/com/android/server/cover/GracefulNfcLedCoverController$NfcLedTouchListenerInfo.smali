.class Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "GracefulNfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput-object p2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 1171
    iput-object p3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 1172
    iput p4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 1173
    iput p5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 1174
    iput p6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 1175
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1179
    const-string v0, "CoverManager.GracefulNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->access$1200(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->access$1200(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1182
    iget v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->access$1200(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 1184
    :cond_0
    const-string v0, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "no listeners registered CoverUI dies??"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCoverUIBinderAlive:Z

    .line 1187
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1189
    return-void

    .line 1187
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCoverTouchAccept()V
    .locals 4

    .prologue
    .line 1192
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1193
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1199
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1200
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1203
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed onCoverTouchAccept callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchReject()V
    .locals 4

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1209
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1215
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1216
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed onCoverTouchReject callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1225
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1231
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1232
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1234
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
