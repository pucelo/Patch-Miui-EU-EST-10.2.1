.class Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get0(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
