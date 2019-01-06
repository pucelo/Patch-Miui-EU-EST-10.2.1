.class final Landroid/service/autofill/ImageTransformation$1;
.super Ljava/lang/Object;
.source "ImageTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
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
        "Landroid/service/autofill/ImageTransformation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    new-instance v0, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v6, v3, v7

    aget v7, v4, v7

    invoke-direct {v0, v2, v6, v7}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V

    array-length v5, v3

    const/4 v1, 0x1

    :goto_1d
    if-ge v1, v5, :cond_29

    aget-object v6, v3, v1

    aget v7, v4, v1

    invoke-virtual {v0, v6, v7}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_29
    invoke-virtual {v0}, Landroid/service/autofill/ImageTransformation$Builder;->build()Landroid/service/autofill/ImageTransformation;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/ImageTransformation;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/ImageTransformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->newArray(I)[Landroid/service/autofill/ImageTransformation;

    move-result-object v0

    return-object v0
.end method
