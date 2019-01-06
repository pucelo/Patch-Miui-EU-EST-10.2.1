.class Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;
.super Ljava/lang/Object;
.source "PinnedStackController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListenerDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedStackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedStackController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedStackController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/PinnedStackController;->-set2(Lcom/android/server/wm/PinnedStackController;Landroid/view/IPinnedStackListener;)Landroid/view/IPinnedStackListener;

    return-void
.end method
