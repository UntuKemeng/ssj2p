.class Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBroadcastRunnable"
.end annotation


# instance fields
.field mObj:Ljava/lang/Object;

.field final synthetic this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;Ljava/lang/Object;)V
    .locals 0
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;->this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;->mObj:Ljava/lang/Object;

    .line 1254
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;->this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;->mObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;->processSlowPath(Ljava/lang/Object;)V

    .line 1259
    return-void
.end method
