.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
.source "CollapsedStatusBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeftEarIconManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotchLeftEarIcons:Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;

    invoke-virtual {v4, p1}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotchleftearIconsList:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_1
    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "bluetooth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p2, :cond_b

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v4, :cond_9

    const v4, 0x7f0803af

    if-eq v0, v4, :cond_3

    const v4, 0x7f0803b3

    if-ne v0, v4, :cond_7

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_8

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_5
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/Clock;->update()V

    :cond_6
    :goto_4
    return-void

    :cond_7
    const v4, 0x7f0803b1

    if-eq v0, v4, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/16 v4, 0x8

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    :goto_5
    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    goto :goto_3

    :cond_a
    move v4, v5

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    goto :goto_3

    :cond_c
    const-string/jumbo v4, "location"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    if-nez p2, :cond_e

    :cond_d
    move v4, v5

    :goto_6
    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set1(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    move v4, v6

    goto :goto_6

    :cond_f
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get3(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/Clock;->update()V

    goto :goto_4
.end method


# virtual methods
.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method protected onRemoveIcon(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->onRemoveIcon(ILjava/lang/String;)V

    return-void
.end method

.method public onSetIcon(ILjava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->onSetIcon(ILjava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method
