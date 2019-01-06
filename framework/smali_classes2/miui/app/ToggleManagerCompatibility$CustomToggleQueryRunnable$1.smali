.class Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;->this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;->this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    iget-object v2, v2, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v2}, Lmiui/app/ToggleManagerCompatibility;->-get2(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    invoke-interface {v0}, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;->onCustomToggleChanged()V

    goto :goto_c

    :cond_1c
    return-void
.end method
