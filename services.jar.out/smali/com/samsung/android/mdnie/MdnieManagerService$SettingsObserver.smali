.class final Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/MdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/MdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # invokes: Lcom/samsung/android/mdnie/MdnieManagerService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$600(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    return-void
.end method
