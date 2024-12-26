.class Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotnessValue"
.end annotation


# instance fields
.field private isHotness:[Z

.field private nHotness:[I

.field skipPackage:Z

.field final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method constructor <init>(Lcom/android/server/am/DynamicHiddenApp;I)V
    .locals 2
    .param p2, "nHotnessType"    # I

    .prologue
    const/4 v1, 0x2

    .line 275
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    .line 274
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->isHotness:[Z

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    .line 275
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    return-void

    .line 273
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 274
    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method decreaseHotness(I)V
    .locals 2
    .param p1, "nHotnessType"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method getHotness(I)I
    .locals 1
    .param p1, "nHotnessType"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v0, v0, p1

    return v0
.end method

.method getIsHotness(I)Z
    .locals 1
    .param p1, "nHotnessType"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->isHotness:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method increaseHotness(I)V
    .locals 2
    .param p1, "nHotnessType"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method setHalf(I)V
    .locals 2
    .param p1, "nHotnessType"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    return-void
.end method

.method setHotness(II)V
    .locals 1
    .param p1, "nHotnessVal"    # I
    .param p2, "nHotnessType"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->nHotness:[I

    aput p1, v0, p2

    return-void
.end method

.method setIsHotness(ZI)V
    .locals 1
    .param p1, "isHotnessVal"    # Z
    .param p2, "nHotnessType"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->isHotness:[Z

    aput-boolean p1, v0, p2

    return-void
.end method
