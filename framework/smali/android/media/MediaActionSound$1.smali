.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "MediaActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/media/MediaActionSound;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 12

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-static {v0}, Landroid/media/MediaActionSound;->-get0(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    move-result-object v3

    array-length v5, v3

    move v0, v4

    :goto_b
    if-ge v0, v5, :cond_81

    aget-object v7, v3, v0

    iget v6, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    if-eq v6, p2, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    monitor-enter v7

    if-eqz p3, :cond_49

    const/4 v0, 0x0

    :try_start_1b
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    const/4 v0, 0x0

    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    const-string/jumbo v0, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnLoadCompleteListener() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_86

    monitor-exit v7

    return-void

    :cond_49
    :try_start_49
    iget v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v0, :pswitch_data_90

    const-string/jumbo v0, "MediaActionSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OnLoadCompleteListener() called in wrong state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " for sound: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v7, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_49 .. :try_end_77} :catchall_86

    :goto_77
    monitor-exit v7

    if-eqz v1, :cond_81

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_81
    return-void

    :pswitch_82
    const/4 v0, 0x3

    :try_start_83
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_86

    goto :goto_77

    :catchall_86
    move-exception v0

    monitor-exit v7

    throw v0

    :pswitch_89
    :try_start_89
    iget v1, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    const/4 v0, 0x3

    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_86

    goto :goto_77

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_82
        :pswitch_89
    .end packed-switch
.end method