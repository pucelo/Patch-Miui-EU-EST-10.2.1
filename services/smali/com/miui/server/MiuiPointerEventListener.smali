.class public Lcom/miui/server/MiuiPointerEventListener;
.super Ljava/lang/Object;
.source "MiuiPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiuiPointerEventListener"

.field private static final THREE_GESTURE_STATE_DETECTED_FALSE:I = 0x2

.field private static final THREE_GESTURE_STATE_DETECTED_TRUE:I = 0x3

.field private static final THREE_GESTURE_STATE_DETECTING:I = 0x1

.field private static final THREE_GESTURE_STATE_NONE:I = 0x0

.field private static final THREE_GESTURE_STATE_NO_DETECT:I = 0x4


# instance fields
.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mInitMotionY:[F

.field private mPointerIds:[I

.field private mThreeGestureState:I

.field private mThreeGestureThreshold:I

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    iput-object p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreshold:I

    iget v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreshold:I

    mul-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureThreshold:I

    const-string/jumbo v2, "sys.miui.screenshot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_33

    :goto_30
    iput v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    return-void

    :cond_33
    move v0, v1

    goto :goto_30
.end method

.method private changeThreeGestureState(I)V
    .registers 5

    iget v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    packed-switch p1, :pswitch_data_2a

    :goto_8
    :try_start_8
    iput p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    :goto_a
    return-void

    :pswitch_b
    const-string/jumbo v1, "sys.miui.screenshot"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_8

    :catch_15
    move-exception v0

    const-string/jumbo v1, "MiuiPointerEventListener"

    const-string/jumbo v2, "RuntimeException when setprop"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :pswitch_20
    :try_start_20
    const-string/jumbo v1, "sys.miui.screenshot"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_29} :catch_15

    goto :goto_8

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_b
        :pswitch_20
    .end packed-switch
.end method

.method private checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .registers 16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-lez v10, :cond_11

    const/4 v10, 0x0

    return v10

    :cond_11
    const/4 v4, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x1

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v10, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    :goto_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v2, v10, :cond_54

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iget v10, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreshold:I

    sub-int v10, v1, v10

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-lez v10, :cond_41

    const/4 v10, 0x0

    return v10

    :cond_41
    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_54
    sub-float v10, v4, v6

    iget v11, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x43160000    # 150.0f

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_68

    sub-float v10, v3, v5

    if-ge v7, v1, :cond_6a

    :goto_63
    int-to-float v11, v7

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6c

    :cond_68
    const/4 v10, 0x0

    return v10

    :cond_6a
    move v7, v1

    goto :goto_63

    :cond_6c
    const/4 v10, 0x1

    return v10
.end method

.method private processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;)V
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x3

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    if-nez v3, :cond_17

    const-string/jumbo v3, "sys.boot_completed"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    iget-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    if-nez v3, :cond_17

    return-void

    :cond_17
    iget-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "device_provisioned"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_32

    move v3, v4

    :goto_2b
    iput-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    iget-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    if-nez v3, :cond_34

    return-void

    :cond_32
    move v3, v5

    goto :goto_2b

    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_42

    invoke-direct {p0, v5}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    :cond_3d
    :goto_3d
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-ne v3, v9, :cond_6f

    return-void

    :cond_42
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-nez v3, :cond_3d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v7, :cond_3d

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiPointerEventListener;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-direct {p0, v9}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    goto :goto_3d

    :cond_56
    invoke-direct {p0, v4}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v7, :cond_3d

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v1

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_6f
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-eqz v3, :cond_b9

    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-eq v3, v4, :cond_78

    return-void

    :cond_78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v7, :cond_82

    invoke-direct {p0, v8}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    return-void

    :cond_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_ba

    :cond_89
    :goto_89
    return-void

    :pswitch_8a
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8c
    if-ge v1, v7, :cond_ab

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    aget v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_9a

    if-lt v2, v7, :cond_9e

    :cond_9a
    invoke-direct {p0, v8}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    return-void

    :cond_9e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :cond_ab
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureThreshold:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_89

    invoke-direct {p0, v7}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    invoke-direct {p0}, Lcom/miui/server/MiuiPointerEventListener;->takeScreenshot()V

    goto :goto_89

    :cond_b9
    return-void

    :pswitch_data_ba
    .packed-switch 0x2
        :pswitch_8a
    .end packed-switch
.end method

.method private static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v5, "count_event"

    const-string/jumbo v4, "com.miui.gallery"

    const-string/jumbo v0, "com.miui.gallery.intent.action.SEND_STAT"

    const-string/jumbo v3, "stat_type"

    const-string/jumbo v1, "category"

    const-string/jumbo v2, "event"

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "stat_type"

    const-string/jumbo v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private takeScreenshot()V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screenshot"

    const-string/jumbo v2, "threefingers"

    invoke-static {v0, v1, v2}, Lcom/miui/server/MiuiPointerEventListener;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiPointerEventListener;->processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;)V

    return-void
.end method
