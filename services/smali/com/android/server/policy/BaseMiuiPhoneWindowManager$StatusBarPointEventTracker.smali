.class public Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StatusBarPointEventTracker"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownX:F

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    return-void
.end method


# virtual methods
.method protected onTrack(Landroid/view/MotionEvent;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_70

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    goto :goto_7

    :pswitch_15
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarHeight:I

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarHeight:I

    const/high16 v6, 0x110e0000

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_7

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarHeight:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap13(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarHeight:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    goto :goto_7

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_8
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
