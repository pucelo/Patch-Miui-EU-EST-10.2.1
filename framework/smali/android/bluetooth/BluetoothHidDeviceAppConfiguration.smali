.class public final Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHash:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    if-eqz v2, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    iget-wide v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    iget-wide v4, v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    :cond_12
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
