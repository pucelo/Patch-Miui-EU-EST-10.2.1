.class Lcom/android/systemui/recents/views/TaskViewHeader$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->updateLockedFlagVisible(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
