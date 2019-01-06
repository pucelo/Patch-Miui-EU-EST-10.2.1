.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mShowAppLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public getAppLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowAppLabel(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
