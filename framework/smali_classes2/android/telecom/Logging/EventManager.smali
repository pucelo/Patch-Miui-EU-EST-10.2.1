.class public Landroid/telecom/Logging/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$Event;,
        Landroid/telecom/Logging/EventManager$EventListener;,
        Landroid/telecom/Logging/EventManager$EventRecord;,
        Landroid/telecom/Logging/EventManager$Loggable;,
        Landroid/telecom/Logging/EventManager$TimedEventPair;
    }
.end annotation


# static fields
.field public static final DEFAULT_EVENTS_TO_CACHE:I = 0xa

.field public static final TAG:Ljava/lang/String; = "Logging.Events"

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mCallEventRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Logging/EventManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

.field private final requestResponsePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Logging/EventManager$TimedEventPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sDateFormat:Ljava/text/DateFormat;


# direct methods
.method static synthetic -get0(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/Logging/EventManager;)Ljava/text/DateFormat;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->sDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->sDateFormat:Ljava/text/DateFormat;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iput-object p1, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->sDateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .registers 8

    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    if-eqz v2, :cond_1f

    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2c
    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$EventListener;

    invoke-interface {v0, p1}, Landroid/telecom/Logging/EventManager$EventListener;->eventRecordAdded(Landroid/telecom/Logging/EventManager$EventRecord;)V
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_42

    goto :goto_32

    :catchall_42
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_45
    monitor-exit v5

    return-void
.end method

.method static synthetic lambda$-android_telecom_Logging_EventManager_11918(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 6

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/EventManager$Event;

    iget-wide v2, v0, Landroid/telecom/Logging/EventManager$Event;->time:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/EventManager$Event;

    iget-wide v0, v0, Landroid/telecom/Logging/EventManager$Event;->time:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .registers 5

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v2, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v2, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v2, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public changeEventCacheSize(I)V
    .registers 4

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY$1;

    invoke-direct {v1, p0}, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const-string/jumbo v2, "Historical Events:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v0, p1}, Landroid/telecom/Logging/EventManager$EventRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_f

    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 16

    const-string/jumbo v8, "Historical Events (sorted by time):"

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getEvents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$Event;

    new-instance v8, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3e
    sget-object v0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->$INST$0:Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;

    invoke-interface {v7, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v9, p0, Landroid/telecom/Logging/EventManager;->sDateFormat:Ljava/text/DateFormat;

    new-instance v10, Ljava/util/Date;

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/Logging/EventManager$Event;

    iget-wide v12, v8, Landroid/telecom/Logging/EventManager$Event;->time:J

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, ","

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v8}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, ","

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/Logging/EventManager$Event;

    iget-object v8, v8, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, ","

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/Logging/EventManager$Event;

    iget-object v8, v8, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_9a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    iget-object v3, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    invoke-interface {v3}, Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1b

    const-string/jumbo v3, "Logging.Events"

    const-string/jumbo v4, "Non-call EVENT: %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1b
    iget-object v4, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v4

    :try_start_1e
    iget-object v3, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    new-instance v1, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {v1, p0, p1}, Landroid/telecom/Logging/EventManager$EventRecord;-><init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V

    invoke-direct {p0, v1}, Landroid/telecom/Logging/EventManager;->addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V

    :cond_2e
    iget-object v3, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v2, p2, v0, p3}, Landroid/telecom/Logging/EventManager$EventRecord;->addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_3b

    monitor-exit v4

    return-void

    :catchall_3b
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public varargs event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    const/4 v4, 0x0

    if-eqz p4, :cond_6

    :try_start_3
    array-length v2, p4
    :try_end_4
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_4} :catch_12

    if-nez v2, :cond_b

    :cond_6
    move-object v1, p3

    :goto_7
    invoke-virtual {p0, p1, p2, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_b
    :try_start_b
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/util/IllegalFormatException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    goto :goto_7

    :catch_12
    move-exception v0

    const-string/jumbo v2, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v0, v2, v3}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (An error occurred while formatting the message.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getCallEventRecordMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method public getEventRecords()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method synthetic lambda$-android_telecom_Logging_EventManager_12735(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .registers 6

    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$EventRecord;

    if-eqz v0, :cond_1f

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .registers 4

    if-eqz p1, :cond_b

    sget-object v1, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
