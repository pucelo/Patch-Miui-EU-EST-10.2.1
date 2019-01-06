.class Landroid/view/HandlerActionQueue$HandlerAction;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandlerActionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field final action:Ljava/lang/Runnable;

.field final delay:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iput-wide p2, p0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Runnable;)Z
    .registers 3

    if-nez p1, :cond_8

    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method
