.class Landroid/bluetooth/BluetoothHidDevice$2;
.super Ljava/lang/Object;
.source "BluetoothHidDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidDevice;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice;->access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x16

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice;->access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_0
    return-void
.end method
