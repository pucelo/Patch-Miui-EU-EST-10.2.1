.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/Dialog;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;,
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

.field private mExtendedSettingsButton:Landroid/widget/Button;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    return-void
.end method

.method static isLightTheme(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x111004e

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_19

    :goto_18
    return v1

    :cond_19
    move v1, v2

    goto :goto_18

    :cond_1b
    move v1, v2

    goto :goto_18
.end method

.method private updateExtendedSettingsButton()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    return-void

    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method


# virtual methods
.method public getRouteTypes()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iput-boolean v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x1090080

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setContentView(I)V

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6f

    const v0, 0x104034b

    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    const v0, 0x108044e

    :goto_2d
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    const v0, 0x10202ff

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v0, 0x10202fe

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    return-void

    :cond_6f
    const v0, 0x104034a

    goto :goto_19

    :cond_73
    const v0, 0x108044d

    goto :goto_2d
.end method

.method public onDetachedFromWindow()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public refreshRoutes()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->update()V

    :cond_9
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    :cond_9
    return-void
.end method

.method public setRouteTypes(I)V
    .registers 5

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    if-eq v0, p1, :cond_1c

    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    :cond_1c
    return-void
.end method
