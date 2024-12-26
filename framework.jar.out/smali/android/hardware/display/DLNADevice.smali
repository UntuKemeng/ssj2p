.class public final Landroid/hardware/display/DLNADevice;
.super Ljava/lang/Object;
.source "DLNADevice.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/display/DLNADevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTING:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/DLNADevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/DLNADevice;

.field public static final ERROR:I = 0x2

.field public static final NOT_CONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DLNADevice"

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_MUSIC:I = 0x2

.field public static final TYPE_VIDEO:I


# instance fields
.field private final mDLNAType:I

.field private final mIpAddress:Ljava/lang/String;

.field private final mIsSwitchingDevice:Z

.field private final mMacAddressFromARP:Ljava/lang/String;

.field private final mNICType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private final mP2pMacAddress:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/DLNADevice;

    sput-object v0, Landroid/hardware/display/DLNADevice;->EMPTY_ARRAY:[Landroid/hardware/display/DLNADevice;

    .line 60
    new-instance v0, Landroid/hardware/display/DLNADevice$1;

    invoke-direct {v0}, Landroid/hardware/display/DLNADevice$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DLNADevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "p2pMacAddress"    # Ljava/lang/String;
    .param p4, "macAddressFromARP"    # Ljava/lang/String;
    .param p5, "deviceNICType"    # Ljava/lang/String;
    .param p6, "uid"    # Ljava/lang/String;
    .param p7, "dlnaType"    # I
    .param p8, "isSwitchingDevice"    # Z
    .param p9, "uri"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "DLNADevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNADevice name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2pMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", macAddressFromARP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceNICType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlnaType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-nez p2, :cond_0

    .line 83
    const-string v0, "DLNADevice"

    const-string v1, "DLNADevice deviceIpAddress must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceIpAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    const-string v0, "DLNADevice"

    const-string v1, "DLNADevice deviceName must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-nez p6, :cond_2

    .line 91
    const-string v0, "DLNADevice"

    const-string v1, "DLNADevice uid must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iput-object p1, p0, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Landroid/hardware/display/DLNADevice;->mIpAddress:Ljava/lang/String;

    .line 97
    if-nez p3, :cond_5

    .line 98
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    .line 102
    :goto_0
    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    if-eqz p4, :cond_4

    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 103
    invoke-static {p2}, Landroid/hardware/display/DLNADevice;->getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DLNADevice;->mMacAddressFromARP:Ljava/lang/String;

    .line 104
    const-string v0, "DLNADevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mac address from arp table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1
    if-nez p5, :cond_7

    .line 110
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/display/DLNADevice;->mNICType:Ljava/lang/String;

    .line 114
    :goto_2
    if-nez p6, :cond_8

    .line 115
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    .line 119
    :goto_3
    iput p7, p0, Landroid/hardware/display/DLNADevice;->mDLNAType:I

    .line 120
    iput-boolean p8, p0, Landroid/hardware/display/DLNADevice;->mIsSwitchingDevice:Z

    .line 122
    if-nez p9, :cond_9

    .line 123
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/display/DLNADevice;->mUri:Ljava/lang/String;

    .line 126
    :goto_4
    return-void

    .line 100
    :cond_5
    iput-object p3, p0, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_6
    iput-object p4, p0, Landroid/hardware/display/DLNADevice;->mMacAddressFromARP:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_7
    iput-object p5, p0, Landroid/hardware/display/DLNADevice;->mNICType:Ljava/lang/String;

    goto :goto_2

    .line 117
    :cond_8
    iput-object p6, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    goto :goto_3

    .line 125
    :cond_9
    iput-object p9, p0, Landroid/hardware/display/DLNADevice;->mUri:Ljava/lang/String;

    goto :goto_4
.end method

.method public static getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 203
    if-nez p0, :cond_1

    .line 204
    const-string v4, ""

    .line 248
    :cond_0
    :goto_0
    return-object v4

    .line 207
    :cond_1
    const/4 v0, 0x0

    .line 208
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 211
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/net/arp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 215
    .local v3, "line":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 216
    if-nez v3, :cond_4

    .line 232
    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 235
    :cond_3
    const-string v4, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    if-eqz v1, :cond_0

    .line 242
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "DLNADevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v6, " +"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "splitted":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    const/4 v6, 0x3

    aget-object v4, v5, v6

    .line 223
    .local v4, "mac":Ljava/lang/String;
    const-string v6, "..:..:..:..:..:.."

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 225
    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    :cond_5
    if-eqz v1, :cond_0

    .line 242
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v2

    .line 244
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "DLNADevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 237
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "splitted":[Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 238
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v6, "DLNADevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMacAddrFromArpTable Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    if-eqz v0, :cond_6

    .line 242
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 248
    :cond_6
    :goto_2
    const-string v4, ""

    goto/16 :goto_0

    .line 243
    :catch_3
    move-exception v2

    .line 244
    const-string v6, "DLNADevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 240
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_7

    .line 242
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 245
    :cond_7
    :goto_4
    throw v6

    .line 243
    :catch_4
    move-exception v2

    .line 244
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "DLNADevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 240
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 237
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/hardware/display/DLNADevice;)I
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DLNADevice;

    .prologue
    .line 312
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Landroid/hardware/display/DLNADevice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/DLNADevice;->compareTo(Landroid/hardware/display/DLNADevice;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/hardware/display/DLNADevice;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DLNADevice;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DLNADevice;->mDLNAType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/hardware/display/DLNADevice;->mDLNAType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 254
    instance-of v0, p1, Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/DLNADevice;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/DLNADevice;->equals(Landroid/hardware/display/DLNADevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDLNAType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/hardware/display/DLNADevice;->mDLNAType:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddressFromARP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mMacAddressFromARP:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mNICType:Ljava/lang/String;

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSwitchingDevice()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/hardware/display/DLNADevice;->mIsSwitchingDevice:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p mac : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mac from arp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", net type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mNICType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlnaType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/DLNADevice;->mDLNAType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSwitchingDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/DLNADevice;->mIsSwitchingDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DLNADevice;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 279
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mNICType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/hardware/display/DLNADevice;->mDLNAType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Landroid/hardware/display/DLNADevice;->mIsSwitchingDevice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Landroid/hardware/display/DLNADevice;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
