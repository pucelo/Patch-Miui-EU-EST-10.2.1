.class final Landroid/os/PersistableBundle$1;
.super Ljava/lang/Object;
.source "PersistableBundle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersistableBundle;
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
        "Landroid/os/PersistableBundle;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/PersistableBundle;
    .registers 3

    new-array v0, p1, [Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle$1;->newArray(I)[Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method