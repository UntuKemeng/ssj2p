.class interface abstract Lcom/android/server/AlarmManagerServiceExt$Sales;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final MPCS:Z

.field public static final NORTH_AMERICA:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3614
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    .line 3616
    const-string v0, "VZW"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    .line 3618
    const-string v0, "ATT"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIO"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CRI"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    .line 3620
    const-string v0, "TMB"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    .line 3622
    const-string v0, "TMK"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    .line 3624
    const-string v0, "SPR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BST"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VMU"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XAS"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    .line 3627
    const-string v0, "USC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LRA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ACG"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    .line 3629
    const-string v0, "RWC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FMC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MTA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MTS"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TLS"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KDO"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SPC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CLN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BMC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VMC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PCM"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SOL"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BWA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "GLW"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VTR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ESK"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PMB"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XAC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->CANADA:Z

    .line 3635
    const-string v0, "CHN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CHU"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CTC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CHM"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CHC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->CHINA:Z

    .line 3638
    const-string v0, "DCM"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    .line 3640
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-nez v0, :cond_5

    const-string v0, "XAR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "MTR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SPT"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CSP"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TFN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BNN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt$Sales;->NORTH_AMERICA:Z

    return-void

    :cond_7
    move v0, v1

    .line 3618
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 3624
    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 3627
    goto/16 :goto_2

    :cond_a
    move v0, v1

    .line 3629
    goto/16 :goto_3

    :cond_b
    move v0, v1

    .line 3635
    goto :goto_4
.end method
