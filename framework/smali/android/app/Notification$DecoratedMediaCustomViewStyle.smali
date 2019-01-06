.class public Landroid/app/Notification$DecoratedMediaCustomViewStyle;
.super Landroid/app/Notification$MediaStyle;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;-><init>()V

    return-void
.end method

.method private buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 5

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p3

    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/RemoteViews;->overrideTextColors(I)V

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setReapplyDisallowed()V

    :cond_18
    return-object p1
.end method

.method private makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_f

    const v1, 0x102033b

    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    :cond_f
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eq p1, v1, :cond_26

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/Notification$MediaStyle;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x1020339

    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    :cond_26
    return-object v2
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .registers 3

    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    :cond_17
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_12
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/Notification$MediaStyle;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020339

    invoke-direct {p0, v0, v2, v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 4

    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    :cond_17
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_12
.end method
