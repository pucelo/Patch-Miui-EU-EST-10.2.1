.class public Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;
.super Landroid/widget/LinearLayout;
.source "OptimizedHeadsUpNotificationView.java"


# instance fields
.field private mAction:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mAction:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mAction:Landroid/widget/TextView;

    return-void
.end method

.method public setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method

.method public wrapIconView(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public wrapTextView(Landroid/widget/TextView;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const v0, 0x7f0600f0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0600f2

    goto :goto_0
.end method

.method public wrapTitleView(Landroid/widget/TextView;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const v0, 0x7f0600f0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f0600f2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
