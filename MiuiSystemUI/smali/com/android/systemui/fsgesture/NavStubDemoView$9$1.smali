.class Lcom/android/systemui/fsgesture/NavStubDemoView$9$1;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$9;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$9$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$9$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$9;

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView$9;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get22(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$9$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$9;

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView$9;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get22(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    return-void
.end method
