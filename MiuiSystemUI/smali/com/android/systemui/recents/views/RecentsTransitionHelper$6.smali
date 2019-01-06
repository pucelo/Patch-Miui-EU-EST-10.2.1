.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;
.super Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/os/Handler;)Landroid/view/IAppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Landroid/os/Handler;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;->composeSpecs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
