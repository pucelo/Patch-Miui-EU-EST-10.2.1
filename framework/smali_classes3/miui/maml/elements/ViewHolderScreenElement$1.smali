.class Lmiui/maml/elements/ViewHolderScreenElement$1;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ViewHolderScreenElement;->setHardwareLayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ViewHolderScreenElement;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$1;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/ViewHolderScreenElement$1;->val$b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$1;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$1;->val$b:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    :goto_b
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method
