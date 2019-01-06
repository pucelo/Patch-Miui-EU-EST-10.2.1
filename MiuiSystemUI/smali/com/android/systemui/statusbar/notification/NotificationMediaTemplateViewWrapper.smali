.class public Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMediaTemplateViewWrapper.java"


# instance fields
.field private mActionsView:Landroid/view/ViewGroup;

.field private mAppNameView:Landroid/widget/TextView;

.field private mMediaNotificationActionSize:I

.field private mMediaNotificationLargeIconRadius:I

.field private mNotificationMediaActionColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    return-void
.end method

.method private isNormalMediaView()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "media"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

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

.method private updateViews()V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mNotificationMediaActionColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->isNormalMediaView()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationActionSize:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationActionSize:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->isNormalMediaView()Z

    move-result v6

    xor-int/lit8 v5, v6, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    if-eq v5, v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected handleLargeIcon()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLargeIcon()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationLargeIconRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method protected initResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->initResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationLargeIconRadius:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationActionSize:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mNotificationMediaActionColor:I

    return-void
.end method

.method public isDimmable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isOneLine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10202fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10202fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mAppNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mAppNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->updateViews()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
