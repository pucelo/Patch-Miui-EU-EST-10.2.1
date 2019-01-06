.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeColumns"
.end annotation


# instance fields
.field private mColumnsCollapsed:Landroid/view/ViewGroup;

.field private mColumnsExpanded:Landroid/view/ViewGroup;

.field private mExpanded:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public getCurrentParent()Landroid/view/ViewGroup;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateExpandedH(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->reparentChildren(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    goto :goto_1
.end method
