.class Lmiui/app/ToggleManagerCompatibility$3;
.super Landroid/database/ContentObserver;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get9()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_5
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_10
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_76

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get3()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get5()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get6()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get4()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_5 .. :try_end_73} :catchall_91

    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_76
    monitor-exit v7

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->-get10(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    invoke-interface {v4}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    goto :goto_81

    :catchall_91
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_94
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get8()Z

    move-result v6

    if-nez v6, :cond_b4

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->-get2(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    invoke-interface {v2}, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;->onCustomToggleChanged()V

    goto :goto_a4

    :cond_b4
    return-void
.end method
