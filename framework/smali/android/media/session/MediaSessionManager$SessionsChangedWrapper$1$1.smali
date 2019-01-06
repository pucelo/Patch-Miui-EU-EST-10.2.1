.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->onActiveSessionsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

.field final synthetic val$tokens:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v5, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v5, v5, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v5}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v4, :cond_2b

    new-instance v6, Landroid/media/session/MediaController;

    iget-object v5, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$Token;

    invoke-direct {v6, v0, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2b
    iget-object v5, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v5, v5, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v5}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get2(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-interface {v3, v1}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    :cond_38
    return-void
.end method
