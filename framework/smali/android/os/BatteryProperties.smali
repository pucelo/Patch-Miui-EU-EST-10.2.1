.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryProperties$1;
    }
.end annotation


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

.field public batteryFullCharge:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_65

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_67

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_69

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6b

    :goto_3e
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryFullCharge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    return-void

    :cond_65
    move v0, v2

    goto :goto_c

    :cond_67
    move v0, v2

    goto :goto_15

    :cond_69
    move v0, v2

    goto :goto_1e

    :cond_6b
    move v1, v2

    goto :goto_3e
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .registers 3

    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v0, p1, Landroid/os/BatteryProperties;->batteryFullCharge:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryFullCharge:I

    iget v0, p1, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_54

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_56

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_58

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_5a

    :goto_32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryFullCharge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_54
    move v0, v2

    goto :goto_7

    :cond_56
    move v0, v2

    goto :goto_f

    :cond_58
    move v0, v2

    goto :goto_17

    :cond_5a
    move v1, v2

    goto :goto_32
.end method
