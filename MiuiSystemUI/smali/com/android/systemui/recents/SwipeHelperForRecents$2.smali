.class Lcom/android/systemui/recents/SwipeHelperForRecents$2;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get5(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-set1(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I

    move-result-object v3

    aget v3, v3, v5

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get4(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    :cond_0
    return-void
.end method
