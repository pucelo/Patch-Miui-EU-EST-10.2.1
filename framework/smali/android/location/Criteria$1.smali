.class final Landroid/location/Criteria$1;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Criteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/Criteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-set4(Landroid/location/Criteria;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-set8(Landroid/location/Criteria;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-set6(Landroid/location/Criteria;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-set1(Landroid/location/Criteria;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-set5(Landroid/location/Criteria;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_52

    move v1, v2

    :goto_31
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set0(Landroid/location/Criteria;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_54

    move v1, v2

    :goto_3b
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set2(Landroid/location/Criteria;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_56

    move v1, v2

    :goto_45
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set7(Landroid/location/Criteria;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_58

    :goto_4e
    invoke-static {v0, v2}, Landroid/location/Criteria;->-set3(Landroid/location/Criteria;Z)Z

    return-object v0

    :cond_52
    move v1, v3

    goto :goto_31

    :cond_54
    move v1, v3

    goto :goto_3b

    :cond_56
    move v1, v3

    goto :goto_45

    :cond_58
    move v2, v3

    goto :goto_4e
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Criteria;
    .registers 3

    new-array v0, p1, [Landroid/location/Criteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->newArray(I)[Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method
