.class final Landroid/service/autofill/RegexValidator$1;
.super Ljava/lang/Object;
.source "RegexValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/RegexValidator;
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
        "Landroid/service/autofill/RegexValidator;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RegexValidator;
    .registers 5

    new-instance v2, Landroid/service/autofill/RegexValidator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-direct {v2, v0, v1}, Landroid/service/autofill/RegexValidator;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/RegexValidator$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RegexValidator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/RegexValidator;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/RegexValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/autofill/RegexValidator$1;->newArray(I)[Landroid/service/autofill/RegexValidator;

    move-result-object v0

    return-object v0
.end method
