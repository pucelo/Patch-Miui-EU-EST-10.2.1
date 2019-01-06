.class Lcom/android/systemui/stackdivider/DividerView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-wrap2(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get1(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get5(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    const-string/jumbo v1, "swapTasks"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
