.class public Lmf/org/apache/xerces/xni/XNIException;
.super Ljava/lang/RuntimeException;
.source "XNIException.java"


# static fields
.field static final serialVersionUID:J = 0x7d2cd64b50ff589fL


# instance fields
.field private fException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    iput-object p1, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    iput-object p2, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    if-ne p1, p0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    iput-object p1, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0
.end method
