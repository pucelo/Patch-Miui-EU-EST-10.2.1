.class public final Landroid/hardware/usb/UsbPortStatus;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPortStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbPortStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentDataRole:I

.field private final mCurrentMode:I

.field private final mCurrentPowerRole:I

.field private final mSupportedRoleCombinations:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/usb/UsbPortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDataRole()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    return v0
.end method

.method public getCurrentMode()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    return v0
.end method

.method public getCurrentPowerRole()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    return v0
.end method

.method public getSupportedRoleCombinations()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    return v0
.end method

.method public isConnected()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isRoleCombinationSupported(II)Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UsbPortStatus{connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentPowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportedRoleCombinations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->roleCombinationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
