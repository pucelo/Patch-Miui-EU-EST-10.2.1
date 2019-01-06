.class public Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationInboxTemplateViewWrapper.java"


# instance fields
.field private mInboxText0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private resolveViews()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102033b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10202a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleHeaderStyle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method protected isOneLine()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

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
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->resolveViews()V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
