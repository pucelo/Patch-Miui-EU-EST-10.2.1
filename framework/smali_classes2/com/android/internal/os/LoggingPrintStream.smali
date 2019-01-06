.class abstract Lcom/android/internal/os/LoggingPrintStream;
.super Ljava/io/PrintStream;
.source "LoggingPrintStream.java"


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private decodedChars:Ljava/nio/CharBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private encodedBytes:Ljava/nio/ByteBuffer;

.field private final formatter:Ljava/util/Formatter;


# direct methods
.method protected constructor <init>()V
    .registers 4

    new-instance v0, Lcom/android/internal/os/LoggingPrintStream$1;

    invoke-direct {v0}, Lcom/android/internal/os/LoggingPrintStream$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    return-void
.end method

.method private flush(Z)V
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_22

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_8

    :cond_22
    if-eqz p1, :cond_35

    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    :cond_2f
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_34
    return-void

    :cond_35
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_34
.end method


# virtual methods
.method public declared-synchronized append(C)Ljava/io/PrintStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->print(C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-object p0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs declared-synchronized format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6

    monitor-enter p0

    if-nez p2, :cond_f

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "format"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_c

    monitor-exit p0

    return-object p0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method public declared-synchronized print(C)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    if-ne p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(D)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(F)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print([C)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized println()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(C)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(D)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(F)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_25

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_25

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_10

    :cond_25
    if-ge v2, v0, :cond_2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_3a

    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    :cond_30
    :try_start_30
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    goto :goto_2e

    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized println(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println([C)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setError()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v3, :cond_2b

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    :cond_2b
    add-int v1, p2, p3

    :goto_2d
    if-ge p2, v1, :cond_71

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v4, v1, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v2

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_46
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6e

    goto :goto_2d

    :catchall_6e
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_71
    const/4 v3, 0x0

    :try_start_72
    invoke-direct {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6e

    monitor-exit p0

    return-void
.end method
