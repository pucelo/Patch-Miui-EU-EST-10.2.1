.class public final Landroid/service/notification/SnoozeCriterionCompat;
.super Ljava/lang/Object;
.source "SnoozeCriterionCompat.java"


# instance fields
.field private mSnoozeCriterion:Landroid/service/notification/SnoozeCriterion;


# direct methods
.method private constructor <init>(Landroid/service/notification/SnoozeCriterion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/SnoozeCriterionCompat;->mSnoozeCriterion:Landroid/service/notification/SnoozeCriterion;

    return-void
.end method

.method public static getSnoozeCriteria(Landroid/service/notification/NotificationListenerService$Ranking;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$Ranking;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterionCompat;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/SnoozeCriterion;

    new-instance v3, Landroid/service/notification/SnoozeCriterionCompat;

    invoke-direct {v3, v1}, Landroid/service/notification/SnoozeCriterionCompat;-><init>(Landroid/service/notification/SnoozeCriterion;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getConfirmation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterionCompat;->mSnoozeCriterion:Landroid/service/notification/SnoozeCriterion;

    invoke-virtual {v0}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterionCompat;->mSnoozeCriterion:Landroid/service/notification/SnoozeCriterion;

    invoke-virtual {v0}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterionCompat;->mSnoozeCriterion:Landroid/service/notification/SnoozeCriterion;

    invoke-virtual {v0}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
