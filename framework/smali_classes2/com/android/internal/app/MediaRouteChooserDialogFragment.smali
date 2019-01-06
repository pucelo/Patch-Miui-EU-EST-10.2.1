.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string/jumbo v1, "routeTypes"

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v0, 0x1030132

    :goto_15
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    return-void

    :cond_1e
    const v0, 0x103012e

    goto :goto_15
.end method


# virtual methods
.method public getRouteTypes()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "routeTypes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;
    .registers 5

    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v1, :cond_11

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public setRouteTypes(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v2

    if-eq p1, v2, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_11
    const-string/jumbo v2, "routeTypes"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MediaRouteChooserDialog;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    :cond_25
    return-void
.end method
