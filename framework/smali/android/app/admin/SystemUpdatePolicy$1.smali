.class final Landroid/app/admin/SystemUpdatePolicy$1;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
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
        "Landroid/app/admin/SystemUpdatePolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy;
    .registers 4

    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;-><init>(Landroid/app/admin/SystemUpdatePolicy;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->-set2(Landroid/app/admin/SystemUpdatePolicy;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->-set1(Landroid/app/admin/SystemUpdatePolicy;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->-set0(Landroid/app/admin/SystemUpdatePolicy;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/SystemUpdatePolicy;
    .registers 3

    new-array v0, p1, [Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$1;->newArray(I)[Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    return-object v0
.end method