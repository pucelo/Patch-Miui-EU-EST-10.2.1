.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private final mSatellitesCount:I

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .registers 3

    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-static {p1}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    :goto_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-static {v1}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    return v1

    :cond_1a
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    goto :goto_0

    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public next()Landroid/location/GpsSatellite;
    .registers 4

    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v1, v2, :cond_1f

    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-static {v1}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_1f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
