.class public Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# static fields
.field private static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field protected mAppNameText:Landroid/widget/TextView;

.field protected mColor:I

.field protected mContentMarginEndInternational:I

.field protected mContentMarginStartInternational:I

.field protected mContentMarginTopInternational:I

.field private mExpandButton:Landroid/widget/ImageView;

.field protected mExpandable:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHeaderTextDivider:Landroid/widget/TextView;

.field private mHeaderTimeAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mHeaderTimeView:Landroid/widget/DateTimeView;

.field private mHeaderXSpaceIcon:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field protected final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLowPriority:Z

.field private mIsMiniView:Z

.field protected mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mTransformLowPriorityTitle:Z

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field protected mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Landroid/widget/DateTimeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeView:Landroid/widget/DateTimeView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    return-void
.end method

.method private addRemainingTransformTypes()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    return-void
.end method

.method private handleHeaderVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->isShowingPublicHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private handleMiniView()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    const v2, 0x10600f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTextDivider:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private handleXSpaceIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isShowingPublicHeader()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingPublic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateCropToPaddingForImageViews()V
    .locals 5

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_0

    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected createDozer(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    return-object v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method protected handleHeaderStyle()V
    .locals 9

    const v8, 0x7f0a009e

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginStartInternational:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/NotificationHeaderView;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setStartMargin(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setEndMargin(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050128

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v2, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldUseAppIcon(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setStartMargin(Landroid/view/View;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setStartMargin(Landroid/view/View;I)V

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeView:Landroid/widget/DateTimeView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeView:Landroid/widget/DateTimeView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/DateTimeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_6
    return-void
.end method

.method protected initResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginTopInternational:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginStartInternational:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginEndInternational:I

    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 8

    const v7, 0x7f0a011f

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->removeTransformedTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onReinflated()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method protected removeTransformedTypes()V
    .locals 0

    return-void
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->initResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findAppNameTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findHeaderTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findHeaderTextDividerView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTextDivider:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10204c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020395

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020456

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTimeView:Landroid/widget/DateTimeView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findNotificationHeaderView(Landroid/view/View;)Landroid/view/NotificationHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalNotificationColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleMiniView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleXSpaceIcon()V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderStyle()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    goto :goto_1
.end method

.method protected setBottomMargin(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v8

    :goto_1
    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldUseAppIcon(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomViewNotification()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    xor-int/lit8 v6, v7, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method protected setEndMargin(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return-void
.end method

.method protected setStartMargin(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected setTopMargin(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandable:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingPublic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v1, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move-object p2, v0

    goto :goto_1
.end method

.method protected updateInvertHelper()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2}, Lcom/android/systemui/ViewInvertHelper;->clearTargets()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
