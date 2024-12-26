.class public final Landroid/os/BatteryStats$HistoryTag;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryTag"
.end annotation


# instance fields
.field public poolIdx:I

.field public string:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 964
    if-ne p0, p1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v1

    .line 965
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 967
    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 969
    .local v0, "that":Landroid/os/BatteryStats$HistoryTag;
    iget v3, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget v4, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 970
    :cond_4
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 977
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 978
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    add-int v0, v1, v2

    .line 979
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 959
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 960
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 940
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 941
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 942
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 943
    return-void
.end method

.method public setTo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "_string"    # Ljava/lang/String;
    .param p2, "_uid"    # I

    .prologue
    .line 946
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 947
    iput p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 948
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 949
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 952
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    return-void
.end method
