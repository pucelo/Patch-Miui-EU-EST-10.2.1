.class public final Landroid/location/GnssMeasurementsEvent;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementsEvent$1;,
        Landroid/location/GnssMeasurementsEvent$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssMeasurementsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClock:Landroid/location/GnssClock;

.field private final mReadOnlyMeasurements:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssMeasurementsEvent$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementsEvent$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurementsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssClock;[Landroid/location/GnssMeasurement;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "Parameter \'clock\' must not be null."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-eqz p2, :cond_13

    array-length v1, p2

    if-nez v1, :cond_1c

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    :goto_19
    iput-object p1, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    return-void

    :cond_1c
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    goto :goto_19
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClock()Landroid/location/GnssClock;
    .registers 2

    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[ GnssMeasurementsEvent:\n\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    invoke-virtual {v3}, Landroid/location/GnssClock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurement;

    invoke-virtual {v1}, Landroid/location/GnssMeasurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_37
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    new-array v3, v1, [Landroid/location/GnssMeasurement;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/GnssMeasurement;

    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
