.class final Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;
.super Ljava/lang/Object;
.source "MonitorSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
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
        "Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    .registers 3

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    .registers 3

    new-array v0, p1, [Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;->newArray(I)[Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    move-result-object v0

    return-object v0
.end method
