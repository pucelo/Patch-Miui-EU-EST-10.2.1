.class Lcom/miui/server/enterprise/DeviceManagerService$2;
.super Ljava/lang/Object;
.source "DeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/DeviceManagerService;->setBootAnimation(Landroid/os/ParcelFileDescriptor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/DeviceManagerService;

.field final synthetic val$fd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->this$0:Lcom/miui/server/enterprise/DeviceManagerService;

    iput-object p2, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_e2
    .catchall {:try_start_2 .. :try_end_d} :catchall_a8

    :try_start_d
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/persist/bootanimation.zip"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_e5
    .catchall {:try_start_d .. :try_end_1a} :catchall_db

    const/16 v8, 0x800

    :try_start_1c
    new-array v0, v8, [B

    :goto_1e
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_52

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_29} :catch_2a
    .catchall {:try_start_1c .. :try_end_29} :catchall_de

    goto :goto_1e

    :catch_2a
    move-exception v2

    move-object v6, v7

    move-object v4, v5

    :goto_2d
    :try_start_2d
    const-string/jumbo v8, "Enterprise-device"

    const-string/jumbo v9, "Failed to copy animation"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_a8

    if-eqz v4, :cond_3b

    :try_start_38
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3b
    if-eqz v6, :cond_40

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_40
    iget-object v8, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_49

    iget-object v8, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_49
    const-string/jumbo v8, "/persist/bootanimation.zip"

    const/16 v9, 0x1b4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_51} :catch_9d
    .catch Landroid/system/ErrnoException; {:try_start_38 .. :try_end_51} :catch_92

    :goto_51
    return-void

    :cond_52
    :try_start_52
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    const-string/jumbo v8, "Enterprise-device"

    const-string/jumbo v9, "Finish write bootanim file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5e} :catch_2a
    .catchall {:try_start_52 .. :try_end_5e} :catchall_de

    if-eqz v5, :cond_63

    :try_start_60
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_63
    if-eqz v7, :cond_68

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_68
    iget-object v8, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_71

    iget-object v8, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_71
    const-string/jumbo v8, "/persist/bootanimation.zip"

    const/16 v9, 0x1b4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_79} :catch_87
    .catch Landroid/system/ErrnoException; {:try_start_60 .. :try_end_79} :catch_7c

    :goto_79
    move-object v6, v7

    move-object v4, v5

    goto :goto_51

    :catch_7c
    move-exception v1

    const-string/jumbo v8, "Enterprise-device"

    const-string/jumbo v9, "Failed to chmod"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_87
    move-exception v2

    const-string/jumbo v8, "Enterprise-device"

    const-string/jumbo v9, "Failed to close IO"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    :catch_92
    move-exception v1

    const-string/jumbo v8, "Enterprise-device"

    const-string/jumbo v9, "Failed to chmod"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :catch_9d
    move-exception v2

    const-string/jumbo v8, "Enterprise-device"

    const-string/jumbo v9, "Failed to close IO"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    :catchall_a8
    move-exception v8

    :goto_a9
    if-eqz v4, :cond_ae

    :try_start_ab
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_ae
    if-eqz v6, :cond_b3

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_b3
    iget-object v9, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v9, :cond_bc

    iget-object v9, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_bc
    const-string/jumbo v9, "/persist/bootanimation.zip"

    const/16 v10, 0x1b4

    invoke-static {v9, v10}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c4} :catch_d0
    .catch Landroid/system/ErrnoException; {:try_start_ab .. :try_end_c4} :catch_c5

    :goto_c4
    throw v8

    :catch_c5
    move-exception v1

    const-string/jumbo v9, "Enterprise-device"

    const-string/jumbo v10, "Failed to chmod"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    :catch_d0
    move-exception v2

    const-string/jumbo v9, "Enterprise-device"

    const-string/jumbo v10, "Failed to close IO"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    :catchall_db
    move-exception v8

    move-object v4, v5

    goto :goto_a9

    :catchall_de
    move-exception v8

    move-object v6, v7

    move-object v4, v5

    goto :goto_a9

    :catch_e2
    move-exception v2

    goto/16 :goto_2d

    :catch_e5
    move-exception v2

    move-object v4, v5

    goto/16 :goto_2d
.end method
