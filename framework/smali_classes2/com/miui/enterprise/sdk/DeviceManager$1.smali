.class Lcom/miui/enterprise/sdk/DeviceManager$1;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/enterprise/sdk/DeviceManager;->setBootAnimation(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/enterprise/sdk/DeviceManager;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pip:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/miui/enterprise/sdk/DeviceManager;[Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->this$0:Lcom/miui/enterprise/sdk/DeviceManager;

    iput-object p2, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_a8
    .catchall {:try_start_2 .. :try_end_e} :catchall_82

    :try_start_e
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_aa
    .catchall {:try_start_e .. :try_end_1c} :catchall_a1

    const/16 v7, 0x800

    :try_start_1e
    new-array v0, v7, [B

    :goto_20
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_4b

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_2c
    .catchall {:try_start_1e .. :try_end_2b} :catchall_a4

    goto :goto_20

    :catch_2c
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    :goto_2f
    :try_start_2f
    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "something wrong"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_82

    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3d
    if-eqz v5, :cond_42

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_42
    iget-object v7, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4a} :catch_77

    :goto_4a
    return-void

    :cond_4b
    :try_start_4b
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "Finish trans bootanim file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_57} :catch_2c
    .catchall {:try_start_4b .. :try_end_57} :catchall_a4

    if-eqz v4, :cond_5c

    :try_start_59
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5c
    if-eqz v6, :cond_61

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_61
    iget-object v7, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_69} :catch_6c

    :goto_69
    move-object v5, v6

    move-object v3, v4

    goto :goto_4a

    :catch_6c
    move-exception v1

    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "something wrong"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    :catch_77
    move-exception v1

    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "something wrong"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :catchall_82
    move-exception v7

    :goto_83
    if-eqz v3, :cond_88

    :try_start_85
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_88
    if-eqz v5, :cond_8d

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_8d
    iget-object v8, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_95} :catch_96

    :goto_95
    throw v7

    :catch_96
    move-exception v1

    const-string/jumbo v8, "DeviceManager"

    const-string/jumbo v9, "something wrong"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    :catchall_a1
    move-exception v7

    move-object v3, v4

    goto :goto_83

    :catchall_a4
    move-exception v7

    move-object v5, v6

    move-object v3, v4

    goto :goto_83

    :catch_a8
    move-exception v1

    goto :goto_2f

    :catch_aa
    move-exception v1

    move-object v3, v4

    goto :goto_2f
.end method
