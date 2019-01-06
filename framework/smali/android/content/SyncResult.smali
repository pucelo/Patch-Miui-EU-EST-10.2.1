.class public final Landroid/content/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncResult$1;
    }
.end annotation


# static fields
.field public static final ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public databaseError:Z

.field public delayUntil:J

.field public fullSyncRequested:Z

.field public moreRecordsToGet:Z

.field public partialSyncUnavailable:Z

.field public final stats:Landroid/content/SyncStats;

.field public final syncAlreadyInProgress:Z

.field public tooManyDeletions:Z

.field public tooManyRetries:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/SyncResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/SyncResult;-><init>(Z)V

    sput-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    new-instance v0, Landroid/content/SyncResult$1;

    invoke-direct {v0}, Landroid/content/SyncResult$1;-><init>()V

    sput-object v0, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/SyncResult;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_39
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    :goto_41
    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0, p1}, Landroid/content/SyncStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    return-void

    :cond_51
    move v0, v2

    goto :goto_c

    :cond_53
    move v0, v2

    goto :goto_15

    :cond_55
    move v0, v2

    goto :goto_1e

    :cond_57
    move v0, v2

    goto :goto_27

    :cond_59
    move v0, v2

    goto :goto_30

    :cond_5b
    move v0, v2

    goto :goto_39

    :cond_5d
    move v1, v2

    goto :goto_41
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncResult;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/SyncResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0}, Landroid/content/SyncStats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "you are not allowed to clear the ALREADY_IN_PROGRESS SyncStats"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    iput-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    iput-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    iput-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasError()Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public hasHardError()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    goto :goto_13
.end method

.method public hasSoftError()Z
    .registers 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public madeSomeProgress()Z
    .registers 7

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_11

    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_19

    :cond_11
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 7

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_11

    const-string/jumbo v1, "f1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "r1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string/jumbo v1, "X1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3d

    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_3d
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_53

    const-string/jumbo v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_53
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_69

    const-string/jumbo v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_69
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_73

    const-string/jumbo v1, "D1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_73
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_7d

    const-string/jumbo v1, "R1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7d
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_87

    const-string/jumbo v1, "b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_87
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_93

    const-string/jumbo v1, "x1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_93
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_9d

    const-string/jumbo v1, "l1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9d
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_b3

    const-string/jumbo v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_b3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SyncResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v1, " syncAlreadyInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1b
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_2b

    const-string/jumbo v1, " tooManyDeletions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_2b
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_3b

    const-string/jumbo v1, " tooManyRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_3b
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_4b

    const-string/jumbo v1, " databaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->databaseError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_4b
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_5b

    const-string/jumbo v1, " fullSyncRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_5b
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_6b

    const-string/jumbo v1, " partialSyncUnavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_6b
    iget-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-eqz v1, :cond_7b

    const-string/jumbo v1, " moreRecordsToGet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_7b
    iget-wide v2, p0, Landroid/content/SyncResult;->delayUntil:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_8f

    const-string/jumbo v1, " delayUntil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_8f
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_44

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_46

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_48

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-eqz v0, :cond_50

    :goto_36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncStats;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_44
    move v0, v2

    goto :goto_7

    :cond_46
    move v0, v2

    goto :goto_f

    :cond_48
    move v0, v2

    goto :goto_17

    :cond_4a
    move v0, v2

    goto :goto_1f

    :cond_4c
    move v0, v2

    goto :goto_27

    :cond_4e
    move v0, v2

    goto :goto_2f

    :cond_50
    move v1, v2

    goto :goto_36
.end method
