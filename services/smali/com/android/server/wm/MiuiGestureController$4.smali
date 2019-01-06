.class Lcom/android/server/wm/MiuiGestureController$4;
.super Landroid/database/ContentObserver;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$4;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$4;->this$0:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$4;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->-get0(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gb_boosting"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    invoke-static {v1, v0}, Lcom/android/server/wm/MiuiGestureController;->-set0(Lcom/android/server/wm/MiuiGestureController;Z)Z

    return-void
.end method
