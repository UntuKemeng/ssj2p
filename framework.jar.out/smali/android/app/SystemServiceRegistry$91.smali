.class final Landroid/app/SystemServiceRegistry$91;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/samsung/android/app/ExecuteManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1118
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/app/ExecuteManager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 1121
    new-instance v0, Lcom/samsung/android/app/ExecuteManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/ExecuteManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$91;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/app/ExecuteManager;

    move-result-object v0

    return-object v0
.end method
