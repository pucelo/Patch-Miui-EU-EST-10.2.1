.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private mClicked:Z

.field private mCollapsedView:Z

.field private final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setImportantForAccessibility(I)V

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setPadding(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipToPadding(Z)V

    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public getDetailY()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object v0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    const/4 v2, 0x0

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/systemui/plugins/qs/QSIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v1, v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_2

    const v2, 0x7f110637

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    goto :goto_0

    :cond_2
    const v2, 0x7f110636

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_3

    const v2, 0x7f110637

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    goto :goto_0

    :cond_3
    const v2, 0x7f110636

    goto :goto_1
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTileView;->performClick()Z

    move-result v0

    return v0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method
