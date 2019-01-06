.class Landroid/util/RecurrenceRule$RecurringIterator;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecurringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/time/ZonedDateTime;",
        "Ljava/time/ZonedDateTime;",
        ">;>;"
    }
.end annotation


# instance fields
.field cycleEnd:Ljava/time/ZonedDateTime;

.field cycleStart:Ljava/time/ZonedDateTime;

.field i:I

.field final synthetic this$0:Landroid/util/RecurrenceRule;


# direct methods
.method public constructor <init>(Landroid/util/RecurrenceRule;)V
    .registers 8

    iput-object p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_40

    iget-object v0, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    :goto_b
    const-string/jumbo v1, "RecurrenceRule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolving using anchor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    :goto_28
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_51

    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    goto :goto_28

    :cond_40
    sget-object v1, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    invoke-static {v1}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iget-object v2, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_b

    :cond_51
    :goto_51
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_69

    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    goto :goto_51

    :cond_69
    return-void
.end method

.method private roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .registers 5

    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_29
    return-object p1
.end method

.method private updateCycle()V
    .registers 4

    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public next()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "RecurrenceRule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cycle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
