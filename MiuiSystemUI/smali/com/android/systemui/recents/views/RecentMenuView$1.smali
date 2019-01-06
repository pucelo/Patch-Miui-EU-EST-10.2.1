.class Lcom/android/systemui/recents/views/RecentMenuView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentMenuView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get2(Lcom/android/systemui/recents/views/RecentMenuView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getMask()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getMask()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->-set0(Lcom/android/systemui/recents/views/RecentMenuView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowMemoryAndDockEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ShowMemoryAndDockEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get2(Lcom/android/systemui/recents/views/RecentMenuView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-wrap0(Lcom/android/systemui/recents/views/RecentMenuView;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getMask()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$1;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getMask()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideMemoryAndDockEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideMemoryAndDockEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    return-void
.end method
