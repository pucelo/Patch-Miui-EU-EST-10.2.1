.class public Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMessagingTemplateViewWrapper.java"


# instance fields
.field private mContractedMessage:Landroid/view/View;

.field private mHistoricMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInboxText0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    return-void
.end method

.method private handleContentView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_CONTRACTED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_EXPANDED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-ne v2, v3, :cond_3

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_CONTRACTED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resolveViews()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findNotificationMessagingView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v4}, Lcom/android/internal/widget/MessagingLinearLayoutCompat;->getContractedChildId(Lcom/android/internal/widget/MessagingLinearLayout;)I

    move-result v6

    if-ne v5, v6, :cond_2

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    invoke-static {v4}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4, v7}, Lcom/android/internal/widget/MessagingLinearLayoutCompat;->setNumIndentLines(Lcom/android/internal/widget/MessagingLinearLayout;I)V

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findInboxText0View(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleHeaderStyle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method protected handleLine1()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLine1()V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected handleText()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleText()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "android.text"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->handleContentView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected handleTitle()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleTitle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "android.title"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->handleContentView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected isOneLine()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->resolveViews()V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mShowingType:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_CONTRACTED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
