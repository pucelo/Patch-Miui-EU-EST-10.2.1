.class Landroid/media/audiofx/BassBoost$BaseParameterListener;
.super Ljava/lang/Object;
.source "BassBoost.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/BassBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/BassBoost;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/BassBoost;)V
    .registers 2

    iput-object p1, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$BaseParameterListener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->-get1(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_a
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->-get0(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->-get0(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_37

    move-result-object v0

    :cond_18
    monitor-exit v4

    if-eqz v0, :cond_36

    const/4 v1, -0x1

    const/4 v2, -0x1

    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_25

    invoke-static {p3, v6}, Landroid/media/audiofx/BassBoost;->byteArrayToInt([BI)I

    move-result v1

    :cond_25
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    invoke-static {p4, v6}, Landroid/media/audiofx/BassBoost;->byteArrayToShort([BI)S

    move-result v2

    :cond_2d
    if-eq v1, v5, :cond_36

    if-eq v2, v5, :cond_36

    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/BassBoost$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/BassBoost;IIS)V

    :cond_36
    return-void

    :catchall_37
    move-exception v3

    monitor-exit v4

    throw v3
.end method
