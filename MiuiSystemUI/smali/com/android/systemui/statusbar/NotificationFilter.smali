.class public Lcom/android/systemui/statusbar/NotificationFilter;
.super Lcom/android/systemui/statusbar/BaseGutsContentView;
.source "NotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseGutsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v3

    const v6, 0x7f0a02d6

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v6, 0x7f11045f

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a007f

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0a0281

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationFilter;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v3, :cond_1

    const v6, 0x7f11045e

    :goto_1
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0209

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationFilter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyAppIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    const v6, 0x7f0a0064

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Lcom/android/systemui/statusbar/NotificationFilter$1;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/statusbar/NotificationFilter$1;-><init>(Lcom/android/systemui/statusbar/NotificationFilter;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0065

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v6, 0x7f1101cc

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Lcom/android/systemui/statusbar/NotificationFilter$2;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/statusbar/NotificationFilter$2;-><init>(Lcom/android/systemui/statusbar/NotificationFilter;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v6, 0x7f11045c

    goto :goto_0

    :cond_1
    const v6, 0x7f11045b

    goto :goto_1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeavebehind()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
