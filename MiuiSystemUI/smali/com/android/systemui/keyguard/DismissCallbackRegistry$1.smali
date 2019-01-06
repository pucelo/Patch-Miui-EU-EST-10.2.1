.class Lcom/android/systemui/keyguard/DismissCallbackRegistry$1;
.super Ljava/lang/Object;
.source "DismissCallbackRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field final synthetic val$callback:Lcom/android/systemui/keyguard/DismissCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/keyguard/DismissCallbackWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$1;->this$0:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iput-object p2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$1;->val$callback:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$1;->val$callback:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissCancelled()V

    return-void
.end method
