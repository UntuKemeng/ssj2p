.class public Landroid/hardware/scontext/SContextActivityNotificationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityNotificationAttribute.java"


# static fields
.field private static final ACTIVITY_STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SContextActivityNotificationAttribute"


# instance fields
.field private mActivityFilter:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "activityFilter"    # [I

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "activity_filter"

    iget-object v2, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v1, 0x1b

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    if-ltz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    :cond_0
    const-string v4, "SContextActivityNotificationAttribute"

    const-string v5, "The activity status is wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v3

    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const-string v4, "SContextActivityNotificationAttribute"

    const-string v5, "This activity status cannot have duplicated status."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method
