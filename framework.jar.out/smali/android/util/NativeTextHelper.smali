.class public Landroid/util/NativeTextHelper;
.super Ljava/lang/Object;
.source "NativeTextHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInternalLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "originNamesId"    # I
    .param p3, "localNamesId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/util/NativeTextHelper;->getLocalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "originNamesId"    # I
    .param p3, "localNamesId"    # I

    .prologue
    const-string v0, "android"

    invoke-static {p0, p1, v0, p2, p3}, Landroid/util/NativeTextHelper;->getLocalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getLocalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "originNamesId"    # I
    .param p4, "localNamesId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "origNames":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "localNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, v1, v0

    const-string/jumbo v5, "string"

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "originalString":Ljava/lang/String;
    :cond_0
    return-object p1

    .restart local p1    # "originalString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
