.class abstract Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 3

    if-eqz p1, :cond_7

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_4
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-void

    :cond_7
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_4
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 14

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->willCreate()V

    const v6, 0x1090066

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x1020425

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    if-eqz v2, :cond_34

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_34
    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v6, v7, :cond_40

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v6, v7, :cond_64

    :cond_40
    const/4 v3, 0x1

    :goto_41
    if-eqz v1, :cond_51

    if-eqz v3, :cond_66

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_47
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_51
    if-eqz v4, :cond_60

    if-eqz v3, :cond_69

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_57
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_60
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object v5

    :cond_64
    const/4 v3, 0x0

    goto :goto_41

    :cond_66
    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_47

    :cond_69
    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_57
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onPress()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "LegacyGlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_20

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_19
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .registers 1

    return-void
.end method
