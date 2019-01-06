.class public Lcom/android/systemui/statusbar/NotificationMenuRow;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;,
        Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAnimating:Z

.field private mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

.field private mContext:Landroid/content/Context;

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mHandler:Landroid/os/Handler;

.field private mHorizSpaceForIcon:F

.field private mIconLocation:[I

.field private mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mIsFoldInFilter:Z

.field private mIsUserFold:Z

.field private mMenuContainer:Landroid/widget/FrameLayout;

.field private mMenuFadedIn:Z

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private mMenuSnappedTo:Z

.field private mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mPrevX:F

.field private mShouldShowMenu:Z

.field private mSnapping:Z

.field private mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mTranslation:F

.field private mVertSpaceForIcons:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationMenuRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserFold:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    return-void
.end method

.method private addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static createFilterItem(Landroid/content/Context;Z)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0094

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationFilter;

    const v3, 0x7f11045a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    if-eqz p1, :cond_0

    const v3, 0x7f0801bd

    :goto_0
    invoke-direct {v4, p0, v1, v0, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    return-object v4

    :cond_0
    const v3, 0x7f080100

    goto :goto_0
.end method

.method public static createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11045d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0098

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationInfo;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    const v4, 0x7f0801c1

    invoke-direct {v0, p0, v2, v1, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    return-object v0
.end method

.method private createMenuViews(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const v4, 0x7f0702ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v0, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsFoldInFilter:Z

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsFoldInFilter:Z

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createFilterItem(Landroid/content/Context;Z)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserFold:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationMenuRow;->resetState(Z)V

    :goto_4
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v5

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto :goto_4
.end method

.method public static createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d009c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationSnooze;

    const v4, 0x7f110460

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    const v4, 0x7f0801d8

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method private dismiss(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->dismiss(Landroid/view/View;F)V

    return-void
.end method

.method private fadeInMenu(F)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow$1;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;FZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/NotificationMenuRow$2;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpaceForMenu()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    :goto_0
    const/4 v14, 0x1

    return v14

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v14}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->getMinDismissVelocity()F

    move-result v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_3

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->swipedFarEnough(FF)Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v14

    if-nez v14, :cond_5

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    cmpl-double v14, v12, v14

    if-ltz v14, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->updateFilterItem()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v14

    neg-float v8, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_CLEAR_NOTI:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v14}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    :goto_3
    const/4 v14, 0x1

    return v14

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const v15, 0x3e4ccccd    # 0.2f

    mul-float v7, v14, v15

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v14

    sub-float v10, v14, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    neg-float v15, v10

    cmpg-float v14, v14, v15

    if-gez v14, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    :goto_5
    const/4 v14, 0x1

    return v14

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->swipedEnoughToShowMenu()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v5, :cond_c

    if-nez v9, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto :goto_5

    :cond_d
    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto :goto_5
.end method

.method private isTowardsMenu(F)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetState(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuReset(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setMenuAlpha(F)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->updateFilterItem()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setMenuLocation()V
    .locals 8

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float v3, v5, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    invoke-virtual {v4, v3}, Landroid/view/View;->setX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showMenu(Landroid/view/View;FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuShown(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snap(Landroid/view/View;FF)V

    return-void
.end method

.method private snapBack(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snap(Landroid/view/View;FF)V

    return-void
.end method

.method private swipedEnoughToShowMenu()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v1, 0x3e800000    # 0.25f

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    mul-float v0, v3, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v3, v4, v4}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->swipedFarEnough(FF)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    neg-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const v1, 0x3e19999a    # 0.15f

    goto :goto_0
.end method

.method private updateFilterItem()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserFold:Z

    if-eq v2, v3, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserFold:Z

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    :cond_4
    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsFoldInFilter:Z

    if-ne v3, v1, :cond_6

    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsFoldInFilter:Z

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    const v5, 0x7f0801bd

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->setIcon(Landroid/content/Context;I)V

    :goto_1
    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFilterItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    const v5, 0x7f080100

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->setIcon(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method public createMenu(Landroid/view/ViewGroup;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createMenuViews(Z)V

    return-void
.end method

.method public getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object v0
.end method

.method public getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isMenuVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int v3, v5, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    add-int v4, v5, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v6, v7, v3, v4, v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onExpansionChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    return-void
.end method

.method public onHeightUpdate()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExtraTopPadding()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    :cond_2
    int-to-float v1, v1

    add-float v0, v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public onLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeListener()V

    return-void
.end method

.method public onNotificationUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createMenuViews(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    sub-float v1, v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTranslationUpdate(F)V
    .locals 10

    const/4 v9, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/graphics/Rect;

    cmpg-float v3, p1, v9

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v3, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v2, v3, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v3, v0, v9

    if-nez v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    return-void

    :cond_3
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    sub-float v3, v0, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v3

    goto :goto_1
.end method

.method public resetMenu()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->resetState(Z)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    const v6, 0x7f110459

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    return-void
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSwipeActionHelper(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void
.end method

.method public useDefaultMenuItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
