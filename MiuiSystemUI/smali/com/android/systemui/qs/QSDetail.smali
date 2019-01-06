.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$1;,
        Lcom/android/systemui/qs/QSDetail$2;,
        Lcom/android/systemui/qs/QSDetail$3;,
        Lcom/android/systemui/qs/QSDetail$QSPanelCallback;
    }
.end annotation


# instance fields
.field private mAnimatingOpen:Z

.field private mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mContainer:Landroid/widget/LinearLayout;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyExpanded:Z

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mNQSContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpenX:I

.field private mOpenY:I

.field protected mQsDetailHeader:Landroid/view/View;

.field protected mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$QSPanelCallback;

.field private mScanState:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mTopDivider:Landroid/view/View;

.field private mTriggeredExpand:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$QSPanelCallback;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private checkPendingAnimations()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleScanStateChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    return-void
.end method

.method private updateBackground()V
    .locals 4

    const v2, 0x7f060107

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    const v1, 0x7f060114

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f080300

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f080303

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private updateDetailText()V
    .locals 3

    const v2, 0x7f070338

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    const v1, 0x7f07033f

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f1104f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f110502

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method protected animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    :goto_1
    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    invoke-virtual {v1, p1, p2, v3, p4}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mNQSContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->onQsDetailShowing(ZZZ)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->setAlpha(F)V

    invoke-interface {p4, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSDetail;->setClickable(Z)V

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    if-eqz p4, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5, v8}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/CommandQueue;->animateExpandSettingsPanel(Ljava/lang/String;)V

    :goto_1
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v5, :cond_4

    move v8, v6

    :goto_3
    if-eqz p1, :cond_5

    move v5, v6

    :goto_4
    if-eq v8, v5, :cond_6

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-ne v5, p1, :cond_7

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5, v8}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_2

    :cond_4
    move v8, v7

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v8, v5, v9}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Must return detail view"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const v8, 0x7f1100b4

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    :goto_6
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSDetail;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, p2, p3, v4, v1}, Lcom/android/systemui/qs/QSDetail;->animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    :cond_a
    iput-boolean v6, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    iput-object v9, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$QSPanelCallback;

    invoke-interface {v5, v7}, Lcom/android/systemui/qs/QSDetail$QSPanelCallback;->onScanStateChanged(Z)V

    goto :goto_6
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0a021d

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02df

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mTopDivider:Landroid/view/View;

    const v1, 0x7f0a021e

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    new-instance v1, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setNQSContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mNQSContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$QSPanelCallback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->setQSDetailCallback(Lcom/android/systemui/qs/QSDetail$QSPanelCallback;)V

    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/android/systemui/qs/QSDetail$6;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/QSDetail$6;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateResources(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateBackground()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
