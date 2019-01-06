.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-set1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)Z

    return-void
.end method
