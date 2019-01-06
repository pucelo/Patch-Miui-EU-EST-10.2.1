.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FsGestureBackDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

.field final synthetic val$back:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0, v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    goto :goto_1
.end method
