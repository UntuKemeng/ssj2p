.class public Lcom/samsung/android/desktop/DesktopFeature;
.super Ljava/lang/Object;
.source "DesktopFeature.java"


# static fields
.field public static BUTTON_ACTION_PRESSED:B = 0x0t

.field public static BUTTON_ACTION_RELEASED:B = 0x0t

.field public static final ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "DesktopServiceFeature"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-byte v0, Lcom/samsung/android/desktop/DesktopFeature;->BUTTON_ACTION_PRESSED:B

    .line 12
    const/4 v0, 0x0

    sput-byte v0, Lcom/samsung/android/desktop/DesktopFeature;->BUTTON_ACTION_RELEASED:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
