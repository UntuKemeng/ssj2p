.class public Landroid/os/RCPManager;
.super Ljava/lang/Object;
.source "RCPManager.java"


# static fields
.field public static final ERROR:I = -0x14d

.field private static final TAG:Ljava/lang/String; = "RCPManager"


# instance fields
.field mService:Landroid/os/IRCPManager;


# direct methods
.method public constructor <init>(Landroid/os/IRCPManager;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRCPManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    return-void
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .locals 1
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->cancelCopyChunks(J)V

    :cond_0
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 11
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/os/IRCPManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x14d

    goto :goto_0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile: srcContainerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destContainerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSyncForSyncer(Ljava/lang/String;I)V
    .locals 4
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSyncForSyncer, SyncerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , providerID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->doSyncForSyncer(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2, p3}, Landroid/os/IRCPManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .locals 3
    .param p1, "command"    # Landroid/app/Command;

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->executeCommandForPersona(Landroid/app/Command;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 3
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get getCallerInfo(). "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPInterface()Landroid/content/IRCPInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get IRCPGlobalContactsDir from getRCPProxy()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " in createShortcut() for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IRCPManager;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to get createShortcut(). "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 2
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRCPManager;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 2
    .param p1, "requestApp"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryAllProviders()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 9
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryProvider"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;I)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerCommandExe callback object is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register command executor callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2, p3}, Landroid/os/IRCPManager;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;I)Z

    move-result v1

    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerMonitorCb(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerObserver(Ljava/lang/String;I)V
    .locals 4
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerObserver, SyncerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerObserver(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;
    .param p3, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IRCPManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register provider callback registerProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V
    .locals 4
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .locals 4
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRCPInterface(): My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerSync(Landroid/content/ISyncCallBack;I)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ISyncCallBack;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerSync(Landroid/content/ISyncCallBack;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register sync callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPersona(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->switchPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterObserver(Ljava/lang/String;I)V
    .locals 4
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerObserver, SyncerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->unRegisterObserver(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
