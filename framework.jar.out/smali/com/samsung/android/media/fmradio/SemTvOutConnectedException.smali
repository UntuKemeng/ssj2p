.class public Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;
.super Lcom/samsung/android/media/fmradio/SemFmPlayerException;
.source "SemTvOutConnectedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/fmradio/SemFmPlayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
