.class Lmiui/maml/elements/ViewHolderScreenElement$5;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ViewHolderScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ViewHolderScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->val$_v:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/4 v0, 0x4

    goto :goto_b
.end method
