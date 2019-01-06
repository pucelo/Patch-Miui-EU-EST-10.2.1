.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_wm_TaskSnapshotController-mthref-0(I)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;->$INST$0:Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    new-instance v0, Lcom/android/server/wm/TaskSnapshotLoader;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 26

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/AppWindowToken;

    if-nez v22, :cond_a

    const/4 v4, 0x0

    return-object v4

    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v20

    if-nez v20, :cond_12

    const/4 v4, 0x0

    return-object v4

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    new-instance v3, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIIII)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v23

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    const-string/jumbo v4, "TaskSnapshotController"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v16

    invoke-virtual/range {v16 .. v17}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v19

    if-nez v19, :cond_95

    const/4 v4, 0x0

    return-object v4

    :cond_95
    new-instance v9, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v11, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v9 .. v14}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZF)V

    return-object v9
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    return-void
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .registers 2

    sget-boolean v0, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 14

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    if-nez v10, :cond_d

    return-object v11

    :cond_d
    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-nez v9, :cond_14

    return-object v11

    :cond_14
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-eqz v8, :cond_2f

    sget v5, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    :goto_1c
    iget-object v0, v10, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v10, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move v3, v2

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->screenshotApplicationsToBuffer(Landroid/os/IBinder;IIZFZZ)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    if-gt v0, v7, :cond_32

    :cond_2e
    return-object v11

    :cond_2f
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_32
    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    if-le v0, v7, :cond_2e

    new-instance v0, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZF)V

    return-object v0
.end method

.method private snapshotTasks(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_6
    if-ltz v1, :cond_80

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v2

    packed-switch v2, :pswitch_data_82

    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-nez v5, :cond_64

    :cond_28
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V

    sget-object v5, Lcom/android/server/wm/TaskSnapshotController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    :pswitch_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :pswitch_5a
    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    goto :goto_16

    :pswitch_5f
    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    goto :goto_16

    :cond_64
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget v7, v4, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    if-eqz v5, :cond_57

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskWindowContainerController;->reportSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_57

    :cond_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5a
        :pswitch_57
    .end packed-switch
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Landroid/view/WindowManagerPolicy$StartingSurface;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_25

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_22

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_25
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-nez p4, :cond_b

    sget-boolean v0, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    :goto_6
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_6
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    return v1

    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    return v1

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$-com_android_server_wm_TaskSnapshotController_13527(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2e

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v3, 0x15

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_28

    :try_start_20
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_TaskSnapshotController_13692(Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 5

    if-nez p2, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    return-void
.end method

.method onAppDied(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method onTransitionStarting()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    return-void
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    return-void
.end method

.method screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    return-void
.end method

.method systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    return-void
.end method
