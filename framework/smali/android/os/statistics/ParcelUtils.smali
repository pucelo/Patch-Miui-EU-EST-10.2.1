.class public Landroid/os/statistics/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final MAX_STRING_ARRAY_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ParcelUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_e

    const/16 v3, 0x64

    if-le v1, v3, :cond_f

    :cond_e
    return-object v4

    :cond_f
    :try_start_f
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_15

    return-object v2

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object v4
.end method

.method public static writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_b

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_b
    array-length v0, p1

    const/16 v1, 0x64

    if-le v0, v1, :cond_22

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const-string/jumbo v0, "ParcelUtils"

    const-string/jumbo v1, "array is too long, write failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
