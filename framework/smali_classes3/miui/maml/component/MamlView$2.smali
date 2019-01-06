.class Lmiui/maml/component/MamlView$2;
.super Lmiui/maml/RenderVsyncUpdater;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    invoke-direct {p0, p2, p3}, Lmiui/maml/RenderVsyncUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected doRenderImp()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v0}, Lmiui/maml/component/MamlView;->-get5(Lmiui/maml/component/MamlView;)Lmiui/maml/component/MamlView$InnerView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/component/MamlView$InnerView;->postInvalidate()V

    return-void
.end method
