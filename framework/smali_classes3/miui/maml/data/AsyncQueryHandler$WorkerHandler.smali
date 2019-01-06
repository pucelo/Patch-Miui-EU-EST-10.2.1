.class public Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lmiui/maml/data/AsyncQueryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget-object v1, p0, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lmiui/maml/data/AsyncQueryHandler;

    iget-object v1, v1, Lmiui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget v11, p1, Landroid/os/Message;->what:I

    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_7a

    :goto_18
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v10, Landroid/os/Message;->arg1:I

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_28
    :try_start_28
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3b

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_3e

    :cond_3b
    :goto_3b
    iput-object v7, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_18

    :catch_3e
    move-exception v8

    const-string/jumbo v1, "AsyncQuery"

    const-string/jumbo v2, "Exception thrown during handling EVENT_ARG_QUERY"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_3b

    :pswitch_4a
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_18

    :pswitch_55
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_18

    :pswitch_68
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_18

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_4a
        :pswitch_55
        :pswitch_68
    .end packed-switch
.end method
