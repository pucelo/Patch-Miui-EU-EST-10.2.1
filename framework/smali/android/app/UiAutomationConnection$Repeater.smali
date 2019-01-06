.class public Landroid/app/UiAutomationConnection$Repeater;
.super Ljava/lang/Object;
.source "UiAutomationConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Repeater"
.end annotation


# instance fields
.field private final readFrom:Ljava/io/InputStream;

.field final synthetic this$0:Landroid/app/UiAutomationConnection;

.field private final writeTo:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    iput-object p1, p0, Landroid/app/UiAutomationConnection$Repeater;->this$0:Landroid/app/UiAutomationConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v3, 0x2000

    :try_start_2
    new-array v0, v3, [B

    :goto_4
    iget-object v3, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_23
    .catchall {:try_start_2 .. :try_end_9} :catchall_2d

    move-result v2

    if-gez v2, :cond_17

    iget-object v3, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v3, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_17
    :try_start_17
    iget-object v3, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_23
    .catchall {:try_start_17 .. :try_end_22} :catchall_2d

    goto :goto_4

    :catch_23
    move-exception v1

    :try_start_24
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error while reading/writing "

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v3

    iget-object v4, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v4, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method
