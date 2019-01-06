.class final Lmiui/util/AudioOutputHelper$CompatCollector;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"

# interfaces
.implements Lmiui/util/AudioOutputHelper$TrackCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatCollector"
.end annotation


# static fields
.field public static final ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final TRACK_SESSION_GRP_IDX:I = 0x3

.field public static final TRACK_STREAM_TYPE_GRP_IDX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "^Output thread 0x[\\w]+ tracks"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^Output thread 0x[\\w]+ active tracks"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(\\s|F)+\\d+\\s+\\d+\\s+(\\d+)\\s+\\d+\\s+\\w+\\s+(\\d+)\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-object v9, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_14

    :cond_13
    return-object v2

    :cond_14
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v3, 0x0

    if-eqz p4, :cond_59

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    iget v9, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    if-ne v9, v7, :cond_45

    iput-boolean p4, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    const/4 v3, 0x1

    goto :goto_45

    :cond_59
    if-nez v3, :cond_1

    new-instance v9, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v9, v7, v5, v8, p4}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmiui/util/AudioOutputHelper$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v2, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    new-instance v2, Lmiui/util/AudioOutputHelper$Result;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, p4, v3}, Lmiui/util/AudioOutputHelper$CompatCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    return-object v2

    :cond_1b
    sget-object v2, Lmiui/util/AudioOutputHelper$CompatCollector;->ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    new-instance v2, Lmiui/util/AudioOutputHelper$Result;

    invoke-direct {p0, p1, p3, p4, v4}, Lmiui/util/AudioOutputHelper$CompatCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    return-object v2

    :cond_34
    sget-object v2, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    return-object v2
.end method
