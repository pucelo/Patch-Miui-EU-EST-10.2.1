.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$1;,
        Lcom/android/systemui/qs/customize/QSCustomizer$2;,
        Lcom/android/systemui/qs/customize/QSCustomizer$3;,
        Lcom/android/systemui/qs/customize/QSCustomizer$4;,
        Lcom/android/systemui/qs/customize/QSCustomizer$QSPanelCallback;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCount:I

.field private mCustomizing:Z

.field protected mDoneButton:Landroid/widget/TextView;

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mHeader:Landroid/widget/RelativeLayout;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field protected mQsPanelCallback:Lcom/android/systemui/qs/customize/QSCustomizer$QSPanelCallback;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mResetButton:Landroid/widget/TextView;

.field private mShownRequested:Z

.field private mSpanCount:I

.field private mSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubTitle:Landroid/widget/TextView;

.field private mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field protected mTitle:Landroid/widget/TextView;

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/QSDetailClipper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/customize/QSCustomizer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/customize/QSCustomizer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mShownRequested:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/customize/QSCustomizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/customize/QSCustomizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->handleShowAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->releaseTiles()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f1201e4

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpecs:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsPanelCallback:Lcom/android/systemui/qs/customize/QSCustomizer$QSPanelCallback;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v2, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2
	
	invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getToggleColumns()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00b9

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0a0096

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;ILandroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    new-instance v2, Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateLayout()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->setMoveDuration(J)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const v2, 0x102001a

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    const v3, 0x7f11055b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1020019

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v3, 0x7f1104f4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$6;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0105

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHeader:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a02d6

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a02b3

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method private getQuickSettingsColumns(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_settings_layout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private handleShowAnimation()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mShownRequested:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setAlpha(F)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->onQsDetailShowing(ZZZ)V

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mShownRequested:Z

    :cond_0
    return-void
.end method

.method private queryTiles()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private releaseTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->releaseTiles()V

    return-void
.end method

.method private reset()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f110520

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->getCurrentSpecs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCount:I

    if-eq v2, v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackQSTilesCount(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpecs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackQSTilesOrderChange(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setCustomizing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return-void
.end method

.method private setTileSpecs()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCount:I

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    const-string/jumbo v4, "edit"

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpecs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateBackground()V
    .locals 4

    const v3, 0x7f060107

    const v2, 0x7f060102

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSubTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    const v1, 0x7f080300

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v1, 0x7f080303

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private updateCustomizerText()V
    .locals 3

    const v2, 0x7f070338

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070331

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSubTitle:Landroid/widget/TextView;

    const v1, 0x7f07032e

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1104bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSubTitle:Landroid/widget/TextView;

    const v1, 0x7f110232

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/TextView;

    const v1, 0x1040575

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v1, 0x7f1104f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateHeaderAndColumns()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2
	
	invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getToggleColumns()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->getQuickSettingsColumns(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHeader:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->setSpanCount(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHeader:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public isCustomizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method public onTileChanged(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onTileChanged(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V

    return-void
.end method

.method public onTilesChanged(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onTilesChanged(Ljava/util/List;Ljava/util/Map;)V

    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizer$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$7;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsPanelCallback:Lcom/android/systemui/qs/customize/QSCustomizer$QSPanelCallback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->setQSCustomizerCallback(Lcom/android/systemui/qs/customize/QSCustomizer$QSPanelCallback;)V

    return-void
.end method

.method public updateResources(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateHeaderAndColumns()V

	invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getToggleColumns()I

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateCustomizerText()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateBackground()V

    :cond_0
    return-void
.end method

.method public updateToggleColumns()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHeader:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getToggleColumns()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpanCount:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setSpanCount(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHeader:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private getToggleColumns()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "number_toggles_columns_expanded"

    const/4 p0, 0x4

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

