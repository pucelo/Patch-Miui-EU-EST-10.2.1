.class public Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActionList:Landroid/view/ViewGroup;

.field private mActionsContainer:Landroid/view/View;

.field private mChronometerStub:Landroid/view/ViewStub;

.field private mContentHeight:I

.field protected mLine1Container:Landroid/widget/LinearLayout;

.field protected mMainColumn:Landroid/view/View;

.field private mMinHeightHint:I

.field private mMiuiAction:Landroid/widget/TextView;

.field protected mNotificationMainContainer:Landroid/view/View;

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarPaddingLine1:I

.field private mProgressBarPaddingLine2:I

.field protected mText:Landroid/widget/TextView;

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field protected mTime:Landroid/widget/DateTimeView;

.field protected mTitle:Landroid/widget/TextView;

.field protected mUpArrow:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/ProgressBar;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    return-void
.end method

.method private fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$4;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/ProgressBar;)V

    const/4 v6, 0x0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private handleActions()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020176

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    const v6, 0x7f0600c7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    invoke-static {v0}, Lcom/android/internal/widget/NotificationActionCompat;->setEmphasizedNotificationButtonBgIfNeed(Landroid/view/View;)V

    invoke-static {v0}, Lcom/android/internal/widget/NotificationActionCompat;->removeCompoundDrawableIfNeed(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v1, v3

    new-instance v4, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;I)V

    invoke-static {v2, v4}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;->hookView(Landroid/view/View;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleChronometerAndTime(Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationCompat;->showsChronometer(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mChronometerStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mChronometerStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    const v3, 0x10201fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iget-wide v2, v1, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.chronometerCountDown"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/ChronometerCompat;->setCountDown(Landroid/widget/Chronometer;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v1}, Landroid/app/NotificationCompat;->showsTime(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    invoke-virtual {v2, v3}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    goto :goto_0
.end method

.method private handleMiuiAction()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v1, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v0, v1, v3

    iget-object v2, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    invoke-static {v2, v3}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;->hookView(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private handleOneLineStyle()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private handleProgressBar()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/Constants;->FORCE_SHOW_PROGRESS_BAR_WITH_SUBTEXT:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    const-string/jumbo v5, "android.progressMax"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "android.progress"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "android.progressIndeterminate"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->inflateProgressView()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void

    :cond_5
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method private handleTextSenderStyle()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private handleTextWithProgressBar()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.subText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine2:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine1:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private handleWorkProfileImage()V
    .locals 4

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private inflateProgressView()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    :cond_1
    return-void
.end method

.method private static interpolateColor(IIF)I
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private isBigNormalNotification()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020426

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "big"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalNotification()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020426

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "base"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProgressBarVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setPictureDark(ZZJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    :cond_0
    return-void
.end method

.method private setProgressBarDark(ZZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;Z)V

    goto :goto_0
.end method

.method private updateActionOffset()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;F)V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mColor:I

    const/4 v2, -0x1

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v0

    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUpArrowVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mExpandable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderStyle()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v4, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x800035

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const v5, 0x7f0702c4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateUpArrowVisibility()V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isNormalNotification()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isBigNormalNotification()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    :cond_3
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    iget v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginStartInternational:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setStartMargin(Landroid/view/View;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    return-void
.end method

.method protected handleLargeIcon()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyRightIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected handleLine1()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected handleMainContainerMargin()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setBottomMargin(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setBottomMargin(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected handleText()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected handleTitle()V
    .locals 0

    return-void
.end method

.method public initHandle()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateUpArrowVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMainContainerMargin()V

    :cond_0
    return-void
.end method

.method protected isOneLine()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected removeTransformedTypes()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->removeTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->removeTransformedView(I)V

    :cond_0
    return-void
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const v4, 0x7f0a011f

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10202e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020438

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x102049f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020453

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020454

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine1:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine2:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.progress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x102018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x102018d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020337

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x102033b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020345

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020338

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mChronometerStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020176

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLine1()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleTitle()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleText()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleProgressBar()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleTextWithProgressBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLargeIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMainContainerMargin()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleChronometerAndTime(Landroid/service/notification/StatusBarNotification;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleActions()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMiuiAction()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleTextSenderStyle()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleOneLineStyle()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleWorkProfileImage()V

    return-void

    :cond_4
    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method

.method public setContentHeight(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setContentHeight(II)V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateActionOffset()V

    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setDark(ZZJ)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setPictureDark(ZZJ)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setProgressBarDark(ZZJ)V

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setIsChildInGroup(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRemoteInputVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setVisible(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleChronometerAndTime(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateUpArrowVisibility()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method protected updateInvertHelper()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_3
    return-void
.end method
