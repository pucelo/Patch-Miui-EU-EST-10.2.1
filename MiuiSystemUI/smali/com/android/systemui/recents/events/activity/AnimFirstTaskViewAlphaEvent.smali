.class public Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "AnimFirstTaskViewAlphaEvent.java"


# instance fields
.field public final mAlpha:F

.field public final mKeepAlphaWhenRelayout:Z

.field public final mWithAnim:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    return-void
.end method

.method public constructor <init>(FZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mWithAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mKeepAlphaWhenRelayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
