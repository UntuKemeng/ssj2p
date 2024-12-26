.class Lcom/sec/epdg/IPSecAdapter$1;
.super Landroid/os/CountDownTimer;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/IPSecAdapter;->showToastOnIPsecSetupFail(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapter;

.field final synthetic val$toastIPsec:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/sec/epdg/IPSecAdapter;JJLandroid/widget/Toast;)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 634
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$1;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iput-object p6, p0, Lcom/sec/epdg/IPSecAdapter$1;->val$toastIPsec:Landroid/widget/Toast;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$1;->val$toastIPsec:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 1
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$1;->val$toastIPsec:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
