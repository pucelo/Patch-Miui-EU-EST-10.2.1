.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$1;,
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$TriggerContentUri;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final CONSTRAINT_FLAG_BATTERY_NOT_LOW:I = 0x2

.field public static final CONSTRAINT_FLAG_CHARGING:I = 0x1

.field public static final CONSTRAINT_FLAG_DEVICE_IDLE:I = 0x4

.field public static final CONSTRAINT_FLAG_STORAGE_NOT_LOW:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final MIN_BACKOFF_MILLIS:J = 0x2710L

.field private static final MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_METERED:I = 0x4

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final PRIORITY_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final PRIORITY_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final PRIORITY_SYNC_EXPEDITED:I = 0xa

.field public static final PRIORITY_SYNC_INITIALIZATION:I = 0x14

.field public static final PRIORITY_TOP_APP:I = 0x28

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final backoffPolicy:I

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private final constraintFlags:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final flags:I

.field private final flexMillis:J

.field private final hasEarlyConstraint:Z

.field private final hasLateConstraint:Z

.field private final initialBackoffMillis:J

.field private final intervalMillis:J

.field private final isPeriodic:Z

.field private final isPersisted:Z

.field private final jobId:I

.field private final maxExecutionDelayMillis:J

.field private final minLatencyMillis:J

.field private final networkType:I

.field private final priority:I

.field private final service:Landroid/content/ComponentName;

.field private final transientExtras:Landroid/os/Bundle;

.field private final triggerContentMaxDelay:J

.field private final triggerContentUpdateDelay:J

.field private final triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/job/JobInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo$Builder;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get13(Landroid/app/job/JobInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get4(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get19(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get1(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get2(Landroid/app/job/JobInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get14(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get3(Landroid/app/job/JobInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get22(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get22(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get22(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    :cond_50
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get21(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get17(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get16(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get15(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get11(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get12(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get10(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get6(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get9(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get0(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get7(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get8(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get18(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get5(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    :goto_2e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    sget-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b2

    move v0, v1

    :goto_6b
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b4

    move v0, v1

    :goto_74
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b6

    move v0, v1

    :goto_95
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b8

    :goto_9d
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    return-void

    :cond_ac
    iput-object v3, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iput v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto/16 :goto_2e

    :cond_b2
    move v0, v2

    goto :goto_6b

    :cond_b4
    move v0, v2

    goto :goto_74

    :cond_b6
    move v0, v2

    goto :goto_95

    :cond_b8
    move v1, v2

    goto :goto_9d
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final getMinBackoffMillis()J
    .registers 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final getMinFlexMillis()J
    .registers 2

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final getMinPeriodMillis()J
    .registers 2

    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method private static kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .registers 3

    if-eq p0, p1, :cond_9

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x0

    instance-of v1, p1, Landroid/app/job/JobInfo;

    if-nez v1, :cond_6

    return v6

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/job/JobInfo;

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    iget v2, v0, Landroid/app/job/JobInfo;->jobId:I

    if-eq v1, v2, :cond_10

    return v6

    :cond_10
    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    iget-object v2, v0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {v1, v2}, Landroid/app/job/JobInfo;->kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v6

    :cond_1b
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Landroid/app/job/JobInfo;->kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_26

    return v6

    :cond_26
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iget-object v2, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eq v1, v2, :cond_2d

    return v6

    :cond_2d
    iget v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    iget v2, v0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    if-eq v1, v2, :cond_34

    return v6

    :cond_34
    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v6

    :cond_3f
    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    iget v2, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-eq v1, v2, :cond_46

    return v6

    :cond_46
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v2, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v6

    :cond_51
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5a

    return v6

    :cond_5a
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_63

    return v6

    :cond_63
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    iget-boolean v2, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eq v1, v2, :cond_6a

    return v6

    :cond_6a
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    iget-boolean v2, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eq v1, v2, :cond_71

    return v6

    :cond_71
    iget v1, p0, Landroid/app/job/JobInfo;->networkType:I

    iget v2, v0, Landroid/app/job/JobInfo;->networkType:I

    if-eq v1, v2, :cond_78

    return v6

    :cond_78
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_81

    return v6

    :cond_81
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8a

    return v6

    :cond_8a
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    iget-boolean v2, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eq v1, v2, :cond_91

    return v6

    :cond_91
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    iget-boolean v2, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eq v1, v2, :cond_98

    return v6

    :cond_98
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a1

    return v6

    :cond_a1
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->flexMillis:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_aa

    return v6

    :cond_aa
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b3

    return v6

    :cond_b3
    iget v1, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    iget v2, v0, Landroid/app/job/JobInfo;->backoffPolicy:I

    if-eq v1, v2, :cond_ba

    return v6

    :cond_ba
    iget v1, p0, Landroid/app/job/JobInfo;->priority:I

    iget v2, v0, Landroid/app/job/JobInfo;->priority:I

    if-eq v1, v2, :cond_c1

    return v6

    :cond_c1
    iget v1, p0, Landroid/app/job/JobInfo;->flags:I

    iget v2, v0, Landroid/app/job/JobInfo;->flags:I

    if-eq v1, v2, :cond_c8

    return v6

    :cond_c8
    const/4 v1, 0x1

    return v1
.end method

.method public getBackoffPolicy()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public getConstraintFlags()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public getFlexMillis()J
    .registers 11

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x5

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v4, v6, v8

    iget-wide v6, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1e

    :goto_1d
    return-wide v0

    :cond_1e
    move-wide v0, v2

    goto :goto_1d
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public getInitialBackoffMillis()J
    .registers 5

    invoke-static {}, Landroid/app/job/JobInfo;->getMinBackoffMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_c

    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    :cond_c
    return-wide v0
.end method

.method public getIntervalMillis()J
    .registers 5

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_c

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    :cond_c
    return-wide v0
.end method

.method public getMaxExecutionDelayMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    return-wide v0
.end method

.method public getNetworkType()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    return v0
.end method

.method public getService()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public hasEarlyConstraint()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public hasLateConstraint()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_10

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_10
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1e

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_1e
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v1, :cond_2c

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_2c
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    add-int v0, v1, v2

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    if-eqz v1, :cond_40

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_40
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    add-int v0, v1, v2

    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v1, :cond_54

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    :cond_54
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->networkType:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->priority:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    add-int v0, v1, v2

    return v0
.end method

.method public isPeriodic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public isPersisted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public isRequireBatteryNotLow()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isRequireCharging()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isRequireDeviceIdle()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isRequireStorageNotLow()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(job:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v0, :cond_88

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eqz v0, :cond_90

    move v0, v1

    :goto_73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eqz v0, :cond_92

    :goto_7a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_88
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    :cond_8c
    move v0, v2

    goto :goto_4f

    :cond_8e
    move v0, v2

    goto :goto_57

    :cond_90
    move v0, v2

    goto :goto_73

    :cond_92
    move v1, v2

    goto :goto_7a
.end method
