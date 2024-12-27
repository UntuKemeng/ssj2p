.class Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
.super Lcom/samsung/location/ISLocationListener$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlpSLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/samsung/location/ISLocationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p2, "x1"    # Lcom/android/server/location/FlpHardwareProvider$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 2
    .param p1, "locations"    # [Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "FlpHardwareProvider"

    const-string v1, "FlpHardwareProvider.mSLocationListener onLocationAvailable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->onLocationReport([Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;[Landroid/location/Location;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;[Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/location/Location;
    .param p2, "arg1"    # Landroid/location/Address;
    .param p3, "arg2"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method
