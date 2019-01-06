.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$1;,
        Lcom/android/systemui/statusbar/NotificationData$Entry;,
        Lcom/android/systemui/statusbar/NotificationData$Environment;
    }
.end annotation


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mClearableCount:I

.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

.field private mFoldCount:I

.field private final mFoldEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mLastRankingMapUpdatedTime:J

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldEntries:Ljava/util/ArrayList;

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private checkNotificationLimit(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/statusbar/NotificationData;->shouldRemove(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v6

    const/16 v5, 0xa

    if-lt v1, v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private checkPkgBelowFoldLimit(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getFoldPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->containsPkg(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setNewlyNotification(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->addShow(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getTotalShow()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setShowSum(I)V

    return-void
.end method

.method private static checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pushScore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPushScore()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " localscore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getLocalScore()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " importance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " showtimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getShowSum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isNewlyNotification()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hasShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->hasShownAfterUnlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isEnableFloat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v2}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isEnableKeyguard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v2}, Landroid/app/MiuiNotification;->isEnableKeyguard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " messageCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v2}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " targetPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v2}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private filterFold(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldCount:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private getImportance(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)I
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerServiceCompat;->getImportance(Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p2}, Landroid/service/notification/NotificationListenerServiceCompat;->getImportance(Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, -0x3e8

    return v0
.end method

.method private shouldRemove(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 8

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v0

    iget-object v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    return-object p2

    :cond_3
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    iget-object v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_4

    return-object p2

    :cond_4
    if-eqz v3, :cond_5

    return-object p1

    :cond_5
    iget-wide v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->firstWhen:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->firstWhen:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    :goto_0
    return-object p1

    :cond_6
    move-object p1, p2

    goto :goto_0
.end method

.method static showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "android"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.permission.NOTIFICATION_DURING_SETUP"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mLastRankingMapUpdatedTime:J

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/service/notification/StatusBarNotificationCompat;->getOverrideGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v5, v4}, Landroid/service/notification/StatusBarNotificationCompat;->setOverrideGroupKey(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->getChannel(Ljava/lang/String;)Landroid/app/NotificationChannelCompat;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannelCompat;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v6

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->checkPkgBelowFoldLimit(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->checkNotificationLimit(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->updateLastNotificationAddedTime()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public changeImportance(Ljava/lang/String;I)V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getFoldPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3, p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setImportance(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "active notifications: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " threshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getThreshold()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inactive notifications: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public filterAndSort()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldCount:I

    iput v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mClearableCount:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationData;->filterFold(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mClearableCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mClearableCount:I

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    monitor-exit v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannel(Ljava/lang/String;)Landroid/app/NotificationChannelCompat;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-static {v0}, Landroid/app/NotificationChannelCompat;->getChannel(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/app/NotificationChannelCompat;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getClearableNotificationsCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mClearableCount:I

    return v0
.end method

.method public getFoldCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldCount:I

    return v0
.end method

.method public getFoldEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFoldEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v0

    return v0
.end method

.method public getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$Ranking;)I
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/NotificationListenerServiceCompat;->getImportance(Landroid/app/Notification;)I

    move-result v1

    return v1
.end method

.method public getNeedsUpdateBadgeNumNotifications()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v7

    return-object v1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerServiceCompat;->getOverrideGroupKey(Landroid/service/notification/NotificationListenerService$Ranking;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getPkgNotifications(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getRank(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterionCompat;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-static {v0}, Landroid/service/notification/SnoozeCriterionCompat;->getSnoozeCriteria(Landroid/service/notification/NotificationListenerService$Ranking;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v10, v8, v1}, Lcom/android/internal/statusbar/NotificationVisibilityCompat;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v7

    const/4 v6, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/statusbar/StatusBarServiceCompat;->onNotificationClear(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-nez v1, :cond_0

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNotificationGroup(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->canRemove(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationData$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/NotificationData$2;-><init>(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-object v1
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public shouldFilterOut(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isSecurelyLocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return v2

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-interface {v0, p1}, Lcom/android/systemui/ForegroundServiceController;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/ForegroundServiceController;->isDungeonNeededForUser(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method public shouldSuppressScreenOff(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerServiceCompat;->shouldSuppressScreenOff(Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSuppressScreenOn(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerServiceCompat;->shouldSuppressScreenOn(Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public updateRankingDelayed(Landroid/service/notification/NotificationListenerService$RankingMap;J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mLastRankingMapUpdatedTime:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "NotificationData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drop deprecated ranking update message, messageReceiveTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mLastRankingMapUpdatedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mLastRankingMapUpdatedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const/4 v0, 0x1

    return v0
.end method
