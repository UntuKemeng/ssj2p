.class Landroid/widget/RemoteViews$AddOuterGlowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOuterGlowAction"
.end annotation


# static fields
.field public static final TAG:I = 0x1a


# instance fields
.field blendingOpacity:F

.field color:I

.field final methodName:Ljava/lang/String;

.field size:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFIF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "size"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    const-string v0, "addOuterGlowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->methodName:Ljava/lang/String;

    iput p2, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    iput p3, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    iput p4, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    iput p5, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    const-string v0, "addOuterGlowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->methodName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    iget v1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    iget v2, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    iget v3, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "AddOuterGlowAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
