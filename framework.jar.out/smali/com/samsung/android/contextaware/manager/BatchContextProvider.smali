.class public Lcom/samsung/android/contextaware/manager/BatchContextProvider;
.super Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;
.source "BatchContextProvider.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .locals 0
    .param p1, "provider"    # Lcom/samsung/android/contextaware/manager/ContextComponent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/BatchContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/BatchContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method
