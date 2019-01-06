.class Lcom/android/server/pm/ShortcutService$3;
.super Landroid/app/IUidObserver$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_pm_ShortcutService$3_17352(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutService$3_17520(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public onUidActive(I)V
    .registers 2

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$1;

    invoke-direct {v1, p1, p0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method
