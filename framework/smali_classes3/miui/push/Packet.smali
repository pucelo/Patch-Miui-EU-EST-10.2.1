.class public abstract Lmiui/push/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field private static DEFAULT_XML_NS:Ljava/lang/String; = null

.field public static final ID_NOT_AVAILABLE:Ljava/lang/String; = "ID_NOT_AVAILABLE"

.field public static final XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private chId:Ljava/lang/String;

.field private error:Lmiui/push/XMPPError;

.field private from:Ljava/lang/String;

.field private packetExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private packetID:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private to:Ljava/lang/String;

.field private xmlns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    sget-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lmiui/push/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/push/Packet;->id:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    iput-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    iput-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    iput-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    iput-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    iput-object v1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 10

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v5, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v5, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    iput-object v6, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    iput-object v6, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    iput-object v6, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    iput-object v6, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    iput-object v6, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    const-string/jumbo v5, "ext_to"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    const-string/jumbo v5, "ext_from"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    const-string/jumbo v5, "ext_chid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    const-string/jumbo v5, "ext_pkt_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    const-string/jumbo v5, "ext_exts"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_6c

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    const/4 v5, 0x0

    array-length v6, v3

    :goto_57
    if-ge v5, v6, :cond_6c

    aget-object v4, v3, v5

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v2

    if-eqz v2, :cond_69

    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_6c
    const-string/jumbo v5, "ext_ERROR"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7c

    new-instance v5, Lmiui/push/XMPPError;

    invoke-direct {v5, v1}, Lmiui/push/XMPPError;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    :cond_7c
    return-void
.end method

.method public static getDefaultLanguage()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .registers 6

    const-class v1, Lmiui/push/Packet;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lmiui/push/Packet;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lmiui/push/Packet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultXmlns(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addExtension(Lmiui/push/CommonPacketExtension;)V
    .registers 3

    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized deleteProperty(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lmiui/push/Packet;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lmiui/push/Packet;

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    iget-object v4, v0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v3, v4}, Lmiui/push/XMPPError;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    :cond_25
    return v2

    :cond_26
    iget-object v3, v0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-nez v3, :cond_25

    :cond_2a
    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3f

    :cond_3a
    return v2

    :cond_3b
    iget-object v3, v0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-nez v3, :cond_3a

    :cond_3f
    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    iget-object v4, v0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    return v2

    :cond_4a
    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5f

    :cond_5a
    return v2

    :cond_5b
    iget-object v3, v0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-nez v3, :cond_5a

    :cond_5f
    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_74

    :cond_6f
    return v2

    :cond_70
    iget-object v3, v0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-nez v3, :cond_6f

    :cond_74
    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_85

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    iget-object v4, v0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_89

    :cond_84
    return v2

    :cond_85
    iget-object v3, v0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-nez v3, :cond_84

    :cond_89
    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9e

    :cond_99
    return v2

    :cond_9a
    iget-object v3, v0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-nez v3, :cond_99

    :cond_9e
    iget-object v3, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_af

    iget-object v1, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    iget-object v2, v0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_ac
    :goto_ac
    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_af
    iget-object v3, v0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-nez v3, :cond_ac

    move v1, v2

    goto :goto_ac
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lmiui/push/XMPPError;
    .registers 2

    iget-object v0, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/push/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    if-eqz p2, :cond_1f

    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1f
    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v0

    :cond_2a
    return-object v3
.end method

.method public declared-synchronized getExtensions()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getExtensionsXML()Ljava/lang/String;
    .registers 15

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/push/Packet;->getExtensions()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/push/CommonPacketExtension;

    invoke-interface {v5}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_e

    :catchall_22
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_25
    :try_start_25
    iget-object v12, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v12, :cond_163

    iget-object v12, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_163

    const-string/jumbo v12, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Packet;->getPropertyNames()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_41
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lmiui/push/Packet;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v12, "<property>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "<name>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</name>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "<value type=\""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_8e

    const-string/jumbo v12, "integer\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    :goto_87
    const-string/jumbo v12, "</property>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_8e
    instance-of v12, v11, Ljava/lang/Long;

    if-eqz v12, :cond_a4

    const-string/jumbo v12, "long\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_a4
    instance-of v12, v11, Ljava/lang/Float;

    if-eqz v12, :cond_ba

    const-string/jumbo v12, "float\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_ba
    instance-of v12, v11, Ljava/lang/Double;

    if-eqz v12, :cond_d0

    const-string/jumbo v12, "double\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_d0
    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_e6

    const-string/jumbo v12, "boolean\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_e6
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_100

    const-string/jumbo v12, "string\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "</value>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ff
    .catchall {:try_start_25 .. :try_end_ff} :catchall_22

    goto :goto_87

    :cond_100
    const/4 v1, 0x0

    const/4 v9, 0x0

    :try_start_102
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_107} :catch_138
    .catchall {:try_start_102 .. :try_end_107} :catchall_14d

    :try_start_107
    new-instance v10, Ljava/io/ObjectOutputStream;

    invoke-direct {v10, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10c} :catch_170
    .catchall {:try_start_107 .. :try_end_10c} :catchall_169

    :try_start_10c
    invoke-virtual {v10, v11}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const-string/jumbo v12, "java-object\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_127} :catch_173
    .catchall {:try_start_10c .. :try_end_127} :catchall_16c

    if-eqz v10, :cond_12c

    :try_start_129
    invoke-virtual {v10}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12c} :catch_136
    .catchall {:try_start_129 .. :try_end_12c} :catchall_22

    :cond_12c
    :goto_12c
    if-eqz v2, :cond_87

    :try_start_12e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_133
    .catchall {:try_start_12e .. :try_end_131} :catchall_22

    goto/16 :goto_87

    :catch_133
    move-exception v3

    goto/16 :goto_87

    :catch_136
    move-exception v3

    goto :goto_12c

    :catch_138
    move-exception v3

    :goto_139
    :try_start_139
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_14d

    if-eqz v9, :cond_141

    :try_start_13e
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_14b
    .catchall {:try_start_13e .. :try_end_141} :catchall_22

    :cond_141
    :goto_141
    if-eqz v1, :cond_87

    :try_start_143
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_146} :catch_148
    .catchall {:try_start_143 .. :try_end_146} :catchall_22

    goto/16 :goto_87

    :catch_148
    move-exception v3

    goto/16 :goto_87

    :catch_14b
    move-exception v3

    goto :goto_141

    :catchall_14d
    move-exception v12

    :goto_14e
    if-eqz v9, :cond_153

    :try_start_150
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_153} :catch_159
    .catchall {:try_start_150 .. :try_end_153} :catchall_22

    :cond_153
    :goto_153
    if-eqz v1, :cond_158

    :try_start_155
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_15b
    .catchall {:try_start_155 .. :try_end_158} :catchall_22

    :cond_158
    :goto_158
    :try_start_158
    throw v12

    :catch_159
    move-exception v3

    goto :goto_153

    :catch_15b
    move-exception v3

    goto :goto_158

    :cond_15d
    const-string/jumbo v12, "</properties>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_166
    .catchall {:try_start_158 .. :try_end_166} :catchall_22

    move-result-object v12

    monitor-exit p0

    return-object v12

    :catchall_169
    move-exception v12

    move-object v1, v2

    goto :goto_14e

    :catchall_16c
    move-exception v12

    move-object v9, v10

    move-object v1, v2

    goto :goto_14e

    :catch_170
    move-exception v3

    move-object v1, v2

    goto :goto_139

    :catch_173
    move-exception v3

    move-object v9, v10

    move-object v1, v2

    goto :goto_139
.end method

.method public getFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v2

    :cond_d
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-nez v0, :cond_17

    invoke-static {}, Lmiui/push/Packet;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    :cond_17
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_10

    if-nez v0, :cond_8

    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_33
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_41
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_63

    iget-object v2, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v2}, Lmiui/push/XMPPError;->hashCode()I

    move-result v2

    :cond_63
    add-int v0, v1, v2

    return v0

    :cond_66
    const/4 v0, 0x0

    goto :goto_b

    :cond_68
    move v1, v2

    goto :goto_17

    :cond_6a
    move v1, v2

    goto :goto_25

    :cond_6c
    move v1, v2

    goto :goto_33

    :cond_6e
    move v1, v2

    goto :goto_41
.end method

.method public removeExtension(Lmiui/push/CommonPacketExtension;)V
    .registers 3

    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    return-void
.end method

.method public setError(Lmiui/push/XMPPError;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "ext_ns"

    iget-object v8, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v7, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string/jumbo v7, "ext_from"

    iget-object v8, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v7, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    const-string/jumbo v7, "ext_to"

    iget-object v8, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v7, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    const-string/jumbo v7, "ext_pkt_id"

    iget-object v8, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    iget-object v7, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    const-string/jumbo v7, "ext_chid"

    iget-object v8, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    iget-object v7, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v7, :cond_65

    const-string/jumbo v7, "ext_ERROR"

    iget-object v8, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v8}, Lmiui/push/XMPPError;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_65
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-eqz v7, :cond_96

    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [Landroid/os/Bundle;

    const/4 v4, 0x0

    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_78
    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_78

    add-int/lit8 v5, v4, 0x1

    aput-object v6, v3, v4

    move v4, v5

    goto :goto_78

    :cond_90
    const-string/jumbo v7, "ext_exts"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_96
    return-object v0
.end method

.method public abstract toXML()Ljava/lang/String;
.end method
