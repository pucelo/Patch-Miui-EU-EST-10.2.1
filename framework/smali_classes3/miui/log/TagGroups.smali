.class public final Lmiui/log/TagGroups;
.super Ljava/lang/Object;
.source "TagGroups.java"


# static fields
.field public static final TAGGROUP_BROADCAST:Ljava/lang/String; = "Broadcast"

.field public static final TagGroupBroadcast:Lmiui/log/TagGroup;

.field private static final allTagGroups:[Lmiui/log/TagGroup;

.field private static final tagGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/TagGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lmiui/log/TagGroup;

    const-string/jumbo v3, "Broadcast"

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "SendBroadcast"

    aput-object v5, v4, v1

    invoke-direct {v2, v3, v4}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    new-array v2, v6, [Lmiui/log/TagGroup;

    sget-object v3, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    aput-object v3, v2, v1

    sput-object v2, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    sget-object v2, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    array-length v3, v2

    :goto_25
    if-ge v1, v3, :cond_33

    aget-object v0, v2, v1

    sget-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    iget-object v5, v0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lmiui/log/TagGroup;
    .registers 2

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    return-object v0
.end method

.method public static isOn(Ljava/lang/String;)Z
    .registers 3

    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lmiui/log/TagGroup;->isOn()Z

    move-result v1

    goto :goto_b
.end method

.method public static switchOff(Ljava/lang/String;)V
    .registers 3

    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOff()V

    :cond_d
    return-void
.end method

.method public static switchOn(Ljava/lang/String;)V
    .registers 3

    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOn()V

    :cond_d
    return-void
.end method
