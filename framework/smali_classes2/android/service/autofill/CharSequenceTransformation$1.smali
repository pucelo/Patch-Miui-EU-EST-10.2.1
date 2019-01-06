.class final Landroid/service/autofill/CharSequenceTransformation$1;
.super Ljava/lang/Object;
.source "CharSequenceTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CharSequenceTransformation;
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
        "Landroid/service/autofill/CharSequenceTransformation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;
    .registers 11

    const/4 v8, 0x0

    const-class v6, Landroid/view/autofill/AutofillId;

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/service/autofill/CharSequenceTransformation$Builder;

    aget-object v6, v2, v8

    aget-object v7, v3, v8

    aget-object v8, v5, v8

    invoke-direct {v0, v6, v7, v8}, Landroid/service/autofill/CharSequenceTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    array-length v4, v2

    const/4 v1, 0x1

    :goto_21
    if-ge v1, v4, :cond_2f

    aget-object v6, v2, v1

    aget-object v7, v3, v1

    aget-object v8, v5, v1

    invoke-virtual {v0, v6, v7, v8}, Landroid/service/autofill/CharSequenceTransformation$Builder;->addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2f
    invoke-virtual {v0}, Landroid/service/autofill/CharSequenceTransformation$Builder;->build()Landroid/service/autofill/CharSequenceTransformation;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/CharSequenceTransformation;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/CharSequenceTransformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->newArray(I)[Landroid/service/autofill/CharSequenceTransformation;

    move-result-object v0

    return-object v0
.end method
