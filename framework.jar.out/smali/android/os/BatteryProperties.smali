.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryChargeCounter:I

.field public batteryChargeType:I

.field public batteryCurrentAvg:I

.field public batteryCurrentNow:I

.field public batteryHealth:I

.field public batteryHighVoltageCharger:Z

.field public batteryLevel:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public batteryPresent:Z

.field public batterySWSelfDischarging:Z

.field public batterySecEvent:I

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerOTGOnline:Z

.field public chargerPogoOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batterySecEvent:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    :goto_8
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->chargerOTGOnline:Z

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 81
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 85
    goto :goto_3

    :cond_4
    move v0, v2

    .line 95
    goto :goto_4

    :cond_5
    move v0, v2

    .line 96
    goto :goto_5

    :cond_6
    move v0, v2

    .line 97
    goto :goto_6

    :cond_7
    move v0, v2

    .line 98
    goto :goto_7

    :cond_8
    move v1, v2

    .line 100
    goto :goto_8
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/BatteryProperties$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/os/BatteryProperties;

    .prologue
    .line 52
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 53
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 54
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 55
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 56
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 57
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 58
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 59
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 60
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 61
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 62
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 63
    iget v0, p1, Landroid/os/BatteryProperties;->batteryOnline:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    .line 64
    iget v0, p1, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    .line 65
    iget v0, p1, Landroid/os/BatteryProperties;->batteryChargeType:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    .line 66
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    .line 67
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    .line 68
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    .line 69
    iget v0, p1, Landroid/os/BatteryProperties;->batterySecEvent:I

    iput v0, p0, Landroid/os/BatteryProperties;->batterySecEvent:I

    .line 70
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerOTGOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerOTGOnline:Z

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/os/BatteryProperties;->batterySecEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerOTGOnline:Z

    if-eqz v0, :cond_8

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 104
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 105
    goto :goto_1

    :cond_2
    move v0, v2

    .line 106
    goto :goto_2

    :cond_3
    move v0, v2

    .line 110
    goto :goto_3

    :cond_4
    move v0, v2

    .line 120
    goto :goto_4

    :cond_5
    move v0, v2

    .line 121
    goto :goto_5

    :cond_6
    move v0, v2

    .line 122
    goto :goto_6

    :cond_7
    move v0, v2

    .line 123
    goto :goto_7

    :cond_8
    move v1, v2

    .line 125
    goto :goto_8
.end method
