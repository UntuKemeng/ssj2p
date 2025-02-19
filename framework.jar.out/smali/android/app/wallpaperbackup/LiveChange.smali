.class public Landroid/app/wallpaperbackup/LiveChange;
.super Ljava/lang/Object;
.source "LiveChange.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;)V
    .locals 12
    .param p1, "mComponent"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "classpackage":[Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "queryIntent":Landroid/content/Intent;
    aget-object v9, v0, v11

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v3, 0x0

    .local v3, "info":Landroid/app/WallpaperInfo;
    :try_start_0
    new-instance v3, Landroid/app/WallpaperInfo;

    .end local v3    # "info":Landroid/app/WallpaperInfo;
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9, v8}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v3    # "info":Landroid/app/WallpaperInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Landroid/app/wallpaperbackup/LivePreview;

    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/app/wallpaperbackup/LivePreview;-><init>(Landroid/content/Context;)V

    .local v6, "lp":Landroid/app/wallpaperbackup/LivePreview;
    invoke-virtual {v6, v11, v4, v3, v11}, Landroid/app/wallpaperbackup/LivePreview;->set(ILandroid/content/Intent;Landroid/app/WallpaperInfo;Z)V

    .end local v2    # "i":I
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "lp":Landroid/app/wallpaperbackup/LivePreview;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
