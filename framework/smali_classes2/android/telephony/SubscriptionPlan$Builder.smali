.class public Landroid/telephony/SubscriptionPlan$Builder;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final plan:Landroid/telephony/SubscriptionPlan;


# direct methods
.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/SubscriptionPlan;

    new-instance v1, Landroid/util/RecurrenceRule;

    invoke-direct {v1, p1, p2, p3}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    return-void
.end method

.method public static createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 5

    invoke-virtual {p1, p0}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isn\'t after start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringDaily(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4

    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4

    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringWeekly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 4

    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/SubscriptionPlan;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    return-object v0
.end method

.method public setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Limit bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gez p3, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Limit behavior must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->-set1(Landroid/telephony/SubscriptionPlan;J)J

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3}, Landroid/telephony/SubscriptionPlan;->-set0(Landroid/telephony/SubscriptionPlan;I)I

    return-object p0
.end method

.method public setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Usage bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    cmp-long v0, p3, v2

    if-gez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Usage time must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->-set2(Landroid/telephony/SubscriptionPlan;J)J

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3, p4}, Landroid/telephony/SubscriptionPlan;->-set3(Landroid/telephony/SubscriptionPlan;J)J

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-set4(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-set5(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method
