.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;,
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;
    }
.end annotation


# instance fields
.field private mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilter:Landroid/filterfw/core/Filter;

.field private mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private mFactory:Landroid/filterfw/core/FilterFactory;

.field private mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static synthetic -get0(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method static synthetic -get2(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object v0
.end method

.method static synthetic -set0(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;
    .registers 2

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method private applySettings()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v3}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "autoBranch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_a

    :cond_3a
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_a

    :cond_4a
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_a

    :cond_5a
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown autobranch setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7b
    const-string/jumbo v3, "discardUnconnectedOutputs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    goto/16 :goto_a

    :cond_96
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown @setting \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b7
    return-void
.end method

.method private bindExternal(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_14
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown external variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "You must add a reference to this external in the host program using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "addReference(...)!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkReferences()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v0}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Host program specifies reference to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\', which is not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "declared @external in graph file!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_46
    return-void
.end method

.method private executeCommands()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/io/TextGraphReader$Command;

    invoke-interface {v0, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p3, :cond_49

    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    return-void
.end method

.method private parseString(Ljava/lang/String;)V
    .registers 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    const-string/jumbo v3, "@[a-zA-Z]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v27

    const-string/jumbo v3, "\\}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v31

    const-string/jumbo v3, "\\{"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v32

    const-string/jumbo v3, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v34

    const-string/jumbo v3, "[a-zA-Z\\.]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v38

    const-string/jumbo v3, "[a-zA-Z\\./:]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v36

    const-string/jumbo v3, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v40

    const-string/jumbo v3, "=>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v42

    const-string/jumbo v3, ";"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v44

    const-string/jumbo v3, "[a-zA-Z0-9\\-_]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v47

    const/4 v11, 0x0

    const/16 v17, 0x1

    const/4 v9, 0x2

    const/4 v15, 0x3

    const/16 v16, 0x4

    const/4 v13, 0x5

    const/16 v18, 0x6

    const/4 v12, 0x7

    const/16 v22, 0x8

    const/16 v23, 0x9

    const/16 v19, 0xa

    const/16 v24, 0xb

    const/16 v25, 0xc

    const/16 v10, 0xd

    const/16 v14, 0xe

    const/16 v21, 0xf

    const/16 v20, 0x10

    const/16 v46, 0x0

    new-instance v43, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/16 v28, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_76
    invoke-virtual/range {v43 .. v43}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v3

    if-nez v3, :cond_284

    packed-switch v46, :pswitch_data_296

    goto :goto_76

    :pswitch_80
    const-string/jumbo v3, "<command>"

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v3, "@import"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    const/16 v46, 0x1

    goto :goto_76

    :cond_99
    const-string/jumbo v3, "@library"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    const/16 v46, 0x2

    goto :goto_76

    :cond_a7
    const-string/jumbo v3, "@filter"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const/16 v46, 0x3

    goto :goto_76

    :cond_b5
    const-string/jumbo v3, "@connect"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/16 v46, 0x8

    goto :goto_76

    :cond_c3
    const-string/jumbo v3, "@set"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    const/16 v46, 0xd

    goto :goto_76

    :cond_d1
    const-string/jumbo v3, "@external"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    const/16 v46, 0xe

    goto :goto_76

    :cond_df
    const-string/jumbo v3, "@setting"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    const/16 v46, 0xf

    goto :goto_76

    :cond_ed
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Unknown command \'"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v48, "\'!"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_114
    const-string/jumbo v3, "<package-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v46, 0x10

    goto/16 :goto_76

    :pswitch_133
    const-string/jumbo v3, "<library-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v46, 0x10

    goto/16 :goto_76

    :pswitch_152
    const-string/jumbo v3, "<class-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v46, 0x4

    goto/16 :goto_76

    :pswitch_161
    const-string/jumbo v3, "<filter-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v4, v0, v1, v2}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v46, 0x5

    goto/16 :goto_76

    :pswitch_182
    const-string/jumbo v3, "{"

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v46, 0x6

    goto/16 :goto_76

    :pswitch_190
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v46, 0x7

    goto/16 :goto_76

    :pswitch_1ae
    const-string/jumbo v3, "}"

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v46, 0x0

    goto/16 :goto_76

    :pswitch_1bc
    const-string/jumbo v3, "<source-filter-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v46, 0x9

    goto/16 :goto_76

    :pswitch_1cb
    const-string/jumbo v3, "[<source-port-name>]"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v46, 0xa

    goto/16 :goto_76

    :pswitch_1e7
    const-string/jumbo v3, "=>"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v46, 0xb

    goto/16 :goto_76

    :pswitch_1f5
    const-string/jumbo v3, "<target-filter-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v46, 0xc

    goto/16 :goto_76

    :pswitch_204
    const-string/jumbo v3, "[<target-port-name>]"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    new-instance v3, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v46, 0x10

    goto/16 :goto_76

    :pswitch_232
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    const/16 v46, 0x10

    goto/16 :goto_76

    :pswitch_249
    const-string/jumbo v3, "<external-identifier>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    const/16 v46, 0x10

    goto/16 :goto_76

    :pswitch_25f
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    const/16 v46, 0x10

    goto/16 :goto_76

    :pswitch_276
    const-string/jumbo v3, ";"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v46, 0x0

    goto/16 :goto_76

    :cond_284
    const/16 v3, 0x10

    move/from16 v0, v46

    if-eq v0, v3, :cond_295

    if-eqz v46, :cond_295

    new-instance v3, Landroid/filterfw/io/GraphIOException;

    const-string/jumbo v4, "Unexpected end of input!"

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_295
    return-void

    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_80
        :pswitch_114
        :pswitch_133
        :pswitch_152
        :pswitch_161
        :pswitch_182
        :pswitch_190
        :pswitch_1ae
        :pswitch_1bc
        :pswitch_1cb
        :pswitch_1e7
        :pswitch_1f5
        :pswitch_204
        :pswitch_232
        :pswitch_249
        :pswitch_25f
        :pswitch_276
    .end packed-switch
.end method

.method private readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const-string/jumbo v21, "="

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string/jumbo v21, ";"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    const-string/jumbo v21, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    const-string/jumbo v21, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v19

    const-string/jumbo v21, "[0-9]+"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string/jumbo v21, "[0-9]*\\.[0-9]+f?"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string/jumbo v21, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    const-string/jumbo v21, "true|false"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/16 v18, 0x0

    new-instance v13, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v13}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_45
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v21

    if-nez v21, :cond_158

    if-eqz p2, :cond_69

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v21

    :goto_51
    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_158

    packed-switch v18, :pswitch_data_188

    goto :goto_45

    :pswitch_59
    const-string/jumbo v21, "<identifier>"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x1

    goto :goto_45

    :cond_69
    const/16 v21, 0x0

    goto :goto_51

    :pswitch_6c
    const-string/jumbo v21, "="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v18, 0x2

    goto :goto_45

    :pswitch_79
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_98
    const/16 v18, 0x3

    goto :goto_45

    :cond_9b
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    :goto_c5
    if-nez v16, :cond_ed

    new-instance v21, Landroid/filterfw/io/GraphIOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unknown object reference to \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\'!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_ea
    const/16 v16, 0x0

    goto :goto_c5

    :cond_ed
    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    :cond_f3
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_109

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    :cond_109
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_120

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_98

    :cond_120
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_137

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_98

    :cond_137
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    const-string/jumbo v22, "<value>"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v21

    :pswitch_148
    const-string/jumbo v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v18, 0x0

    goto/16 :goto_45

    :cond_158
    if-eqz v18, :cond_187

    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_187

    new-instance v21, Landroid/filterfw/io/GraphIOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unexpected end of assignments on line "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_187
    return-object v13

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_59
        :pswitch_6c
        :pswitch_79
        :pswitch_148
    .end packed-switch
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-void
.end method


# virtual methods
.method public readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    return-object v0
.end method

.method public readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    const-string/jumbo v2, "\\s+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method
