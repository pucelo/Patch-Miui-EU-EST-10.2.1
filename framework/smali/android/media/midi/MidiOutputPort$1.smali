.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "MidiOutputPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiOutputPort;)V
    .registers 2

    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_4
    :try_start_4
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_3c
    .catchall {:try_start_4 .. :try_end_d} :catchall_66

    move-result v6

    if-gez v6, :cond_1a

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    move-result v8

    packed-switch v8, :pswitch_data_7c

    const-string/jumbo v0, "MidiOutputPort"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown packet type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3b} :catch_3c
    .catchall {:try_start_1a .. :try_end_3b} :catchall_66

    goto :goto_4

    :catch_3c
    move-exception v7

    :try_start_3d
    const-string/jumbo v0, "MidiOutputPort"

    const-string/jumbo v9, "read failed"

    invoke-static {v0, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_66

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_19

    :pswitch_50
    :try_start_50
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    move-result v2

    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    move-result v3

    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    move-result-wide v4

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_65} :catch_3c
    .catchall {:try_start_50 .. :try_end_65} :catchall_66

    goto :goto_4

    :catchall_66
    move-exception v0

    iget-object v9, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v9}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :pswitch_71
    :try_start_71
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->flush()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7a} :catch_3c
    .catchall {:try_start_71 .. :try_end_7a} :catchall_66

    goto :goto_4

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_50
        :pswitch_71
    .end packed-switch
.end method
