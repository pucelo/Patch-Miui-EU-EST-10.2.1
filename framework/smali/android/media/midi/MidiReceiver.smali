.class public abstract Landroid/media/midi/MidiReceiver;
.super Ljava/lang/Object;
.source "MidiReceiver.java"


# instance fields
.field private final mMaxMessageSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->onFlush()V

    return-void
.end method

.method public final getMaxMessageSize()I
    .registers 2

    iget v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return v0
.end method

.method public onFlush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract onSend([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    return-void
.end method

.method public send([BIIJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->getMaxMessageSize()I

    move-result v6

    :goto_4
    if-lez p3, :cond_15

    if-le p3, v6, :cond_13

    move v3, v6

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->onSend([BIIJ)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_4

    :cond_13
    move v3, p3

    goto :goto_9

    :cond_15
    return-void
.end method
