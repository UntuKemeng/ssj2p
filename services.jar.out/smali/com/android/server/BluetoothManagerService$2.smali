.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BLEAppCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungBleAppCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    const-string v8, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 341
    const-string v8, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "newName":Ljava/lang/String;
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bluetooth Adapter name changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    if-eqz v5, :cond_3

    .line 344
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v5, v9}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v5    # "newName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 346
    :cond_4
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 347
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "received ACTION_AIRPLANE_MODE_CHANGED, mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BluetoothManagerService -- received ACTION_AIRPLANE_MODE_CHANGED, mode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 349
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 350
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 351
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 356
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    monitor-enter v9

    .line 357
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 358
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 359
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;I)V

    .line 365
    :cond_7
    :goto_2
    const/16 v6, 0xa

    .line 366
    .local v6, "st":I
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_8

    .line 368
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 373
    :cond_8
    :goto_3
    :try_start_2
    const-string v8, "BluetoothManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 377
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    :try_start_3
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_9

    .line 379
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x3

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;I)I

    .line 381
    :cond_9
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_a

    .line 382
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x3

    # setter for: Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;I)I

    .line 384
    :cond_a
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->clearBleApps()V
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)V

    .line 385
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    const/16 v8, 0xf

    if-ne v6, v8, :cond_f

    .line 389
    :try_start_4
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 390
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 431
    :cond_b
    :goto_4
    :try_start_5
    monitor-exit v9

    goto/16 :goto_0

    .end local v6    # "st":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 352
    :cond_c
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 353
    :cond_d
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$602(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_1

    .line 361
    :cond_e
    :try_start_6
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;I)V

    goto/16 :goto_2

    .line 369
    .restart local v6    # "st":I
    :catch_0
    move-exception v3

    .line 370
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothManagerService"

    const-string v10, "Unable to call getState"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 385
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v8

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v8

    .line 392
    :catch_1
    move-exception v3

    .line 393
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothManagerService"

    const-string v10, "Unable to call onBrEdrDown"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 395
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_f
    const/16 v8, 0xc

    if-ne v6, v8, :cond_10

    .line 397
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling disable"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_4

    .line 399
    :cond_10
    const/16 v8, 0xb

    if-ne v6, v8, :cond_b

    .line 401
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling disable in STATE_TURNING_ON states"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_4

    .line 405
    :cond_11
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 406
    # operator++ for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$208()I

    .line 407
    # operator++ for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$308()I

    .line 408
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;I)I

    .line 410
    :cond_12
    const/16 v8, 0xc

    if-eq v6, v8, :cond_b

    .line 411
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v8

    if-eqz v8, :cond_14

    .line 412
    const/16 v8, 0xf

    if-ne v6, v8, :cond_13

    .line 414
    :try_start_9
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 415
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling enable current state BLE_ON"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 418
    :catch_2
    move-exception v3

    .line 419
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v8, "BluetoothManagerService"

    const-string v10, "Unable to call onServiceUp"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 422
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_13
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling enable BLE BREDR"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_4

    .line 425
    :cond_14
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 426
    const-string v8, "BluetoothManagerService"

    const-string v10, "BLE Always On After AirMode"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 434
    .end local v6    # "st":I
    :cond_15
    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 436
    const/4 v4, 0x0

    .line 437
    .local v4, "isNotiLockScreen":Z
    const/4 v0, 0x0

    .line 438
    .local v0, "BtPolicyChanged":Z
    const-string/jumbo v8, "isNotiFromLockScreen"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 439
    const-string/jumbo v8, "isBTChanged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    if-eqz v4, :cond_16

    .line 442
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "BluetoothManagerService"

    const-string v9, "EXTRA_NOTIFY_FROM_LOCKSCREEN"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    :cond_16
    if-eqz v0, :cond_3

    .line 444
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v8}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 445
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    .line 446
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;Z)I

    goto/16 :goto_0

    .line 459
    .end local v0    # "BtPolicyChanged":Z
    .end local v4    # "isNotiLockScreen":Z
    :cond_17
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 460
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ChinaNalSecurity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 463
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 464
    const-string v8, "BluetoothManagerService"

    const-string v9, "dismiss dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 469
    :cond_18
    const-string v8, "com.sec.android.wifi.reset.bluetooth"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 470
    const/4 v7, 0x0

    .line 471
    .local v7, "value":Z
    const-string/jumbo v8, "flag"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 472
    const/16 v2, 0xa

    .line 474
    .local v2, "curState":I
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_19

    const-string v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "received com.sec.android.wifi.reset.bluetooth, value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mEnableExternal : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BluetoothManagerService -- received com.sec.android.wifi.reset.bluetooth, value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEnableExternal : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 477
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 479
    :try_start_b
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    move-result v2

    .line 485
    :cond_1a
    :goto_5
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    const/16 v8, 0xa

    if-ne v2, v8, :cond_1c

    .line 486
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v8, "BluetoothManagerService"

    const-string v9, "broadcast com.sec.android.bt.btpoweroff in STATE_OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1b
    const-string v8, "BluetoothManagerService -- broadcast com.sec.android.bt.btpoweroff in STATE_OFF"

    invoke-static {v8}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 488
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.bt.btpoweroff"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mResetBt:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_0

    .line 480
    :catch_3
    move-exception v3

    .line 481
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothManagerService"

    const-string v9, "Unable to call getState"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 491
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1c
    if-eqz v7, :cond_24

    .line 492
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1d

    const-string v8, "BluetoothManagerService"

    const-string/jumbo v9, "mResetBt set true and will toggle bluetooth"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1d
    const-string v8, "BluetoothManagerService -- mResetBt set true and will toggle bluetooth"

    invoke-static {v8}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 495
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mResetBt:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 496
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 497
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 502
    :cond_1e
    :goto_6
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    monitor-enter v9

    .line 504
    :try_start_c
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 505
    if-eqz v7, :cond_26

    .line 506
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;I)V

    .line 512
    :cond_1f
    :goto_7
    const/16 v6, 0xa

    .line 513
    .restart local v6    # "st":I
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v8

    if-eqz v8, :cond_20

    .line 515
    :try_start_d
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v6

    .line 520
    :cond_20
    :goto_8
    :try_start_e
    const-string v8, "BluetoothManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz v7, :cond_29

    .line 524
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 525
    :try_start_f
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_21

    .line 526
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x3

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;I)I

    .line 528
    :cond_21
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_22

    .line 529
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x3

    # setter for: Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;I)I

    .line 531
    :cond_22
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->clearBleApps()V
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)V

    .line 532
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 533
    const/16 v8, 0xf

    if-ne v6, v8, :cond_27

    .line 536
    :try_start_10
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    if-eqz v8, :cond_23

    .line 537
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 578
    :cond_23
    :goto_9
    :try_start_11
    monitor-exit v9

    goto/16 :goto_0

    .end local v6    # "st":I
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v8

    .line 498
    :cond_24
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-nez v8, :cond_25

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 499
    :cond_25
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8, v9}, Lcom/android/server/BluetoothManagerService;->access$602(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_6

    .line 508
    :cond_26
    :try_start_12
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;I)V

    goto/16 :goto_7

    .line 516
    .restart local v6    # "st":I
    :catch_4
    move-exception v3

    .line 517
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothManagerService"

    const-string v10, "Unable to call getState"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_8

    .line 532
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v8

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v8

    .line 539
    :catch_5
    move-exception v3

    .line 540
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothManagerService"

    const-string v10, "Unable to call onBrEdrDown"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 542
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_27
    const/16 v8, 0xc

    if-ne v6, v8, :cond_28

    .line 544
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling disable"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_9

    .line 546
    :cond_28
    const/16 v8, 0xb

    if-ne v6, v8, :cond_23

    .line 548
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling disable in STATE_TURNING_ON states"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_9

    .line 552
    :cond_29
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 553
    # operator++ for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$208()I

    .line 554
    # operator++ for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$308()I

    .line 555
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;I)I

    .line 557
    :cond_2a
    const/16 v8, 0xc

    if-eq v6, v8, :cond_23

    .line 558
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-result v8

    if-eqz v8, :cond_2c

    .line 559
    const/16 v8, 0xf

    if-ne v6, v8, :cond_2b

    .line 561
    :try_start_15
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    if-eqz v8, :cond_23

    .line 562
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling enable current state BLE_ON"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_9

    .line 565
    :catch_6
    move-exception v3

    .line 566
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v8, "BluetoothManagerService"

    const-string v10, "Unable to call onServiceUp"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 569
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2b
    const-string v8, "BluetoothManagerService"

    const-string v10, "Calling enable BLE BREDR"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_9

    .line 572
    :cond_2c
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 573
    const-string v8, "BluetoothManagerService"

    const-string v10, "BLE Always On After AirMode"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v8, v10}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_9
.end method
