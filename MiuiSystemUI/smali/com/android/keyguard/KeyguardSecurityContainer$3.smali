.class Lcom/android/keyguard/KeyguardSecurityContainer$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;->showLockoutView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

.field final synthetic val$countDownView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;JJLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->val$countDownView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideLockoutView()V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    long-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->val$countDownView:Landroid/widget/TextView;

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->-wrap2(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/widget/TextView;J)V

    return-void
.end method
