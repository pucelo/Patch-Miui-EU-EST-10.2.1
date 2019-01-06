.class public Landroid/util/RecurrenceRule;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/RecurrenceRule$1;,
        Landroid/util/RecurrenceRule$NonrecurringIterator;,
        Landroid/util/RecurrenceRule$RecurringIterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/util/RecurrenceRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "RecurrenceRule"

.field private static final VERSION_INIT:I

.field public static sClock:Ljava/time/Clock;


# instance fields
.field public final end:Ljava/time/ZonedDateTime;

.field public final period:Ljava/time/Period;

.field public final start:Ljava/time/ZonedDateTime;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    new-instance v0, Landroid/util/RecurrenceRule$1;

    invoke-direct {v0}, Landroid/util/RecurrenceRule$1;-><init>()V

    sput-object v0, Landroid/util/RecurrenceRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/RecurrenceRule;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/RecurrenceRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :goto_a
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_24
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    goto :goto_a

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_24
    .end packed-switch
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iput-object p2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    iput-object p3, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    return-void
.end method

.method public static buildNever()Landroid/util/RecurrenceRule;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Landroid/util/RecurrenceRule;

    invoke-direct {v0, v1, v1, v1}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x1

    sget-object v2, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    invoke-static {v2}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v2

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v2, v3, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    new-instance v2, Landroid/util/RecurrenceRule;

    invoke-static {v6}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v2
.end method

.method public static convertPeriod(Ljava/time/Period;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/time/Period;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public static convertPeriod(Ljava/lang/String;)Ljava/time/Period;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public static convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public static convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :cond_7
    return-object v0
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

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/util/RecurrenceRule$RecurringIterator;

    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$RecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    return-object v0

    :cond_a
    new-instance v0, Landroid/util/RecurrenceRule$NonrecurringIterator;

    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$NonrecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/util/RecurrenceRule;

    if-eqz v2, :cond_25

    move-object v0, p1

    check-cast v0, Landroid/util/RecurrenceRule;

    iget-object v2, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget-object v2, v0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_24
    return v1

    :cond_25
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMonthly()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-virtual {v2}, Ljava/time/Period;->getYears()I

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-virtual {v2}, Ljava/time/Period;->getMonths()I

    move-result v2

    if-ne v2, v0, :cond_25

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-virtual {v2}, Ljava/time/Period;->getDays()I

    move-result v2

    if-nez v2, :cond_23

    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22

    :cond_25
    move v0, v1

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RecurrenceRule{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    return-void
.end method
