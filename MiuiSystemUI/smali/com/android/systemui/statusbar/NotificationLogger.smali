.class public Lcom/android/systemui/statusbar/NotificationLogger;
.super Ljava/lang/Object;
.source "NotificationLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationLogger$1;,
        Lcom/android/systemui/statusbar/NotificationLogger$2;,
        Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;
    }
.end annotation


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mLastVisibilityReportUptimeMs:J

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

.field private mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected final mVisibilityReporter:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationLogger;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationLogger;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationLogger;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/NotificationLogger;Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationLogger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLogger$1;-><init>(Lcom/android/systemui/statusbar/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationLogger$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLogger$2;-><init>(Lcom/android/systemui/statusbar/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)[",
            "Lcom/android/internal/statusbar/NotificationVisibility;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v0, v4, [Lcom/android/internal/statusbar/NotificationVisibility;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    aput-object v4, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationLogger$3;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationLogger$3;-><init>(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "NotificationLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationVisibilityChanged() no entry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-class v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    return-void
.end method

.method private recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public setUp(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public startNotificationLogging()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    return-void
.end method

.method public stopNotificationLogging()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V

    return-void
.end method
