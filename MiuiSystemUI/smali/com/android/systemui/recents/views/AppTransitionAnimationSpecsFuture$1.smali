.class Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;
.super Ljava/lang/Object;
.source "AppTransitionAnimationSpecsFuture.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/view/AppTransitionAnimationSpec;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->composeSpecs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
