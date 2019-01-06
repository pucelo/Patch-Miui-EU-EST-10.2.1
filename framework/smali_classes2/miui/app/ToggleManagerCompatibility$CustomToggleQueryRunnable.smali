.class public final Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomToggleQueryRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method public constructor <init>(Lmiui/app/ToggleManagerCompatibility;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get9()Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    :try_start_5
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get3()Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get5()Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get4()Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v24, "android.service.quicksettings.action.QS_TILE"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lmiui/app/ToggleManagerCompatibility;->-wrap2(Landroid/content/Context;)I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_185

    move-result v22

    if-nez v22, :cond_5f

    monitor-exit v23

    return-void

    :cond_5f
    :try_start_5f
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_63
    :goto_63
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_194

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v5}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v20

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    move/from16 v22, v0

    if-nez v22, :cond_c0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_63

    :cond_c0
    const-string/jumbo v22, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d4
    .catchall {:try_start_5f .. :try_end_d4} :catchall_185

    move-result v22

    if-eqz v22, :cond_63

    const/high16 v9, 0xc0000

    :try_start_d9
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lmiui/app/ToggleManagerCompatibility;->-wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_e4

    const v9, 0xc0200

    :cond_e4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lmiui/app/ToggleManagerCompatibility;->-wrap2(Landroid/content/Context;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v5, v9, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_188

    move-object/from16 v0, v18

    iget v10, v0, Landroid/content/pm/ServiceInfo;->icon:I

    :goto_10a
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v11, :cond_63

    if-eqz v15, :cond_63

    invoke-static/range {v20 .. v20}, Lmiui/app/ToggleManagerCompatibility;->-wrap1(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x2710

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get3()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get5()Ljava/util/HashMap;

    move-result-object v22

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get6()Ljava/util/HashMap;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get4()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_17d} :catch_17f
    .catchall {:try_start_d9 .. :try_end_17d} :catchall_185

    goto/16 :goto_63

    :catch_17f
    move-exception v8

    :try_start_180
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_185

    goto/16 :goto_63

    :catchall_185
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_188
    :try_start_188
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_192} :catch_17f
    .catchall {:try_start_188 .. :try_end_192} :catchall_185

    goto/16 :goto_10a

    :cond_194
    :try_start_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1aa
    :goto_1aa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1c4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1aa

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1aa

    :cond_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManagerCompatibility;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmiui/app/ToggleManagerCompatibility;->-get7(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;

    move-result-object v22

    new-instance v24, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;-><init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmiui/app/ToggleManagerCompatibility;->-get7(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;

    move-result-object v22

    new-instance v24, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;-><init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V

    const-wide/16 v26, 0x12c

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_209
    .catchall {:try_start_194 .. :try_end_209} :catchall_185

    monitor-exit v23

    return-void
.end method
