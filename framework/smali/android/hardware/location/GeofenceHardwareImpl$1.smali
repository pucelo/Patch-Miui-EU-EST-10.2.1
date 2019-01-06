.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_2ae

    :goto_7
    return-void

    :pswitch_8
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_35

    monitor-exit v4

    if-eqz v2, :cond_2d

    :try_start_26
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_38

    :cond_2d
    :goto_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_7

    :catchall_35
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_38
    move-exception v11

    const-string/jumbo v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :pswitch_54
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_61
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_104

    monitor-exit v4

    if-eqz v2, :cond_10d

    :try_start_72
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_79} :catch_2aa

    :goto_79
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_87
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->remove(I)V

    const/4 v14, 0x0

    :goto_93
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_b6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;
    :try_end_b2
    .catchall {:try_start_87 .. :try_end_b2} :catchall_10a

    move-result-object v3

    if-ne v3, v9, :cond_107

    const/4 v10, 0x1

    :cond_b6
    monitor-exit v4

    if-nez v10, :cond_10d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_c5
    :goto_c5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v3

    if-eqz v3, :cond_c5

    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v9, :cond_c5

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    move-result v3

    if-eqz v3, :cond_c5

    const-string/jumbo v3, "GeofenceHardwareImpl"

    const-string/jumbo v4, "Removed reaper %s because binder %s is no longer needed."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :catchall_104
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_107
    add-int/lit8 v14, v14, 0x1

    goto :goto_93

    :catchall_10a
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_10d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_7

    :pswitch_116
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_123
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_131
    .catchall {:try_start_123 .. :try_end_131} :catchall_144

    monitor-exit v4

    if-eqz v2, :cond_13b

    :try_start_134
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_13b} :catch_2a7

    :cond_13b
    :goto_13b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_7

    :catchall_144
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_147
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_154
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_162
    .catchall {:try_start_154 .. :try_end_162} :catchall_175

    monitor-exit v4

    if-eqz v2, :cond_16c

    :try_start_165
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_165 .. :try_end_16c} :catch_2a4

    :cond_16c
    :goto_16c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_7

    :catchall_175
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_178
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_187
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1ee

    const-string/jumbo v3, "GeofenceHardwareImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Transition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get4(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get1(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ee
    .catchall {:try_start_187 .. :try_end_1ee} :catchall_211

    :cond_1ee
    monitor-exit v4

    if-eqz v2, :cond_208

    :try_start_1f1
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get4(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get1(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v5

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get3(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v6

    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get2(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v8

    invoke-interface/range {v2 .. v8}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_208} :catch_2a1

    :cond_208
    :goto_208
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_7

    :catchall_211
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_214
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    move-result v3

    if-eqz v3, :cond_23a

    const-string/jumbo v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Geofence callback reaped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    const/4 v14, 0x0

    :goto_24a
    :try_start_24a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_29b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_298

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move/from16 v0, v16

    invoke-virtual {v3, v5, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->remove(I)V
    :try_end_298
    .catchall {:try_start_24a .. :try_end_298} :catchall_29e

    :cond_298
    add-int/lit8 v14, v14, 0x1

    goto :goto_24a

    :cond_29b
    monitor-exit v4

    goto/16 :goto_7

    :catchall_29e
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_2a1
    move-exception v11

    goto/16 :goto_208

    :catch_2a4
    move-exception v11

    goto/16 :goto_16c

    :catch_2a7
    move-exception v11

    goto/16 :goto_13b

    :catch_2aa
    move-exception v11

    goto/16 :goto_79

    nop

    :pswitch_data_2ae
    .packed-switch 0x1
        :pswitch_178
        :pswitch_8
        :pswitch_54
        :pswitch_116
        :pswitch_147
        :pswitch_214
    .end packed-switch
.end method
