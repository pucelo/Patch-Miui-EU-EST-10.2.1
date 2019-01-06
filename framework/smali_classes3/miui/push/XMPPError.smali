.class public Lmiui/push/XMPPError;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/XMPPError$Condition;
    }
.end annotation


# instance fields
.field private applicationExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private condition:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    iput p1, p0, Lmiui/push/XMPPError;->code:I

    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    iput p1, p0, Lmiui/push/XMPPError;->code:I

    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    iput p1, p0, Lmiui/push/XMPPError;->code:I

    iput-object p2, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    iput-object p3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    iput-object p4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    iput-object p5, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    iput-object p6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    const-string/jumbo v4, "ext_err_code"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/push/XMPPError;->code:I

    const-string/jumbo v4, "ext_err_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string/jumbo v4, "ext_err_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    :cond_21
    const-string/jumbo v4, "ext_err_cond"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    const-string/jumbo v4, "ext_err_reason"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    const-string/jumbo v4, "ext_err_msg"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    const-string/jumbo v4, "ext_exts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_64

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    const/4 v4, 0x0

    array-length v5, v2

    :goto_4f
    if-ge v4, v5, :cond_64

    aget-object v3, v2, v4

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_64
    return-void
.end method

.method public constructor <init>(Lmiui/push/XMPPError$Condition;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmiui/push/XMPPError$Condition;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-void
.end method

.method private init(Lmiui/push/XMPPError$Condition;)V
    .registers 3

    invoke-static {p1}, Lmiui/push/XMPPError$Condition;->-get0(Lmiui/push/XMPPError$Condition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addExtension(Lmiui/push/CommonPacketExtension;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Lmiui/push/XMPPError;->code:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/PacketExtension;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_36

    if-eqz v2, :cond_8

    if-nez p1, :cond_a

    :cond_8
    monitor-exit p0

    return-object v3

    :cond_a
    if-eqz p2, :cond_8

    :try_start_c
    iget-object v2, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    invoke-interface {v0}, Lmiui/push/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Lmiui/push/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_36

    move-result v2

    if-eqz v2, :cond_12

    monitor-exit p0

    return-object v0

    :cond_34
    monitor-exit p0

    return-object v3

    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setExtension(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v7, :cond_11

    const-string/jumbo v7, "ext_err_type"

    iget-object v8, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string/jumbo v7, "ext_err_code"

    iget v8, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v7, :cond_25

    const-string/jumbo v7, "ext_err_reason"

    iget-object v8, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v7, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v7, :cond_31

    const-string/jumbo v7, "ext_err_cond"

    iget-object v8, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object v7, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v7, :cond_3d

    const-string/jumbo v7, "ext_err_msg"

    iget-object v8, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-eqz v7, :cond_6e

    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [Landroid/os/Bundle;

    const/4 v4, 0x0

    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_50

    add-int/lit8 v5, v4, 0x1

    aput-object v6, v3, v4

    move v4, v5

    goto :goto_50

    :cond_68
    const-string/jumbo v7, "ext_exts"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_6e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_31

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<error code=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v3, :cond_2d

    const-string/jumbo v3, " type=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    iget-object v3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v3, :cond_42

    const-string/jumbo v3, " reason=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    const-string/jumbo v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v3, :cond_5e

    const-string/jumbo v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    iget-object v3, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v3, :cond_73

    const-string/jumbo v3, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "</text>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    invoke-virtual {p0}, Lmiui/push/XMPPError;->getExtensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    invoke-interface {v1}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_8f
    const-string/jumbo v3, "</error>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
