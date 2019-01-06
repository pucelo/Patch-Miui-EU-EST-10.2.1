.class Landroid/util/RecurrenceRule$NonrecurringIterator;
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
    name = "NonrecurringIterator"
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
.field hasNext:Z

.field final synthetic this$0:Landroid/util/RecurrenceRule;


# direct methods
.method public constructor <init>(Landroid/util/RecurrenceRule;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_f

    iget-object v1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->hasNext:Z

    return v0
.end method

.method public next()Landroid/util/Pair;
    .registers 4
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

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->hasNext:Z

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/util/RecurrenceRule$NonrecurringIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
