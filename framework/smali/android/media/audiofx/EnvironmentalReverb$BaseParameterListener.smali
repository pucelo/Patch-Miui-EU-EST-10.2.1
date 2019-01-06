.class Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/EnvironmentalReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/EnvironmentalReverb;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/EnvironmentalReverb;)V
    .registers 2

    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 13

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->-get1(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_b
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->-get0(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->-get0(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_37

    move-result-object v0

    :cond_19
    monitor-exit v4

    if-eqz v0, :cond_36

    const/4 v1, -0x1

    const/4 v2, -0x1

    array-length v3, p3

    if-ne v3, v7, :cond_25

    invoke-static {p3, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    :cond_25
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3a

    invoke-static {p4, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    :cond_2d
    :goto_2d
    if-eq v1, v6, :cond_36

    if-eq v2, v6, :cond_36

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/EnvironmentalReverb;III)V

    :cond_36
    return-void

    :catchall_37
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3a
    array-length v3, p4

    if-ne v3, v7, :cond_2d

    invoke-static {p4, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v2

    goto :goto_2d
.end method
