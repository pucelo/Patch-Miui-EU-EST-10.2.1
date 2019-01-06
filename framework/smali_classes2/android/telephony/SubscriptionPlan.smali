.class public final Landroid/telephony/SubscriptionPlan;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionPlan$1;,
        Landroid/telephony/SubscriptionPlan$Builder;
    }
.end annotation


# static fields
.field public static final BYTES_UNKNOWN:J = -0x1L

.field public static final BYTES_UNLIMITED:J = 0x7fffffffffffffffL

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIMIT_BEHAVIOR_BILLED:I = 0x1

.field public static final LIMIT_BEHAVIOR_DISABLED:I = 0x0

.field public static final LIMIT_BEHAVIOR_THROTTLED:I = 0x2

.field public static final LIMIT_BEHAVIOR_UNKNOWN:I = -0x1

.field public static final TIME_UNKNOWN:J = -0x1L


# instance fields
.field private final cycleRule:Landroid/util/RecurrenceRule;

.field private dataLimitBehavior:I

.field private dataLimitBytes:J

.field private dataUsageBytes:J

.field private dataUsageTime:J

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -set0(Landroid/telephony/SubscriptionPlan;I)I
    .registers 2

    iput p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return p1
.end method

.method static synthetic -set1(Landroid/telephony/SubscriptionPlan;J)J
    .registers 4

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-wide p1
.end method

.method static synthetic -set2(Landroid/telephony/SubscriptionPlan;J)J
    .registers 4

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-wide p1
.end method

.method static synthetic -set3(Landroid/telephony/SubscriptionPlan;J)J
    .registers 4

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set5(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/SubscriptionPlan$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionPlan$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    iput-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    iput-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/SubscriptionPlan;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/util/RecurrenceRule;)V
    .registers 6

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    iput-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    iput-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;)V

    return-void
.end method


# virtual methods
.method public cycleIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCycleRule()Landroid/util/RecurrenceRule;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    return-object v0
.end method

.method public getDataLimitBehavior()I
    .registers 2

    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return v0
.end method

.method public getDataLimitBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-wide v0
.end method

.method public getDataUsageBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-wide v0
.end method

.method public getDataUsageTime()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SubscriptionPlan{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "cycleRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dataLimitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dataLimitBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dataUsageBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dataUsageTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
