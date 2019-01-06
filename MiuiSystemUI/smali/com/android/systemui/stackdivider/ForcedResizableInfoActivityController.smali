.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerDraging:Z

.field private mFullscreenTopPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackagesShownInSession:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mFullscreenTopPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mFullscreenTopPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityDismissingDockedStack()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityForcedResizable(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showToast(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    return-void
.end method

.method private activityDismissingDockedStack()V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private activityForcedResizable(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->debounce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->postTimeout()V

    return-void
.end method

.method private debounce(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private postTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPending()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/ActivityOptionsCompat;->setLaunchTaskId(Landroid/app/ActivityOptions;I)V

    invoke-static {v3, v7, v7}, Landroid/app/ActivityOptionsCompat;->setTaskOverlay(Landroid/app/ActivityOptions;ZZ)V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v6, v6}, Landroid/app/ActivityOptionsCompat;->setLaunchStackId(Landroid/app/ActivityOptions;III)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ForcedResizableInfoActivityController"

    const-string/jumbo v5, "Start ForcedResizableInfoActivity error."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public notifyDockedStackExistsChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StartedDragingEvent;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method
