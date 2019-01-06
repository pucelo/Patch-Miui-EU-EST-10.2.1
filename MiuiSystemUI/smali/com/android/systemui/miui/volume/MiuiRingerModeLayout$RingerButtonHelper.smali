.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingerButtonHelper"
.end annotation


# instance fields
.field private mDndView:Landroid/view/View;

.field private mExpanded:Z

.field private mRingerMode:I

.field private mStandardView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->updateState()V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    return-void
.end method

.method private updateState()V
    .locals 8

    const v7, 0x1020016

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setActivated(Z)V

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setActivated(Z)V

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-nez v2, :cond_1

    if-eq v1, v3, :cond_7

    :cond_1
    move v2, v3

    :goto_2
    invoke-static {v5, v2}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-nez v5, :cond_2

    if-ne v1, v3, :cond_8

    :cond_2
    :goto_3
    invoke-static {v2, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    invoke-static {v2, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    invoke-static {v2, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-eqz v2, :cond_9

    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_dnd_corners:I

    :goto_4
    invoke-static {v0, v3, v2}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-eqz v2, :cond_a

    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_standard_corners:I

    :goto_5
    invoke-static {v0, v3, v2}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_3

    :cond_9
    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_corners_collapsed:I

    goto :goto_4

    :cond_a
    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_corners_collapsed:I

    goto :goto_5
.end method


# virtual methods
.method onExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    return-void
.end method

.method setRingerMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    return-void
.end method
