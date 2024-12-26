.class Landroid/widget/AbsListView$12;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 10016
    iput-object p1, p0, Landroid/widget/AbsListView$12;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10018
    iget-object v0, p0, Landroid/widget/AbsListView$12;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->semPlayGotoToFadeIn()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)V

    .line 10019
    return-void
.end method
