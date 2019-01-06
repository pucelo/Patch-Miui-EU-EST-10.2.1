.class Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;
.super Ljava/lang/Object;
.source "LoudnessEnhancer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/LoudnessEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/LoudnessEnhancer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/LoudnessEnhancer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12

    const/4 v6, 0x4

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v3}, Landroid/media/audiofx/LoudnessEnhancer;->-get1(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_d
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v3}, Landroid/media/audiofx/LoudnessEnhancer;->-get0(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v3}, Landroid/media/audiofx/LoudnessEnhancer;->-get0(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_3c

    move-result-object v0

    :cond_1b
    monitor-exit v4

    if-eqz v0, :cond_3b

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    array-length v3, p3

    if-ne v3, v6, :cond_28

    invoke-static {p3, v5}, Landroid/media/audiofx/LoudnessEnhancer;->byteArrayToInt([BI)I

    move-result v1

    :cond_28
    array-length v3, p4

    if-ne v3, v6, :cond_2f

    invoke-static {p4, v5}, Landroid/media/audiofx/LoudnessEnhancer;->byteArrayToInt([BI)I

    move-result v2

    :cond_2f
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3b

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3b

    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/LoudnessEnhancer;II)V

    :cond_3b
    return-void

    :catchall_3c
    move-exception v3

    monitor-exit v4

    throw v3
.end method
