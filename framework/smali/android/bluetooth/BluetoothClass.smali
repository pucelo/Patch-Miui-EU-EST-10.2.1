.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$1;,
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_A2DP_SINK:I = 0x6

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .registers 6

    const/high16 v3, 0x40000

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    return v1

    :sswitch_15
    return v0

    :cond_16
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2b

    const/high16 v2, 0x80000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_22

    return v0

    :cond_22
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_92

    return v1

    :sswitch_2a
    return v0

    :cond_2b
    if-nez p1, :cond_3d

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_34

    return v0

    :cond_34
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_a0

    return v1

    :sswitch_3c
    return v0

    :cond_3d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_52

    const/high16 v2, 0x100000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_49

    return v0

    :cond_49
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_ae

    return v1

    :sswitch_51
    return v0

    :cond_52
    const/4 v2, 0x3

    if-ne p1, v2, :cond_62

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x500

    const/16 v3, 0x500

    if-ne v2, v3, :cond_60

    :goto_5f
    return v0

    :cond_60
    move v0, v1

    goto :goto_5f

    :cond_62
    const/4 v2, 0x4

    if-eq p1, v2, :cond_68

    const/4 v2, 0x5

    if-ne p1, v2, :cond_7e

    :cond_68
    const/high16 v2, 0x20000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_71

    return v0

    :cond_71
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x300

    const/16 v3, 0x300

    if-ne v2, v3, :cond_7c

    :goto_7b
    return v0

    :cond_7c
    move v0, v1

    goto :goto_7b

    :cond_7e
    return v1

    nop

    :sswitch_data_80
    .sparse-switch
        0x414 -> :sswitch_15
        0x418 -> :sswitch_15
        0x420 -> :sswitch_15
        0x428 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_92
    .sparse-switch
        0x424 -> :sswitch_2a
        0x428 -> :sswitch_2a
        0x42c -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_a0
    .sparse-switch
        0x404 -> :sswitch_3c
        0x408 -> :sswitch_3c
        0x420 -> :sswitch_3c
    .end sparse-switch

    :sswitch_data_ae
    .sparse-switch
        0x100 -> :sswitch_51
        0x104 -> :sswitch_51
        0x108 -> :sswitch_51
        0x10c -> :sswitch_51
        0x110 -> :sswitch_51
        0x114 -> :sswitch_51
        0x118 -> :sswitch_51
        0x200 -> :sswitch_51
        0x204 -> :sswitch_51
        0x208 -> :sswitch_51
        0x20c -> :sswitch_51
        0x210 -> :sswitch_51
        0x214 -> :sswitch_51
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :cond_f
    return v0
.end method

.method public getDeviceClass()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v2, 0xffe000

    and-int/2addr v1, v2

    and-int/2addr v1, p1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
