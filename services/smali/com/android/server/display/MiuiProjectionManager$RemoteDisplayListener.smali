.class Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method private constructor <init>(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 16

    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_76

    const-string/jumbo v1, "MIUI_PROJECTION"

    const-string/jumbo v2, "remote display connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    sget-object v2, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_CONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    invoke-static {v1, v2}, Lcom/android/server/display/MiuiProjectionManager;->-set0(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$State;)Lcom/android/server/display/MiuiProjectionManager$State;

    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-static {v1}, Lcom/android/server/display/MiuiProjectionManager;->-get0(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v1

    const-string/jumbo v2, "mRemoteDisplayConnected"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    const-string/jumbo v1, "02:0e:55:53:62:34"

    const-string/jumbo v2, "miui-projection"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-static {v1}, Lcom/android/server/display/MiuiProjectionManager;->-get0(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v1

    const-string/jumbo v2, "advertiseDisplay"

    const-class v3, Ljava/lang/Void;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object p1, v5, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v5, v8

    invoke-static {v1, v2, v3, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    const-string/jumbo v1, "MIUI_PROJECTION"

    const-string/jumbo v2, "virtual display metrics:  wxh = %d x %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void
.end method

.method public onDisplayDisconnected()V
    .registers 4

    const-string/jumbo v0, "MIUI_PROJECTION"

    const-string/jumbo v1, "remote display disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-static {v0}, Lcom/android/server/display/MiuiProjectionManager;->-get0(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    const-string/jumbo v1, "mRemoteDisplayConnected"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    return-void
.end method

.method public onDisplayError(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    return-void
.end method

.method public onDisplayGenericMsgEvent(I)V
    .registers 5

    const-string/jumbo v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayGenericMsgEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayKeyEvent(II)V
    .registers 6

    const-string/jumbo v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
