.class Lcom/android/systemui/statusbar/phone/NavStubView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$14;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$14;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get17(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyMiuiAnimationEnd()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$14;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get15(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->onGestureFinish(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
