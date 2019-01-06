.class Lmiui/maml/elements/WindowScreenElement$1;
.super Ljava/lang/Object;
.source "WindowScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WindowScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WindowScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/WindowScreenElement;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/WindowScreenElement$1;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/WindowScreenElement$1;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/WindowScreenElement$1;->val$_v:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$1;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->-wrap0(Lmiui/maml/elements/WindowScreenElement;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$1;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->-wrap1(Lmiui/maml/elements/WindowScreenElement;)V

    goto :goto_9
.end method
