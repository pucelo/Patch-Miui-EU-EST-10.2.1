.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;
.super Lmiui/maml/data/VariableBinderVisitor;
.source "BlockedColumnsSetter.java"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private mPrefix:Z

.field private mUri:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lmiui/maml/data/VariableBinderVisitor;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mPrefix:Z

    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mColumns:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/VariableBinder;)V
    .locals 3

    instance-of v2, p1, Lmiui/maml/data/ContentProviderBinder;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mPrefix:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
