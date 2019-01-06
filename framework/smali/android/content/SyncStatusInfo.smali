.class public Landroid/content/SyncStatusInfo;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStatusInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EVENT_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Sync"

.field static final VERSION:I = 0x4


# instance fields
.field public final authorityId:I

.field public initialFailureTime:J

.field public initialize:Z

.field public lastFailureMesg:Ljava/lang/String;

.field public lastFailureSource:I

.field public lastFailureTime:J

.field public lastSuccessSource:I

.field public lastSuccessTime:J

.field private final mLastEventTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numSourceLocal:I

.field public numSourcePeriodic:I

.field public numSourcePoll:I

.field public numSourceServer:I

.field public numSourceUser:I

.field public numSyncs:I

.field public pending:Z

.field private periodicSyncTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public totalElapsedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/SyncStatusInfo$1;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/SyncStatusInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iget v0, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    iget v0, p1, Landroid/content/SyncStatusInfo;->numSyncs:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourceServer:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourceUser:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    iget v0, p1, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iget v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iget v0, p1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->pending:Z

    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    :cond_5e
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 14

    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eq v3, v10, :cond_37

    if-eq v3, v5, :cond_37

    const-string/jumbo v4, "SyncStatusInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4

    move v4, v5

    :goto_8c
    iput-boolean v4, p0, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b6

    move v4, v5

    :goto_95
    iput-boolean v4, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    if-ne v3, v5, :cond_b8

    iput-object v11, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    :cond_9b
    if-ge v3, v10, :cond_107

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    iget v5, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    if-gez v4, :cond_b3

    iput v6, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    :cond_b3
    :goto_b3
    return-void

    :cond_b4
    move v4, v6

    goto :goto_8c

    :cond_b6
    move v4, v6

    goto :goto_95

    :cond_b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_ed

    iput-object v11, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    :cond_c0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_9b

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v1, 0x0

    :goto_d2
    if-ge v1, v2, :cond_9b

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    :cond_ed
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_f5
    if-ge v1, v0, :cond_c0

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    :cond_107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto :goto_b3
.end method

.method private ensurePeriodicSyncTimeSize(I)V
    .registers 8

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    :cond_c
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_2c

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1c
    if-ge v0, v1, :cond_2c

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2c
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 7

    const/16 v2, 0x9

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEventTime(I)J
    .registers 4

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFailureMesgAsInt(I)I
    .registers 6

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ContentResolver;->syncErrorStringToInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    return v0

    :cond_9
    const-string/jumbo v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown lastFailureMesg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getPeriodicSyncTime(I)J
    .registers 4

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public removePeriodicSyncTime(I)V
    .registers 3

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public setPeriodicSyncTime(IJ)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v8, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v8, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v8, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v8, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v4, p0, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_7d

    move v4, v5

    :goto_4c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    if-eqz v4, :cond_7f

    :goto_53
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v4, :cond_81

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_69

    :cond_7d
    move v4, v6

    goto :goto_4c

    :cond_7f
    move v5, v6

    goto :goto_53

    :cond_81
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_85
    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_8f
    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_b4

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v4, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    :cond_b4
    iget v4, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
