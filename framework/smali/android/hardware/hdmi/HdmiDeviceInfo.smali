.class public Landroid/hardware/hdmi/HdmiDeviceInfo;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiDeviceInfo$1;
    }
.end annotation


# static fields
.field public static final ADDR_INTERNAL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_AUDIO_SYSTEM:I = 0x5

.field public static final DEVICE_INACTIVE:I = -0x1

.field public static final DEVICE_PLAYBACK:I = 0x4

.field public static final DEVICE_PURE_CEC_SWITCH:I = 0x6

.field public static final DEVICE_RECORDER:I = 0x1

.field public static final DEVICE_RESERVED:I = 0x2

.field public static final DEVICE_TUNER:I = 0x3

.field public static final DEVICE_TV:I = 0x0

.field public static final DEVICE_VIDEO_PROCESSOR:I = 0x7

.field private static final HDMI_DEVICE_TYPE_CEC:I = 0x0

.field private static final HDMI_DEVICE_TYPE_HARDWARE:I = 0x2

.field private static final HDMI_DEVICE_TYPE_INACTIVE:I = 0x64

.field private static final HDMI_DEVICE_TYPE_MHL:I = 0x1

.field public static final ID_INVALID:I = 0xffff

.field private static final ID_OFFSET_CEC:I = 0x0

.field private static final ID_OFFSET_HARDWARE:I = 0xc0

.field private static final ID_OFFSET_MHL:I = 0x80

.field public static final INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public static final PATH_INTERNAL:I = 0x0

.field public static final PATH_INVALID:I = 0xffff

.field public static final PORT_INVALID:I = -0x1


# instance fields
.field private final mAdopterId:I

.field private final mDeviceId:I

.field private final mDevicePowerStatus:I

.field private final mDeviceType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mHdmiDeviceType:I

.field private final mId:I

.field private final mLogicalAddress:I

.field private final mPhysicalAddress:I

.field private final mPortId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const v2, 0xffff

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    const-string/jumbo v0, "Inactive"

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForHardware(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForMhlDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    const-string/jumbo v0, "Mobile"

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .registers 15

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;I)V
    .registers 10

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iput p5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iput p7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    iput-object p6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return-void
.end method

.method public static idForCecDevice(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x0

    return v0
.end method

.method public static idForHardware(I)I
    .registers 2

    add-int/lit16 v0, p0, 0xc0

    return v0
.end method

.method public static idForMhlDevice(I)I
    .registers 2

    add-int/lit16 v0, p0, 0x80

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    if-ne v2, v3, :cond_4a

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    if-ne v2, v3, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    return v1
.end method

.method public getAdopterId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return v0
.end method

.method public getDeviceId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public getDevicePowerStatus()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return v0
.end method

.method public getDeviceType()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    return v0
.end method

.method public getLogicalAddress()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method public getPhysicalAddress()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method public getPortId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return v0
.end method

.method public isCecDevice()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isInactivated()Z
    .registers 3

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMhlDevice()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSourceType()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_11

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-ne v2, v0, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_11

    :cond_19
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isMhlDevice()Z

    move-result v2

    if-eqz v2, :cond_20

    return v0

    :cond_20
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    sparse-switch v1, :sswitch_data_110

    const-string/jumbo v1, ""

    return-object v1

    :sswitch_10
    const-string/jumbo v1, "CEC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "logical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "0x%02X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "vendor_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "display_name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "power_status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_83
    const-string/jumbo v1, "physical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_b5
    const-string/jumbo v1, "MHL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "device_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "adopter_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_83

    :sswitch_100
    const-string/jumbo v1, "Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_83

    :sswitch_108
    const-string/jumbo v1, "Inactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_83

    :sswitch_data_110
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_b5
        0x2 -> :sswitch_100
        0x64 -> :sswitch_108
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v0, :pswitch_data_3a

    :goto_14
    return-void

    :pswitch_15
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_2f
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_2f
    .end packed-switch
.end method
