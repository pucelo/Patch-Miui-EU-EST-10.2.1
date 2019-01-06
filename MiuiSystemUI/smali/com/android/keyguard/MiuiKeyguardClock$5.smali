.class Lcom/android/keyguard/MiuiKeyguardClock$5;
.super Ljava/lang/Object;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$5;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock$5;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v2, v2, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock$5;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v2, v2, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$5$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiKeyguardClock$5$1;-><init>(Lcom/android/keyguard/MiuiKeyguardClock$5;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$5$2;

    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock$5$2;-><init>(Lcom/android/keyguard/MiuiKeyguardClock$5;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardClock;->-get0()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
