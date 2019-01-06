.class abstract Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
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
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    iput p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 12

    const/4 v6, 0x0

    const v5, 0x1090066

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x1020425

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_30
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3e
    :goto_3e
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5c

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_47
    return-object v4

    :cond_48
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    :cond_4e
    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_3e

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    :cond_5c
    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_47
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object v0

    :cond_7
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
