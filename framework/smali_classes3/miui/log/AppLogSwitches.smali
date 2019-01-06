.class public Lmiui/log/AppLogSwitches;
.super Ljava/lang/Object;
.source "AppLogSwitches.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final logSwitches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final programName:Ljava/lang/String;

.field public final targetAllApps:Z

.field public final uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    iput-object p2, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    iget-boolean v0, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "all"

    iput-object v0, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    :goto_12
    iput-object p4, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    return-void

    :cond_15
    iget-object v0, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    goto :goto_12

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "program_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    goto :goto_12
.end method

.method public static parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "\\|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-eq v3, v8, :cond_13

    return-object v5

    :cond_13
    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/log/LogSwitch;->parseLogSwitches(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_26

    :cond_25
    return-object v5

    :cond_26
    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v7, :cond_4e

    aget-object v3, v2, v6

    const-string/jumbo v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    new-instance v3, Lmiui/log/AppLogSwitches;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct {v3, v7, v4, v5, v1}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v3

    :cond_4d
    return-object v5

    :cond_4e
    array-length v3, v2

    if-eq v3, v8, :cond_52

    return-object v5

    :cond_52
    aget-object v3, v2, v6

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    new-instance v3, Lmiui/log/AppLogSwitches;

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-direct {v3, v6, v4, v5, v1}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v3

    :cond_6c
    aget-object v3, v2, v6

    const-string/jumbo v4, "program"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    new-instance v3, Lmiui/log/AppLogSwitches;

    const-string/jumbo v4, ""

    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5, v1}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v3

    :cond_86
    return-object v5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 9

    new-instance v0, Lmiui/log/AppLogSwitches;

    iget-boolean v4, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    iget-object v5, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v4, v5, v6, v7}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v4, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    invoke-virtual {v2}, Lmiui/log/LogSwitch;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/LogSwitch;

    iget-object v4, v0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v5, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_34
    return-object v0
.end method

.method public merge(Lmiui/log/AppLogSwitches;)V
    .registers 4

    iget-object v0, p1, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v4, :cond_3d

    const-string/jumbo v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    const-string/jumbo v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v4, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/LogSwitch;

    if-nez v0, :cond_34

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v1}, Lmiui/log/LogSwitch;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_20

    :cond_3d
    iget-object v4, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_52
    const-string/jumbo v4, "program "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
