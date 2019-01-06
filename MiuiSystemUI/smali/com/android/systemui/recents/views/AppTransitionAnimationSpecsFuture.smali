.class public abstract Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;
.super Ljava/lang/Object;
.source "AppTransitionAnimationSpecsFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;,
        Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;
    }
.end annotation


# instance fields
.field private mComposeTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mComposeTask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mComposeTask:Ljava/util/concurrent/FutureTask;

    return-object p1
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$1;-><init>(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mComposeTask:Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;-><init>(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract composeSpecs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end method

.method public final getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->mFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method
