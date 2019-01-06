.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private guardedRun()V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v22, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_39
    :goto_39
    :try_start_39
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_211

    :goto_3e
    :try_start_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v22, v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_20e

    if-eqz v22, :cond_57

    :try_start_46
    monitor-exit v23
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_211

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    :try_start_4c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_54

    monitor-exit v23

    return-void

    :catchall_54
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_57
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/Runnable;

    move-object v9, v0
    :try_end_78
    .catchall {:try_start_57 .. :try_end_78} :catchall_20e

    :cond_78
    :goto_78
    :try_start_78
    monitor-exit v23

    if-eqz v9, :cond_248

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_211

    const/4 v9, 0x0

    goto :goto_39

    :cond_80
    const/4 v14, 0x0

    :try_start_81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_aa

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_aa
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c1

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v4, 0x1

    :cond_c1
    if-eqz v13, :cond_ca

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v13, 0x0

    :cond_ca
    if-eqz v14, :cond_d7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d7

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_d7
    if-eqz v14, :cond_f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;

    if-nez v19, :cond_1ed

    const/4 v15, 0x0

    :goto_f0
    if-nez v15, :cond_f5

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    :cond_f5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-nez v22, :cond_129

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_129

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_112

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_112
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_129
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_148

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_148

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_148
    if-eqz v8, :cond_162

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v8, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_176

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    :cond_176
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v22

    if-eqz v22, :cond_22c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-nez v22, :cond_187

    if-eqz v4, :cond_1f3

    const/4 v4, 0x0

    :cond_187
    :goto_187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_1a5

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v16, 0x1

    :cond_1a5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_23f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v6, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    :cond_1d2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    move/from16 v22, v0

    if-eqz v22, :cond_78

    const/16 v21, 0x1

    goto/16 :goto_78

    :cond_1ed
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get6(Landroid/opengl/GLSurfaceView;)Z
    :try_end_1f0
    .catchall {:try_start_81 .. :try_end_1f0} :catchall_20e

    move-result v15

    goto/16 :goto_f0

    :cond_1f3
    :try_start_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_1fc
    .catch Ljava/lang/RuntimeException; {:try_start_1f3 .. :try_end_1fc} :catch_21f
    .catchall {:try_start_1f3 .. :try_end_1fc} :catchall_20e

    const/16 v22, 0x1

    :try_start_1fe
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v5, 0x1

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_20c
    .catchall {:try_start_1fe .. :try_end_20c} :catchall_20e

    goto/16 :goto_187

    :catchall_20e
    move-exception v22

    :try_start_20f
    monitor-exit v23

    throw v22
    :try_end_211
    .catchall {:try_start_20f .. :try_end_211} :catchall_211

    :catchall_211
    move-exception v22

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    :try_start_217
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_21d
    .catchall {:try_start_217 .. :try_end_21d} :catchall_38a

    monitor-exit v23

    throw v22

    :catch_21f
    move-exception v18

    :try_start_220
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v18

    :cond_22c
    if-eqz v10, :cond_23f

    const-string/jumbo v22, "GLSurfaceView"

    const-string/jumbo v24, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    const/4 v10, 0x0

    :cond_23f
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_246
    .catchall {:try_start_220 .. :try_end_246} :catchall_20e

    goto/16 :goto_3e

    :cond_248
    if-eqz v6, :cond_26c

    :try_start_24a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v22

    if-eqz v22, :cond_34e

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_25b
    .catchall {:try_start_24a .. :try_end_25b} :catchall_211

    const/16 v22, 0x1

    :try_start_25d
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_26a
    .catchall {:try_start_25d .. :try_end_26a} :catchall_34b

    :try_start_26a
    monitor-exit v23

    const/4 v6, 0x0

    :cond_26c
    if-eqz v7, :cond_27e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v11, v0

    const/4 v7, 0x0

    :cond_27e
    if-eqz v5, :cond_2b7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_28c
    .catchall {:try_start_26a .. :try_end_28c} :catchall_211

    if-eqz v19, :cond_2b6

    :try_start_28e
    const-string/jumbo v22, "onSurfaceCreated"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_2b1
    .catchall {:try_start_28e .. :try_end_2b1} :catchall_370

    const-wide/16 v22, 0x8

    :try_start_2b3
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2b6
    const/4 v5, 0x0

    :cond_2b7
    if-eqz v16, :cond_2e5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_2c5
    .catchall {:try_start_2b3 .. :try_end_2c5} :catchall_211

    if-eqz v19, :cond_2e3

    :try_start_2c7
    const-string/jumbo v22, "onSurfaceChanged"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v11, v1, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_2de
    .catchall {:try_start_2c7 .. :try_end_2de} :catchall_377

    const-wide/16 v22, 0x8

    :try_start_2e0
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2e3
    const/16 v16, 0x0

    :cond_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_2f1
    .catchall {:try_start_2e0 .. :try_end_2f1} :catchall_211

    if-eqz v19, :cond_313

    :try_start_2f3
    const-string/jumbo v22, "onDrawFrame"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v10, :cond_30e

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_30d
    .catchall {:try_start_2f3 .. :try_end_30d} :catchall_37e

    const/4 v10, 0x0

    :cond_30e
    const-wide/16 v22, 0x8

    :try_start_310
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    :cond_313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v17

    sparse-switch v17, :sswitch_data_38e

    const-string/jumbo v22, "GLThread"

    const-string/jumbo v23, "eglSwapBuffers"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_334
    .catchall {:try_start_310 .. :try_end_334} :catchall_211

    const/16 v22, 0x1

    :try_start_336
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_343
    .catchall {:try_start_336 .. :try_end_343} :catchall_387

    :try_start_343
    monitor-exit v23

    :goto_344
    :sswitch_344
    if-eqz v21, :cond_39

    const/4 v8, 0x1

    const/16 v21, 0x0

    goto/16 :goto_39

    :catchall_34b
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_34e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_353
    .catchall {:try_start_343 .. :try_end_353} :catchall_211

    const/16 v22, 0x1

    :try_start_355
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_36a
    .catchall {:try_start_355 .. :try_end_36a} :catchall_36d

    :try_start_36a
    monitor-exit v23

    goto/16 :goto_39

    :catchall_36d
    move-exception v22

    monitor-exit v23

    throw v22

    :catchall_370
    move-exception v22

    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v22

    :catchall_377
    move-exception v22

    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v22

    :catchall_37e
    move-exception v22

    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v22

    :sswitch_385
    const/4 v13, 0x1

    goto :goto_344

    :catchall_387
    move-exception v22

    monitor-exit v23

    throw v22
    :try_end_38a
    .catchall {:try_start_36a .. :try_end_38a} :catchall_211

    :catchall_38a
    move-exception v22

    monitor-exit v23

    throw v22

    nop

    :sswitch_data_38e
    .sparse-switch
        0x3000 -> :sswitch_344
        0x300e -> :sswitch_385
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v2, :cond_23

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v2, :cond_23

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_20

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v2, v0, :cond_21

    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method private stopEglContextLocked()V
    .registers 2

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getRenderMode()I
    .registers 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2d

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2d

    :try_start_19
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2a

    goto :goto_f

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_f

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2d
    monitor-exit v2

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_15
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_34

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_37

    :try_start_23
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_34

    goto :goto_15

    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_15

    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_37
    monitor-exit v2

    return-void
.end method

.method public onWindowResize(II)V
    .registers 6

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_48

    move-result-object v1

    if-ne v1, p0, :cond_1a

    monitor-exit v2

    return-void

    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_21
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4b

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_48

    move-result v1

    if-eqz v1, :cond_4b

    :try_start_37
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_48

    goto :goto_21

    :catch_3f
    move-exception v0

    :try_start_40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_48

    goto :goto_21

    :catchall_48
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4b
    monitor-exit v2

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    :try_start_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24

    goto :goto_f

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_27
    monitor-exit v2

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .registers 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_21

    move-result-object v0

    if-ne v0, p0, :cond_d

    monitor-exit v1

    return-void

    :cond_d
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_1b
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    goto :goto_25

    :catchall_2f
    move-exception v1

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v1
.end method

.method public setRenderMode(I)V
    .registers 4

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_12
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_33

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_36

    :try_start_22
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_2a
    .catchall {:try_start_22 .. :try_end_29} :catchall_33

    goto :goto_12

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    goto :goto_12

    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_36
    monitor-exit v2

    return-void
.end method

.method public surfaceDestroyed()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2d

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2d

    :try_start_19
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2a

    goto :goto_f

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_f

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2d
    monitor-exit v2

    return-void
.end method
