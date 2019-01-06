.class final Landroid/app/admin/DnsEvent$1;
.super Ljava/lang/Object;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DnsEvent;
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
        "Landroid/app/admin/DnsEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DnsEvent;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    return-object v2

    :cond_9
    new-instance v0, Landroid/app/admin/DnsEvent;

    invoke-direct {v0, p1, v2}, Landroid/app/admin/DnsEvent;-><init>(Landroid/os/Parcel;Landroid/app/admin/DnsEvent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/admin/DnsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DnsEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/DnsEvent;
    .registers 3

    new-array v0, p1, [Landroid/app/admin/DnsEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/admin/DnsEvent$1;->newArray(I)[Landroid/app/admin/DnsEvent;

    move-result-object v0

    return-object v0
.end method
