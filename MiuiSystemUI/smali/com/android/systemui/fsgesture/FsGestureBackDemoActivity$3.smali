.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iput p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get9(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;->val$status:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get9(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;->val$status:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    return-void
.end method
