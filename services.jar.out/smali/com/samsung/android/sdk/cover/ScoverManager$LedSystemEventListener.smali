.class public Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LedSystemEventListener"
.end annotation


# static fields
.field private static final EVENT_TYPE_SYSTEM:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1276
    return-void
.end method