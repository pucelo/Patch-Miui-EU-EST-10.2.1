.class Lmiui/maml/ScreenElementRoot$2;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ScreenElementRoot;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$2;->this$0:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/ScreenElementRoot$2;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$2;->this$0:Lmiui/maml/ScreenElementRoot;

    invoke-static {v1}, Lmiui/maml/ScreenElementRoot;->-get0(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$2;->val$command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
