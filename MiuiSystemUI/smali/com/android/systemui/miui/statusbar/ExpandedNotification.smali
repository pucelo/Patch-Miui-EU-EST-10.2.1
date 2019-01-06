.class public Lcom/android/systemui/miui/statusbar/ExpandedNotification;
.super Landroid/service/notification/AbstractStatusBarNotification;
.source "ExpandedNotification.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mBelowThreshold:Z

.field private mHasShownAfterUnlock:Z

.field private mImportance:I

.field private mIsFold:Z

.field private mLocalScore:D

.field private mNewlyNotification:Z

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

.field private mPushScore:D

.field private mRowIcon:Landroid/graphics/drawable/Drawable;

.field private mScoreForRank:D

.field private mShowSum:I

.field private mTargetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/service/notification/AbstractStatusBarNotification;-><init>(Landroid/service/notification/StatusBarNotification;)V

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;-><init>(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateScore()V

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateFold()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setPushScore(D)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setLocalScore(D)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setFold(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getScoreInfo(Landroid/app/Notification;)Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getServerScore()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setPushScore(D)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getScore(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setLocalScore(D)V

    goto :goto_0
.end method

.method private calculateFold()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/NotificationFilterHelper;->canNotificationSetImportance(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isPkgInFoldWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mShowSum:I

    sget v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->UNFLOD_LIMIT:I

    if-gt v1, v2, :cond_5

    return v0

    :cond_3
    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    if-lez v1, :cond_4

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v0

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mBelowThreshold:Z

    return v0
.end method

.method private calculateScore()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getScoreInfo(Landroid/app/Notification;)Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getServerScore()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getThreshold()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getServerScore()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getThreshold()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mBelowThreshold:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->generateScoreForRank()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isXmsf(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setNoScore()V

    :cond_2
    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->isLocalModelAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getScore(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getThreshold()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mBelowThreshold:Z

    goto :goto_0
.end method

.method private generateScoreForRank()V
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mScoreForRank:D

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getScoreForRank(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mScoreForRank:D

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getHybridAppName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppName:Ljava/lang/String;

    return-object v1
.end method

.method public getAppUid()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppUid:I

    return v0
.end method

.method public getBasePkg()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/service/notification/AbstractStatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoldPackageName()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImportance()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    return v0
.end method

.method public getLocalScore()D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    return-wide v0
.end method

.method public getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/service/notification/AbstractStatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushScore()D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    return-wide v0
.end method

.method public getRowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mRowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    return v0
.end method

.method public getShowSum()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mShowSum:I

    return v0
.end method

.method public getTargetSdk()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mTargetSdk:I

    return v0
.end method

.method public hasShownAfterUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mHasShownAfterUnlock:Z

    return v0
.end method

.method public isFold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    return v0
.end method

.method public isNewlyNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNewlyNotification:Z

    return v0
.end method

.method public isShowMiuiAction()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.showAction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubstituteNotification()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setAppUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppUid:I

    return-void
.end method

.method public setHasShownAfterUnlock(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mHasShownAfterUnlock:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setImportance(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setImportance(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setFold(Z)V

    return-void
.end method

.method public setNewlyNotification(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNewlyNotification:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNewlyNotification:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setNewly(Z)V

    return-void
.end method

.method public setRowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mRowIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShowSum(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mShowSum:I

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setFold(Z)V

    return-void
.end method

.method public setTargetSdk(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mTargetSdk:I

    return-void
.end method
