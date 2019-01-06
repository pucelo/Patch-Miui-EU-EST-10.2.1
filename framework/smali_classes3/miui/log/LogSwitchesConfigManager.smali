.class public final Lmiui/log/LogSwitchesConfigManager;
.super Ljava/lang/Object;
.source "LogSwitchesConfigManager.java"


# static fields
.field public static final ACTION_REVERT_MIUILOG_SWITCHES:Ljava/lang/String; = "miui.intent.action.REVERT_MIUILOG_SWITCHES"

.field public static final ACTION_SWITCH_OFF_MIUILOGS:Ljava/lang/String; = "miui.intent.action.SWITCH_OFF_MIUILOGS"

.field public static final ACTION_SWITCH_ON_MIUILOGS:Ljava/lang/String; = "miui.intent.action.SWITCH_ON_MIUILOGS"

.field public static final EXTRA_KEY_PACKAGES:Ljava/lang/String; = "packages"

.field public static final EXTRA_KEY_PROGRAMS:Ljava/lang/String; = "programs"

.field public static final EXTRA_KEY_TAGGROUPS:Ljava/lang/String; = "groups"

.field public static final EXTRA_KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final EXTRA_KEY_TARGETALL:Ljava/lang/String; = "allapps"

.field public static final TAG:Ljava/lang/String; = "LogSwitchesConfigManager"


# instance fields
.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;

.field private final logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

.field private final logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFolder:Ljava/lang/String;

    iput-object p2, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFilePath:Ljava/lang/String;

    new-instance v0, Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {v0, p1, p2}, Lmiui/log/LogSwitchesConfigMonitor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    new-instance v0, Lmiui/log/LogSwitchesConfigWriter;

    invoke-direct {v0, p1, p2}, Lmiui/log/LogSwitchesConfigWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    return-void
.end method

.method private buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v6, p2

    move v4, v5

    :goto_8
    if-ge v4, v6, :cond_2a

    aget-object v1, p2, v4

    new-instance v0, Lmiui/log/AppLogSwitches;

    if-eqz p1, :cond_26

    move-object v3, v1

    :goto_11
    if-eqz p1, :cond_16

    const-string/jumbo v1, ""

    :cond_16
    invoke-direct {p0, p3, p4, p5}, Lmiui/log/LogSwitchesConfigManager;->buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {v0, v5, v3, v1, v7}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v3, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_8

    :cond_26
    const-string/jumbo v3, ""

    goto :goto_11

    :cond_2a
    return-object v2
.end method

.method private buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v6, p1

    move v5, v4

    :goto_8
    if-ge v5, v6, :cond_1c

    aget-object v3, p1, v5

    new-instance v1, Lmiui/log/LogSwitch;

    const-string/jumbo v7, ""

    invoke-direct {v1, v3, v7, p3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_1c
    array-length v5, p2

    :goto_1d
    if-ge v4, v5, :cond_31

    aget-object v0, p2, v4

    new-instance v1, Lmiui/log/LogSwitch;

    const-string/jumbo v6, ""

    invoke-direct {v1, v6, v0, p3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_31
    return-object v2
.end method

.method private merge(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    iget-object v6, v2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/log/AppLogSwitches;

    if-nez v0, :cond_2f

    iget-object v6, v4, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2f
    invoke-direct {p0, v4, v0}, Lmiui/log/LogSwitchesConfigManager;->update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V

    iget-object v6, v4, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_d

    iget-object v6, v4, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_40
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    iget-object v6, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    iget-object v7, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/log/AppLogSwitches;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_68
    return-object v5
.end method

.method private merge(Ljava/util/HashMap;Lmiui/log/AppLogSwitches;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;",
            "Lmiui/log/AppLogSwitches;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    invoke-direct {p0, v2, p2}, Lmiui/log/LogSwitchesConfigManager;->update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V

    iget-object v4, v2, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, v2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_30
    iget-object v4, p2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    iget-object v4, p2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-object v3
.end method

.method private revertLogSwitches(Landroid/content/Intent;)V
    .registers 13

    const/4 v10, 0x0

    const-string/jumbo v9, "allapps"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v9, "packages"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "programs"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_2b

    new-array v4, v10, [Ljava/lang/String;

    :goto_1a
    if-nez v7, :cond_33

    new-array v6, v10, [Ljava/lang/String;

    :goto_1e
    if-eqz v8, :cond_3b

    iget-object v9, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v10}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const-string/jumbo v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_33
    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1e

    :cond_3b
    array-length v9, v4

    if-gtz v9, :cond_41

    array-length v9, v6

    if-lez v9, :cond_2a

    :cond_41
    iget-object v9, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v9}, Lmiui/log/LogSwitchesConfigMonitor;->retrieveCurrentLogSwitches()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    iget-object v9, v0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7c

    iget-object v9, v0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    iget-object v10, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/log/AppLogSwitches;

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_7c
    iget-object v9, v0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_54

    iget-object v9, v0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    iget-object v10, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/log/AppLogSwitches;

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_98
    iget-object v9, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    invoke-virtual {v9, v3}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    goto :goto_2a
.end method

.method private switchStatusOfLogSwitches(Landroid/content/Intent;Z)V
    .registers 25

    const-string/jumbo v2, "allapps"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    const-string/jumbo v2, "packages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "programs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "groups"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v18, :cond_49

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/String;

    :goto_33
    if-nez v19, :cond_53

    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/String;

    :goto_38
    if-nez v20, :cond_5d

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    :goto_3d
    if-nez v16, :cond_67

    const/4 v2, 0x0

    new-array v6, v2, [Ljava/lang/String;

    :goto_42
    array-length v2, v5

    if-nez v2, :cond_71

    array-length v2, v6

    if-nez v2, :cond_71

    return-void

    :cond_49
    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_33

    :cond_53
    const-string/jumbo v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    :cond_5d
    const-string/jumbo v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :cond_67
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_42

    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v2}, Lmiui/log/LogSwitchesConfigMonitor;->retrieveCurrentLogSwitches()Ljava/util/HashMap;

    move-result-object v14

    if-eqz v21, :cond_9f

    new-instance v15, Lmiui/log/AppLogSwitches;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v6, v1}, Lmiui/log/LogSwitchesConfigManager;->buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v15, v8, v2, v3, v7}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lmiui/log/LogSwitchesConfigManager;->merge(Ljava/util/HashMap;Lmiui/log/AppLogSwitches;)Ljava/util/HashMap;

    move-result-object v17

    :goto_95
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    return-void

    :cond_9f
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v2, p0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lmiui/log/LogSwitchesConfigManager;->buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move-object v10, v5

    move-object v11, v6

    move/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lmiui/log/LogSwitchesConfigManager;->buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lmiui/log/LogSwitchesConfigManager;->merge(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v17

    goto :goto_95
.end method

.method private update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V
    .registers 8

    iget-object v3, p2, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/LogSwitch;

    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    if-nez v0, :cond_2a

    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2a
    iget-boolean v3, v1, Lmiui/log/LogSwitch;->isOn:Z

    iget-boolean v4, v0, Lmiui/log/LogSwitch;->isOn:Z

    if-eq v3, v4, :cond_a

    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_38
    return-void
.end method


# virtual methods
.method public declared-synchronized startMonitoring(ZZ)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->isWatching()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1, p2}, Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLogSwitches(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigManager;->revertLogSwitches(Landroid/content/Intent;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string/jumbo v0, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/log/LogSwitchesConfigManager;->switchStatusOfLogSwitches(Landroid/content/Intent;Z)V

    goto :goto_13

    :cond_26
    const-string/jumbo v0, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/log/LogSwitchesConfigManager;->switchStatusOfLogSwitches(Landroid/content/Intent;Z)V

    goto :goto_13
.end method

.method public declared-synchronized updatePackageName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigMonitor;->updatePackageName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
