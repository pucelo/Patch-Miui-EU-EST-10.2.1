.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRank:I

.field private mShowBadge:Z

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:I

.field private mVisibilityOverride:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "NONE"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "MIN"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "LOW"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "HIGH"

    return-object v0

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x3e8 -> :sswitch_23
        0x0 -> :sswitch_27
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_37
        0x5 -> :sswitch_37
    .end sparse-switch
.end method

.method private populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 v0, 0x2

    if-ge p6, v0, :cond_1f

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public canShowBadge()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return v0
.end method

.method public getAdditionalPeople()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getImportance()I
    .registers 2

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .registers 2

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getSnoozeCriteria()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuppressedVisualEffects()I
    .registers 2

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getVisibilityOverride()I
    .registers 2

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method
