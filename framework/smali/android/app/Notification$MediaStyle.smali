.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;
    .registers 11

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v1, 0x1020176

    iget-object v5, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_47

    const/4 v7, 0x1

    :goto_a
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const v6, 0x109008c

    invoke-direct {v0, v5, v6}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;)Z

    move-result v5

    if-nez v5, :cond_33

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)Z

    move-result v5

    if-eqz v5, :cond_49

    :cond_33
    move v4, p2

    :goto_34
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    if-nez v7, :cond_41

    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_41
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-object v0

    :cond_47
    const/4 v7, 0x0

    goto :goto_a

    :cond_49
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_34
.end method

.method private getPrimaryHighlightColor()I
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-wrap14(Landroid/app/Notification$Builder;)I

    move-result v0

    return v0
.end method

.method private handleImage(Landroid/widget/RemoteViews;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x10202e0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    const v0, 0x1020438

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    :cond_19
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .registers 11

    const/4 v9, 0x0

    const v8, 0x10202fb

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v5, :cond_28

    const/4 v1, 0x0

    :goto_19
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v5

    if-nez v5, :cond_31

    if-gt v0, v1, :cond_31

    return-object v9

    :cond_28
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v5, v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_19

    :cond_31
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v6, 0x109009e

    invoke-static {v5, v6, v7}, Landroid/app/Notification$Builder;->-wrap4(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v2

    if-lez v0, :cond_5c

    invoke-virtual {v2, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v0, :cond_5c

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$Action;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->getPrimaryHighlightColor()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_5c
    invoke-direct {p0, v2}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    return-object v2
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .registers 13

    const v9, 0x10202fb

    const/4 v11, 0x0

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x10900a3

    invoke-static {v7, v8, v11}, Landroid/app/Notification$Builder;->-wrap4(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v6

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v7, :cond_45

    const/4 v0, 0x0

    :goto_1c
    if-lez v0, :cond_6c

    invoke-virtual {v6, v9}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v0, :cond_6c

    if-lt v4, v5, :cond_4e

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    add-int/lit8 v10, v5, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_45
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v7, v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1c

    :cond_4e
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->getPrimaryHighlightColor()I

    move-result v7

    invoke-direct {p0, v1, v7}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v6, v9, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_6c
    invoke-direct {p0, v6}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    const v3, 0x1050117

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v7

    invoke-static {v7}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v7

    if-eqz v7, :cond_81

    const v3, 0x105011c

    :cond_81
    const v7, 0x102033b

    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    return-object v6
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "android.mediaSession"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_f
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "android.compactActions"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1b
    return-void
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    :cond_c
    return-object p1
.end method

.method protected hasProgress()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 3

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 3

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_6
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string/jumbo v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_17
    const-string/jumbo v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    :cond_29
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    return-object p0
.end method
