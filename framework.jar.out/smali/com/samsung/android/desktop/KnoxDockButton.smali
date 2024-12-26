.class public Lcom/samsung/android/desktop/KnoxDockButton;
.super Ljava/lang/Object;
.source "KnoxDockButton.java"

# interfaces
.implements Lcom/samsung/android/desktop/IDockButton;


# instance fields
.field public mDockClickEventListner:Lcom/samsung/android/desktop/DockClickEventListner;

.field private mIsPressed:B


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktop/KnoxDockStation;)V
    .locals 1
    .param p1, "station"    # Lcom/samsung/android/desktop/KnoxDockStation;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-byte v0, Lcom/samsung/android/desktop/DesktopFeature;->BUTTON_ACTION_RELEASED:B

    iput-byte v0, p0, Lcom/samsung/android/desktop/KnoxDockButton;->mIsPressed:B

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, p0}, Lcom/samsung/android/desktop/KnoxDockStation;->addObserver(Lcom/samsung/android/desktop/KnoxDockButton;)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public setDockClickEventListner(Lcom/samsung/android/desktop/DockClickEventListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/samsung/android/desktop/DockClickEventListner;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/desktop/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktop/DockClickEventListner;

    .line 19
    return-void
.end method

.method public setPressed(B)V
    .locals 2
    .param p1, "press"    # B

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/samsung/android/desktop/KnoxDockButton;->mIsPressed:B

    .line 24
    iget-object v0, p0, Lcom/samsung/android/desktop/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktop/DockClickEventListner;

    iget-byte v1, p0, Lcom/samsung/android/desktop/KnoxDockButton;->mIsPressed:B

    invoke-interface {v0, v1}, Lcom/samsung/android/desktop/DockClickEventListner;->onClick(B)V

    .line 25
    return-void
.end method