.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->-get1(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    return-void
.end method
