.class final Landroid/app/ServiceStartArgs$1;
.super Ljava/lang/Object;
.source "ServiceStartArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ServiceStartArgs;
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
        "Landroid/app/ServiceStartArgs;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ServiceStartArgs;
    .registers 3

    new-instance v0, Landroid/app/ServiceStartArgs;

    invoke-direct {v0, p1}, Landroid/app/ServiceStartArgs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/ServiceStartArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ServiceStartArgs;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ServiceStartArgs;
    .registers 3

    new-array v0, p1, [Landroid/app/ServiceStartArgs;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/ServiceStartArgs$1;->newArray(I)[Landroid/app/ServiceStartArgs;

    move-result-object v0

    return-object v0
.end method