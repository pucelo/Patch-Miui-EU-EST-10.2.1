.class Lmiui/app/ToggleManager$4;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object v2, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v2}, Lmiui/app/ToggleManager;->-get9(Lmiui/app/ToggleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v2}, Lmiui/app/ToggleManager;->-get9(Lmiui/app/ToggleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    invoke-interface {v0}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    goto :goto_16

    :cond_26
    return-void
.end method
