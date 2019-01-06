.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field public final delayVariation:I

.field public final latency:I

.field public final peakBandwidth:I

.field public final serviceType:I

.field public final tokenBucketSize:I

.field public final tokenRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    instance-of v1, p1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    if-eqz v1, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    return v2

    :cond_9
    return v2
.end method

.method public toArray()[I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
