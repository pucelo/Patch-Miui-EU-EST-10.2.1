.class public Lcom/android/keyguard/BackButton;
.super Landroid/widget/Button;
.source "BackButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/BackButton$BackButtonCallback;
    }
.end annotation


# instance fields
.field private mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/BackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    new-instance v0, Lcom/android/keyguard/BackButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/BackButton$1;-><init>(Lcom/android/keyguard/BackButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/BackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCallback(Lcom/android/keyguard/BackButton$BackButtonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/BackButton;->mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;

    return-void
.end method

.method public takeBackAction()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/BackButton;->mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/BackButton;->mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;

    invoke-interface {v0}, Lcom/android/keyguard/BackButton$BackButtonCallback;->onBackButtonClicked()V

    :cond_0
    return-void
.end method
