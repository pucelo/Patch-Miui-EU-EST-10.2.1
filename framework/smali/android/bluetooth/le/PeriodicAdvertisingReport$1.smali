.class final Landroid/bluetooth/le/PeriodicAdvertisingReport$1;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/PeriodicAdvertisingReport;
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
        "Landroid/bluetooth/le/PeriodicAdvertisingReport;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/PeriodicAdvertisingReport;
    .registers 4

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/PeriodicAdvertisingReport;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/PeriodicAdvertisingReport;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/le/PeriodicAdvertisingReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;->newArray(I)[Landroid/bluetooth/le/PeriodicAdvertisingReport;

    move-result-object v0

    return-object v0
.end method
