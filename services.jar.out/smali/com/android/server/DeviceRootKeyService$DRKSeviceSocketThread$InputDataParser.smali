.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDataParser"
.end annotation


# instance fields
.field private mCommandID:S

.field private mEnableTlv:Z

.field private mKeyType:I

.field private mRawData:[B

.field private mServiceName:Ljava/lang/String;

.field private mTlvTag:I

.field private mTlvValue:[B

.field private mVersion:B

.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 585
    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    .line 587
    iput-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    .line 588
    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 589
    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    .line 591
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    .line 592
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    .line 593
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    .line 594
    return-void
.end method

.method private ByteArrayToInt([B)I
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 731
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 737
    :goto_0
    return v1

    .line 734
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 735
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 736
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 737
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private ByteArrayToShort([B)S
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 720
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 726
    :goto_0
    return v1

    .line 723
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 724
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 725
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 726
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public ParserData([B)Z
    .locals 12
    .param p1, "in"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xc

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 639
    .local v1, "shortTemp":[B
    new-array v0, v9, [B

    .line 642
    .local v0, "intTemp":[B
    array-length v6, p1

    if-ge v6, v10, :cond_0

    .line 714
    :goto_0
    return v4

    .line 646
    :cond_0
    aget-byte v6, p1, v4

    iput-byte v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    .line 649
    const/4 v6, 0x2

    invoke-static {p1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 650
    invoke-direct {p0, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToShort([B)S

    move-result v6

    iput-short v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    .line 652
    const-string v6, "DeviceRootKeyServiceSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CommandID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-short v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_0
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 660
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    move v4, v5

    .line 661
    goto :goto_0

    .line 665
    :pswitch_1
    const/4 v6, 0x7

    aget-byte v6, p1, v6

    if-ne v6, v5, :cond_1

    .line 666
    iput-boolean v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    .line 671
    :goto_1
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 672
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v6

    iput v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 675
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 676
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 679
    .local v2, "strSize":I
    new-array v3, v2, [B

    .line 680
    .local v3, "stringTemp":[B
    invoke-static {p1, v10, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 681
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    move v4, v5

    .line 682
    goto :goto_0

    .line 668
    .end local v2    # "strSize":I
    .end local v3    # "stringTemp":[B
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    goto :goto_1

    :pswitch_2
    move v4, v5

    .line 687
    goto :goto_0

    .line 691
    :pswitch_3
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 692
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v6

    iput v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    .line 695
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 696
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 699
    .restart local v2    # "strSize":I
    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    .line 700
    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    invoke-static {p1, v10, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v4, v5

    .line 701
    goto/16 :goto_0

    .line 705
    .end local v2    # "strSize":I
    :pswitch_4
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 706
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 709
    .restart local v2    # "strSize":I
    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    .line 710
    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    invoke-static {p1, v10, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v4, v5

    .line 711
    goto/16 :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCommandId()S
    .locals 1

    .prologue
    .line 603
    iget-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    return v0
.end method

.method public getEnableTlv()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTlvTag()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    return v0
.end method

.method public getTlvValue()[B
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 598
    iget-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    return v0
.end method
