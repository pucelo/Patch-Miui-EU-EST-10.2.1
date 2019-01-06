.class public final Landroid/bluetooth/BleScanWrapper;
.super Ljava/lang/Object;
.source "BleScanWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleScanWrapper$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BleScanWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientIf:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpPackageName:Ljava/lang/String;

.field private final mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/bluetooth/le/ScanSettings;

.field private final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BleScanWrapper$1;

    invoke-direct {v0}, Landroid/bluetooth/BleScanWrapper$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleScanWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iput-object p2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iput-object p3, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    iput-object p4, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    iput-object p5, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    iput-object p6, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanSettings;

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    :goto_1a
    sget-object v1, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    :goto_32
    invoke-virtual {p0}, Landroid/bluetooth/BleScanWrapper;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    return-void

    :cond_47
    iput-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    goto :goto_1a

    :cond_4a
    iput-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_32
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BleScanWrapper;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BleScanWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/bluetooth/BleScanWrapper;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BleScanWrapper;

    iget v3, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget v4, v0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    if-ne v3, v4, :cond_1c

    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startScan(Landroid/bluetooth/IBluetoothGatt;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothGatt;->stopScan(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[mClientIf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v0, :cond_2f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/le/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_33

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1, v1}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_24
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    :cond_33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24
.end method
