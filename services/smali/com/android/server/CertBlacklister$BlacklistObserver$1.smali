.class Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-virtual {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Certificate blacklist changed, updating..."

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_67

    const/4 v2, 0x0

    :try_start_19
    const-string/jumbo v5, "journal"

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v8}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_33} :catch_59
    .catchall {:try_start_19 .. :try_end_33} :catchall_6a

    :try_start_33
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v7}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get0(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Certificate blacklist updated"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_54} :catch_72
    .catchall {:try_start_33 .. :try_end_54} :catchall_6f

    :try_start_54
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_67

    :cond_57
    :goto_57
    monitor-exit v6

    return-void

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Failed to write blacklist"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_6a

    :try_start_63
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_57

    :catchall_67
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_6a
    move-exception v5

    :goto_6b
    :try_start_6b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_67

    :catchall_6f
    move-exception v5

    move-object v2, v3

    goto :goto_6b

    :catch_72
    move-exception v1

    move-object v2, v3

    goto :goto_5a
.end method
