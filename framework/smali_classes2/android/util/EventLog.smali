.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final TAG:Ljava/lang/String; = "EventLog"

.field private static final TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagCode(Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1

    :cond_12
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static getTagName(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeWriteEvent(IF)I
.end method

.method private static native nativeWriteEvent(II)I
.end method

.method private static native nativeWriteEvent(IJ)I
.end method

.method private static native nativeWriteEvent(ILjava/lang/String;)I
.end method

.method private static varargs native nativeWriteEvent(I[Ljava/lang/Object;)I
.end method

.method public static native readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readEventsOnWrapping([IJLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized readTagsFile()V
    .registers 14

    const-class v11, Landroid/util/EventLog;

    monitor-enter v11

    :try_start_3
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v10, :cond_d

    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c6

    if-eqz v10, :cond_d

    monitor-exit v11

    return-void

    :cond_d
    :try_start_d
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    const-string/jumbo v10, "^\\s*(#.*)?$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string/jumbo v10, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_c6

    move-result-object v9

    const/4 v7, 0x0

    :try_start_2a
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string/jumbo v12, "/system/etc/event-log-tags"

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x100

    invoke-direct {v8, v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_39} :catch_d8
    .catchall {:try_start_2a .. :try_end_39} :catchall_d6

    :cond_39
    :goto_39
    :try_start_39
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c9

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_39

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_80

    const-string/jumbo v10, "EventLog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_6d} :catch_6e
    .catchall {:try_start_39 .. :try_end_6d} :catchall_be

    goto :goto_39

    :catch_6e
    move-exception v1

    move-object v7, v8

    :goto_70
    :try_start_70
    const-string/jumbo v10, "EventLog"

    const-string/jumbo v12, "Error reading /system/etc/event-log-tags"

    invoke-static {v10, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_d6

    if-eqz v7, :cond_7e

    :try_start_7b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_d2
    .catchall {:try_start_7b .. :try_end_7e} :catchall_c6

    :cond_7e
    :goto_7e
    monitor-exit v11

    return-void

    :cond_80
    const/4 v10, 0x1

    :try_start_81
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_a0} :catch_a1
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_a0} :catch_6e
    .catchall {:try_start_81 .. :try_end_a0} :catchall_be

    goto :goto_39

    :catch_a1
    move-exception v2

    :try_start_a2
    const-string/jumbo v10, "EventLog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_bc} :catch_6e
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_be

    goto/16 :goto_39

    :catchall_be
    move-exception v10

    move-object v7, v8

    :goto_c0
    if-eqz v7, :cond_c5

    :try_start_c2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_d4
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    :cond_c5
    :goto_c5
    :try_start_c5
    throw v10
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_c9
    if-eqz v8, :cond_ce

    :try_start_cb
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_d0
    .catchall {:try_start_cb .. :try_end_ce} :catchall_c6

    :cond_ce
    :goto_ce
    move-object v7, v8

    goto :goto_7e

    :catch_d0
    move-exception v1

    goto :goto_ce

    :catch_d2
    move-exception v1

    goto :goto_7e

    :catch_d4
    move-exception v1

    goto :goto_c5

    :catchall_d6
    move-exception v10

    goto :goto_c0

    :catch_d8
    move-exception v1

    goto :goto_70
.end method

.method public static writeEvent(IF)I
    .registers 3

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEvent(IF)V

    invoke-static {p0, p1}, Landroid/util/EventLog;->nativeWriteEvent(IF)I

    move-result v0

    return v0
.end method

.method public static writeEvent(II)I
    .registers 3

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEvent(II)V

    invoke-static {p0, p1}, Landroid/util/EventLog;->nativeWriteEvent(II)I

    move-result v0

    return v0
.end method

.method public static writeEvent(IJ)I
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/os/statistics/EventLogSuperviser;->notifyEvent(IJ)V

    invoke-static {p0, p1, p2}, Landroid/util/EventLog;->nativeWriteEvent(IJ)I

    move-result v0

    return v0
.end method

.method public static writeEvent(ILjava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEvent(ILjava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/EventLog;->nativeWriteEvent(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)I
    .registers 3

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEvent(I[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/util/EventLog;->nativeWriteEvent(I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
