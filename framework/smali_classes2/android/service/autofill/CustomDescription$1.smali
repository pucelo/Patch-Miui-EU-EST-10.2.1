.class final Landroid/service/autofill/CustomDescription$1;
.super Ljava/lang/Object;
.source "CustomDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
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
        "Landroid/service/autofill/CustomDescription;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;
    .registers 9

    const/4 v6, 0x0

    new-instance v0, Landroid/service/autofill/CustomDescription$Builder;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    invoke-direct {v0, v5}, Landroid/service/autofill/CustomDescription$Builder;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    if-eqz v2, :cond_28

    const-class v5, Landroid/service/autofill/InternalTransformation;

    invoke-virtual {p1, v6, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/InternalTransformation;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v3, :cond_28

    aget v5, v2, v1

    aget-object v6, v4, v1

    invoke-virtual {v0, v5, v6}, Landroid/service/autofill/CustomDescription$Builder;->addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_28
    invoke-virtual {v0}, Landroid/service/autofill/CustomDescription$Builder;->build()Landroid/service/autofill/CustomDescription;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/CustomDescription;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->newArray(I)[Landroid/service/autofill/CustomDescription;

    move-result-object v0

    return-object v0
.end method
