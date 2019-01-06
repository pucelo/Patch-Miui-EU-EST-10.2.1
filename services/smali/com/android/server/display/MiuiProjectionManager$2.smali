.class Lcom/android/server/display/MiuiProjectionManager$2;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager$2;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$2;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-static {v0}, Lcom/android/server/display/MiuiProjectionManager;->-wrap1(Lcom/android/server/display/MiuiProjectionManager;)V

    return-void
.end method
