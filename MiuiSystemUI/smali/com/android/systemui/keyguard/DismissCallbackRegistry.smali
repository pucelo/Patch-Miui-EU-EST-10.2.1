.class public Lcom/android/systemui/keyguard/DismissCallbackRegistry;
.super Ljava/lang/Object;
.source "DismissCallbackRegistry.java"


# instance fields
.field private final mDismissCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/keyguard/DismissCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyDismissCancelled()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/keyguard/DismissCallbackRegistry$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry$1;-><init>(Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/keyguard/DismissCallbackWrapper;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public notifyDismissSucceeded()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/keyguard/DismissCallbackRegistry$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry$2;-><init>(Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/keyguard/DismissCallbackWrapper;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
