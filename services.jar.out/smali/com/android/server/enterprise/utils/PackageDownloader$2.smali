.class Lcom/android/server/enterprise/utils/PackageDownloader$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040be0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$500(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_1
    monitor-exit p0

    .line 315
    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040be1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
